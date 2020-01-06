Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9386F131C8F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 00:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF3E06E5A9;
	Mon,  6 Jan 2020 23:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6087F6E5A5;
 Mon,  6 Jan 2020 23:53:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57A94A363D;
 Mon,  6 Jan 2020 23:53:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 06 Jan 2020 23:53:18 -0000
Message-ID: <157835479832.24767.15451814865321959832@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106234703.645168-1-matthew.auld@intel.com>
In-Reply-To: <20200106234703.645168-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gtt=3A_split_up_i915=5Fgem=5Fgtt?=
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

Series: drm/i915/gtt: split up i915_gem_gtt
URL   : https://patchwork.freedesktop.org/series/71678/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f96decd69a0e drm/i915/gtt: split up i915_gem_gtt
-:67: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#67: 
new file mode 100644

-:86: WARNING:INCLUDE_LINUX: Use #include <linux/smp.h> instead of <asm/smp.h>
#86: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:15:
+#include <asm/smp.h>

-:210: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#210: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:139:
+	unsigned first_entry = vma->node.start / I915_GTT_PAGE_SIZE;

-:211: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#211: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:140:
+	unsigned act_pt = first_entry / GEN6_PTES;

-:212: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#212: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:141:
+	unsigned act_pte = first_entry % GEN6_PTES;

-:258: WARNING:MEMORY_BARRIER: memory barrier without comment
#258: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:187:
+	mb();

-:261: WARNING:MEMORY_BARRIER: memory barrier without comment
#261: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:190:
+	mb();

-:489: WARNING:BRACES: braces {} are not necessary for single statement blocks
#489: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:418:
+	if (!atomic_read(&ppgtt->pin_count)) {
+		err = i915_ggtt_pin(ppgtt->vma, GEN6_PD_ALIGN, PIN_HIGH);
+	}

-:589: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#589: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:14:
+	struct mutex flush;

-:594: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#594: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:19:
+	struct mutex pin_mutex;

-:599: CHECK:LINE_SPACING: Please don't use multiple blank lines
#599: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:24:
+
+

-:615: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'base' - possible side-effects?
#615: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:40:
+#define __to_gen6_ppgtt(base) container_of(base, struct gen6_ppgtt, base)

-:631: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'start' - possible side-effects?
#631: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:56:
+#define gen6_for_each_pde(pt, pd, start, length, iter)			\
+	for (iter = gen6_pde_index(start);				\
+	     length > 0 && iter < I915_PDES &&				\
+		     (pt = i915_pt_entry(pd, iter), true);		\
+	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
+		    temp = min(temp - start, length);			\
+		    start += temp, length -= temp; }), ++iter)

-:631: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'length' - possible side-effects?
#631: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:56:
+#define gen6_for_each_pde(pt, pd, start, length, iter)			\
+	for (iter = gen6_pde_index(start);				\
+	     length > 0 && iter < I915_PDES &&				\
+		     (pt = i915_pt_entry(pd, iter), true);		\
+	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
+		    temp = min(temp - start, length);			\
+		    start += temp, length -= temp; }), ++iter)

-:631: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'length' may be better as '(length)' to avoid precedence issues
#631: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:56:
+#define gen6_for_each_pde(pt, pd, start, length, iter)			\
+	for (iter = gen6_pde_index(start);				\
+	     length > 0 && iter < I915_PDES &&				\
+		     (pt = i915_pt_entry(pd, iter), true);		\
+	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
+		    temp = min(temp - start, length);			\
+		    start += temp, length -= temp; }), ++iter)

-:631: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'iter' - possible side-effects?
#631: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:56:
+#define gen6_for_each_pde(pt, pd, start, length, iter)			\
+	for (iter = gen6_pde_index(start);				\
+	     length > 0 && iter < I915_PDES &&				\
+		     (pt = i915_pt_entry(pd, iter), true);		\
+	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
+		    temp = min(temp - start, length);			\
+		    start += temp, length -= temp; }), ++iter)

-:635: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#635: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:60:
+	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
 	                              ^

-:639: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'iter' - possible side-effects?
#639: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:64:
+#define gen6_for_all_pdes(pt, pd, iter)					\
+	for (iter = 0;							\
+	     iter < I915_PDES &&					\
+		     (pt = i915_pt_entry(pd, iter), true);		\
+	     ++iter)

