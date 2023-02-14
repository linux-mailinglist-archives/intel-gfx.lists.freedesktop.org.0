Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C393D69654F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 14:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D9B210E8D7;
	Tue, 14 Feb 2023 13:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B60E710E8D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 13:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676382462; x=1707918462;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JQuZGtjY/ATaLBeLVcrCMHgM4jt2Du/vRvYKLYUuHFs=;
 b=XFk/Ik43CmURnrGOydTkgI7bGdjvAM+4nPdn5/lb6BLI7AgNU6nJRGAE
 r7hXzFUTI92zta6QhuKBUsErYNRJa+hO3QYk2LcxUFw0zovCOrj8Bdn7n
 68+cXjpzE70EsAAwO2kkppAX1cBBxSSoxrt64w769tCiSlk6b0QNYCNRo
 ilg1rw3kCp0WkFv8hbi6TT2wi8wH3HwwwrTCv5Si3J+7OkpjmXa7TsCgr
 AAs++OAgQ5gKbpTAajw5DXqyQWTCt+X/QAx4K+2Oxsn/odzk7lCVdXRW0
 ai1PIQ5OkCSHuGtSK+0uaK6fTzRQywOJO2KccIf3rKXyB97ZCNT/t2BTq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="311519652"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="311519652"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 05:47:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="699540844"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="699540844"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 14 Feb 2023 05:47:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 15:47:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 15:47:37 +0200
Message-Id: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Make backlight setup debugs
 consistent
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

It's confusing to debug backlight issues when one can't
easily even tell what kind of backlight control was
selected. Sprinkle uniform debug messages to all the
backlight setup functions.

Also the one that was already there (ext_pwm) was
using drm_info() for some reason. I don't think that's
warranted so switch it to drm_dbg_kms() as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 36 +++++++++++++++++--
 .../i915/display/intel_dsi_dcs_backlight.c    |  5 +++
 2 files changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index a4e4b7f79e4d..d1d54870aefd 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1270,6 +1270,10 @@ static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unus
 			       cpu_ctl2 & ~BLM_PWM_ENABLE);
 	}
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
@@ -1297,6 +1301,10 @@ static int pch_setup_backlight(struct intel_connector *connector, enum pipe unus
 	panel->backlight.pwm_enabled = (cpu_ctl2 & BLM_PWM_ENABLE) &&
 		(pch_ctl1 & BLM_PCH_PWM_ENABLE);
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
@@ -1335,6 +1343,10 @@ static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 	panel->backlight.pwm_enabled = val != 0;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
@@ -1364,6 +1376,10 @@ static int i965_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 	panel->backlight.pwm_enabled = ctl2 & BLM_PWM_ENABLE;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
@@ -1392,6 +1408,10 @@ static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe
 
 	panel->backlight.pwm_enabled = ctl2 & BLM_PWM_ENABLE;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
@@ -1428,6 +1448,11 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 
 	panel->backlight.pwm_enabled = pwm_ctl & BXT_BLC_PWM_ENABLE;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PWM for backlight control (controller=%d)\n",
+		    connector->base.base.id, connector->base.name,
+		    panel->backlight.controller);
+
 	return 0;
 }
 
@@ -1490,6 +1515,11 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 
 	panel->backlight.pwm_enabled = pwm_ctl & BXT_BLC_PWM_ENABLE;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control (controller=%d)\n",
+		    connector->base.base.id, connector->base.name,
+		    panel->backlight.controller);
+
 	return 0;
 }
 
@@ -1538,8 +1568,10 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 			NSEC_PER_SEC / get_vbt_pwm_freq(connector);
 	}
 
-	drm_info(&i915->drm, "Using %s PWM for LCD backlight control\n",
-		 desc);
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using %s PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name, desc);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index 20e466d843ce..049443245310 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -162,6 +162,7 @@ static void dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
 static int dcs_setup_backlight(struct intel_connector *connector,
 			       enum pipe unused)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
 	if (panel->vbt.backlight.brightness_precision_bits > 8)
@@ -171,6 +172,10 @@ static int dcs_setup_backlight(struct intel_connector *connector,
 
 	panel->backlight.level = panel->backlight.max;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using DCS for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
-- 
2.39.1

