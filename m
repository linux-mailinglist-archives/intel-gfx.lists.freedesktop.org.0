Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C963F4244
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 01:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63AF289F55;
	Sun, 22 Aug 2021 23:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 397A389F49;
 Sun, 22 Aug 2021 23:08:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 357B7A0003;
 Sun, 22 Aug 2021 23:08:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Aug 2021 23:08:00 -0000
Message-ID: <162967368021.11137.4448413074525042450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210822222009.2035788-1-jim.cromie@gmail.com>
In-Reply-To: <20210822222009.2035788-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciB1?=
 =?utf-8?q?se_DYNAMIC=5FDEBUG_to_implement_DRM=2Edebug?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: use DYNAMIC_DEBUG to implement DRM.debug
URL   : https://patchwork.freedesktop.org/series/93914/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  AR      lib/lib.a
  GEN     lib/crc32table.h
  CC      lib/crc32.o
  CC      lib/dynamic_debug.o
lib/dynamic_debug.c: In function ‘ddebug_exec_queries’:
lib/dynamic_debug.c:601:2: error: ‘query’ undeclared (first use in this function); did you mean ‘query_in’?
  query = kstrndup(query_in, PAGE_SIZE, GFP_KERNEL);
  ^~~~~
  query_in
lib/dynamic_debug.c:601:2: note: each undeclared identifier is reported only once for each function it appears in
lib/dynamic_debug.c: In function ‘dynamic_debug_exec_queries’:
lib/dynamic_debug.c:621:29: error: ‘qry’ undeclared (first use in this function); did you mean ‘query’?
  return ddebug_exec_queries(qry, modname, NULL);
                             ^~~
                             query
lib/dynamic_debug.c: In function ‘ddebug_exec_queries’:
lib/dynamic_debug.c:619:1: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
 int dynamic_debug_exec_queries(const char *query, const char *modname)
 ^~~
In file included from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
lib/dynamic_debug.c:623:19: error: non-static declaration of ‘dynamic_debug_exec_queries’ follows static declaration
 EXPORT_SYMBOL_GPL(dynamic_debug_exec_queries);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~
./include/linux/export.h:98:21: note: in definition of macro ‘___EXPORT_SYMBOL’
  extern typeof(sym) sym;       \
                     ^~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:164:33: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL_GPL(sym)  _EXPORT_SYMBOL(sym, "_gpl")
                                 ^~~~~~~~~~~~~~
lib/dynamic_debug.c:623:1: note: in expansion of macro ‘EXPORT_SYMBOL_GPL’
 EXPORT_SYMBOL_GPL(dynamic_debug_exec_queries);
 ^~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:619:5: note: previous definition of ‘dynamic_debug_exec_queries’ was here
 int dynamic_debug_exec_queries(const char *query, const char *modname)
     ^~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from ./include/linux/export.h:43,
                 from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
./include/linux/compiler.h:241:2: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
  static void * __section(".discard.addressable") __used \
  ^~~~~~
./include/linux/export.h:51:2: note: in expansion of macro ‘__ADDRESSABLE’
  __ADDRESSABLE(sym)      \
  ^~~~~~~~~~~~~
./include/linux/export.h:108:2: note: in expansion of macro ‘__KSYMTAB_ENTRY’
  __KSYMTAB_ENTRY(sym, sec)
  ^~~~~~~~~~~~~~~
./include/linux/export.h:152:39: note: in expansion of macro ‘___EXPORT_SYMBOL’
 #define __EXPORT_SYMBOL(sym, sec, ns) ___EXPORT_SYMBOL(sym, sec, ns)
                                       ^~~~~~~~~~~~~~~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:164:33: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL_GPL(sym)  _EXPORT_SYMBOL(sym, "_gpl")
                                 ^~~~~~~~~~~~~~
lib/dynamic_debug.c:623:1: note: in expansion of macro ‘EXPORT_SYMBOL_GPL’
 EXPORT_SYMBOL_GPL(dynamic_debug_exec_queries);
 ^~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:637:1: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
 int param_set_dyndbg(const char *instr, const struct kernel_param *kp)
 ^~~
