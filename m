Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6959F700119
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 09:10:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677F010E0B9;
	Fri, 12 May 2023 07:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC5F610E622;
 Fri, 12 May 2023 07:10:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2E8FAADE7;
 Fri, 12 May 2023 07:10:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 12 May 2023 07:10:53 -0000
Message-ID: <168387545376.26102.12395600335155830101@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230512062417.2584427-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230512062417.2584427-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DSC_misc_fixes?=
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

Series: DSC misc fixes
URL   : https://patchwork.freedesktop.org/series/117662/
State : warning

== Summary ==

Error: dim checkpatch failed
8b7dfbf8e8be drm/i915/dp: Consider output_format while computing dsc bpp
e7726119c13a drm/i915/dp_mst: Use output_format to get the final link bpp
ce784adf138b drm/i915/dp: Use consistent name for link bpp and compressed bpp
194b402b3ddd drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp
f1b7482a1331 drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck
9fb55f039585 drm/i915/dp: Remove extra logs for printing DSC info
0aef4f9b4d71 drm/display/dp: Fix the DP DSC Receiver cap size
fe1cce8890e8 drm/i915/dp: Avoid forcing DSC BPC for MST case
e46fda8329fc drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also
78d1c68e2ca6 drm/i915/dp: Avoid left shift of DSC output bpp by 4
7a5453d51038 drm/i915/dp: Rename helpers to get DSC max pipe_bpp/output_bpp
a46d572243b6 drm/i915/dp: Get optimal link config to have best compressed bpp
-:69: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1680:
+									  adjusted_mode->crtc_hdisplay,

-:70: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1681:
+									  pipe_config->bigjoiner_pipes,

-:71: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#71: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1682:
+									  pipe_config->output_format,

total: 0 errors, 3 warnings, 0 checks, 351 lines checked
3391a8ef8aee drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Currently we seem to be using wrong DPCD register for reading compressed bpps,

-:98: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:236:
+	max_compressed_bpp = intel_dp_dsc_max_sink_compressed_bppx16(intel_dp, crtc_state, max_bpp / 3) >> 4;

-:107: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:242:
+	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, max_compressed_bpp, crtc_state->pipe_bpp);

-:108: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#108: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:243:
+	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp, crtc_state->pipe_bpp);

total: 0 errors, 4 warnings, 0 checks, 89 lines checked


