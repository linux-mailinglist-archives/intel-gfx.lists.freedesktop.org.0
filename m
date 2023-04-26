Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAFC6EF8C4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1D610E8CF;
	Wed, 26 Apr 2023 16:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7DBF10E8BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682527998; x=1714063998;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Sl9mZNOhO6P30yEMrwBS69UqG3kUdct9Ghk3O4JS9tY=;
 b=WC/0Kx8JKkjOzJ0GYOuGHE9BGNlis6usg722AJJeIDlP9ArwRe8OJY02
 6SwdIiKEMGTRyS2XX91/jbFK/xWRJegXIGycKmfPDH4z4aa/DnnAgMXwD
 o60T73xcmlCR6rLWNM/FwveXJ8q0jEz5WxhrOlpRanLfN5rwaat18gZDb
 b0uNh7ZTIXeVO8JKpP5PiMWl20EcVx4Rr4atID4Q+J1YjshYYIHnj6yCb
 hwoCoGWOx84pxK64nBaZADlzmOJy2wfWW6V/YM/c5yb5z6FhMSGUVNQv7
 N40jnwDBGsxkbRomDRLEH5/Qod2Z8mr/SxXV+guFMY9eyTBiD4Ol/RRiW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327493503"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327493503"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671402773"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671402773"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 19:53:01 +0300
Message-Id: <20230426165305.2049341-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230426165305.2049341-1-imre.deak@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] drm/i915/dp: Convert link training error
 to debug message on disconnected sink
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

If a sink is disconnected it's expected that link training actions will
fail on it, so downgrade the error messages about such actions to be a
debug message. Such - expected - link training failures are more
frequent after a follow up patch, after which an active TypeC link is
reset after the sink is disconnected which also involves a link
training.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c               |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.h               |  1 +
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 11 +++++++++--
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1d28a2560ae01..388e79f74621f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4171,7 +4171,7 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
 	return ret;
 }
 
-static bool intel_dp_is_connected(struct intel_dp *intel_dp)
+bool intel_dp_is_connected(struct intel_dp *intel_dp)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ef39e4f7a329e..488da392fafe5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -42,6 +42,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 			      int link_rate, int lane_count);
 int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 					    int link_rate, u8 lane_count);
+bool intel_dp_is_connected(struct intel_dp *intel_dp);
 int intel_dp_retrain_link(struct intel_encoder *encoder,
 			  struct drm_modeset_acquire_ctx *ctx);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 12f2880e474ed..a747249c409a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -33,6 +33,7 @@ static void lt_msg(struct intel_connector *connector, struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	char conn_str[128] = {};
+	const char *discon_str = "";
 	struct va_format vaf;
 	va_list args;
 
@@ -44,6 +45,11 @@ static void lt_msg(struct intel_connector *connector, struct intel_dp *intel_dp,
 		snprintf(conn_str, sizeof(conn_str), "[CONNECTOR:%d:%s]",
 			 connector->base.base.id, connector->base.name);
 
+	if (is_error && !intel_dp_is_connected(intel_dp)) {
+		discon_str = " (sink disconnected)";
+		is_error = false;
+	}
+
 	if (is_error)
 		drm_err(&i915->drm, "%s[ENCODER:%d:%s][%s] %pV\n",
 			conn_str,
@@ -51,11 +57,12 @@ static void lt_msg(struct intel_connector *connector, struct intel_dp *intel_dp,
 			drm_dp_phy_name(dp_phy),
 			&vaf);
 	else
-		drm_dbg(&i915->drm, "%s[ENCODER:%d:%s][%s] %pV\n",
+		drm_dbg(&i915->drm, "%s[ENCODER:%d:%s][%s] %pV%s\n",
 			conn_str,
 			encoder->base.base.id, encoder->base.name,
 			drm_dp_phy_name(dp_phy),
-			&vaf);
+			&vaf,
+			discon_str);
 }
 
 #define lt_err(intel_dp, dp_phy, format, ...) \
-- 
2.37.2

