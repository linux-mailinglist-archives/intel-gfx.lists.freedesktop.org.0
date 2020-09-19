Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C275270CBD
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Sep 2020 12:03:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 914A86E207;
	Sat, 19 Sep 2020 10:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 660316E200;
 Sat, 19 Sep 2020 10:03:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C08BA47E1;
 Sat, 19 Sep 2020 10:03:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Gleixner" <tglx@linutronix.de>
Date: Sat, 19 Sep 2020 10:03:03 -0000
Message-ID: <160050978334.25656.1011878624419463411@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200919091751.011116649@linutronix.de>
In-Reply-To: <20200919091751.011116649@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mm/highmem=3A_Provide_a_preemptible_variant_of_kmap=5Fatomi?=
 =?utf-8?q?c_=26_friends?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: mm/highmem: Provide a preemptible variant of kmap_atomic & friends
URL   : https://patchwork.freedesktop.org/series/81869/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
09e63fe3f428 mm/highmem: Un-EXPORT __kmap_atomic_idx()
255bffcadf05 highmem: Provide generic variant of kmap_atomic*
-:84: CHECK:LINE_SPACING: Please don't use multiple blank lines
#84: FILE: include/linux/highmem.h:135:
+
+

-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'addr' - possible side-effects?
#141: FILE: include/linux/highmem.h:273:
+#define kunmap_atomic(addr)						\
+	do {								\
+		BUILD_BUG_ON(__same_type((addr), struct page *));	\
+		__kunmap_atomic(addr);					\
+		preempt_enable();					\
+	} while (0)

-:236: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#236: FILE: mm/highmem.c:426:
+	BUG_ON(!pte_none(*(kmap_pte - idx)));

-:271: CHECK:SPACING: No space is necessary after a cast
#271: FILE: mm/highmem.c:461:
+	unsigned long addr = (unsigned long) vaddr & PAGE_MASK;

total: 0 errors, 1 warnings, 3 checks, 267 lines checked
625148d57afa x86/mm/highmem: Use generic kmap atomic implementation
1832cad138d0 arc/mm/highmem: Use generic kmap atomic implementation
-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr' - possible side-effects?
#45: FILE: arch/arc/include/asm/highmem.h:35:
+#define arch_kmap_temp_post_unmap(vaddr)			\
+	local_flush_tlb_kernel_range(vaddr, vaddr + PAGE_SIZE)

total: 0 errors, 0 warnings, 1 checks, 81 lines checked
65fec7d3aa8d ARM: highmem: Switch to generic kmap atomic
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:33: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#33: FILE: arch/arm/include/asm/highmem.h:51:
+extern void *arch_kmap_temporary_high_get(struct page *page);

-:82: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#82: 
deleted file mode 100644

total: 0 errors, 2 warnings, 1 checks, 55 lines checked
5290cbab1bf8 csky/mm/highmem: Switch to generic kmap atomic
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 99 lines checked
dbf59e6698e3 microblaze/mm/highmem: Switch to generic kmap atomic
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:37: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#37: FILE: arch/microblaze/include/asm/highmem.h:54:
+#define arch_kmap_temp_post_map(vaddr, pteval)	\
+	local_flush_tlb_page(NULL, vaddr);

-:39: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#39: FILE: arch/microblaze/include/asm/highmem.h:56:
+#define arch_kmap_temp_post_unmap(vaddr)	\
+	local_flush_tlb_page(NULL, vaddr);

-:55: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#55: 
deleted file mode 100644

total: 0 errors, 4 warnings, 0 checks, 45 lines checked
3e35d9f89ec7 mips/mm/highmem: Switch to generic kmap atomic
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
7e666c270f0c nds32/mm/highmem: Switch to generic kmap atomic
-:36: WARNING:TYPO_SPELLING: 'interupted' may be misspelled - perhaps 'interrupted'?
#36: FILE: arch/nds32/include/asm/highmem.h:49:
+ * is interupted and another kmap_atomic() happens in interrupt context.

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr' - possible side-effects?
#42: FILE: arch/nds32/include/asm/highmem.h:52:
+#define arch_kmap_temp_post_map(vaddr, pteval)			\
+	do {							\
+		__nds32__tlbop_inv(vaddr);			\
+		__nds32__mtsr_dsb(vaddr, NDS32_SR_TLB_VPN);	\
+		__nds32__tlbop_rwr(pteval);			\
+		__nds32__isb();					\
+	} while (0)

-:70: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#70: 
deleted file mode 100644

total: 0 errors, 2 warnings, 1 checks, 41 lines checked
48674c7f32cf powerpc/mm/highmem: Switch to generic kmap atomic
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:61: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#61: 
deleted file mode 100644

total: 0 errors, 2 warnings, 0 checks, 51 lines checked
f2cb65d888e1 sparc/mm/highmem: Switch to generic kmap atomic
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:43: CHECK:LINE_SPACING: Please don't use multiple blank lines
#43: FILE: arch/sparc/include/asm/highmem.h:58:
+
+

-:59: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#59: 
deleted file mode 100644

total: 0 errors, 2 warnings, 1 checks, 37 lines checked
e199affb975e xtensa/mm/highmem: Switch to generic kmap atomic
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr' - possible side-effects?
#37: FILE: arch/xtensa/include/asm/highmem.h:77:
+#define arch_kmap_temp_post_unmap(vaddr)	\
+	local_flush_tlb_kernel_range(vaddr, vaddr + PAGE_SIZE)

total: 0 errors, 1 warnings, 1 checks, 89 lines checked
70e9cf2abd92 mm/highmem: Remove the old kmap_atomic cruft
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:129: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#129: FILE: mm/highmem.c:387:
+	BUG_ON(idx >= KM_TYPE_NR);

-:142: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#142: FILE: mm/highmem.c:400:
+	BUG_ON(idx < 0);

total: 0 errors, 3 warnings, 0 checks, 127 lines checked
256adfec14ec sched: highmem: Store temporary kmaps in task struct
-:128: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#128: FILE: mm/highmem.c:398:
+	BUG_ON(current->kmap_ctrl.idx < 0);

total: 0 errors, 1 warnings, 0 checks, 156 lines checked
c03e21031fb7 mm/highmem: Provide kmap_temporary*
-:191: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'addr' - possible side-effects?
#191: FILE: include/linux/highmem.h:256:
+#define kunmap_temporary(addr)						\
+	do {								\
+		BUILD_BUG_ON(__same_type((addr), struct page *));	\
+		__kunmap_temporary(addr);				\
+	} while (0)

total: 0 errors, 0 warnings, 1 checks, 206 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
