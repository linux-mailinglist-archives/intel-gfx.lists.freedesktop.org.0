Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A891881857
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 21:11:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457CE10E52C;
	Wed, 20 Mar 2024 20:11:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NvU6snmi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D65AC10E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710965488; x=1742501488;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=br0juGurjOsybbNex0wWLX2y8TxGdxb40ZC7et4tZGg=;
 b=NvU6snmiUf9U0NunzPUi1/DNa3XClsveSiaMdTFsMJh29OUqXFX0dEMC
 1uwk/wWO61pH2xTRwqaLwESafxaZuPIsf3DTfOz/jNLUVERFvqCmef4FA
 i/oaaEs7C3IttOjy/iOdFZ6XrWm+FbgWTP/ZWsGSoAjrjSGGjajlcO8GR
 zZB8ZzwC+nZt31+/djKsQ95N80+NgoyME9ZcdBloE20jPSmTZwysn87gd
 1Lu/E1p6i3J7M7cXiloNXz4jFFhGm9pAWWyL2ViHD4oFpshBn+nxUdXde
 nXonpffNzq30pQyWQd/vpEfcLQ5c623Ms8Fp9na39LtEUmcLae1P2HULk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="31352333"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="31352333"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="14246491"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 13:11:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/11] drm/i915/dp_mst: Account for channel coding efficiency
 in the DSC DPT bpp limit
Date: Wed, 20 Mar 2024 22:11:44 +0200
Message-ID: <20240320201152.3487892-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240320201152.3487892-1-imre.deak@intel.com>
References: <20240320201152.3487892-1-imre.deak@intel.com>
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
Bspec doesn't mention this, however this matches how the link BW limit
is checked (that is the BW limit on wire as opposed to the above DPT
limit) for which Bspec doesn't mention the overhead either.

This fixes the DPT bpp limit for at least the 5k@60Hz/DSC mode on a Dell
UHBR monitor/link I tested.

Bspec: 49259

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c21fd7a2cd44f..79f34be5c89da 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -59,11 +59,14 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
 	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
 		int output_bpp = bpp;
 		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
+		int available_bw = mul_u32_u32(symbol_clock * 72,
+					       drm_dp_bw_channel_coding_efficiency(true)) /
+				   1000000;
 
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

