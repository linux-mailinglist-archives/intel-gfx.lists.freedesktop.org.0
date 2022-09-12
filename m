Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2195B5925
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CB310E3C7;
	Mon, 12 Sep 2022 11:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F29D410E3A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981514; x=1694517514;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=55Oyi62kyFs7lmNJi2N2j6kjJLxDXancExEfFTdXHyE=;
 b=Fujx1rmsBToya5mQjpnng1YwJEMEAUmUy1TjMzziZB9My1Lf7FE0EiAV
 vSGlbgoKe1ToneoMr8jaBslaGaZgTKAZBHLhRFSCNbbs1LayAEunDCYrU
 Rebc64DIJk9WS+T+XqkJSIjgszGRbwd21bXtabKCOcCvCuA9cHSGzmhpE
 bTSWuweNb1wWD0itmLlqGRh5IpApVAhhX5w9GIw6QEO4BxoHffFlpPzhL
 l+e8no8xCzcaDiOIUn0muFHriMTqLGk/h7rV4qhM98Y/rxx/kbsGdVZps
 i3RdbiUg/vvlb3UZkrVECpo0pGXw6KroRPdMhKq5KDAOnU0cX+C7dhG9N Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="278232122"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="278232122"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="758357739"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 12 Sep 2022 04:18:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:05 +0300
Message-Id: <20220912111814.17466-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/15] drm/i915: Extract
 intel_edp_backlight_setup()
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

Pull the eDP backlight setup ino its own function. No
reason to pollute intel_edp_init_connector() with all
the mundane details.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 51 +++++++++++++++----------
 1 file changed, 30 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a5eca5396fed..de5a4d2df78e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5217,6 +5217,35 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 						       fixed_mode->vdisplay);
 }
 
+static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
+				      struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	enum pipe pipe = INVALID_PIPE;
+
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		/*
+		 * Figure out the current pipe for the initial backlight setup.
+		 * If the current pipe isn't valid, try the PPS pipe, and if that
+		 * fails just assume pipe A.
+		 */
+		pipe = vlv_active_pipe(intel_dp);
+
+		if (pipe != PIPE_A && pipe != PIPE_B)
+			pipe = intel_dp->pps.pps_pipe;
+
+		if (pipe != PIPE_A && pipe != PIPE_B)
+			pipe = PIPE_A;
+
+		drm_dbg_kms(&i915->drm,
+			    "[CONNECTOR:%d:%s] using pipe %c for initial backlight setup\n",
+			    connector->base.base.id, connector->base.name,
+			    pipe_name(pipe));
+	}
+
+	intel_backlight_setup(connector, pipe);
+}
+
 static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 				     struct intel_connector *intel_connector)
 {
@@ -5226,7 +5255,6 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	struct drm_display_mode *fixed_mode;
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool has_dpcd;
-	enum pipe pipe = INVALID_PIPE;
 	struct edid *edid;
 
 	if (!intel_dp_is_edp(intel_dp))
@@ -5301,28 +5329,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	mutex_unlock(&dev->mode_config.mutex);
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		/*
-		 * Figure out the current pipe for the initial backlight setup.
-		 * If the current pipe isn't valid, try the PPS pipe, and if that
-		 * fails just assume pipe A.
-		 */
-		pipe = vlv_active_pipe(intel_dp);
-
-		if (pipe != PIPE_A && pipe != PIPE_B)
-			pipe = intel_dp->pps.pps_pipe;
-
-		if (pipe != PIPE_A && pipe != PIPE_B)
-			pipe = PIPE_A;
-
-		drm_dbg_kms(&dev_priv->drm,
-			    "using pipe %c for initial backlight setup\n",
-			    pipe_name(pipe));
-	}
-
 	intel_panel_init(intel_connector);
 
-	intel_backlight_setup(intel_connector, pipe);
+	intel_edp_backlight_setup(intel_dp, intel_connector);
 
 	intel_edp_add_properties(intel_dp);
 
-- 
2.35.1