-:645: CHECK:LINE_SPACING: Please don't use multiple blank lines
#645: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:70:
+
+

-:675: WARNING:INCLUDE_LINUX: Use #include <linux/smp.h> instead of <asm/smp.h>
#675: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:15:
+#include <asm/smp.h>

-:693: ERROR:SPACING: spaces required around that '=' (ctx:VxW)
#693: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:33:
+	struct drm_i915_private *dev_priv= ppgtt->vm.i915;
 	                                 ^

-:777: WARNING:LINE_SPACING: Missing a blank line after declarations
#777: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:117:
+	unsigned int shift = __gen8_pte_shift(vm->top);
+	return (vm->total + (1ull << shift) - 1) >> shift;

-:1277: WARNING:MEMORY_BARRIER: memory barrier without comment
#1277: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:617:
+	wmb();

-:1643: WARNING:LINE_SPACING: Missing a blank line after declarations
#1643: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:243:
+	dma_addr_t addr;
+	for_each_sgt_daddr(addr, iter, vma->pages)

-:1662: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#1662: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:262:
+	unsigned first_entry = start / I915_GTT_PAGE_SIZE;

-:1663: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#1663: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:263:
+	unsigned num_entries = length / I915_GTT_PAGE_SIZE;

-:1777: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#1777: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:377:
+	unsigned first_entry = start / I915_GTT_PAGE_SIZE;

-:1778: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#1778: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:378:
+	unsigned num_entries = length / I915_GTT_PAGE_SIZE;

-:2321: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#2321: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:921:
+	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
 	                            ^

-:2321: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#2321: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:921:
+	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
 	                                                              ^

-:2384: CHECK:SPACING: No space is necessary after a cast
#2384: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:984:
+		(struct resource) DEFINE_RES_MEM(gmadr_base,

-:3009: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3009: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:201:
+
+

-:3104: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3104: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:296:
+int setup_page_dma(struct i915_address_space *vm,
+			  struct i915_page_dma *p)

-:3305: WARNING:LINE_SPACING: Missing a blank line after declarations
#3305: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:497:
+	u64 pde = _PAGE_PRESENT | _PAGE_RW;
+	pde |= addr;

-:3318: WARNING:LINE_SPACING: Missing a blank line after declarations
#3318: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:510:
+	gen6_pte_t pte = GEN6_PTE_VALID;
+	pte |= GEN6_PTE_ADDR_ENCODE(addr);

-:3340: WARNING:LINE_SPACING: Missing a blank line after declarations
#3340: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:532:
+	gen6_pte_t pte = GEN6_PTE_VALID;
+	pte |= GEN6_PTE_ADDR_ENCODE(addr);

-:3364: WARNING:LINE_SPACING: Missing a blank line after declarations
#3364: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:556:
+	gen6_pte_t pte = GEN6_PTE_VALID;
+	pte |= GEN6_PTE_ADDR_ENCODE(addr);

-:3380: WARNING:LINE_SPACING: Missing a blank line after declarations
#3380: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:572:
+	gen6_pte_t pte = GEN6_PTE_VALID;
+	pte |= HSW_PTE_ADDR_ENCODE(addr);

-:3393: WARNING:LINE_SPACING: Missing a blank line after declarations
#3393: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:585:
+	gen6_pte_t pte = GEN6_PTE_VALID;
+	pte |= HSW_PTE_ADDR_ENCODE(addr);

-:3452: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#3452: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:644:
+ * writing this data shouldn't be harmful even in those cases. */

-:3458: WARNING:LONG_LINE_COMMENT: line over 100 characters
#3458: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:650:
+	      GEN8_PPAT(1, GEN8_PPAT_WC | GEN8_PPAT_LLCELLC) |	/* for something pointing to ptes? */

-:3460: WARNING:LONG_LINE_COMMENT: line over 100 characters
#3460: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:652:
+	      GEN8_PPAT(3, GEN8_PPAT_UC) |			/* Uncached objects, mostly for scanout */

-:3598: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'addr' - possible side-effects?
#3598: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:68:
+#define GEN6_GTT_ADDR_ENCODE(addr)	((addr) | (((addr) >> 28) & 0xff0))

-:3610: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'pde_shift' may be better as '(pde_shift)' to avoid precedence issues
#3610: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:80:
+#define NUM_PTE(pde_shift)     (1 << (pde_shift - PAGE_SHIFT))

-:3620: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bits' - possible side-effects?
#3620: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:90:
+#define HSW_CACHEABILITY_CONTROL(bits)	((((bits) & 0x7) << 1) | \
+					 (((bits) & 0x8) << (11 - 3)))

