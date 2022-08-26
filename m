Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2865A3129
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 23:36:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68C510E8D9;
	Fri, 26 Aug 2022 21:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F9D10E721;
 Fri, 26 Aug 2022 21:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661549742; x=1693085742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IVm5RoE2xRo26A3dFvEORqC6SKj0KFr9veRbhuMOuiw=;
 b=RXguaAvECFe0hCBYqQEEIJzn0Zgo72Bam9B2f12IoTJ9M89fAkMQSBNN
 W/uxQBLB5xu2CmVM6gtCEEVaM/QnVLet9CHqsmmvgl3DYRbFTG3+XpZBc
 +Y6UjVaKTKydfLD0c7mdYsK8xzY6SpHbq1bknrSty8G4Qon3YxP8RXdF8
 xg5kpJAOB5BMCmZFAAnhiIGTQyzKmLd68o0Vsgqq/oUYZqXMySD4gQFTl
 qhozdKu1h9hIxFN5P3LWXeFlEiFR/BZQev8Iw9Vh5wbcvvw1mtNJH0/AW
 fPswQyMWWloXlXxfG1oCXpSRRm2LmfDsYkC+XnkhDJhZ8BZLQOIOurpLW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="295376011"
X-IronPort-AV: E=Sophos;i="5.93,266,1654585200"; d="scan'208";a="295376011"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 14:35:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,266,1654585200"; d="scan'208";a="613657894"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 26 Aug 2022 14:35:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 27 Aug 2022 00:35:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 27 Aug 2022 00:35:01 +0300
Message-Id: <20220826213501.31490-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220826213501.31490-1-ville.syrjala@linux.intel.com>
References: <20220826213501.31490-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: Infer vrefresh range for eDP if
 the EDID omits it
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

A bunch of machines seem to have eDP panels where the EDID
indicates continuous frequency support but fails to actually
include the range descirptor. This violates the EDID 1.4
spec, but looks like the Windows driver just hacks around
this by just assuming that the panel supports a continuous
refresh rate range that covers all EDID reported modes.

Do the same so that we get VRR support on these machines.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6323
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 45 +++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8d1559323412..1f3e4824d316 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5207,6 +5207,49 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 						       fixed_mode->vdisplay);
 }
 
+/*
+ * Some VRR eDP panels violate the EDID spec and neglect
+ * to include the monitor range descriptor in the EDID.
+ * Cook up the VRR refresh rate limits based on the modes
+ * reported by the panel.
+ */
+static void
+intel_edp_infer_vrr_range(struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_display_info *info = &connector->base.display_info;
+	const struct edid *edid = connector->edid;
+	const struct drm_display_mode *mode;
+
+	if (!HAS_VRR(i915))
+		return;
+
+	if (!edid || edid->revision < 4 ||
+	    !(edid->features & DRM_EDID_FEATURE_CONTINUOUS_FREQ) ||
+	    info->vrr_range.min_vfreq || info->vrr_range.max_vfreq)
+		return;
+
+	if (list_empty(&connector->base.probed_modes))
+		return;
+
+	info->vrr_range.min_vfreq = ~0;
+	info->vrr_range.max_vfreq = 0;
+
+	list_for_each_entry(mode, &connector->base.probed_modes, head) {
+		int vrefresh = drm_mode_vrefresh(mode);
+
+		info->vrr_range.min_vfreq = min_t(int, vrefresh,
+						  info->vrr_range.min_vfreq);
+		info->vrr_range.max_vfreq = max_t(int, vrefresh,
+						  info->vrr_range.max_vfreq);
+	}
+
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] does not report refresh rate range, assuming: %d Hz - %d Hz\n",
+		    connector->base.base.id, connector->base.name,
+		    info->vrr_range.min_vfreq, info->vrr_range.max_vfreq);
+}
+
 static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 				     struct intel_connector *intel_connector)
 {
@@ -5271,6 +5314,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 	intel_connector->edid = edid;
 
+	intel_edp_infer_vrr_range(intel_connector);
+
 	intel_bios_init_panel(dev_priv, &intel_connector->panel,
 			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
 
-- 
2.35.1

