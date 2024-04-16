Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3598A7782
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 00:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69545112EB6;
	Tue, 16 Apr 2024 22:09:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aBexomL9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FEAE112EB3
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 22:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713305391; x=1744841391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zn9mXI3eap1zHUrsM9ldLuWMh0IbyhAzNOI5QiJy1cs=;
 b=aBexomL9IFvJ6wknabuD2FN930ecz62kjy7cBjvfjaMdTOl1PpoGkNUm
 qqJxE7r7Z9sBijiQ1KAuifHMyte/YuOCgdxq49fMIlJjWN3AoVGP8M8La
 oxAH+mAKAbyfvuJ/V+Wrldi/hwYECKfHVac0Z+UhMuZjURderNwzhJRyl
 eUQZWJEsoP0yEMEHtohWGyNec+B4Spy8/n6jXTus1dGAmywAqtqPLeYGq
 gPOQsNWoMXkNown8GggDGnNzmeiFKasWfJwNFUY/I2h4NbeXssZpsYvKZ
 6+KKvzUdHFuQ95RA5ck6pjIrrTfgy6ym9KwhmXOrlZnIX6dDdoBjF4Ahd g==;
X-CSE-ConnectionGUID: pmxYMa8fSIOWaZiKO1zH6g==
X-CSE-MsgGUID: DaCTcABLRumwyhiW1Q/3yg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="20165188"
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="20165188"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:51 -0700
X-CSE-ConnectionGUID: Ykb3P8g8Thiaky7flarG0Q==
X-CSE-MsgGUID: y16oEE1GQ+yoezJHKTXlYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="26965513"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 15:09:50 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 10/11] drm/i915/dp_mst: Make HBLANK expansion quirk work
 for logical ports
Date: Wed, 17 Apr 2024 01:10:09 +0300
Message-ID: <20240416221010.376865-11-imre.deak@intel.com>
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

The DPCD OUI of the logical port on a Dell UHBR monitor - on which the
AUX device is used to enable DSC - is all 0. To detect if the HBLANK
expansion quirk is required for this monitor use the OUI of the port's
parent instead.

Since in the above case the DPCD of both the logical port and the parent
port reports being a sink device (vs. branch device) type, read the
proper sink/branch OUI based on the DPCD device type.

This is required by a follow-up patch enabling the quirk for the above
Dell monitor.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 +++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 89ee80a357140..fb5e167c3c659 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1577,23 +1577,33 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
 static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_dp_aux *aux = connector->dp.dsc_decompression_aux;
 	struct drm_dp_desc desc;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 
-	if (!connector->dp.dsc_decompression_aux)
+	if (!aux)
 		return false;
 
-	if (drm_dp_read_desc(connector->dp.dsc_decompression_aux,
-			     &desc, true) < 0)
+	/*
+	 * A logical port's OUI (at least for affected sinks) is all 0, so
+	 * instead of that the parent port's OUI is used for identification.
+	 */
+	if (drm_dp_mst_port_is_logical(connector->port)) {
+		aux = drm_dp_mst_aux_for_parent(connector->port);
+		if (!aux)
+			aux = &connector->mst_port->aux;
+	}
+
+	if (drm_dp_read_dpcd_caps(aux, dpcd) < 0)
+		return false;
+
+	if (drm_dp_read_desc(aux, &desc, drm_dp_is_branch(dpcd)) < 0)
 		return false;
 
 	if (!drm_dp_has_quirk(&desc,
 			      DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC))
 		return false;
 
-	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd) < 0)
-		return false;
-
 	if (!(dpcd[DP_RECEIVE_PORT_0_CAP_0] & DP_HBLANK_EXPANSION_CAPABLE))
 		return false;
 
-- 
2.43.3

