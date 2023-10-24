Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2AA7D449E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93CFA10E2C7;
	Tue, 24 Oct 2023 01:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFF210E2B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109769; x=1729645769;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XH+YIbstnMI9iV3gAR+fv1FHRsYNfIyUPPWj/hti0vg=;
 b=SOrwdZ10D2TtGrcPsB60BudM1121c2Cq3stUJytcfQKF88W/Pk9xPSlS
 pw1gxOYnuHoN7ijw1Zt3GcGtKyr96PV4HC49qjjI10/EiFPOC1Tec9Jgg
 gSfD23wQffFbAh6QKxj7tm5uioV1/ELMxxqIo7maw/HRBPS4Z/3C6Nvc+
 BM1iVSTW837Pp8PnSqboinr9xXHobQZFkLgYMLRdXD2o7n3V2ExQwU4k/
 1k7M38nGDLzKKMGjxh7oWuiSWigKTlFWd0fiom2TZe/MV1y4M0l2xLDd9
 mxODii6xRblD3IUbkxvvNWee2sc4FehDLferF8YSfZdYMDnTO1TxbcW0F A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304390"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304390"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870146"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870146"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:19 +0300
Message-Id: <20231024010925.3949910-24-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 23/29] drm/i915/dp_mst: Enable DSC passthrough
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

Enable passing through DSC streams to the sink in last branch devices.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 26 ++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a7eb31b489947..bb8951f89f61f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2950,6 +2950,24 @@ intel_dp_sink_set_dsc_decompression(struct intel_connector *connector,
 			    str_enable_disable(enable));
 }
 
+static void
+intel_dp_sink_set_dsc_passthrough(const struct intel_connector *connector,
+				  bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_dp_aux *aux = connector->port ?
+				 connector->port->passthrough_aux : NULL;
+
+	if (!aux)
+		return;
+
+	if (drm_dp_dpcd_writeb(aux, DP_DSC_PASSTHROUGH_EN,
+			       enable ? DP_DSC_PASSTHROUGH_EN : 0) < 0)
+		drm_dbg_kms(&i915->drm,
+			    "Failed to %s sink compression passthrough state\n",
+			    str_enable_disable(enable));
+}
+
 void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
 					   const struct intel_crtc_state *crtc_state,
 					   bool enable)
@@ -2962,7 +2980,13 @@ void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
 	if (drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux))
 		return;
 
-	intel_dp_sink_set_dsc_decompression(connector, enable);
+	if (enable) {
+		intel_dp_sink_set_dsc_passthrough(connector, true);
+		intel_dp_sink_set_dsc_decompression(connector, true);
+	} else {
+		intel_dp_sink_set_dsc_decompression(connector, false);
+		intel_dp_sink_set_dsc_passthrough(connector, false);
+	}
 }
 
 static void
-- 
2.39.2

