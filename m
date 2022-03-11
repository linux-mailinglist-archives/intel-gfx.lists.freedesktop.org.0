Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CD24D6787
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:25:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90CF810E69D;
	Fri, 11 Mar 2022 17:24:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3702710E6AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019498; x=1678555498;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dbQMVw1TQ0idd7fpOD5EEyJ7N0RY2zudD3Cdl68cGvY=;
 b=KT/Zxq+XBcsA0+5Ne8CMPpzzs1UwSvK8p/6zzYS2Yy9JZ07HdlJExPfA
 KsX9YOCtdo/xFRevsp0dsg+oiA9eFpNnlZyIrOPt11XKhTyOQMStBZfxp
 Z4K8hYckpILFkComplXOe2/e+wnk4JiPCRPUc8uOtAQ+7nLGaTD1R+cd/
 I7wJOky4CbgXZbThNh82lN0SFMBIj2G26DpLt5xkZDUOwsWogdylkr28+
 VI60A0sN1xOU0vmKnKuIrAwKOZ++56opeGsz15zVyyfyuTx1ahAz0oaIE
 kOxr3KzgF5Qaxw6FUhmtehvP/4KJaZc4MboVHYWdayNm5LaDyXhJSX02l g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="236217466"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="236217466"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:24:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="643043678"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 11 Mar 2022 09:24:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:21 +0200
Message-Id: <20220311172428.14685-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/16] drm/i915: Introduce
 intel_panel_drrs_type()
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

Add a helper to determine which type of DRRS the panel supports.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c  | 10 +++-------
 drivers/gpu/drm/i915/display/intel_panel.c | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_panel.h |  2 ++
 3 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 2a58bf4cb6cd..c663df51a84a 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -48,11 +48,8 @@
  */
 
 static bool can_enable_drrs(struct intel_connector *connector,
-			    const struct intel_crtc_state *pipe_config,
-			    const struct drm_display_mode *downclock_mode)
+			    const struct intel_crtc_state *pipe_config)
 {
-	const struct drm_i915_private *i915 = to_i915(connector->base.dev);
-
 	if (pipe_config->vrr.enable)
 		return false;
 
@@ -65,8 +62,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 	if (pipe_config->has_psr)
 		return false;
 
-	return downclock_mode &&
-		i915->vbt.drrs_type == DRRS_TYPE_SEAMLESS;
+	return intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
 
 void
@@ -80,7 +76,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
 
-	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
+	if (!can_enable_drrs(connector, pipe_config)) {
 		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
 			intel_zero_m_n(&pipe_config->dp_m2_n2);
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 3ca37766ccb3..c15f5e3d53d1 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -83,6 +83,16 @@ int intel_panel_get_modes(struct intel_connector *connector)
 	return num_modes;
 }
 
+enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
+	if (!connector->panel.downclock_mode)
+		return DRRS_TYPE_NONE;
+
+	return i915->vbt.drrs_type;
+}
+
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 88e6f5c217d8..e86100903f9e 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 enum drm_connector_status;
+enum drrs_type;
 struct drm_connector;
 struct drm_connector_state;
 struct drm_display_mode;
@@ -33,6 +34,7 @@ const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode);
 int intel_panel_get_modes(struct intel_connector *connector);
+enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
 enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode);
-- 
2.34.1

