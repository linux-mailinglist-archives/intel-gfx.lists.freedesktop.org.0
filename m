Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E235E380E51
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 18:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31D456F39F;
	Fri, 14 May 2021 16:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 345AD6E20F;
 Fri, 14 May 2021 16:38:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DACBA47DB;
 Fri, 14 May 2021 16:38:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 14 May 2021 16:38:41 -0000
Message-ID: <162101032116.21338.16170094513413627674@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Another_batch_of_reviewed_XeLPD_/_ADL-P_patches?=
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

Series: Another batch of reviewed XeLPD / ADL-P patches
URL   : https://patchwork.freedesktop.org/series/90169/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
dc16ea52587b drm/i915/xelpd: Handle new location of outputs D and E
314d49aa2d02 drm/i915/xelpd: Increase maximum watermark lines to 255
bcc1af51c6e6 drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp
1d494651f544 drm/i915/xelpd: Support DP1.4 compression BPPs
-:41: CHECK:LINE_SPACING: Please don't use multiple blank lines
#41: FILE: drivers/gpu/drm/i915/display/intel_dp.c:524:
 
+

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
376ad1f5149e drm/i915: Get slice height before computing rc params
964d5a8d3a60 drm/i915/xelpd: Provide port/phy mapping for vbt
7286424486be drm/i915/adl_p: Extend PLANE_WM bits for blocks & lines
406c1002291e drm/i915/adl_p: Add cdclk support for ADL-P
d07a1c416e0f drm/i915/display/tc: Rename safe_mode functions ownership
0d2dc8550001 drm/i915/adl_p: Enable modular fia
afe8c4d0449e drm/i915: Move intel_modeset_all_pipes()
bb2924fe8a7d drm/i915/adl_p: Enable/disable loadgen sharing
-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1464:
+		if ((intel_crtc_has_dp_encoder(crtc_state) &&
+		    crtc_state->port_clock == 162000) ||

total: 0 errors, 0 warnings, 1 checks, 21 lines checked
f5c0cc6e05ae drm/i915/bigjoiner: Mode validation with uncompressed pipe joiner
801654db5b66 drm/i915/bigjoiner: Avoid dsc_compute_config for uncompressed bigjoiner
c0ab3dda42fe drm/i915/bigjoiner: atomic commit changes for uncompressed joiner
05f26cdcc673 drm/i915/adl_p: Add IPs stepping mapping
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_drv.h:1554:
+#define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
+	(IS_ALDERLAKE_P(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_drv.h:1558:
+#define IS_ADLP_GT_STEP(__i915, since, until) \
+	(IS_ALDERLAKE_P(__i915) && \
+	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 2 checks, 38 lines checked
1929a3b973d9 drm/i915/adl_p: Implement Wa_22011091694
909eca03ec38 drm/i915/display/adl_p: Implement Wa_22011320316
d66be9f4eff1 drm/i915/adl_p: Disable CCS on a-step (Wa_22011186057)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
