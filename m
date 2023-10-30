Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B6F7DC339
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 00:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7CF710E3BF;
	Mon, 30 Oct 2023 23:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAD6A10E3BF;
 Mon, 30 Oct 2023 23:39:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99939A0BA8;
 Mon, 30 Oct 2023 23:39:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 30 Oct 2023 23:39:08 -0000
Message-ID: <169870914859.25485.3415313473956738152@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231030155843.2251023-1-imre.deak@intel.com>
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Improve_BW_management_on_MST_links_=28rev8=29?=
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

Series: drm/i915: Improve BW management on MST links (rev8)
URL   : https://patchwork.freedesktop.org/series/125490/
State : warning

== Summary ==

Error: dim checkpatch failed
5162d630ca8b drm/i915/dp_mst: Fix race between connector registration and setup
fec65fed5b98 drm/dp_mst: Fix fractional DSC bpp handling
fab68064b86f drm/dp_mst: Add helper to determine if an MST port is downstream of another port
815b40f2a09c drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
e5585e2468a1 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
ee5f8dca9ffb drm/dp_mst: Allow DSC in any Synaptics last branch device
7608ff34f644 drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
9e8726fe036e drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
-:27: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#27: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2248:
+	/* Synaptics DP1.4 MST hubs require DSC for some modes on which it applies HBLANK expansion. */

-:28: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#28: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2249:
+	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC) },

total: 0 errors, 2 warnings, 0 checks, 21 lines checked
d6e18a7a3f0a drm/dp: Add helpers to calculate the link BW overhead
-:184: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#184: FILE: drivers/gpu/drm/display/drm_dp_helper.c:4026:
+		return 967100;
+	else

total: 0 errors, 1 warnings, 0 checks, 184 lines checked
8d7a379c0890 drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
12c7ca063933 drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
5b584e6b6651 drm/i915/dp: Pass actual BW overhead to m_n calculation
64c6eb5c56cb drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
3afe152692cd drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
0eb5c7a549a5 drm/i915/dp_mst: Program the DSC PPS SDP for each stream
d73dd5aa9c3c drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
dbfbb5d2a4b3 drm/i915/dp_mst: Add missing DSC compression disabling
e93b5ed2b93e drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
e83a6029d965 drm/i915/dp: Wait for FEC detected status in the sink
640c280b24b8 drm/i915/dp: Disable FEC ready flag in the sink
3b8b6a81c56c drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
c20152d0eb95 drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks
6908e7f30ce8 drm/i915/dp: Enable DSC via the connector decompression AUX
ceb9e57fe346 drm/i915/dp_mst: Enable DSC passthrough
952792bd8519 drm/i915/dp_mst: Enable MST DSC decompression for all streams
b52079fd30d8 drm/i915: Factor out function to clear pipe update flags
-:61: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_display.c:5716:
+	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&

total: 0 errors, 1 warnings, 0 checks, 89 lines checked
560d3096cb5a drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
5410d6351d05 drm/i915/dp_mst: Improve BW sharing between MST streams
078a3f453b84 drm/i915/dp_mst: Check BW limitations only after all streams are computed
96967dd6a8e2 drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info


