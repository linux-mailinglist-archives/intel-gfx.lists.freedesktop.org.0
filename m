Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C48085B5926
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:19:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B8A10E3CB;
	Mon, 12 Sep 2022 11:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0078910E3BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981520; x=1694517520;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=71KgHHpG5ElIrEC2vaIaDdc5tn/9/q4xquduiPJmFN8=;
 b=AmVG9A7muD8Iws/qWEuT5XqdT5yELnrEgI9Q/lwwjkWN5In5qC6FvxNM
 KsM0svYSvPEDwtjRqDyF+8eosjwjpoFQhS9EpTRa2n6qd3+5D5OKnTa+D
 2jVpHdov2VPid4L138L5cUrarFQPkq/esXH8+twHPMfG5mTwLxPDIiHVJ
 r4NKEw04RxMHz7/63d6/2gBwGdhCUXnoM3J5UR+SbIRxNtl/j2NxW8FDG
 hYjKNQGg8ozAyAvubhHevbolDXp5w/SNLQUFcoh5KTDSt7L445hYT2QcI
 E2iQ5YZA9CcNxJNQyXyOYUSYZVZoOPwJvsjhGIruh8srkH9thelucdrUv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="299180237"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="299180237"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="616013707"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 12 Sep 2022 04:18:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:07 +0300
Message-Id: <20220912111814.17466-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/15] drm/i915: Extract
 intel_dp_mst_add_properties()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the DP MST connector property setup into its own function
so it's not spread all over intel_dp_add_mst_connector().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 46 ++++++++++++++-------
 1 file changed, 30 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5adfd226d6c4..ac67738e4eda 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -790,7 +790,35 @@ static bool intel_dp_mst_get_hw_state(struct intel_connector *connector)
 	return false;
 }
 
-static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port, const char *pathprop)
+static int intel_dp_mst_add_properties(struct intel_dp *intel_dp,
+				       struct drm_connector *connector,
+				       const char *pathprop)
+{
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+
+	drm_object_attach_property(&connector->base,
+				   i915->drm.mode_config.path_property, 0);
+	drm_object_attach_property(&connector->base,
+				   i915->drm.mode_config.tile_property, 0);
+
+	intel_attach_force_audio_property(connector);
+	intel_attach_broadcast_rgb_property(connector);
+
+	/*
+	 * Reuse the prop from the SST connector because we're
+	 * not allowed to create new props after device registration.
+	 */
+	connector->max_bpc_property =
+		intel_dp->attached_connector->base.max_bpc_property;
+	if (connector->max_bpc_property)
+		drm_connector_attach_max_bpc_property(connector, 6, 12);
+
+	return drm_connector_set_path_property(connector, pathprop);
+}
+
+static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
+							struct drm_dp_mst_port *port,
+							const char *pathprop)
 {
 	struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -830,28 +858,14 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 			goto err;
 	}
 
-	drm_object_attach_property(&connector->base, dev->mode_config.path_property, 0);
-	drm_object_attach_property(&connector->base, dev->mode_config.tile_property, 0);
-
-	ret = drm_connector_set_path_property(connector, pathprop);
+	ret = intel_dp_mst_add_properties(intel_dp, connector, pathprop);
 	if (ret)
 		goto err;
 
-	intel_attach_force_audio_property(connector);
-	intel_attach_broadcast_rgb_property(connector);
-
 	ret = intel_dp_hdcp_init(dig_port, intel_connector);
 	if (ret)
 		drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP MST init failed, skipping.\n",
 			    connector->name, connector->base.id);
-	/*
-	 * Reuse the prop from the SST connector because we're
-	 * not allowed to create new props after device registration.
-	 */
-	connector->max_bpc_property =
-		intel_dp->attached_connector->base.max_bpc_property;
-	if (connector->max_bpc_property)
-		drm_connector_attach_max_bpc_property(connector, 6, 12);
 
 	return connector;
 
-- 
2.35.1

