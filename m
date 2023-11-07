Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F707E3294
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 02:28:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1B210E05A;
	Tue,  7 Nov 2023 01:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19E6B10E05A;
 Tue,  7 Nov 2023 01:28:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 023CAAADD8;
 Tue,  7 Nov 2023 01:28:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 07 Nov 2023 01:28:16 -0000
Message-ID: <169932049697.21166.15839905263011535103@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231030155843.2251023-1-imre.deak@intel.com>
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Improve_BW_management_on_MST_links_=28rev16=29?=
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

Series: drm/i915: Improve BW management on MST links (rev16)
URL   : https://patchwork.freedesktop.org/series/125490/
State : warning

== Summary ==

Error: dim checkpatch failed
7c2ff14192aa drm/i915/dp_mst: Fix race between connector registration and setup
3ddb8fb6b152 drm/dp_mst: Fix fractional DSC bpp handling
a880f8588c27 drm/dp_mst: Add helper to determine if an MST port is downstream of another port
3563665ec2b6 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
0455c3a13132 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
eb065c73226a drm/dp_mst: Allow DSC in any Synaptics last branch device
52dd2c737276 drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
db6aa30cc4c4 drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
-:27: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#27: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2248:
+	/* Synaptics DP1.4 MST hubs require DSC for some modes on which it applies HBLANK expansion. */

-:28: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#28: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2249:
+	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC) },

total: 0 errors, 2 warnings, 0 checks, 21 lines checked
d8070519d92f drm/dp: Add helpers to calculate the link BW overhead
-:189: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#189: FILE: drivers/gpu/drm/display/drm_dp_helper.c:4026:
+		return 967100;
+	else

total: 0 errors, 1 warnings, 0 checks, 184 lines checked
670895fde1b7 drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
1c7d2a43854c drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
426af8244abb drm/i915/dp: Pass actual BW overhead to m_n calculation
595c839f30ca drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
822b677dc0d1 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
1f34ef565508 drm/i915/dp_mst: Program the DSC PPS SDP for each stream
bb67bb6f6118 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
0a39af92185b drm/i915/dp_mst: Add missing DSC compression disabling
1bc3fc51e963 drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
ac3f04fc6901 drm/i915/dp: Wait for FEC detected status in the sink
15cb069f5551 drm/i915/dp: Disable FEC ready flag in the sink
7ea3b4d6eccb drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
0f92537096dd drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks
95e452a8965e drm/i915/dp: Enable DSC via the connector decompression AUX
a4e5bd38ee12 drm/i915/dp_mst: Enable DSC passthrough
714cb24cac97 drm/i915/dp_mst: Enable MST DSC decompression for all streams
0e794cbc4123 drm/i915: Factor out function to clear pipe update flags
-:70: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/display/intel_display.c:5706:
+	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&

total: 0 errors, 1 warnings, 0 checks, 88 lines checked
22d2ca44735c drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
39e97673b217 drm/i915/dp_mst: Improve BW sharing between MST streams
c873fa1d162e drm/i915/dp_mst: Check BW limitations only after all streams are computed
54df926b454a drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info


