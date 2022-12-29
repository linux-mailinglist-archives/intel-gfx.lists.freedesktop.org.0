Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA800658C7E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Dec 2022 13:03:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3DC10E198;
	Thu, 29 Dec 2022 12:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF93110E198;
 Thu, 29 Dec 2022 12:03:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7420CAADE2;
 Thu, 29 Dec 2022 12:03:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Thu, 29 Dec 2022 12:03:16 -0000
Message-ID: <167231539644.3304.4375207708029449265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221222114635.1251934-1-andrzej.hajda@intel.com>
In-Reply-To: <20221222114635.1251934-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_=5F=5Fxchg=2C_non-atomic_xchg_=28rev2=29?=
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

Series: Introduce __xchg, non-atomic xchg (rev2)
URL   : https://patchwork.freedesktop.org/series/112169/
State : warning

== Summary ==

Error: dim checkpatch failed
8d448159f384 arch/alpha: rename internal name __xchg to __arch_xchg
fbe161e26670 arch: rename all internal names __xchg to __arch_xchg
-:42: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#42: FILE: arch/arm/include/asm/cmpxchg.h:28:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void *ptr, int size)

-:95: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#95: FILE: arch/hexagon/include/asm/cmpxchg.h:22:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void *ptr,

-:96: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#96: FILE: arch/hexagon/include/asm/cmpxchg.h:23:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void *ptr,
 				   int size)

-:104: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ptr' - possible side-effects?
#104: FILE: arch/hexagon/include/asm/cmpxchg.h:45:
+#define arch_xchg(ptr, v) ((__typeof__(*(ptr)))__arch_xchg((unsigned long)(v), (ptr), \
 	sizeof(*(ptr))))

-:117: CHECK:SPACING: No space is necessary after a cast
#117: FILE: arch/ia64/include/asm/cmpxchg.h:8:
+({(__typeof__(*(ptr))) __arch_xchg((unsigned long) (x), (ptr), sizeof(*(ptr)));})

-:117: ERROR:SPACING: space required after that ';' (ctx:VxV)
#117: FILE: arch/ia64/include/asm/cmpxchg.h:8:
+({(__typeof__(*(ptr))) __arch_xchg((unsigned long) (x), (ptr), sizeof(*(ptr)));})
                                                                               ^

-:139: CHECK:SPACING: No space is necessary after a cast
#139: FILE: arch/ia64/include/uapi/asm/cmpxchg.h:58:
+({(__typeof__(*(ptr))) __arch_xchg((unsigned long) (x), (ptr), sizeof(*(ptr)));})

-:139: ERROR:SPACING: space required after that ';' (ctx:VxV)
#139: FILE: arch/ia64/include/uapi/asm/cmpxchg.h:58:
+({(__typeof__(*(ptr))) __arch_xchg((unsigned long) (x), (ptr), sizeof(*(ptr)));})
                                                                               ^

-:152: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#152: FILE: arch/loongarch/include/asm/cmpxchg.h:65:
+__arch_xchg(volatile void *ptr, unsigned long x, int size)

-:174: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#174: FILE: arch/m68k/include/asm/cmpxchg.h:12:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void * ptr, int size)

-:174: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#174: FILE: arch/m68k/include/asm/cmpxchg.h:12:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void * ptr, int size)

-:183: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#183: FILE: arch/m68k/include/asm/cmpxchg.h:43:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void * ptr, int size)

-:183: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#183: FILE: arch/m68k/include/asm/cmpxchg.h:43:
+static inline unsigned long __arch_xchg(unsigned long x, volatile void * ptr, int size)

-:192: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#192: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})

-:192: ERROR:SPACING: space required after that ',' (ctx:VxV)
#192: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                      ^

-:192: ERROR:SPACING: space required after that ',' (ctx:VxV)
#192: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                              ^

-:192: ERROR:SPACING: space required after that ',' (ctx:VxV)
#192: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                                    ^

-:192: ERROR:SPACING: space required after that ';' (ctx:VxV)
#192: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                                                    ^

-:192: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ptr' - possible side-effects?
#192: FILE: arch/m68k/include/asm/cmpxchg.h:78:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})

