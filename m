Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7478E7D5DEC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 00:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7298A10E09A;
	Tue, 24 Oct 2023 22:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A8F110E09A;
 Tue, 24 Oct 2023 22:09:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87D01AADE0;
 Tue, 24 Oct 2023 22:09:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 24 Oct 2023 22:09:02 -0000
Message-ID: <169818534255.18359.15107710682553630197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231024010925.3949910-1-imre.deak@intel.com>
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Improve_BW_management_on_MST_links_=28rev5=29?=
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

Series: drm/i915: Improve BW management on MST links (rev5)
URL   : https://patchwork.freedesktop.org/series/125490/
State : warning

== Summary ==

Error: dim checkpatch failed
19c6143eb574 drm/dp_mst: Fix fractional DSC bpp handling
ece8da74ce95 drm/dp_mst: Add helper to determine if an MST port is downstream of another port
ba1537114fa0 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
672386a30c0d drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
41a4fc2b2bd6 drm/dp_mst: Allow DSC in any Synaptics last branch device
95c9463438b6 drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
b102d98f688f drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
-:26: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#26: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2248:
+	/* Synaptics DP1.4 MST hubs require DSC for some modes on which it applies HBLANK expansion. */

-:27: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#27: FILE: drivers/gpu/drm/display/drm_dp_helper.c:2249:
+	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC) },

total: 0 errors, 2 warnings, 0 checks, 21 lines checked
606bea9632e1 drm/dp: Add helpers to calculate the link BW overhead
-:164: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#164: FILE: drivers/gpu/drm/display/drm_dp_helper.c:4016:
+		return 967100;
+	else

total: 0 errors, 1 warnings, 0 checks, 177 lines checked
1c8b9c8063ab drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
97755f4eb71c drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
096fe87ec453 drm/i915/dp: Pass actual BW overhead to m_n calculation
47d8105d26a1 drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
642558606890 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
dca437745cae drm/i915/dp_mst: Program the DSC PPS SDP for each stream
3c9b1fe13a0f drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
a0cbd5057321 drm/i915/dp_mst: Add missing DSC compression disabling
d6125ae88656 drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
2870f7449c59 drm/i915/dp: Wait for FEC detected status in the sink
7f73024016bc drm/i915/dp: Disable FEC ready flag in the sink
53c2c076231c drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
c1ec7abec098 drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks
e7353b40aebb drm/i915/dp: Enable DSC via the connector decompression AUX
c90749f422c5 drm/i915/dp_mst: Enable DSC passthrough
3d00f52f7111 drm/i915/dp_mst: Enable MST DSC decompression for all streams
c45a011a71c5 drm/i915: Factor out function to clear pipe update flags
-:58: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_display.c:5717:
+	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&

total: 0 errors, 1 warnings, 0 checks, 89 lines checked
ae6c6cc0ee9a drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
0eda2a18cdef drm/i915/dp_mst: Improve BW sharing between MST streams
f2a7e1f49c15 drm/i915/dp_mst: Check BW limitations only after all streams are computed
6c57396ec717 drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info


