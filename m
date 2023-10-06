Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C9E7BB94D
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1680B10E512;
	Fri,  6 Oct 2023 13:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66C5D10E506
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599451; x=1728135451;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mhJsdXiUuf8Yv0tQ99iqoc1FxGsH1gp7479zPLsQ8Q4=;
 b=ONtgFrmY1gkxZABcZ8MdduI80W3S7D9RXtrQKt3WWFzixpSSqK0KrscV
 Tx0fZvN0+/ZnFMUD2FnnFJoRXzl+MgXzsMtPZZOST0ibWgUzqJiMFfGvS
 DVYoDsUdCLQyzEbo3xm1oP/ZvPIDAFwiOoFAwKv6Gw5nfQ2eNrC2J2Q1X
 ohG8k9EzPicQjsfKSWiMaadcOxAeWcVS9fcSKYyuL+n6+yPoks86WuUUf
 iJiUUhgBkTErr0wyd/K3eOD4Dcy0qQQ4pQIMACl/1eSIjyDY0MGNaIKMl
 lsNIOjNXEttEsFs2x7eTJ0roqXMpe4t6CMFuuFLHNn9YE/aMHmEdx7zKj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019148"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019148"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841538"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841538"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:30 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:27 +0300
Message-Id: <20231006133727.1822579-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/19] drm/i915/dp: Remove unused DSC caps from
 intel_dp
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

The previous patches converted all users of the DSC DPCD caps to look
these up from the connector, so remove the version stored in intel_dp.

A follow-up patchset will read out the MST connector specific
capabilities in intel_dp_add_mst_connector() ->
intel_dp_mst_read_decompression_port_dsc_caps().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  2 --
 drivers/gpu/drm/i915/display/intel_dp.c            | 14 --------------
 2 files changed, 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d6600079bcf74..65ea37fe8cff3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1725,10 +1725,8 @@ struct intel_dp {
 	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
 	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
 	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
-	u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
 	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
 	u8 lttpr_phy_caps[DP_MAX_LTTPR_COUNT][DP_LTTPR_PHY_CAP_SIZE];
-	u8 fec_capable;
 	u8 pcon_dsc_dpcd[DP_PCON_DSC_ENCODER_CAP_SIZE];
 	/* source rates */
 	int num_source_rates;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f58940c1baf9c..9d504ce2b54a7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3514,15 +3514,6 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
 		drm_dbg_kms(&i915->drm, "FEC CAPABILITY: %x\n",
 			    connector->dp.fec_capability);
 	}
-
-	/*
-	 * TODO: remove the following intel_dp copies once all users
-	 * are converted to look up DSC DPCD/FEC capability via the
-	 * connector.
-	 */
-	memcpy(intel_dp->dsc_dpcd, connector->dp.dsc_dpcd,
-	       sizeof(intel_dp->dsc_dpcd));
-	intel_dp->fec_capable = connector->dp.fec_capability;
 }
 
 static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
@@ -5390,11 +5381,6 @@ intel_dp_detect(struct drm_connector *connector,
 
 	if (status == connector_status_disconnected) {
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
-		/*
-		 * TODO: Remove clearing the DPCD in intel_dp, once all
-		 * user are converted to using the DPCD in connector.
-		 */
-		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
 		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
 
 		if (intel_dp->is_mst) {
-- 
2.39.2

