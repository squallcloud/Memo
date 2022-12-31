### C#メモ

* using static
    - クラス名を省略できる。  
      using static クラス名;
        ```cs
        using System;
        using static System.Math;

        class Program
        {
            static void Main()
            {
                var pi = 2 * Asin(1);
                Console.WriteLine(PI == pi);
            }
        }
        ```

* 型変換(cast)演算
    - explicit は明示的にキャストしたい場合
    - implicit は暗黙的にキャストしたい場合
        ```cs
        public static explicitまたはimplicit operator 変換先の型 (変換元の型 引数名)
        {
        // 変換コード
        }
        ```

* ジェネリック
    - クラス名・メソッド名の後に続く`<>`に型引数(type parameter)を指定する。
    - where 制約条件。型引数が満たすべき条件を書く。
        ```cs
        class クラス名<型引数>
            where 型引数中の型が満たすべき条件
        {
            クラス定義
        }

        アクセスレベル 戻り値の型 メソッド名<型引数>(引数リスト)
            where 型引数中の型が満たすべき条件
        {
            メソッド定義
        }
        ```
        - where T : 制約
            ```cs
            static Type Max<Type>(Type a, Type b)
                where Type : IComparable
            {
                // ↑この制約条件のお陰で、
                // ↓Type 型 は CompareTo を持っているというのが分かる。
                return a.CompareTo(b) > 0 ? a : b;
            }
            ```
        - where T : struct  
        型Tは「値型」である
        - where T : class  
        型Tは「参照型」である
        - where T : [base class]  
        型Tは[base class]で指定された型を継承する。
        - where T : [interface]  
        型Tは[interface]で指定されたインターフェースを実装する。
        - where T : new()  
        引数なしのコンストラクタを持つ。  
        他の制約条件と同時に課す場合には、一番最後に指定する必要がある。

    - in/out
        - 出力(out)、入力(in)のみにしか使わない場合に指定。
        ```cs
        public interface IEnumerator<out T>
        {
            T Current { get; } // get しかない ＝ 出力のみ
            bool MoveNext();
            void Reset();
        }
        ```