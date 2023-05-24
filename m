Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6367670FF8E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 23:01:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFFE810E695;
	Wed, 24 May 2023 21:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2C4310E68B;
 Wed, 24 May 2023 21:01:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BE13A0093;
 Wed, 24 May 2023 21:01:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Wed, 24 May 2023 21:01:51 -0000
Message-ID: <168496211163.11320.13777110011479323778@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230524142210.3779331-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230524142210.3779331-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DSC_misc_fixes_=28rev2=29?=
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

Series: DSC misc fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/117662/
State : warning

== Summary ==

Error: dim checkpatch failed
b10a4676a2aa drm/i915/dp: Consider output_format while computing dsc bpp
dbccd6cff618 drm/i915/dp_mst: Use output_format to get the final link bpp
8bbe5380e875 drm/i915/dp: Use consistent name for link bpp and compressed bpp
92059b35e485 drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp
9e9e98f2fbfc drm/i915/display: Account for DSC not split case while computing cdclk
-:29: ERROR:SPACING: spaces required around that '?' (ctx:VxW)
#29: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:2502:
+		return crtc_state->dsc.dsc_split? pixel_rate : DIV_ROUND_UP(pixel_rate, 2);
 		                                ^

-:47: ERROR:SPACING: spaces required around that '?' (ctx:VxW)
#47: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:270:
+	return crtc_state->dsc.dsc_split? pixel_rate : DIV_ROUND_UP(pixel_rate, 2);
 	                                ^

total: 2 errors, 0 warnings, 0 checks, 26 lines checked
6a490f6860e7 drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck
1ecb7fa0e5c0 drm/i915/dp: Remove extra logs for printing DSC info
a336a696d218 drm/display/dp: Fix the DP DSC Receiver cap size
0d5cc05b6cb2 drm/i915/dp: Avoid forcing DSC BPC for MST case
423ba7d5ddef drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also
4af99f62352d drm/i915/dp: Avoid left shift of DSC output bpp by 4
158a8d6b00c3 drm/i915/dp: Rename helper to get DSC max pipe_bpp
491e5c1b87fc drm/i915/dp: Get optimal link config to have best compressed bpp
-:75: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#75: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1681:
+									  adjusted_mode->crtc_hdisplay,

-:76: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1682:
+									  pipe_config->bigjoiner_pipes,

-:77: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#77: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1683:
+									  pipe_config->output_format,

total: 0 errors, 3 warnings, 0 checks, 377 lines checked
7e6ad7c73571 drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Currently we seem to be using wrong DPCD register for reading compressed bpps,

-:62: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1799:
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

total: 0 errors, 5 warnings, 0 checks, 107 lines checked


