Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD918A7779
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 00:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 541EE112EAF;
	Tue, 16 Apr 2024 22:09:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fdIIcqgw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD216112EAC
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 22:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713305383; x=1744841383;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ll1fcqDxUghtaRU8w55zfMCzF69P0rvOczHSLSZ86ck=;
 b=fdIIcqgwbT58yLml62z50CugAyPe0Dq8t0AG8/dOEfW1OtmtiBCcYTci
 YXT1eacNOFPL8l7S+0/VDtf6UMbCgDu4YAfO+H4mVnhE+eSJueKGYFlb4
 mjOe7R+Rs33JoKkfmUoUAZcvvPxIGgtiruQB1hFCNpDQzMKV5QzRacG3z
 yGSQH2soaxBYYFxH4pA9RbahBU97wmM6AmcnE/uwz7A1ERuyuYnicwIlZ
 OyVTtm3OVqXI4Lsa2fit0UfbYn90gro7upifGZ2BjKI0d/BDm4Xid7npY
 qBtTEIWP5p6STbFYiPTJG9i/39yWBkkIYtyNfRDqJ6fICk/eh2TCWMLUM Q==;
X-CSE-ConnectionGUID: Xwmm4TmDSPmkqU2UTDgJzg==
X-CSE-MsgGUID: HBScXkrNRbK2oZiZ3PEqAg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="20165156"
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="20165156"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:42 -0700
X-CSE-ConnectionGUID: PEglloKuRbaPu89I8O9pFw==
X-CSE-MsgGUID: WwsPnkPTQDyTcBxzIEha0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="26965482"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 04/11] drm/i915/dp_mst: Account for channel coding
 efficiency in the DSC DPT bpp limit
Date: Wed, 17 Apr 2024 01:10:03 +0300
Message-ID: <20240416221010.376865-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240416221010.376865-1-imre.deak@intel.com>
References: <20240416221010.376865-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The DSC DPT interface BW limit check should take into account the link
clock's (aka DDI clock in bspec) channel coding efficiency overhead.
Bspec suggests that the FEC overhead needs to be applied, however HW
people claim this isn't the case, nor is any overhead applicable.

However based on testing various 5k/6k modes both on the DELL U3224KBA
monitor and the Unigraf UCD-500 CTS test device, both the channel coding
efficiency (which includes the FEC overhead) and an additional 3%
overhead must be accounted for to get these modes working.

Bspec: 49259

v2:
- Apply an additional 3% overhead, add a commit log and code comment
  about these overheads and the relation to the Bspec BW limit formula.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 +++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 58eb6bf33c92e..0448cc343a33f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -59,11 +59,30 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
 	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
 		int output_bpp = bpp;
 		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
+		/*
+		 * Bspec/49259 suggests that the FEC overhead needs to be
+		 * applied here, though HW people claim that neither this FEC
+		 * or any other overhead is applicable here (that is the actual
+		 * available_bw is just symbol_clock * 72). However based on
+		 * testing on MTL-P the
+		 * - DELL U3224KBA display
+		 * - Unigraf UCD-500 CTS test sink
+		 * devices the
+		 * - 5120x2880/995.59Mhz
+		 * - 6016x3384/1357.23Mhz
+		 * - 6144x3456/1413.39Mhz
+		 * modes (all which had a DPT limit on the above devices),
+		 * both the channel coding efficiency and an additional 3%
+		 * overhead needs to be accounted for.
+		 */
+		int available_bw = mul_u32_u32(symbol_clock * 72,
+					       drm_dp_bw_channel_coding_efficiency(true)) /
+				   1030000;
 
 		if (output_bpp * adjusted_mode->crtc_clock >
-		    symbol_clock * 72) {
+		    available_bw) {
 			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
-				    output_bpp * adjusted_mode->crtc_clock, symbol_clock * 72);
+				    output_bpp * adjusted_mode->crtc_clock, available_bw);
 			return -EINVAL;
 		}
 	}
-- 
2.43.3

