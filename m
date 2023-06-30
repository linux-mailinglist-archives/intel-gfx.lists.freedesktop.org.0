Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 362A2743C89
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 15:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC50710E169;
	Fri, 30 Jun 2023 13:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D29710E169;
 Fri, 30 Jun 2023 13:18:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 961BFA00CC;
 Fri, 30 Jun 2023 13:18:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 30 Jun 2023 13:18:59 -0000
Message-ID: <168813113960.24874.273490469454229200@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230630124652.4140932-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230630124652.4140932-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DSC_misc_fixes_=28rev3=29?=
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

Series: DSC misc fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/117662/
State : warning

== Summary ==

Error: dim checkpatch failed
eaaa78e717b1 drm/i915/dp: Consider output_format while computing dsc bpp
6395d26c8fa4 drm/i915/dp: Move compressed bpp check with 420 format inside the helper
bd41f59ecfd6 drm/i915/dp_mst: Use output_format to get the final link bpp
53de81e156b5 drm/i915/dp: Use consistent name for link bpp and compressed bpp
6bb10c993db5 drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp
a2651d52a8a2 drm/i915/display: Account for DSC not split case while computing cdclk
f459c9b8e0cb drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck
f8f3b73cb322 drm/i915/dp: Remove extra logs for printing DSC info
ab776e175f24 drm/display/dp: Fix the DP DSC Receiver cap size
db60aff677cd drm/i915/dp: Avoid forcing DSC BPC for MST case
-:26: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1691:
+		drm_dbg_kms(&dev_priv->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
6eee2757cbce drm/i915/dp: Add functions to get min/max src input bpc with DSC
b76db3c66d95 drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also
-:63: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1723:
+			drm_dbg_kms(&dev_priv->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);

total: 0 errors, 1 warnings, 0 checks, 77 lines checked
21e6f7ac7a39 drm/i915/dp: Avoid left shift of DSC output bpp by 4
b0bbbe39762f drm/i915/dp: Rename helper to get DSC max pipe_bpp
f5002142f8ee drm/i915/dp: Separate out functions for edp/DP for computing DSC bpp
-:38: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1707:
+	drm_dbg_kms(&i915->drm, "Cannot force DSC BPC:%d, due to DSC BPC limits\n", intel_dp->force_dsc_bpc);

total: 0 errors, 1 warnings, 0 checks, 220 lines checked
390eb4cfcf83 drm/i915/dp: Add DSC BPC/BPP constraints while selecting pipe bpp with DSC
fd08f0fb355f drm/i915/dp: Separate out function to get compressed bpp with joiner
1ac66f2ab1ca drm/i915/dp: Get optimal link config to have best compressed bpp
8941a0ebbb9f drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
-:62: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1892:
+	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(intel_dp, pipe_config, pipe_bpp / 3);

-:117: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:236:
+	max_compressed_bpp = intel_dp_dsc_sink_max_compressed_bpp(intel_dp, crtc_state, max_bpp / 3);

-:126: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#126: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:242:
+	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, max_compressed_bpp, crtc_state->pipe_bpp);

-:127: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#127: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:243:
+	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp, crtc_state->pipe_bpp);

total: 0 errors, 4 warnings, 0 checks, 107 lines checked


