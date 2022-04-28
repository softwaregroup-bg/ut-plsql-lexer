{
    // https://docs.oracle.com/en/database/oracle/oracle-database/21/lnpls/plsql-reserved-words-keywords.html
    function isKeyword(w) {
        return [
            // reserved
            'ALL', 'ALTER', 'AND', 'ANY', 'AS', 'ASC', 'AT',
            'BEGIN', 'BETWEEN', 'BY',
            'CASE', 'CHECK', 'CLUSTERS', 'CLUSTER', 'COLAUTH', 'COLUMNS', 'COMPRESS', 'CONNECT', 'CRASH', 'CREATE', 'CURSOR',
            'DECLARE', 'DEFAULT', 'DESC', 'DISTINCT', 'DROP',
            'ELSE', 'END', 'EXCEPTION', 'EXCLUSIVE',
            'FETCH', 'FOR', 'FROM', 'FUNCTION',
            'GOTO', 'GRANT', 'GROUP',
            'HAVING',
            'IDENTIFIED', 'IF', 'IN', 'INDEX', 'INDEXES', 'INSERT', 'INTERSECT', 'INTO', 'IS',
            'LIKE', 'LOCK',
            'MINUS', 'MODE',
            'NOCOMPRESS', 'NOT', 'NOWAIT', 'NULL',
            'OF', 'ON', 'OPTION', 'OR', 'ORDER', 'OVERLAPS',
            'PROCEDURE', 'PUBLIC',
            'RESOURCE', 'REVOKE',
            'SELECT', 'SHARE', 'SIZE', 'SQL', 'START', 'SUBTYPE',
            'TABAUTH', 'TABLE', 'THEN', 'TO', 'TYPE',
            'UNION', 'UNIQUE', 'UPDATE',
            'VALUES', 'VIEW', 'VIEWS',
            'WHEN', 'WHERE', 'WITH',
            // keywords
            'A', 'ADD', 'ACCESSIBLE', 'AGENT', 'AGGREGATE', 'ARRAY', 'ATTRIBUTE', 'AUTHID', 'AVG',
            'BFILE_BASE', 'BINARY', 'BLOB_BASE', 'BLOCK', 'BODY', 'BOTH', 'BOUND', 'BULK', 'BYTE',
            'C', 'CALL', 'CALLING', 'CASCADE', 'CHAR', 'CHAR_BASE', 'CHARACTER', 'CHARSET', 'CHARSETFORM', 'CHARSETID', 'CLOB_BASE', 'CLONE',
            'CLOSE', 'COLLECT', 'COMMENT', 'COMMIT', 'COMMITTED', 'COMPILED', 'CONSTANT', 'CONSTRUCTOR', 'CONTEXT', 'CONTINUE', 'CONVERT',
            'COUNT', 'CREDENTIAL', 'CURRENT', 'CUSTOMDATUM',
            'DANGLING', 'DATA', 'DATE', 'DATE_BASE', 'DAY', 'DEFINE', 'DELETE', 'DETERMINISTIC', 'DIRECTORY', 'DOUBLE', 'DURATION',
            'ELEMENT', 'ELSIF', 'EMPTY', 'ESCAPE', 'EXCEPT', 'EXCEPTIONS', 'EXECUTE', 'EXISTS', 'EXIT', 'EXTERNAL',
            'FINAL', 'FIRST', 'FIXED', 'FLOAT', 'FORALL', 'FORCE',
            'GENERAL',
            'HASH', 'HEAP', 'HIDDEN', 'HOUR',
            'IMMEDIATE', 'IMMUTABLE', 'INCLUDING', 'INDICATOR', 'INDICES', 'INFINITE', 'INSTANTIABLE', 'INT', 'INTERFACE', 'INTERVAL',
            'INVALIDATE', 'ISOLATION',
            'JAVA',
            'LANGUAGE', 'LARGE', 'LEADING', 'LENGTH', 'LEVEL', 'LIBRARY', 'LIKE2', 'LIKE4', 'LIKEC', 'LIMIT', 'LIMITED', 'LOCAL', 'LONG', 'LOOP',
            'MAP', 'MAX', 'MAXLEN', 'MEMBER', 'MERGE', 'MIN', 'MINUTE', 'MOD', 'MODIFY', 'MONTH', 'MULTISET', 'MUTABLE',
            'NAME', 'NAN', 'NATIONAL', 'NATIVE', 'NCHAR', 'NEW', 'NOCOPY', 'NUMBER_BASE',
            'OBJECT', 'OCICOLL', 'OCIDATE', 'OCIDATETIME', 'OCIDURATION', 'OCIINTERVAL', 'OCILOBLOCATOR', 'OCINUMBER', 'OCIRAW', 'OCIREF',
            'OCIREFCURSOR', 'OCIROWID', 'OCISTRING', 'OCITYPE', 'OLD', 'ONLY', 'OPAQUE', 'OPEN', 'OPERATOR', 'ORACLE', 'ORADATA', 'ORGANIZATION',
            'ORLANY', 'ORLVARY', 'OTHERS', 'OUT', 'OVERRIDING',
            'PACKAGE', 'PARALLEL_ENABLE', 'PARAMETER', 'PARAMETERS', 'PARENT', 'PARTITION', 'PASCAL', 'PERSISTABLE', 'PIPE', 'PIPELINED',
            'PLUGGABLE', 'POLYMORPHIC', 'PRAGMA', 'PRECISION', 'PRIOR', 'PRIVATE',
            'RAISE', 'RANGE', 'RAW', 'READ', 'RECORD', 'REF', 'REFERENCE', 'RELIES_ON', 'REM', 'REMAINDER', 'RENAME', 'RESULT', 'RESULT_CACHE',
            'RETURN', 'RETURNING', 'REVERSE', 'ROLLBACK', 'ROW',
            'SAMPLE', 'SAVE', 'SAVEPOINT', 'SB1', 'SB2', 'SB4', 'SECOND', 'SEGMENT', 'SELF', 'SEPARATE', 'SEQUENCE', 'SERIALIZABLE', 'SET',
            'SHORT', 'SIZE_T', 'SOME', 'SPARSE', 'SQLCODE', 'SQLDATA', 'SQLNAME', 'SQLSTATE', 'STANDARD', 'STATIC', 'STDDEV', 'STORED', 'STRING',
            'STRUCT', 'STYLE', 'SUBMULTISET', 'SUBPARTITION', 'SUBSTITUTABLE', 'SUM', 'SYNONYM',
            'TDO', 'THE', 'TIME', 'TIMESTAMP', 'TIMEZONE_ABBR', 'TIMEZONE_HOUR', 'TIMEZONE_MINUTE', 'TIMEZONE_REGION', 'TRAILING', 'TRANSACTION',
            'TRANSACTIONAL', 'TRUSTED',
            'UB1', 'UB2', 'UB4', 'UNDER', 'UNPLUG', 'UNSIGNED', 'UNTRUSTED', 'USE', 'USING',
            'VALIST', 'VALUE', 'VARIABLE', 'VARIANCE', 'VARRAY', 'VARYING', 'VOID',
            'WHILE', 'WORK', 'WRAPPED', 'WRITE',
            'YEAR',
            'ZONE'
        ].includes(w.toUpperCase());
    }

    function isFunction(w) {
        return [
            'ABS', 'ACOS', 'ADD_MONTHS', 'ANY_VALUE', 'APPROX_COUNT', 'APPROX_COUNT_DISTINCT', 'APPROX_COUNT_DISTINCT_AGG',
            'APPROX_COUNT_DISTINCT_DETAIL', 'APPROX_MEDIAN', 'APPROX_PERCENTILE', 'APPROX_PERCENTILE_AGG', 'APPROX_PERCENTILE_DETAIL',
            'APPROX_RANK', 'APPROX_SUM', 'ASCII', 'ASCIISTR', 'ASIN', 'ATAN', 'ATAN2', 'AVG', 'BFILENAME', 'BIN_TO_NUM', 'BIT_AND_AGG',
            'BIT_OR_AGG', 'BIT_XOR_AGG', 'BITAND', 'CARDINALITY', 'CAST', 'CEIL', 'CHARTOROWID', 'CHECKSUM', 'CHR', 'CLUSTER_DETAILS',
            'CLUSTER_DISTANCE', 'CLUSTER_ID', 'CLUSTER_PROBABILITY', 'CLUSTER_SET', 'COALESCE', 'COLLATION', 'COLLECT', 'COLLECT', 'COMPOSE',
            'CON_DBID_TO_ID', 'CON_GUID_TO_ID', 'CON_NAME_TO_ID', 'CON_UID_TO_ID', 'CONCAT', 'CONVERT', 'CORR', 'CORR_K', 'CORR_S', 'COS', 'COSH',
            'COUNT', 'COVAR_POP', 'COVAR_SAMP', 'CUME_DIST', 'CURRENT_DATE', 'CURRENT_TIMESTAMP', 'DBTIMEZONE', 'DECODE', 'DECOMPOSE',
            'DENSE_RANK', 'DEPTH', 'DUMP', 'EMPTY_BLOB', 'EMPTY_CLOB', 'EXISTSNODE', 'EXP', 'EXTRACT', 'EXTRACT', 'EXTRACTVALUE',
            'FEATURE_COMPARE', 'FEATURE_DETAILS', 'FEATURE_ID', 'FEATURE_SET', 'FEATURE_VALUE', 'FIRST', 'FLOOR', 'FROM_TZ', 'GREATEST',
            'GROUP_ID', 'GROUPING', 'GROUPING_ID', 'HEXTORAW', 'INITCAP', 'INSTR', 'JSON Type Constructor', 'JSON_ARRAY', 'JSON_ARRAYAGG',
            'JSON_ARRAYAGG', 'JSON_OBJECT', 'JSON_OBJECTAGG', 'JSON_OBJECTAGG', 'JSON_QUERY', 'JSON_SCALAR', 'JSON_SERIALIZE', 'JSON_TABLE',
            'JSON_TRANSFORM', 'JSON_VALUE', 'KURTOSIS_POP', 'KURTOSIS_SAMP', 'LAST', 'LAST_DAY', 'LEAST', 'LENGTH', 'LISTAGG', 'LN', 'LNNVL',
            'LOCALTIMESTAMP', 'LOG', 'LOWER', 'LPAD', 'LTRIM', 'MAX', 'MEDIAN', 'MIN', 'MOD', 'MONTHS_BETWEEN', 'NANVL', 'NANVL', 'NCHR',
            'NEW_TIME', 'NEXT_DAY', 'NLS_CHARSET_DECL_LEN', 'NLS_CHARSET_ID', 'NLS_CHARSET_NAME', 'NLS_COLLATION_ID', 'NLS_COLLATION_NAME',
            'NLS_INITCAP', 'NLS_LOWER', 'NLS_UPPER', 'NLSSORT', 'NULLIF', 'NUMTODSINTERVAL', 'NUMTODSINTERVAL', 'NUMTOYMINTERVAL',
            'NUMTOYMINTERVAL', 'NVL', 'NVL2', 'ORA_DM_PARTITION_NAME', 'ORA_DST_AFFECTED', 'ORA_DST_CONVERT', 'ORA_DST_ERROR',
            'ORA_HASH', 'ORA_INVOKING_USER', 'ORA_INVOKING_USERID', 'PATH', 'PERCENT_RANK', 'PERCENTILE_CONT', 'PERCENTILE_DISC',
            'POWER', 'POWERMULTISET', 'POWERMULTISET_BY_CARDINALITY', 'PREDICTION', 'PREDICTION_BOUNDS', 'PREDICTION_COST', 'PREDICTION_DETAILS',
            'PREDICTION_PROBABILITY', 'PREDICTION_SET', 'RANK', 'RAWTOHEX', 'RAWTONHEX', 'REGEXP_COUNT', 'REGEXP_INSTR', 'REGEXP_REPLACE',
            'REGEXP_SUBSTR', 'REGR_AVGX', 'REGR_AVGY', 'REGR_COUNT', 'REGR_INTERCEPT', 'REGR_R2', 'REGR_SLOPE', 'REGR_SXX', 'REGR_SXY',
            'REGR_SYY', 'REMAINDER', 'REPLACE', 'ROUND', 'ROWIDTOCHAR', 'ROWIDTONCHAR', 'RPAD', 'RTRIM', 'SCN_TO_TIMESTAMP', 'SESSIONTIMEZONE',
            'SET', 'SIGN', 'SIN', 'SINH', 'SKEWNESS_POP', 'SKEWNESS_SAMP', 'SOUNDEX', 'SQRT', 'STANDARD_HASH', 'STATS_BINOMIAL_TEST',
            'STATS_CROSSTAB', 'STATS_F_TEST', 'STATS_KS_TEST', 'STATS_MODE', 'STATS_MW_TEST', 'STATS_ONE_WAY_ANOVA', 'STATS_T_TEST_INDEP',
            'STATS_T_TEST_INDEPU', 'STATS_T_TEST_ONE', 'STATS_T_TEST_PAIRED', 'STATS_WSR_TEST', 'STDDEV', 'STDDEV_POP', 'STDDEV_SAMP', 'SUBSTR',
            'SUM', 'SYS_CONNECT_BY_PATH', 'SYS_CONTEXT', 'SYS_DBURIGEN', 'SYS_EXTRACT_UTC', 'SYS_GUID', 'SYS_OP_ZONE_ID', 'SYS_TYPEID',
            'SYS_XMLAGG', 'SYS_XMLAGG', 'SYS_XMLGEN', 'SYSDATE', 'SYSTIMESTAMP', 'TAN', 'TANH', 'TIMESTAMP_TO_SCN', 'TO_APPROX_COUNT_DISTINCT',
            'TO_APPROX_PERCENTILE', 'TO_BINARY_DOUBLE', 'TO_BINARY_FLOAT', 'TO_BLOB', 'TO_CHAR', 'TO_CHAR', 'TO_CLOB', 'TO_DATE',
            'TO_DSINTERVAL', 'TO_DSINTERVAL', 'TO_LOB', 'TO_MULTI_BYTE', 'TO_NCHAR', 'TO_NCLOB', 'TO_NUMBER', 'TO_SINGLE_BYTE', 'TO_TIMESTAMP',
            'TO_TIMESTAMP', 'TO_TIMESTAMP_TZ', 'TO_TIMESTAMP_TZ', 'TO_YMINTERVAL', 'TO_YMINTERVAL', 'TRANSLATE', 'TREAT', 'TRIM', 'TRUNC',
            'TZ_OFFSET', 'UID', 'UNISTR', 'UPPER', 'USER', 'USERENV', 'VALIDATE_CONVERSION', 'VAR_POP', 'VAR_SAMP', 'VARIANCE', 'VSIZE',
            'WIDTH_BUCKET', 'XMLAGG', 'XMLAGG', 'XMLCAST', 'XMLCDATA', 'XMLCOLATTVAL', 'XMLCOMMENT', 'XMLCONCAT', 'XMLDIFF', 'XMLELEMENT',
            'XMLEXISTS', 'XMLFOREST', 'XMLISVALID', 'XMLPARSE', 'XMLPATCH', 'XMLPI', 'XMLQUERY', 'XMLSEQUENCE', 'XMLSERIALIZE', 'XMLTABLE',
            'XMLTRANSFORM',
        ].includes(w);
    }

    function report(t, code, message) {
        return {
            startLine: t.location.start.line,
            endLine: t.location.end.line,
            startColumn: t.location.start.column,
            endColumn: t.location.end.column,
            code: code,
            message: message,
            text: t.text
        }
    }

    var whitespaceSurround = ['%=' ,'*=', '+=', '-=', '/=', '|=', '^=', '&=', '=', '<>', '!=', '>', '<', '+', '-', '*', '/', '&', '<=', '>=', '^', '|'];
    var whitespaceAfter = [',']
    var listIndent = [',', '(', 'AND', 'OR', 'BY'];

    function lintToken(tokens, line, index) {
        var t = tokens[line][index];
        var prev = (index > 0) && tokens[line][index - 1];
        var next = (index < tokens[line].length - 1) && tokens[line][index + 1];

        function isUnary() {
            var prev1 = (index > 1) && tokens[line][index - 2];
            return ['+', '-'].includes(t.text) &&
                next && ['literal', 'variable', 'word'].includes(next.type) &&
                (!prev || prev.text === '(' || (prev.text === ' ' && prev1 && prev1.type ==='operator'));
        }

        function isStar() {
            return (index > 0 && prev && next && t.text === '*' && prev.text === '(' && next.text === ')')
        }

        var uppercase = t.text.toUpperCase();
        var isUppercase = t.text === uppercase;
        if (t.type === 'keyword' && !isUppercase) {
            return report(t, 'uppercase-keywords', 'Keywords must be in uppercase')
        } else if (t.type === 'literal' && uppercase === 'NULL' && !isUppercase) {
            return report(t, 'uppercase-keywords', 'Keywords must be in uppercase')
        } else if (t.type === 'word' && !isUppercase && next && next.text === '(' && isFunction(uppercase)) {
            return report(t, 'function-uppercase', 'Built-in functions must be in uppercase')
        } else if (t.type === 'whitespace' && index === 0 && t.text.length % 4 !== 0) {
            return report(t, 'indent-size', 'Indentation must be multiple of 4')
        } else if (t.type === 'comment' && t.text !== t.text.trim()) {
            return report(t, 'no-trailing-whitespace', 'Trailing whitespace not allowed')
        } else if (t.type === 'whitespace' && index > 0 && t.text.length > 1) {
            return report(t, 'single-whitespace', 'Non indentation should be with single space')
        } else if (t.type !== 'newline' && index >= tokens[line].length-1) {
            return report(t, 'newline-required', 'Newline required at end of file')
        } else if (t.type === 'whitespace' && index >= tokens[line].length-2 && tokens[line][tokens[line].length-1].type === 'newline') {
            return report(t, 'no-trailing-whitespace', 'Trailing whitespace not allowed')
        } else if (isUnary() || isStar()) {
            return;
        } else if (t.type === 'operator' && whitespaceSurround.includes(t.text) && (index <= 0 || index >= tokens[line].length-1 || prev.type !== 'whitespace' || prev.text != ' ' || !['whitespace', 'newline'].includes(next.type) || (next.type === 'whitespace' && next.text != ' '))) {
            return report(t, 'whitespace-around', 'Operator should be surrounded with single space');
        } else if (t.type === 'operator' && whitespaceAfter.includes(t.text) && (index >= tokens[line].length-1 || !['whitespace', 'newline'].includes(next.type) || (next.type === 'whitespace' && next.text != ' '))) {
            return report(t, 'whitespace-after', 'Operator should be followed by single space');
        }
    }

    function stripNoopLines(lines) {
        return lines.filter(function(line){
            return line.find(function(token){
                return !['whitespace', 'newline', 'comment'].includes(token.type);
            })
        }).map(function(line){
            while (line.length && ['whitespace', 'newline', 'comment'].includes(line[line.length-1].type)) {
                line.pop();
            }
            return line;
        });
    }

    function lintLines(lines, linter) {
        return lines.reduce(function lintLine(prev, line, lineIndex){
            return prev.concat(line.reduce(function lint(p, token, tokenIndex){
                return p.concat(linter(lines, lineIndex, tokenIndex));
            },[])).filter(x=>x);
        }, []).filter(x=>x);
    }

    function lintIndent(tokens, line, index) {
        if (line === 0 || index > 0) return;
        var current = tokens[line][1];
        var prev = tokens[line - 1][1];
        var curIndent = tokens[line][0];
        var prevIndent = tokens[line - 1][0];
        var prevLastText = tokens[line - 1][tokens[line - 1].length-1].text;
        if (curIndent.type === 'whitespace') {
            curIndent = curIndent.text.length;
        } else {
            current = curIndent;
            curIndent = 0;
        }
        if (prevIndent.type === 'whitespace') {
            prevIndent = prevIndent.text.length;
        } else {
            prev = prevIndent;
            prevIndent = 0;
        }
        if (curIndent - prevIndent > 4) {
            return report(current, 'indent-step', 'Indentation step must not exceed 4')
        } else if (!['keyword', 'paren'].includes(current.type) && prev.type !== 'keyword' && curIndent !== prevIndent && !listIndent.includes(prevLastText)) {
            return report(current, 'indent-same', 'Lines starting with non-keyword must have same indentation')
        } else if (!['keyword', 'paren'].includes(current.type) && current.text !== ';' && prev.type === 'keyword' && curIndent <= prevIndent && !listIndent.includes(prevLastText)) {
            return report(current, 'indent-increase', 'Lines starting with non-keyword after lines starting with keyword must increas indentation')
        } else if (prev.type === 'keyword' && prev.text.toUpperCase() === 'BEGIN' && current.text.toUpperCase() !== 'END' && 4 !== curIndent - prevIndent) {
            return report(current, 'indent-after-begin', 'Line after BEGIN must increase indentation with 4')
        }
    }

    function lint(lines) {
        return lintLines(lines, lintToken).concat(lintLines(stripNoopLines(lines), lintIndent))
    }
}

