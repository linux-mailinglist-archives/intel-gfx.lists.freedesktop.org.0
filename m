Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A336E6D2553
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 18:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0873910E196;
	Fri, 31 Mar 2023 16:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9577910E187;
 Fri, 31 Mar 2023 16:20:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8AF41A02F0;
 Fri, 31 Mar 2023 16:20:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Fri, 31 Mar 2023 16:20:07 -0000
Message-ID: <168027960752.14986.10458428924725801519@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Handle_BPC_for_HDMI2=2E1_PCON_without_DSC1=2E2_sink_and_oth?=
 =?utf-8?q?er_fixes_=28rev13=29?=
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

Series: Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes (rev13)
URL   : https://patchwork.freedesktop.org/series/107550/
State : warning

== Summary ==

Error: dim checkpatch failed
c710c347a560 drm/i915/display: Add new member to configure PCON color conversion
fe6e77750a2b drm/i915/display: Add new member in intel_dp to store ycbcr420 passthrough cap
5600cd5b3102 drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state sink_format
-:62: ERROR:SPACING: space prohibited before that ':' (ctx:WxE)
#62: FILE: drivers/gpu/drm/i915/display/intel_dp.c:845:
+	case INTEL_OUTPUT_FORMAT_RGB :
 	                             ^

-:130: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#130: FILE: drivers/gpu/drm/i915/display/intel_dp.c:907:
+	else if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444 ||
+	    dfp_can_convert_from_ycbcr444(intel_dp, sink_format))

total: 1 errors, 0 warnings, 1 checks, 233 lines checked
e598291c45a0 drm/i915/dp: Configure PCON for conversion of output_format to YCbCr444
5c580e09f106 drm/i915/display: Use sink_format instead of ycbcr420_output flag
af31d5dacaa9 drm/i915/dp: Add helper to get sink_format
e7b87b8e18e8 drm/i915/dp: Rearrange check for illegal mode and comments in mode_valid
17904a4d7893 drm/i915/dp: Consider output_format while computing dsc bpp
159acfc78d2e drm/i915/dp_mst: Use output_format to get the final link bpp
0e789b306901 drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
b1216be20695 drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
f3bafbab4400 drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints
bf816c3fe1cc drm/i915/dp: Use consistent name for link bpp and compressed bpp


