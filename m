Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF29132C5D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 18:00:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C789B6E82E;
	Tue,  7 Jan 2020 17:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CF666E82D;
 Tue,  7 Jan 2020 17:00:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 864CBA0073;
 Tue,  7 Jan 2020 17:00:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Jan 2020 17:00:19 -0000
Message-ID: <157841641953.8942.598972798256710233@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106234703.645168-1-matthew.auld@intel.com>
In-Reply-To: <20200106234703.645168-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gtt=3A_split_up_i915=5Fgem=5Fgtt_=28rev2=29?=
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

Series: drm/i915/gtt: split up i915_gem_gtt (rev2)
URL   : https://patchwork.freedesktop.org/series/71678/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b50ab2add6b6 drm/i915/gtt: split up i915_gem_gtt
-:112: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#112: 
new file mode 100644

-:287: WARNING:MEMORY_BARRIER: memory barrier without comment
#287: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:171:
+	mb();

-:290: WARNING:MEMORY_BARRIER: memory barrier without comment
#290: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:174:
+	mb();

-:618: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#618: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:14:
+	struct mutex flush;

-:623: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#623: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:19:
+	struct mutex pin_mutex;

-:643: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'base' - possible side-effects?
#643: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:39:
+#define __to_gen6_ppgtt(base) container_of(base, struct gen6_ppgtt, base)

-:659: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'start' - possible side-effects?
#659: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:55:
+#define gen6_for_each_pde(pt, pd, start, length, iter)			\
+	for (iter = gen6_pde_index(start);				\
+	     length > 0 && iter < I915_PDES &&				\
+		     (pt = i915_pt_entry(pd, iter), true);		\
+	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
+		    temp = min(temp - start, length);			\
+		    start += temp, length -= temp; }), ++iter)

-:659: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'length' - possible side-effects?
#659: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:55:
+#define gen6_for_each_pde(pt, pd, start, length, iter)			\
+	for (iter = gen6_pde_index(start);				\
+	     length > 0 && iter < I915_PDES &&				\
+		     (pt = i915_pt_entry(pd, iter), true);		\
+	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
+		    temp = min(temp - start, length);			\
+		    start += temp, length -= temp; }), ++iter)

-:659: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'length' may be better as '(length)' to avoid precedence issues
#659: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:55:
+#define gen6_for_each_pde(pt, pd, start, length, iter)			\
+	for (iter = gen6_pde_index(start);				\
+	     length > 0 && iter < I915_PDES &&				\
+		     (pt = i915_pt_entry(pd, iter), true);		\
+	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
+		    temp = min(temp - start, length);			\
+		    start += temp, length -= temp; }), ++iter)

-:659: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'iter' - possible side-effects?
#659: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:55:
+#define gen6_for_each_pde(pt, pd, start, length, iter)			\
+	for (iter = gen6_pde_index(start);				\
+	     length > 0 && iter < I915_PDES &&				\
+		     (pt = i915_pt_entry(pd, iter), true);		\
+	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
+		    temp = min(temp - start, length);			\
+		    start += temp, length -= temp; }), ++iter)

-:663: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#663: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:59:
+	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
 	                              ^

-:667: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'iter' - possible side-effects?
#667: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.h:63:
+#define gen6_for_all_pdes(pt, pd, iter)					\
+	for (iter = 0;							\
+	     iter < I915_PDES &&					\
+		     (pt = i915_pt_entry(pd, iter), true);		\
+	     ++iter)

-:810: WARNING:LINE_SPACING: Missing a blank line after declarations
#810: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:124:
+	unsigned int shift = __gen8_pte_shift(vm->top);
+	return (vm->total + (1ull << shift) - 1) >> shift;

-:1310: WARNING:MEMORY_BARRIER: memory barrier without comment
#1310: FILE: drivers/gpu/drm/i915/gt/gen8_ppgtt.c:624:
+	wmb();

-:1676: WARNING:LINE_SPACING: Missing a blank line after declarations
#1676: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:243:
+	dma_addr_t addr;
+	for_each_sgt_daddr(addr, iter, vma->pages)

-:1695: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#1695: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:262:
+	unsigned first_entry = start / I915_GTT_PAGE_SIZE;

-:1696: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#1696: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:263:
+	unsigned num_entries = length / I915_GTT_PAGE_SIZE;

-:1808: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#1808: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:375:
+	unsigned first_entry = start / I915_GTT_PAGE_SIZE;

-:1809: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#1809: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:376:
+	unsigned num_entries = length / I915_GTT_PAGE_SIZE;

-:2343: WARNING:LINE_SPACING: Missing a blank line after declarations
#2343: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:910:
+	gen6_pte_t pte = GEN6_PTE_VALID;
+	pte |= GEN6_PTE_ADDR_ENCODE(addr);

-:2365: WARNING:LINE_SPACING: Missing a blank line after declarations
#2365: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:932:
+	gen6_pte_t pte = GEN6_PTE_VALID;
+	pte |= GEN6_PTE_ADDR_ENCODE(addr);

