Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA144F3CEA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6026910EDD1;
	Tue,  5 Apr 2022 17:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED4BA10EDA5
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180093; x=1680716093;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xYB677Iuj9M+5k9ANW32IYEkmgWlkG67ENfk+eJuTfI=;
 b=SESMfXasBM3gDDwktSjKGyBnzqKNm226motw7ZU4MKXQSvsrC7CoI6YF
 eQgkNfZ/p2AQ3lZosMtZhzfLC5LymNuQkAg1ggOWq/crm5Skk933Mid43
 +1nTv95clyhl6VqCGFsQ4Y1+Ad1qgKMmT+pLpY7iwOe4gbIaCOi/UFEBy
 fLW2hfPJFj/wlq3IC6tdNMJo2SkN4ZdJOq9a3lAAutXYh5/1oBMq5iUOH
 G3Hs7YBAiZPdEQEg98QozmfJE57qiIYBqXmEq+uRuPSkBo9kxyWRoSeRC
 Q9YdgRpF/6WhaNCwGTIKraxG8ABXpkmT+UTPDFjAY08znAfVoa/sFo6WO g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="259648417"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="259648417"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="570007086"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 05 Apr 2022 10:34:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:34:01 +0300
Message-Id: <20220405173410.11436-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/22] drm/i915/pps: Split PPS init+sanitize
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
index 972c9ed46829..7249b988592d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5222,6 +5222,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	intel_edp_add_properties(intel_dp);
 
+	intel_pps_init_late(intel_dp);
+
 	return true;
 
 out_vdd_off:
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 64bd4ca0edd4..6ab8d971901b 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1050,7 +1050,7 @@ void vlv_pps_init(struct intel_encoder *encoder,
 	pps_init_registers(intel_dp, true);
 }
 
-static void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
+static void pps_vdd_init(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -1071,8 +1071,6 @@ static void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
 	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
 							    intel_aux_power_domain(dig_port));
-
-	edp_panel_vdd_schedule_off(intel_dp);
 }
 
 bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp)
@@ -1366,18 +1364,40 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 
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

