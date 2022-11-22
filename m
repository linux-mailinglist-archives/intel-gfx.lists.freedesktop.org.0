Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 881AB63490A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 22:19:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20F310E045;
	Tue, 22 Nov 2022 21:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1A7210E1DB;
 Tue, 22 Nov 2022 21:19:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB3E0AA01E;
 Tue, 22 Nov 2022 21:19:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 22 Nov 2022 21:19:27 -0000
Message-ID: <166915196793.2187.18071079817651371182@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221122185737.96459-1-andi.shyti@linux.intel.com>
In-Reply-To: <20221122185737.96459-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_add_guard_padding_around_i915=5Fvma_=28rev2=29?=
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

Series: add guard padding around i915_vma (rev2)
URL   : https://patchwork.freedesktop.org/series/110720/
State : warning

== Summary ==

Error: dim checkpatch failed
c3b7961dfa97 drm/i915: Wrap all access to i915_vma.node.start|size
-:263: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#263: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c:475:
+	GEM_BUG_ON(i915_vma_offset(vma) != addr);

-:355: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#355: FILE: drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c:65:
+	GEM_BUG_ON(offset + (count - 1) * PAGE_SIZE > i915_vma_size(vma));

-:392: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#392: FILE: drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c:223:
+		GEM_BUG_ON(vma->fence_size > i915_vma_size(vma));

-:786: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#786: FILE: drivers/gpu/drm/i915/i915_vma.c:450:
+	GEM_BUG_ON(vma->size > i915_vma_size(vma));

-:869: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#869: FILE: drivers/gpu/drm/i915/i915_vma.h:146:
+	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));

-:891: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#891: FILE: drivers/gpu/drm/i915/i915_vma.h:168:
+	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));

-:902: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#902: FILE: drivers/gpu/drm/i915/i915_vma.h:176:
+	GEM_BUG_ON(upper_32_bits(i915_vma_offset(vma)));

-:903: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#903: FILE: drivers/gpu/drm/i915/i915_vma.h:177:
+	GEM_BUG_ON(upper_32_bits(i915_vma_offset(vma) +

total: 0 errors, 8 warnings, 0 checks, 805 lines checked
e9c3d6cce4d8 drm/i915: Introduce guard pages to i915_vma
-:128: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#128: FILE: drivers/gpu/drm/i915/i915_vma.c:783:
+	GEM_BUG_ON(2 * guard > end);

-:208: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_node' - possible side-effects?
#208: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:37:
+#define VMA_RES_START(_node) ((_node)->start - (_node)->guard)

-:209: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_node' - possible side-effects?
#209: FILE: drivers/gpu/drm/i915/i915_vma_resource.c:38:
+#define VMA_RES_LAST(_node) ((_node)->start + (_node)->node_size + (_node)->guard - 1)

total: 0 errors, 1 warnings, 2 checks, 196 lines checked
487b3397fb48 drm/i915: Refine VT-d scanout workaround
-:125: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#125: FILE: drivers/gpu/drm/i915/i915_vma.c:762:
+	GEM_BUG_ON(hweight64(flags & (PIN_OFFSET_GUARD | PIN_OFFSET_FIXED | PIN_OFFSET_BIAS)) > 1);

-:134: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#134: FILE: drivers/gpu/drm/i915/i915_vma.c:778:
+		GEM_BUG_ON(overflows_type(flags & PIN_OFFSET_MASK, u32));

total: 0 errors, 2 warnings, 0 checks, 95 lines checked
094fcfb78427 Revert "drm/i915: Improve on suspend / resume time with VT-d enabled"


