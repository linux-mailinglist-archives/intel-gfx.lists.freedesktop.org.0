Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0BC510914
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:32:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0800510E5B2;
	Tue, 26 Apr 2022 19:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3663D10E5B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001573; x=1682537573;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XfHI4HTe8j5NPrSKnrfCrYbwvxoaKyBijzsxbY8sWwE=;
 b=gaKJHkbkLr+o6cCW00NBiWg5VqY9Zatlq/p89TjXhq+QjUfEm8hD4R0c
 AZ5PKZalEPzlp26f8ZC0zgcvl35YHtaeEciks/ngghYrQTcv1erfUAJHd
 XdHDstjtmkbZOKbza/W5+quRI9BAeMT61LL07QdonIYBiU0NsjEz4bl46
 PDQzAJIx7wzVGRl3PfeI0s7W/c2dmbFQ+4HjpjYI5hag9xjJqRx/DCHyB
 mfZSEoTBh4EiNLqQD4d63/tQ0alx4USX8ZFLXV5NrDOlkBv93blnEN0Xl
 pkbZp6fcz99Jo70OF4gttBp+gOqec5+HDww7Wc2ENpdHjP2xJOm0sNUVn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="264546090"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="264546090"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:32:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="580114582"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 26 Apr 2022 12:32:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:13 +0300
Message-Id: <20220426193222.3422-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/18] drm/i915/pps: Split PPS init+sanitize
 in two
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

Split the PPS init to something we do at the start of the eDP
probe and a second part we do at the end.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  2 ++
 drivers/gpu/drm/i915/display/intel_pps.c | 30 ++++++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_pps.h |  1 +
 3 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e4a79c11fd25..a83dbbfc914c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5228,6 +5228,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	intel_edp_add_properties(intel_dp);
 
+	intel_pps_init_late(intel_dp);
+
 	return true;
 
 out_vdd_off:
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 5a598dd06039..0ae2be5c5318 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1051,7 +1051,7 @@ void vlv_pps_init(struct intel_encoder *encoder,
 	pps_init_registers(intel_dp, true);
 }
 
-static void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
+static void pps_vdd_init(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -1072,8 +1072,6 @@ static void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
 	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
 							    intel_aux_power_domain(dig_port));
-
-	edp_panel_vdd_schedule_off(intel_dp);
 }
 
 bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp)
@@ -1367,18 +1365,40 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 
 		pps_init_delays(intel_dp);
 		pps_init_registers(intel_dp, false);
+		pps_vdd_init(intel_dp);
 
-		intel_pps_vdd_sanitize(intel_dp);
+		if (edp_have_panel_vdd(intel_dp))
+			edp_panel_vdd_schedule_off(intel_dp);
 	}
 }
 
 void intel_pps_init(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	intel_wakeref_t wakeref;
+
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
 	pps_init_timestamps(intel_dp);
 
-	intel_pps_encoder_reset(intel_dp);
+	with_intel_pps_lock(intel_dp, wakeref) {
+		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+			vlv_initial_power_sequencer_setup(intel_dp);
+
+		pps_init_delays(intel_dp);
+		pps_init_registers(intel_dp, false);
+		pps_vdd_init(intel_dp);
+	}
+}
+
+void intel_pps_init_late(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+
+	with_intel_pps_lock(intel_dp, wakeref) {
+		if (edp_have_panel_vdd(intel_dp))
+			edp_panel_vdd_schedule_off(intel_dp);
+	}
 }
 
 void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index e64144659d31..a3a56f903f26 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -41,6 +41,7 @@ bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp);
 void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
 
 void intel_pps_init(struct intel_dp *intel_dp);
+void intel_pps_init_late(struct intel_dp *intel_dp);
 void intel_pps_encoder_reset(struct intel_dp *intel_dp);
 void intel_pps_reset_all(struct drm_i915_private *i915);
 
-- 
2.35.1