In file included from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
lib/dynamic_debug.c:667:15: error: non-static declaration of ‘param_set_dyndbg’ follows static declaration
 EXPORT_SYMBOL(param_set_dyndbg);
               ^~~~~~~~~~~~~~~~
./include/linux/export.h:98:21: note: in definition of macro ‘___EXPORT_SYMBOL’
  extern typeof(sym) sym;       \
                     ^~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:667:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(param_set_dyndbg);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:637:5: note: previous definition of ‘param_set_dyndbg’ was here
 int param_set_dyndbg(const char *instr, const struct kernel_param *kp)
     ^~~~~~~~~~~~~~~~
In file included from ./include/linux/export.h:43,
                 from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
./include/linux/compiler.h:241:2: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
  static void * __section(".discard.addressable") __used \
  ^~~~~~
./include/linux/export.h:51:2: note: in expansion of macro ‘__ADDRESSABLE’
  __ADDRESSABLE(sym)      \
  ^~~~~~~~~~~~~
./include/linux/export.h:108:2: note: in expansion of macro ‘__KSYMTAB_ENTRY’
  __KSYMTAB_ENTRY(sym, sec)
  ^~~~~~~~~~~~~~~
./include/linux/export.h:152:39: note: in expansion of macro ‘___EXPORT_SYMBOL’
 #define __EXPORT_SYMBOL(sym, sec, ns) ___EXPORT_SYMBOL(sym, sec, ns)
                                       ^~~~~~~~~~~~~~~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:667:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(param_set_dyndbg);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:676:1: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
 int param_get_dyndbg(char *buffer, const struct kernel_param *kp)
 ^~~
In file included from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
lib/dynamic_debug.c:681:15: error: non-static declaration of ‘param_get_dyndbg’ follows static declaration
 EXPORT_SYMBOL(param_get_dyndbg);
               ^~~~~~~~~~~~~~~~
./include/linux/export.h:98:21: note: in definition of macro ‘___EXPORT_SYMBOL’
  extern typeof(sym) sym;       \
                     ^~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:681:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(param_get_dyndbg);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:676:5: note: previous definition of ‘param_get_dyndbg’ was here
 int param_get_dyndbg(char *buffer, const struct kernel_param *kp)
     ^~~~~~~~~~~~~~~~
In file included from ./include/linux/export.h:43,
                 from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
./include/linux/compiler.h:241:2: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
  static void * __section(".discard.addressable") __used \
  ^~~~~~
./include/linux/export.h:51:2: note: in expansion of macro ‘__ADDRESSABLE’
  __ADDRESSABLE(sym)      \
  ^~~~~~~~~~~~~
./include/linux/export.h:108:2: note: in expansion of macro ‘__KSYMTAB_ENTRY’
  __KSYMTAB_ENTRY(sym, sec)
  ^~~~~~~~~~~~~~~
