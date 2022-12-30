Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59343659959
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Dec 2022 15:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E77A10E0E9;
	Fri, 30 Dec 2022 14:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 030D510E0E9;
 Fri, 30 Dec 2022 14:32:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A538DA77A5;
 Fri, 30 Dec 2022 14:32:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Fri, 30 Dec 2022 14:32:22 -0000
Message-ID: <167241074264.16415.6419054783691505492@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221222114635.1251934-1-andrzej.hajda@intel.com>
In-Reply-To: <20221222114635.1251934-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_=5F=5Fxchg=2C_non-atomic_xchg_=28rev3=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Introduce __xchg, non-atomic xchg (rev3)
URL   : https://patchwork.freedesktop.org/series/112169/
State : warning

== Summary ==

Error: dim checkpatch failed
81cf90111073 arch/alpha: rename internal name __xchg to __arch_xchg
cc5f60d730c4 arch: rename all internal names __xchg to __arch_xchg
-:55: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#55: FILE: arch/arm/include/asm/cmpxchg.h:28:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void *ptr, int size)

-:108: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#108: FILE: arch/hexagon/include/asm/cmpxchg.h:22:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void *ptr,

-:109: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#109: FILE: arch/hexagon/include/asm/cmpxchg.h:23:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void *ptr,
 				   int size)

-:117: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ptr' - possible side-effects?
#117: FILE: arch/hexagon/include/asm/cmpxchg.h:45:
+#define arch_xchg(ptr, v) ((__typeof__(*(ptr)))__arch_xchg((unsigned long)(v), (ptr), \
 	sizeof(*(ptr))))

-:130: CHECK:SPACING: No space is necessary after a cast
#130: FILE: arch/ia64/include/asm/cmpxchg.h:8:
+({(__typeof__(*(ptr))) __arch_xchg((unsigned long) (x), (ptr), sizeof(*(ptr)));})

-:130: ERROR:SPACING: space required after that ';' (ctx:VxV)
#130: FILE: arch/ia64/include/asm/cmpxchg.h:8:
+({(__typeof__(*(ptr))) __arch_xchg((unsigned long) (x), (ptr), sizeof(*(ptr)));})
                                                                               ^

-:152: CHECK:SPACING: No space is necessary after a cast
#152: FILE: arch/ia64/include/uapi/asm/cmpxchg.h:58:
+({(__typeof__(*(ptr))) __arch_xchg((unsigned long) (x), (ptr), sizeof(*(ptr)));})

-:152: ERROR:SPACING: space required after that ';' (ctx:VxV)
#152: FILE: arch/ia64/include/uapi/asm/cmpxchg.h:58:
+({(__typeof__(*(ptr))) __arch_xchg((unsigned long) (x), (ptr), sizeof(*(ptr)));})
                                                                               ^

-:165: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#165: FILE: arch/loongarch/include/asm/cmpxchg.h:65:
+__arch_xchg(volatile void *ptr, unsigned long x, int size)

-:187: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#187: FILE: arch/m68k/include/asm/cmpxchg.h:12:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void * ptr, int size)

-:187: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#187: FILE: arch/m68k/include/asm/cmpxchg.h:12:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void * ptr, int size)

-:196: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#196: FILE: arch/m68k/include/asm/cmpxchg.h:43:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void * ptr, int size)

-:196: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#196: FILE: arch/m68k/include/asm/cmpxchg.h:43:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void * ptr, int size)

-:205: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#205: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})

-:205: ERROR:SPACING: space required after that ',' (ctx:VxV)
#205: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                      ^

-:205: ERROR:SPACING: space required after that ',' (ctx:VxV)
#205: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                              ^

-:205: ERROR:SPACING: space required after that ',' (ctx:VxV)
#205: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                                    ^

-:205: ERROR:SPACING: space required after that ';' (ctx:VxV)
#205: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                                                    ^

-:205: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ptr' - possible side-effects?
#205: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})