-:205: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#205: FILE: arch/mips/include/asm/cmpxchg.h:71:
+unsigned long __arch_xchg(volatile void *ptr, unsigned long x, int size)

-:227: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#227: FILE: arch/openrisc/include/asm/cmpxchg.h:150:
+static inline unsigned long __arch_xchg(volatile void *ptr, unsigned long with,

-:228: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#228: FILE: arch/openrisc/include/asm/cmpxchg.h:151:
+static inline unsigned long __arch_xchg(volatile void *ptr, unsigned long with,
 		int size)

-:249: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#249: FILE: arch/parisc/include/asm/cmpxchg.h:25:
+__arch_xchg(unsigned long x, volatile void *ptr, int size)

-:271: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using '__xchg_local', this function's name, in a string
#271: FILE: arch/powerpc/include/asm/cmpxchg.h:232:
+	BUILD_BUG_ON_MSG(1, "Unsupported size for __xchg_local");

-:280: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using '__xchg_relaxed', this function's name, in a string
#280: FILE: arch/powerpc/include/asm/cmpxchg.h:251:
+	BUILD_BUG_ON_MSG(1, "Unsupported size for __xchg_relaxed");

-:293: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around v->counter
#293: FILE: arch/riscv/include/asm/atomic.h:264:
+	return __arch_xchg(&(v->counter), n, size);			\

-:329: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#329: FILE: arch/s390/include/asm/cmpxchg.h:18:
+static __always_inline unsigned long __arch_xchg(unsigned long x,
 					    unsigned long address, int size)

-:359: ERROR:SPACING: space required after that ',' (ctx:VxV)
#359: FILE: arch/sh/include/asm/cmpxchg.h:49:
+	((__typeof__(*(ptr)))__arch_xchg((ptr),(unsigned long)(x), sizeof(*(ptr))))
 	                                      ^

-:372: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#372: FILE: arch/sparc/include/asm/cmpxchg_32.h:18:
+static inline unsigned long __arch_xchg(unsigned long x, __volatile__ void * ptr, int size)

-:381: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#381: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})

-:381: ERROR:SPACING: space required after that ',' (ctx:VxV)
#381: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                      ^

-:381: ERROR:SPACING: space required after that ',' (ctx:VxV)
#381: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                              ^

-:381: ERROR:SPACING: space required after that ',' (ctx:VxV)
#381: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                                    ^

-:381: ERROR:SPACING: space required after that ';' (ctx:VxV)
#381: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})
                                                                                                    ^

-:381: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ptr' - possible side-effects?
#381: FILE: arch/sparc/include/asm/cmpxchg_32.h:28:
+#define arch_xchg(ptr,x) ({(__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr)));})

-:403: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#403: FILE: arch/sparc/include/asm/cmpxchg_64.h:90:
+static inline unsigned long __arch_xchg(unsigned long x, __volatile__ void * ptr,

-:404: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#404: FILE: arch/sparc/include/asm/cmpxchg_64.h:91:
+static inline unsigned long __arch_xchg(unsigned long x, __volatile__ void * ptr,
 				       int size)

-:416: ERROR:SPACING: space required after that ',' (ctx:VxV)
#416: FILE: arch/xtensa/include/asm/cmpxchg.h:173:
+	((__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr))))
 	                                                   ^

-:416: ERROR:SPACING: space required after that ',' (ctx:VxV)
#416: FILE: arch/xtensa/include/asm/cmpxchg.h:173:
+	((__typeof__(*(ptr)))__arch_xchg((unsigned long)(x),(ptr),sizeof(*(ptr))))
 	                                                         ^

-:425: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#425: FILE: arch/xtensa/include/asm/cmpxchg.h:206:
+__arch_xchg(unsigned long x, volatile void * ptr, int size)

-:425: WARNING:VOLATILE: Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
#425: FILE: arch/xtensa/include/asm/cmpxchg.h:206:
+__arch_xchg(unsigned long x, volatile void * ptr, int size)

total: 18 errors, 13 warnings, 10 checks, 304 lines checked
b6c881b5c7c3 linux/include: add non-atomic version of xchg
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:15: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#15: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 19 lines checked
e075fe7451b6 drm/i915/gt: use __xchg instead of internal helper