body = token:wstoken* last:lintws {
    token.push(last);
    var result = token.reduce(function(prev, pair){
        pair.forEach && pair.forEach(function(cur){
            (cur.text != '') && prev[prev.length-1].push(cur);
            cur.type === 'newline' && prev.push([]);
        });
        return prev;
    },[[]]);
    !result[result.length-1].length && result.pop();
    return {
        lint: lint(result),
        tokens: result
    }
}

wstoken = ws:lintws token:token {return ws.concat(token)}
lintws = (WhiteSpace {return {type: 'whitespace', text: text(), location: location()}}
    / LineTerminatorSequence {return {type: 'newline', text: text(), location: location()}}
    / Comment {return {type: 'comment', text: text(), location: location()}})*
token = literal {return {type: 'literal', text: text(), location: location()}}
    / s:system_var {return {type: 'system', text:s, location: location()}}
    / t:globaltemp {return {type: 'globaltemp', text:t, location: location()}}
    / t:temp {return {type: 'temp', text:t, location: location()}}
    / v:variable {return {type: 'variable', text:v, location: location()}}
    / n:name {return isKeyword(n) ? {type: 'keyword', text:n, location: location()} : {type: 'word', text:n, location: location()}}
    / p:lparen {return {type: 'paren', text:p, location: location()}}
    / p:rparen {return {type: 'paren', text:p, location: location()}}
    / o: operator {return {type: 'operator', text:o, location: location()}}
