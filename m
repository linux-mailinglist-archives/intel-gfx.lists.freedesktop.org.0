Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B237DA3C2
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Oct 2023 00:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD7F10EA5D;
	Fri, 27 Oct 2023 22:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBE4210EA5D;
 Fri, 27 Oct 2023 22:53:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1A32AADD1;
 Fri, 27 Oct 2023 22:53:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 27 Oct 2023 22:53:45 -0000
Message-ID: <169844722582.19712.13535263543109182129@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231024010925.3949910-1-imre.deak@intel.com>
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Improve_BW_management_on_MST_links_=28rev7=29?=
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

Series: drm/i915: Improve BW management on MST links (rev7)
URL   : https://patchwork.freedesktop.org/series/125490/
State : warning

== Summary ==

Error: dim checkpatch failed
204af169ab67 drm/dp_mst: Fix fractional DSC bpp handling
2560fe42da5d drm/dp_mst: Add helper to determine if an MST port is downstream of another port
65b54c144497 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
4c7628dc83b7 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
1cfd8996342e drm/dp_mst: Allow DSC in any Synaptics last branch device
aef682fe5c1f drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
f53612e7fde3 drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
-:26: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#26: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2248:
+	/* Synaptics DP1.4 MST hubs require DSC for some modes on which it applies HBLANK expansion. */

-:27: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#27: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2249:
+	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC) },

total: 0 errors, 2 warnings, 0 checks, 21 lines checked
7fd8b92149d9 drm/dp: Add helpers to calculate the link BW overhead
-:182: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#182: FILE: drivers/gpu/drm/display/drm_dp_helper.c:4026:
+		return 967100;
+	else

total: 0 errors, 1 warnings, 0 checks, 184 lines checked
1deb3648793e drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
89a1538dd683 drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
61d5d475d230 drm/i915/dp: Pass actual BW overhead to m_n calculation
b7e8d09348b6 drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
7134c4672d90 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
36d9ddc7348c drm/i915/dp_mst: Program the DSC PPS SDP for each stream
7f339ad9abc7 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
7465804b7920 drm/i915/dp_mst: Add missing DSC compression disabling
77444b5f1bab drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
448ef6af3197 drm/i915/dp: Wait for FEC detected status in the sink
84dcb4777c84 drm/i915/dp: Disable FEC ready flag in the sink
d49f44ea9d33 drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
92bafe899b40 drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks
a9eec6ef4b17 drm/i915/dp: Enable DSC via the connector decompression AUX
02bc7be9252b drm/i915/dp_mst: Enable DSC passthrough
ea78d51f3294 drm/i915/dp_mst: Enable MST DSC decompression for all streams
df9f2d59ba02 drm/i915: Factor out function to clear pipe update flags
-:59: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_display.c:5717:
+	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&

total: 0 errors, 1 warnings, 0 checks, 89 lines checked
4e3d923d6013 drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
1f56cbe70a8f drm/i915/dp_mst: Improve BW sharing between MST streams
33ccc63ca4a4 drm/i915/dp_mst: Check BW limitations only after all streams are computed
3e49f5ea9c33 drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info


