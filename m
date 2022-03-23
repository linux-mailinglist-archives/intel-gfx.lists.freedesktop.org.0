Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1044E5865
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:29:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B4D89F08;
	Wed, 23 Mar 2022 18:29:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BACF89FED
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648060187; x=1679596187;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cXzcsOMVVIRfJ6Gj1raZdMAwYb1cciYECaNlM3MoVCE=;
 b=GWgdvpmt3XWMw2lQYyQuLxrqaIPDEKC3d4w6PkREojZTxwZCATys5dqB
 T5amkk6CYT6KufBsQiQjNmm0U8VFqU5H4Pg/TOE0EWJHoDHBMFytYb7Ju
 HNuMfdtaUiaZD2/rOzxzEAygyGBUHBXC2nkpdSvXAZXT8wMUbHkK6z5qG
 1d3Bjhh+qUNfCTl+OsUl7P11oETNTdacUDCoLN+YPNKJz92BsbMvX3Pd3
 4PBcLAnnongXYjcUYVj//1XXNA1xPV5NFtTstLoo7/3kxpTXuqcINpqDz
 21CWYhUz0/SrTP5ZqJvd9zcj3mLmTHU2nqFkG9flZQCObhJ48vkPZpzKN Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="257911067"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="257911067"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:29:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="519473963"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga006.jf.intel.com with SMTP; 23 Mar 2022 11:29:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 20:29:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 20:29:29 +0200
Message-Id: <20220323182935.4701-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Extract intel_edp_add_properties()
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

Pull the drm_connector_set_panel_orientation_with_quirk()
into intel_edp_add_properties() to match how the DSI encoders
do it. Less clutter in intel_edp_init_connector() overall.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f54088db9862..4bf13dbafbee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4961,6 +4961,22 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		drm_connector_attach_vrr_capable_property(connector);
 }
 
+static void
+intel_edp_add_properties(struct intel_dp *intel_dp,
+			 const struct drm_display_mode *fixed_mode)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
+	if (!fixed_mode)
+		return;
+
+	drm_connector_set_panel_orientation_with_quirk(&connector->base,
+						       i915->vbt.orientation,
+						       fixed_mode->hdisplay,
+						       fixed_mode->vdisplay);
+}
+
 static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 				     struct intel_connector *intel_connector)
 {
@@ -5065,11 +5081,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		intel_connector->panel.backlight.power = intel_pps_backlight_power;
 	intel_backlight_setup(intel_connector, pipe);
 
-	if (fixed_mode) {
-		drm_connector_set_panel_orientation_with_quirk(connector,
-				dev_priv->vbt.orientation,
-				fixed_mode->hdisplay, fixed_mode->vdisplay);
-	}
+	intel_edp_add_properties(intel_dp, fixed_mode);
 
 	return true;
 
-- 
2.34.1

