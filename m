Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0650F4EAFD1
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5DB810F0B4;
	Tue, 29 Mar 2022 15:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E50BA10E8BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566468; x=1680102468;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yUJLDPzNmGJGi8g2ZViqhKjSuEWWaV7F3YGYM6De7Vc=;
 b=j/+QN2OUj2itMB2nO1sohyhPUKn3Eib4Sqplrt7Qtw6gpTjsi4VSasfP
 M90FfXaKH4/De9f+pM1sL9zvdoGj3UhxJQNpKfr9x26ux6aJjACtdNSat
 WhJJqUvaTA+wxFU/1+3hK40Wi7mqszVYcgnaN79bLkwoXcOO36v3ZScqK
 i2huGGLcK0yuBW7cS527Mix+t2IUPWy5RivKHZtUk9RTk7EQTZnxm7Qhe
 DzAlGQnq/TqQTOJpNEUMggwVCe8PjCztJ15NYRkQyCUs/CKg0SEXMNQBZ
 T9emCSlmHcImjR5S/NdxD6gfDvcPIZYpUABbI0bWqjQxf+oLRdfxTDI55 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259242782"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="259242782"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:07:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="694739750"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 29 Mar 2022 08:07:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:07:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:32 +0300
Message-Id: <20220329150742.31783-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
References: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: Extract intel_edp_has_drrs()
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

Pull all the eDP specific platform/port checks out from
intel_drrs_init() into intel_edp_has_drrs().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 35 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_drrs.c | 24 ----------------
 2 files changed, 34 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c7f8fc654857..b17dd60a0e29 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4971,6 +4971,39 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 						       fixed_mode->vdisplay);
 }
 
+static bool
+intel_edp_has_drrs(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
+	if (DISPLAY_VER(i915) < 5) {
+		drm_dbg_kms(&i915->drm,
+			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
+			    connector->base.base.id, connector->base.name);
+		return false;
+	}
+
+	if ((DISPLAY_VER(i915) < 8 && !HAS_GMCH(i915)) &&
+	    encoder->port != PORT_A) {
+		drm_dbg_kms(&i915->drm,
+			    "[CONNECTOR:%d:%s] DRRS not supported on [ENCODER:%d:%s]\n",
+			    connector->base.base.id, connector->base.name,
+			    encoder->base.base.id, encoder->base.name);
+		return false;
+	}
+
+	if (i915->vbt.drrs_type == DRRS_TYPE_NONE) {
+		drm_dbg_kms(&i915->drm,
+			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
+			    connector->base.base.id, connector->base.name);
+		return false;
+	}
+
+	return true;
+}
+
 static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 				     struct intel_connector *intel_connector)
 {
@@ -5036,7 +5069,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_connector->edid = edid;
 
 	fixed_mode = intel_panel_edid_fixed_mode(intel_connector);
-	if (fixed_mode)
+	if (fixed_mode && intel_edp_has_drrs(intel_dp))
 		downclock_mode = intel_drrs_init(intel_connector, fixed_mode);
 
 	/* MSO requires information from the EDID */
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index a5c7d58b36e0..1448c3029b8e 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -373,32 +373,8 @@ intel_drrs_init(struct intel_connector *connector,
 		const struct drm_display_mode *fixed_mode)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct intel_encoder *encoder = connector->encoder;
 	struct drm_display_mode *downclock_mode;
 
-	if (DISPLAY_VER(dev_priv) < 5) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
-			    connector->base.base.id, connector->base.name);
-		return NULL;
-	}
-
-	if ((DISPLAY_VER(dev_priv) < 8 && !HAS_GMCH(dev_priv)) &&
-	    encoder->port != PORT_A) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "[CONNECTOR:%d:%s] DRRS not supported on [ENCODER:%d:%s]\n",
-			    connector->base.base.id, connector->base.name,
-			    encoder->base.base.id, encoder->base.name);
-		return NULL;
-	}
-
-	if (dev_priv->vbt.drrs_type == DRRS_TYPE_NONE) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
-			    connector->base.base.id, connector->base.name);
-		return NULL;
-	}
-
 	downclock_mode = intel_panel_edid_downclock_mode(connector, fixed_mode);
 	if (!downclock_mode) {
 		drm_dbg_kms(&dev_priv->drm,
-- 
2.34.1