-:2389: WARNING:LINE_SPACING: Missing a blank line after declarations
#2389: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:956:
+	gen6_pte_t pte = GEN6_PTE_VALID;
+	pte |= GEN6_PTE_ADDR_ENCODE(addr);

-:2405: WARNING:LINE_SPACING: Missing a blank line after declarations
#2405: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:972:
+	gen6_pte_t pte = GEN6_PTE_VALID;
+	pte |= HSW_PTE_ADDR_ENCODE(addr);

-:2418: WARNING:LINE_SPACING: Missing a blank line after declarations
#2418: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:985:
+	gen6_pte_t pte = GEN6_PTE_VALID;
+	pte |= HSW_PTE_ADDR_ENCODE(addr);

-:2448: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#2448: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:1015:
+	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
 	                            ^

-:2448: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#2448: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:1015:
+	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
 	                                                              ^

-:3470: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#3470: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:523:
+ * writing this data shouldn't be harmful even in those cases. */

-:3476: WARNING:LONG_LINE_COMMENT: line over 100 characters
#3476: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:529:
+	      GEN8_PPAT(1, GEN8_PPAT_WC | GEN8_PPAT_LLCELLC) |	/* for something pointing to ptes? */

-:3478: WARNING:LONG_LINE_COMMENT: line over 100 characters
#3478: FILE: drivers/gpu/drm/i915/gt/intel_gtt.c:531:
+	      GEN8_PPAT(3, GEN8_PPAT_UC) |			/* Uncached objects, mostly for scanout */

-:3618: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'addr' - possible side-effects?
#3618: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:70:
+#define GEN6_GTT_ADDR_ENCODE(addr)	((addr) | (((addr) >> 28) & 0xff0))

-:3630: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'pde_shift' may be better as '(pde_shift)' to avoid precedence issues
#3630: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:82:
+#define NUM_PTE(pde_shift)     (1 << (pde_shift - PAGE_SHIFT))

-:3640: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'bits' - possible side-effects?
#3640: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:92:
+#define HSW_CACHEABILITY_CONTROL(bits)	((((bits) & 0x7) << 1) | \
+					 (((bits) & 0x8) << (11 - 3)))

-:3649: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'addr' - possible side-effects?
#3649: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:101:
+#define HSW_GTT_ADDR_ENCODE(addr)	((addr) | (((addr) >> 28) & 0x7f0))

-:3671: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3671: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:123:
+#define GEN8_PPAT_AGE(x)		((x)<<4)
                         		    ^

-:3672: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3672: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:124:
+#define GEN8_PPAT_LLCeLLC		(3<<2)
                          		  ^

-:3673: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3673: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:125:
+#define GEN8_PPAT_LLCELLC		(2<<2)
                          		  ^

-:3674: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3674: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:126:
+#define GEN8_PPAT_LLC			(1<<2)
                      			  ^

-:3675: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3675: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:127:
+#define GEN8_PPAT_WB			(3<<0)
                     			  ^

-:3676: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3676: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:128:
+#define GEN8_PPAT_WT			(2<<0)
                     			  ^

-:3677: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3677: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:129:
+#define GEN8_PPAT_WC			(1<<0)
                     			  ^

-:3678: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3678: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:130:
+#define GEN8_PPAT_UC			(0<<0)
                     			  ^

-:3679: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#3679: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:131:
+#define GEN8_PPAT_ELLC_OVERRIDE		(0<<2)
                                		  ^

-:3712: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#3712: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:164:
+	spinlock_t lock;

-:3723: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'px' - possible side-effects?
#3723: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:175:
+#define px_base(px) \
+	__px_choose_expr(px, struct i915_page_dma *, __x, \
+	__px_choose_expr(px, struct i915_page_scratch *, &__x->base, \
+	__px_choose_expr(px, struct i915_page_table *, &__x->base, \
+	__px_choose_expr(px, struct i915_page_directory *, &__x->pt.base, \
+	(void)0))))

-:3731: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'px' - possible side-effects?
#3731: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:183:
+#define px_pt(px) \
+	__px_choose_expr(px, struct i915_page_table *, __x, \
+	__px_choose_expr(px, struct i915_page_directory *, &__x->pt, \
+	(void)0))

-:3760: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#3760: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:212:
+	spinlock_t lock;

-:4316: WARNING:MEMORY_BARRIER: memory barrier without comment
#4316: FILE: drivers/gpu/drm/i915/gt/intel_ppgtt.c:181:
+	wmb();

-:5070: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#5070: FILE: drivers/gpu/drm/i915/i915_gem_gtt.c:68:
+			udelay(10);

-:8995: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#8995: FILE: drivers/gpu/drm/i915/i915_vma_types.h:126:
+	BUILD_BUG_ON(sizeof(struct intel_rotation_info) != 8*sizeof(unsigned int));
 	                                                    ^

-:8997: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#8997: FILE: drivers/gpu/drm/i915/i915_vma_types.h:128:
+	BUILD_BUG_ON(sizeof(struct intel_remapped_info) != 9*sizeof(unsigned int));
 	                                                    ^

total: 0 errors, 19 warnings, 31 checks, 9335 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