./include/linux/export.h:152:39: note: in expansion of macro ‘___EXPORT_SYMBOL’
 #define __EXPORT_SYMBOL(sym, sec, ns) ___EXPORT_SYMBOL(sym, sec, ns)
                                       ^~~~~~~~~~~~~~~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:681:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(param_get_dyndbg);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:683:1: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
 const struct kernel_param_ops param_ops_dyndbg = {
 ^~~~~
In file included from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
lib/dynamic_debug.c:688:15: error: extern declaration of ‘param_ops_dyndbg’ follows declaration with no linkage
 EXPORT_SYMBOL(param_ops_dyndbg);
               ^~~~~~~~~~~~~~~~
./include/linux/export.h:98:21: note: in definition of macro ‘___EXPORT_SYMBOL’
  extern typeof(sym) sym;       \
                     ^~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:688:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(param_ops_dyndbg);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:683:31: note: previous definition of ‘param_ops_dyndbg’ was here
 const struct kernel_param_ops param_ops_dyndbg = {
                               ^~~~~~~~~~~~~~~~
In file included from ./include/linux/export.h:43,
                 from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
./include/linux/compiler.h:241:2: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
  static void * __section(".discard.addressable") __used \
  ^~~~~~
./include/linux/export.h:51:2: note: in expansion of macro ‘__ADDRESSABLE’
  __ADDRESSABLE(sym)      \
  ^~~~~~~~~~~~~
./include/linux/export.h:108:2: note: in expansion of macro ‘__KSYMTAB_ENTRY’
  __KSYMTAB_ENTRY(sym, sec)
  ^~~~~~~~~~~~~~~
./include/linux/export.h:152:39: note: in expansion of macro ‘___EXPORT_SYMBOL’
 #define __EXPORT_SYMBOL(sym, sec, ns) ___EXPORT_SYMBOL(sym, sec, ns)
                                       ^~~~~~~~~~~~~~~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:688:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(param_ops_dyndbg);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:692:12: error: invalid storage class for function ‘remaining’
 static int remaining(int wrote)
            ^~~~~~~~~
lib/dynamic_debug.c:692:1: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
 static int remaining(int wrote)
 ^~~~~~
lib/dynamic_debug.c:699:14: error: invalid storage class for function ‘__dynamic_emit_prefix’
 static char *__dynamic_emit_prefix(const struct _ddebug *desc, char *buf)
              ^~~~~~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:729:21: error: invalid storage class for function ‘dynamic_emit_prefix’
 static inline char *dynamic_emit_prefix(struct _ddebug *desc, char *buf)
                     ^~~~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:749:33: error: invalid storage class for function ‘ddebug_rl_fetch’
 static struct ddebug_ratelimit *ddebug_rl_fetch(struct _ddebug *desc);
                                 ^~~~~~~~~~~~~~~
lib/dynamic_debug.c:751:20: error: invalid storage class for function ‘is_onced_or_limited’
 static inline bool is_onced_or_limited(struct _ddebug *desc)
                    ^~~~~~~~~~~~~~~~~~~
In file included from ./include/linux/printk.h:10,
                 from ./include/linux/kernel.h:19,
                 from lib/dynamic_debug.c:16:
lib/dynamic_debug.c: In function ‘is_onced_or_limited’:
lib/dynamic_debug.c:767:29: error: implicit declaration of function ‘ddebug_rl_fetch’; did you mean ‘ddebug_parse_flags’? [-Werror=implicit-function-declaration]
   bool state = __ratelimit(&ddebug_rl_fetch(desc)->rs);
                             ^~~~~~~~~~~~~~~
./include/linux/ratelimit_types.h:41:41: note: in definition of macro ‘__ratelimit’
 #define __ratelimit(state) ___ratelimit(state, __func__)
                                         ^~~~~
lib/dynamic_debug.c:767:50: error: invalid type argument of ‘->’ (have ‘int’)
   bool state = __ratelimit(&ddebug_rl_fetch(desc)->rs);
                                                  ^~
./include/linux/ratelimit_types.h:41:41: note: in definition of macro ‘__ratelimit’
 #define __ratelimit(state) ___ratelimit(state, __func__)
                                         ^~~~~
In file included from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
lib/dynamic_debug.c: In function ‘ddebug_exec_queries’:
lib/dynamic_debug.c:812:15: error: non-static declaration of ‘__dynamic_pr_debug’ follows static declaration
 EXPORT_SYMBOL(__dynamic_pr_debug);
               ^~~~~~~~~~~~~~~~~~
./include/linux/export.h:98:21: note: in definition of macro ‘___EXPORT_SYMBOL’
  extern typeof(sym) sym;       \
                     ^~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:812:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(__dynamic_pr_debug);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:779:6: note: previous definition of ‘__dynamic_pr_debug’ was here
 void __dynamic_pr_debug(struct _ddebug *descriptor, const char *fmt, ...)
      ^~~~~~~~~~~~~~~~~~
In file included from ./include/linux/export.h:43,
                 from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
./include/linux/compiler.h:241:2: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
  static void * __section(".discard.addressable") __used \
  ^~~~~~
./include/linux/export.h:51:2: note: in expansion of macro ‘__ADDRESSABLE’
  __ADDRESSABLE(sym)      \
  ^~~~~~~~~~~~~
./include/linux/export.h:108:2: note: in expansion of macro ‘__KSYMTAB_ENTRY’
  __KSYMTAB_ENTRY(sym, sec)
  ^~~~~~~~~~~~~~~
./include/linux/export.h:152:39: note: in expansion of macro ‘___EXPORT_SYMBOL’
 #define __EXPORT_SYMBOL(sym, sec, ns) ___EXPORT_SYMBOL(sym, sec, ns)
                                       ^~~~~~~~~~~~~~~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:812:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(__dynamic_pr_debug);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:814:1: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
 void __dynamic_dev_dbg(struct _ddebug *descriptor,
 ^~~~
In file included from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
lib/dynamic_debug.c:844:15: error: non-static declaration of ‘__dynamic_dev_dbg’ follows static declaration
 EXPORT_SYMBOL(__dynamic_dev_dbg);
               ^~~~~~~~~~~~~~~~~
./include/linux/export.h:98:21: note: in definition of macro ‘___EXPORT_SYMBOL’
  extern typeof(sym) sym;       \
                     ^~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:844:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(__dynamic_dev_dbg);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:814:6: note: previous definition of ‘__dynamic_dev_dbg’ was here
 void __dynamic_dev_dbg(struct _ddebug *descriptor,
      ^~~~~~~~~~~~~~~~~
In file included from ./include/linux/export.h:43,
                 from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
./include/linux/compiler.h:241:2: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
  static void * __section(".discard.addressable") __used \
  ^~~~~~
./include/linux/export.h:51:2: note: in expansion of macro ‘__ADDRESSABLE’
  __ADDRESSABLE(sym)      \
  ^~~~~~~~~~~~~
./include/linux/export.h:108:2: note: in expansion of macro ‘__KSYMTAB_ENTRY’
  __KSYMTAB_ENTRY(sym, sec)
  ^~~~~~~~~~~~~~~
./include/linux/export.h:152:39: note: in expansion of macro ‘___EXPORT_SYMBOL’
 #define __EXPORT_SYMBOL(sym, sec, ns) ___EXPORT_SYMBOL(sym, sec, ns)
                                       ^~~~~~~~~~~~~~~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:844:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(__dynamic_dev_dbg);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:848:1: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
 void __dynamic_netdev_dbg(struct _ddebug *descriptor,
 ^~~~
In file included from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
lib/dynamic_debug.c:884:15: error: non-static declaration of ‘__dynamic_netdev_dbg’ follows static declaration
 EXPORT_SYMBOL(__dynamic_netdev_dbg);
               ^~~~~~~~~~~~~~~~~~~~
./include/linux/export.h:98:21: note: in definition of macro ‘___EXPORT_SYMBOL’
  extern typeof(sym) sym;       \
                     ^~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:884:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(__dynamic_netdev_dbg);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:848:6: note: previous definition of ‘__dynamic_netdev_dbg’ was here
 void __dynamic_netdev_dbg(struct _ddebug *descriptor,
      ^~~~~~~~~~~~~~~~~~~~
In file included from ./include/linux/export.h:43,
                 from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
./include/linux/compiler.h:241:2: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
  static void * __section(".discard.addressable") __used \
  ^~~~~~
./include/linux/export.h:51:2: note: in expansion of macro ‘__ADDRESSABLE’
  __ADDRESSABLE(sym)      \
  ^~~~~~~~~~~~~
./include/linux/export.h:108:2: note: in expansion of macro ‘__KSYMTAB_ENTRY’
  __KSYMTAB_ENTRY(sym, sec)
  ^~~~~~~~~~~~~~~
./include/linux/export.h:152:39: note: in expansion of macro ‘___EXPORT_SYMBOL’
 #define __EXPORT_SYMBOL(sym, sec, ns) ___EXPORT_SYMBOL(sym, sec, ns)
                                       ^~~~~~~~~~~~~~~~
./include/linux/export.h:160:34: note: in expansion of macro ‘__EXPORT_SYMBOL’
 #define _EXPORT_SYMBOL(sym, sec) __EXPORT_SYMBOL(sym, sec, "")
                                  ^~~~~~~~~~~~~~~
./include/linux/export.h:163:29: note: in expansion of macro ‘_EXPORT_SYMBOL’
 #define EXPORT_SYMBOL(sym)  _EXPORT_SYMBOL(sym, "")
                             ^~~~~~~~~~~~~~
lib/dynamic_debug.c:884:1: note: in expansion of macro ‘EXPORT_SYMBOL’
 EXPORT_SYMBOL(__dynamic_netdev_dbg);
 ^~~~~~~~~~~~~
lib/dynamic_debug.c:927:1: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
 static __initdata char ddebug_setup_string[DDEBUG_STRING_SIZE];
 ^~~~~~
lib/dynamic_debug.c:929:19: error: invalid storage class for function ‘ddebug_setup_query’
 static __init int ddebug_setup_query(char *str)
                   ^~~~~~~~~~~~~~~~~~
In file included from ./include/linux/printk.h:6,
                 from ./include/linux/kernel.h:19,
                 from lib/dynamic_debug.c:16:
lib/dynamic_debug.c:939:26: error: initializer element is not constant
 __setup("ddebug_query=", ddebug_setup_query);
                          ^~~~~~~~~~~~~~~~~~
./include/linux/init.h:321:32: note: in definition of macro ‘__setup_param’
   = { __setup_str_##unique_id, fn, early }
                                ^~
lib/dynamic_debug.c:939:1: note: in expansion of macro ‘__setup’
 __setup("ddebug_query=", ddebug_setup_query);
 ^~~~~~~
lib/dynamic_debug.c:939:26: note: (near initialization for ‘__setup_ddebug_setup_query.setup_func’)
 __setup("ddebug_query=", ddebug_setup_query);
                          ^~~~~~~~~~~~~~~~~~
./include/linux/init.h:321:32: note: in definition of macro ‘__setup_param’
   = { __setup_str_##unique_id, fn, early }
                                ^~
lib/dynamic_debug.c:939:1: note: in expansion of macro ‘__setup’
 __setup("ddebug_query=", ddebug_setup_query);
 ^~~~~~~
lib/dynamic_debug.c:946:16: error: invalid storage class for function ‘ddebug_proc_write’
 static ssize_t ddebug_proc_write(struct file *file, const char __user *ubuf,
                ^~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:977:24: error: invalid storage class for function ‘ddebug_iter_first’
 static struct _ddebug *ddebug_iter_first(struct ddebug_iter *iter)
                        ^~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:996:24: error: invalid storage class for function ‘ddebug_iter_next’
 static struct _ddebug *ddebug_iter_next(struct ddebug_iter *iter)
                        ^~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1018:14: error: invalid storage class for function ‘ddebug_proc_start’
 static void *ddebug_proc_start(struct seq_file *m, loff_t *pos)
              ^~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1041:14: error: invalid storage class for function ‘ddebug_proc_next’
 static void *ddebug_proc_next(struct seq_file *m, void *p, loff_t *pos)
              ^~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1060:12: error: invalid storage class for function ‘ddebug_proc_show’
 static int ddebug_proc_show(struct seq_file *m, void *p)
            ^~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1086:13: error: invalid storage class for function ‘ddebug_proc_stop’
 static void ddebug_proc_stop(struct seq_file *m, void *p)
             ^~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1092:11: error: initializer element is not constant
  .start = ddebug_proc_start,
           ^~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1092:11: note: (near initialization for ‘ddebug_proc_seqops.start’)
lib/dynamic_debug.c:1093:10: error: initializer element is not constant
  .next = ddebug_proc_next,
          ^~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1093:10: note: (near initialization for ‘ddebug_proc_seqops.next’)
lib/dynamic_debug.c:1094:10: error: initializer element is not constant
  .show = ddebug_proc_show,
          ^~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1094:10: note: (near initialization for ‘ddebug_proc_seqops.show’)
lib/dynamic_debug.c:1095:10: error: initializer element is not constant
  .stop = ddebug_proc_stop
          ^~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1095:10: note: (near initialization for ‘ddebug_proc_seqops.stop’)
lib/dynamic_debug.c:1098:12: error: invalid storage class for function ‘ddebug_proc_open’
 static int ddebug_proc_open(struct inode *inode, struct file *file)
            ^~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1106:10: error: initializer element is not constant
  .open = ddebug_proc_open,
          ^~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1106:10: note: (near initialization for ‘ddebug_proc_fops.open’)
lib/dynamic_debug.c:1110:11: error: initializer element is not constant
  .write = ddebug_proc_write
           ^~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1110:11: note: (near initialization for ‘ddebug_proc_fops.write’)
lib/dynamic_debug.c:1114:15: error: initializer element is not constant
  .proc_open = ddebug_proc_open,
               ^~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1114:15: note: (near initialization for ‘proc_fops.proc_open’)
lib/dynamic_debug.c:1118:16: error: initializer element is not constant
  .proc_write = ddebug_proc_write
                ^~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1118:16: note: (near initialization for ‘proc_fops.proc_write’)
lib/dynamic_debug.c:1154:12: error: invalid storage class for function ‘ddebug_dyndbg_param_cb’
 static int ddebug_dyndbg_param_cb(char *param, char *val,
            ^~~~~~~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1175:12: error: invalid storage class for function ‘ddebug_dyndbg_boot_param_cb’
 static int ddebug_dyndbg_boot_param_cb(char *param, char *val,
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1193:13: error: invalid storage class for function ‘ddebug_table_free’
 static void ddebug_table_free(struct ddebug_table *dt)
             ^~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1222:13: error: invalid storage class for function ‘ddebug_remove_all_tables’
 static void ddebug_remove_all_tables(void)
             ^~~~~~~~~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1236:19: error: invalid storage class for function ‘dynamic_debug_init_control’
 static int __init dynamic_debug_init_control(void)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1259:19: error: invalid storage class for function ‘dynamic_debug_init’
 static int __init dynamic_debug_init(void)
                   ^~~~~~~~~~~~~~~~~~
In file included from ./include/linux/export.h:43,
                 from ./include/linux/linkage.h:7,
                 from ./include/linux/kernel.h:8,
                 from lib/dynamic_debug.c:16:
./include/linux/compiler.h:242:46: error: initializer element is not constant
   __UNIQUE_ID(__PASTE(__addressable_,sym)) = (void *)&sym;
                                              ^
./include/linux/init.h:236:2: note: in expansion of macro ‘__ADDRESSABLE’
  __ADDRESSABLE(fn)
  ^~~~~~~~~~~~~
./include/linux/init.h:241:2: note: in expansion of macro ‘__define_initcall_stub’
  __define_initcall_stub(__stub, fn)   \
  ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/init.h:254:2: note: in expansion of macro ‘____define_initcall’
  ____define_initcall(fn,     \
  ^~~~~~~~~~~~~~~~~~~
./include/linux/init.h:260:2: note: in expansion of macro ‘__unique_initcall’
  __unique_initcall(fn, id, __sec, __initcall_id(fn))
  ^~~~~~~~~~~~~~~~~
./include/linux/init.h:262:35: note: in expansion of macro ‘___define_initcall’
 #define __define_initcall(fn, id) ___define_initcall(fn, id, .initcall##id)
                                   ^~~~~~~~~~~~~~~~~~
./include/linux/init.h:269:29: note: in expansion of macro ‘__define_initcall’
 #define early_initcall(fn)  __define_initcall(fn, early)
                             ^~~~~~~~~~~~~~~~~
lib/dynamic_debug.c:1330:1: note: in expansion of macro ‘early_initcall’
 early_initcall(dynamic_debug_init);
 ^~~~~~~~~~~~~~
In file included from ./include/linux/bits.h:22,
                 from ./include/linux/bitops.h:6,
                 from ./include/linux/kernel.h:12,
                 from lib/dynamic_debug.c:16:
./include/linux/build_bug.h:78:41: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
 #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
                                         ^~~~~~~~~~~~~~
./include/linux/build_bug.h:77:34: note: in expansion of macro ‘__static_assert’
 #define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
                                  ^~~~~~~~~~~~~~~
./include/linux/init.h:246:2: note: in expansion of macro ‘static_assert’
  static_assert(__same_type(initcall_t, &fn));
  ^~~~~~~~~~~~~
./include/linux/init.h:254:2: note: in expansion of macro ‘____define_initcall’
  ____define_initcall(fn,     \
  ^~~~~~~~~~~~~~~~~~~
./include/linux/init.h:260:2: note: in expansion of macro ‘__unique_initcall’
  __unique_initcall(fn, id, __sec, __initcall_id(fn))
  ^~~~~~~~~~~~~~~~~
./include/linux/init.h:262:35: note: in expansion of macro ‘___define_initcall’
 #define __define_initcall(fn, id) ___define_initcall(fn, id, .initcall##id)
                                   ^~~~~~~~~~~~~~