lparen = "("
rparen = ")"
plus = "+"
minus = "-"
comma = ","
equals = "="
not_equals = "!=" / "<>"
ampersand = "&"
lt = "<"
lte = "<="
gt = ">"
gte = ">="
dotasterisk = ".*"
asterisk = "*"
percent = "%"
slash = "/"
semicolon = ";"
caret = "^"
mutate = "%=" / "*=" / "+=" / "-=" / "/=" / "|=" / "^=" / "&=" / ":="
pipe = "|"
concat = "||"
operator "operator" = concat / mutate / caret / plus / minus / comma / equals / dotasterisk / decimal_point / slash / ampersand / not_equals / lte / gte / lt / gt / asterisk / percent / pipe / semicolon
name "word" =  '"' $[^"]+ '"' {return text()} / $[A-Za-z0-9_$]+
system_var "system variable" = "@@" name {return text()}
variable "variable" = "@" n:name {return text()}
globaltemp "global temporary table" = "##" name {return text()}
temp "temporary table" = "#" name {return text()}
literal = numeric_literal / string_literal / "NULL"i
string_literal "string" = "N"? quote s:([^'] / qq)* quote {return s.join('')}
qq = quote quote {return '\''}
numeric_literal "number" = digits:( ( ( ( digit )+ ( decimal_point ( digit )+ )? )
     / ( decimal_point ( digit )+ ) )
       ( E ( plus / minus )? ( digit )+ )? )
digit = [0-9]
quote = "'"
decimal_point = "."
E = "E"i
Zs = [\u0020\u00A0\u1680\u2000-\u200A\u202F\u205F\u3000]
SourceCharacter = .
WhiteSpace "whitespace"
  = ("\t"
  / "\v"
  / "\f"
  / " "
  / "\u00A0"
  / "\uFEFF"
  / Zs)+
LineTerminator = [\n\r\u2028\u2029]
LineTerminatorSequence "end of line"  = "\r\n" / "\n" / "\r" / "\u2028" / "\u2029"
Comment "comment"  = MultiLineComment / SingleLineComment
MultiLineCommentBody = (!"*/" SourceCharacter)*{return {multi:text()}}
MultiLineComment = "/*" x:MultiLineCommentBody "*/" {return x}
SingleLineCommentBody = (!LineTerminator SourceCharacter)* {return {single:text()}}
SingleLineComment = "--" x:SingleLineCommentBody {return x}