-:3629: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'addr' - possible side-effects?
#3629: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:99:
+#define HSW_GTT_ADDR_ENCODE(addr)	((addr) | (((addr) >> 28) & 0x7f0))

-:3650: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3650: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:120:
+#define CHV_PPAT_SNOOP			(1<<6)
                       			  ^

-:3651: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3651: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:121:
+#define GEN8_PPAT_AGE(x)		((x)<<4)
                         		    ^

-:3652: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3652: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:122:
+#define GEN8_PPAT_LLCeLLC		(3<<2)
                          		  ^

-:3653: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3653: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:123:
+#define GEN8_PPAT_LLCELLC		(2<<2)
                          		  ^

-:3654: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3654: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:124:
+#define GEN8_PPAT_LLC			(1<<2)
                      			  ^

-:3655: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3655: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:125:
+#define GEN8_PPAT_WB			(3<<0)
                     			  ^

-:3656: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3656: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:126:
+#define GEN8_PPAT_WT			(2<<0)
                     			  ^

-:3657: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3657: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:127:
+#define GEN8_PPAT_WC			(1<<0)
                     			  ^

-:3658: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3658: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:128:
+#define GEN8_PPAT_UC			(0<<0)
                     			  ^

-:3659: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3659: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:129:
+#define GEN8_PPAT_ELLC_OVERRIDE		(0<<2)
                                		  ^

-:3757: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#3757: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:227:
+	BUILD_BUG_ON(sizeof(struct intel_rotation_info) != 8*sizeof(unsigned int));
 	                                                    ^

-:3759: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#3759: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:229:
+	BUILD_BUG_ON(sizeof(struct intel_remapped_info) != 9*sizeof(unsigned int));
 	                                                    ^

-:3814: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#3814: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:284:
+	spinlock_t lock;

-:3825: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'px' - possible side-effects?
#3825: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:295:
+#define px_base(px) \
+	__px_choose_expr(px, struct i915_page_dma *, __x, \
+	__px_choose_expr(px, struct i915_page_scratch *, &__x->base, \
+	__px_choose_expr(px, struct i915_page_table *, &__x->base, \
+	__px_choose_expr(px, struct i915_page_directory *, &__x->pt.base, \
+	(void)0))))

-:3833: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'px' - possible side-effects?
#3833: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:303:
+#define px_pt(px) \
+	__px_choose_expr(px, struct i915_page_table *, __x, \
+	__px_choose_expr(px, struct i915_page_directory *, &__x->pt, \
+	(void)0))

-:3862: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#3862: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:332:
+	spinlock_t lock;

-:3926: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3926: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:396:
+#define PTE_READ_ONLY	(1<<0)
                      	  ^

-:4095: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#4095: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:565:
+ * GEN6_PTES for GEN6, and GEN8_PTES for GEN8.
+*/

-:4117: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4117: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:587:
+
+

-:4433: WARNING:MEMORY_BARRIER: memory barrier without comment
#4433: FILE: drivers/gpu/drm/i915/gt/intel_ppgtt.c:183:
+	wmb();

-:4472: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#4472: FILE: drivers/gpu/drm/i915/gt/intel_ppgtt.c:222:
+struct sgt_dma sgt_dma(struct i915_vma *vma) {

-:4475: WARNING:LINE_SPACING: Missing a blank line after declarations
#4475: FILE: drivers/gpu/drm/i915/gt/intel_ppgtt.c:225:
+	dma_addr_t addr = sg_dma_address(sg);
+	return (struct sgt_dma) { sg, addr, addr + sg->length };

-:4485: CHECK:LINE_SPACING: Please don't use multiple blank lines
#4485: FILE: drivers/gpu/drm/i915/gt/intel_ring_submission.c:36:
 
+

-:5168: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#5168: FILE: drivers/gpu/drm/i915/i915_gem_gtt.c:68:
+			udelay(10);

total: 2 errors, 28 warnings, 40 checks, 8751 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
