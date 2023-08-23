Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CD0786201
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 23:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E96710E0FB;
	Wed, 23 Aug 2023 21:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEAD010E0FB;
 Wed, 23 Aug 2023 21:15:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA594A00E8;
 Wed, 23 Aug 2023 21:15:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Wed, 23 Aug 2023 21:15:43 -0000
Message-ID: <169282534375.16626.12963777258303912402@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230823185104.1994138-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230823185104.1994138-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Apply_Wa=5F16018031267_/_Wa=5F16018063123_=28rev2=29?=
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

Series: Apply Wa_16018031267 / Wa_16018063123 (rev2)
URL   : https://patchwork.freedesktop.org/series/122804/
State : warning

== Summary ==

Error: dim checkpatch failed
00f4bda3e3b0 drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
-:11: WARNING:BAD_SIGN_OFF: Co-developed-by: should not be used to attribute nominal patch author 'Nirmoy Das <nirmoy.das@intel.com>'
#11: 
Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>

-:11: WARNING:BAD_SIGN_OFF: Co-developed-by: must be immediately followed by Signed-off-by:
#11: 
Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>


-:54: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#54: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:836:
+	GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) == -1);

-:74: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#74: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1017:
+ * ^I^Ithe PER_CTX_BB.  When disabled, the function returns$

-:75: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#75: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1018:
+ * ^I^Ithe location of the INDIRECT_CTX.$

-:110: ERROR:TRAILING_WHITESPACE: trailing whitespace
#110: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1402:
+^Iu32 addr = intel_gt_scratch_offset(gt, INTEL_GT_SCRATCH_FIELD_DUMMY_BLIT); $

-:164: CHECK:LINE_SPACING: Please don't use multiple blank lines
#164: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1456:
+
+

-:180: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#180: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1472:
+	GEM_BUG_ON(cs - start > I915_GTT_PAGE_SIZE / sizeof(*cs));

-:225: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#225: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1583:
+emit_wabb_ctx_canary(const struct intel_context *ce,
+			    u32 *cs, bool per_ctx)

-:250: ERROR:CODE_INDENT: code indent should use tabs where possible
#250: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1607:
+        return emit_wabb_ctx_canary(ce, cs, true);$

-:250: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#250: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1607:
+        return emit_wabb_ctx_canary(ce, cs, true);$

-:354: ERROR:TRAILING_WHITESPACE: trailing whitespace
#354: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1739:
+}^I^I$

-:375: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#375: FILE: drivers/gpu/drm/i915/i915_drv.h:816:
+#define NEEDS_FASTCOLOR_BLT_WABB(i915)	(GRAPHICS_VER_FULL(i915) == IP_VER(12, 70) || \
+					 GRAPHICS_VER_FULL(i915) == IP_VER(12, 71) || \
+					 IS_PONTEVECCHIO(i915) || \
+					 IS_DG2(i915))

-:380: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Nirmoy Das <nirmoy.das@intel.com>'

total: 4 errors, 7 warnings, 3 checks, 330 lines checked
506e01dfa9cc drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123


