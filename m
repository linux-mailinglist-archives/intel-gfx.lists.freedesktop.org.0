Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA08E63E6CE
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 01:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B4B910E525;
	Thu,  1 Dec 2022 00:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81F6610E536;
 Thu,  1 Dec 2022 00:59:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D756AADD6;
 Thu,  1 Dec 2022 00:59:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Thu, 01 Dec 2022 00:59:33 -0000
Message-ID: <166985637350.14635.17304541527160040430@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221130235805.221010-1-andi.shyti@linux.intel.com>
In-Reply-To: <20221130235805.221010-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_add_guard_padding_around_i915=5Fvma_=28rev4=29?=
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

Series: add guard padding around i915_vma (rev4)
URL   : https://patchwork.freedesktop.org/series/110720/
State : warning

== Summary ==

Error: dim checkpatch failed
6a062612120d drm/i915: Limit the display memory alignment to 32 bit instead of 64
ab5c06d48524 drm/i915: Wrap all access to i915_vma.node.start|size
-:264: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#264: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c:475:
+	GEM_BUG_ON(i915_vma_offset(vma) != addr);

-:356: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#356: FILE: drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c:65:
+	GEM_BUG_ON(offset + (count - 1) * PAGE_SIZE > i915_vma_size(vma));

-:393: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#393: FILE: drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c:223:
+		GEM_BUG_ON(vma->fence_size > i915_vma_size(vma));

-:787: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#787: FILE: drivers/gpu/drm/i915/i915_vma.c:450:
+	GEM_BUG_ON(vma->size > i915_vma_size(vma));

-:870: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#870: FILE: drivers/gpu/drm/i915/i915_vma.h:146:
+	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));

-:892: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#892: FILE: drivers/gpu/drm/i915/i915_vma.h:168:
+	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));

-:903: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#903: FILE: drivers/gpu/drm/i915/i915_vma.h:176:
+	GEM_BUG_ON(upper_32_bits(i915_vma_offset(vma)));

-:904: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#904: FILE: drivers/gpu/drm/i915/i915_vma.h:177:
+	GEM_BUG_ON(upper_32_bits(i915_vma_offset(vma) +

total: 0 errors, 8 warnings, 0 checks, 805 lines checked
a4f3a8fe82af drm/i915: Introduce guard pages to i915_vma
-:118: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#118: FILE: drivers/gpu/drm/i915/i915_vma.c:762:
+	GEM_BUG_ON(hweight64(flags & (PIN_OFFSET_GUARD | PIN_OFFSET_FIXED | PIN_OFFSET_BIAS)) > 1);

-:132: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#132: FILE: drivers/gpu/drm/i915/i915_vma.c:778:
+		GEM_BUG_ON(overflows_type(flags & PIN_OFFSET_MASK, u32));

-:140: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#140: FILE: drivers/gpu/drm/i915/i915_vma.c:786:
+	GEM_BUG_ON(2 * guard > end);

-:226: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_node' - possible side-effects?
#226: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:37:
+#define VMA_RES_START(_node) ((_node)->start - (_node)->guard)

-:227: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_node' - possible side-effects?
#227: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:38:
+#define VMA_RES_LAST(_node) ((_node)->start + (_node)->node_size + (_node)->guard - 1)

total: 0 errors, 3 warnings, 2 checks, 206 lines checked
6b9ed1df2f64 drm/i915: Refine VT-d scanout workaround
0a415a58613e Revert "drm/i915: Improve on suspend / resume time with VT-d enabled"


