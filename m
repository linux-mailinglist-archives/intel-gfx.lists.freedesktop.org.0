Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D386F61CB
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:10:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A660D10E374;
	Wed,  3 May 2023 23:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E245710E371
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 23:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683155422; x=1714691422;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fCeO63obV2yYUbPBF6wGNmPVJz2e0sWoHJIQfVM7xiQ=;
 b=VoKwwYksNU/FeEkcyySZ/5LkmX/ySdiwBjqRHjYBcc/xJVx9pcLvLKR5
 BbLMTBbT3mU8Df/0OFBNKSiIM2Oe43QgFHC1hni9e4NH86gYZ3/V/BRtK
 GJH08xaMeUkMoXEFhXWLq1MzcomULT4peZuRSsmk9iO8UbmJQBB6e+kIA
 QNlSID100AK/qmjexJ8WSepwYF7DFUXfhkgtDp3tbvpdcqUF8pyMS8a+W
 D/cmrhjEdkQDkF/xRwIUepgSRop61osyfU5giJ1JSFYhVM50Kgx8ESTx0
 obaqPwf/je+lHW0ZdGBdDEIEAkTBmRLbZG4pOgag0ksrhHgU5sqevhY9S w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347607584"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347607584"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="690872142"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="690872142"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 02:10:44 +0300
Message-Id: <20230503231048.432368-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/12] drm/i915/dp: Convert link training
 error to debug message on disconnected sink
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
index 4361c1ac65c3a..1942a05719776 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4179,7 +4179,7 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
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
index f83944eaac128..2fe076e2d64b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -33,6 +33,7 @@ static void lt_msg(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct intel_connector *connector = intel_dp->attached_connector;
+	const char *discon_str = "";
 	struct va_format vaf;
 	va_list args;
 
@@ -43,6 +44,11 @@ static void lt_msg(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
 	vaf.fmt = format;
 	vaf.va = &args;
 
+	if (is_error && !intel_dp_is_connected(intel_dp)) {
+		discon_str = " (sink disconnected)";
+		is_error = false;
+	}
+
 	if (is_error)
 		drm_err(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV\n",
 			connector->base.base.id, connector->base.name,
@@ -50,11 +56,12 @@ static void lt_msg(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
 			drm_dp_phy_name(dp_phy),
 			&vaf);
 	else
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV\n",
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV%s\n",
 			    connector->base.base.id, connector->base.name,
 			    encoder->base.base.id, encoder->base.name,
 			    drm_dp_phy_name(dp_phy),
-			    &vaf);
+			    &vaf,
+			    discon_str);
 }
 
 #define lt_err(intel_dp, dp_phy, format, ...) \
-- 
2.37.2