-:218: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#218: FILE: arch/mips/include/asm/cmpxchg.h:71:
+unsigned long __arch_xchg(volatile void *ptr, unsigned long x, int size)

-:240: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#240: FILE: arch/openrisc/include/asm/cmpxchg.h:150:
+static inline unsigned long __arch_xchg(volatile void *ptr, unsigned long with,

-:241: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#241: FILE: arch/openrisc/include/asm/cmpxchg.h:151:
+static inline unsigned long __arch_xchg(volatile void *ptr, unsigned long with,
 		int size)

-:262: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#262: FILE: arch/parisc/include/asm/cmpxchg.h:25:
+__arch_xchg(unsigned long x, volatile void *ptr, int size)

-:284: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using '__xchg_local', this function's name, in a string
#284: FILE: arch/powerpc/include/asm/cmpxchg.h:232:
+	BUILD_BUG_ON_MSG(1, "Unsupported size for __xchg_local");

-:293: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using '__xchg_relaxed', this function's name, in a string
#293: FILE: arch/powerpc/include/asm/cmpxchg.h:251:
+	BUILD_BUG_ON_MSG(1, "Unsupported size for __xchg_relaxed");

-:306: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around v->counter
#306: FILE: arch/riscv/include/asm/atomic.h:264:
+	return __arch_xchg(&(v->counter), n, size);			\

-:342: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#342: FILE: arch/s390/include/asm/cmpxchg.h:18:
+static __always_inline unsigned long __arch_xchg(unsigned long x,
 					    unsigned long address, int size)

-:372: ERROR:SPACING: space required after that ',' (ctx:VxV)
#372: FILE: arch/sh/include/asm/cmpxchg.h:49:
+	((__typeof__(*(ptr)))__arch_xchg((ptr),(unsigned long)(x), sizeof(*(ptr))))
 	                                      ^

-:385: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#385: FILE: arch/sparc/include/asm/cmpxchg_32.h:18:
+static inline unsigned long __arch_xchg(unsigned long x, __volatile__ void * ptr, int size)

-:394: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#394: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})

-:394: ERROR:SPACING: space required after that ',' (ctx:VxV)
#394: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                      ^

-:394: ERROR:SPACING: space required after that ',' (ctx:VxV)
#394: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                              ^

-:394: ERROR:SPACING: space required after that ',' (ctx:VxV)
#394: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                                    ^

-:394: ERROR:SPACING: space required after that ';' (ctx:VxV)
#394: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                                                    ^

-:394: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ptr' - possible side-effects?
#394: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})

-:416: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#416: FILE: arch/sparc/include/asm/cmpxchg_64.h:90:
+static inline unsigned long __arch_xchg(unsigned long x, __volatile__ void * ptr,

-:417: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#417: FILE: arch/sparc/include/asm/cmpxchg_64.h:91:
+static inline unsigned long __arch_xchg(unsigned long x, __volatile__ void * ptr,
 				       int size)

-:429: ERROR:SPACING: space required after that ',' (ctx:VxV)
#429: FILE: arch/xtensa/include/asm/cmpxchg.h:173:
+	((__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr))))
 	                                                   ^

-:429: ERROR:SPACING: space required after that ',' (ctx:VxV)
#429: FILE: arch/xtensa/include/asm/cmpxchg.h:173:
+	((__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr))))
 	                                                         ^

-:438: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#438: FILE: arch/xtensa/include/asm/cmpxchg.h:206:
+__arch_xchg(unsigned long x, volatile void * ptr, int size)

-:438: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#438: FILE: arch/xtensa/include/asm/cmpxchg.h:206:
+__arch_xchg(unsigned long x, volatile void * ptr, int size)

total: 18 errors, 13 warnings, 10 checks, 312 lines checked
3bbbbbfb9668 linux/include: add non-atomic version of xchg
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:15: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#15: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 19 lines checked
f62adbf67162 drm/i915/gt: use __xchg instead of internal helper


