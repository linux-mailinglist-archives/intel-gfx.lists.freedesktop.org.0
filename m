Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5E0521271
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5633110F485;
	Tue, 10 May 2022 10:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C502E10F591
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179386; x=1683715386;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6cT0mXvfxDNq3r2YFekgONcDFXovxcYcSPZMm3ZbTlE=;
 b=VNzvHiYSZLuZGSRvedwAZyknmuORl/zaI4fmrW0hy45ZuWG6uZZfZfzM
 vUtcK+szAdHTIrwr8a02vqy81SzMstr+Uu/O6Sg/EZx+CPrCuHltpaiSz
 pSchMbN+qzQ9SnC0epDl4LZMsmD7AnhsCLak1EAmDWaXpatY0RBONB4ek
 cXrmbMkHpEWgho2+FRAYv8fXBskprR3U05afGnKr6ky8RzbI/7KynL7Lq
 NMrO6ioX4W+JW+jZpG+PoOgbqgjGz5hudsAOAw04LhheGPJyLkLqtMkV1
 VgYICc24GIYHmcVP52WGwqv2+FvjGBHFeniO56/JQGqz7Th47SkCvACkp w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="256870723"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="256870723"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:43:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="565588728"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 10 May 2022 03:43:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:43:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:34 +0300
Message-Id: <20220510104242.6099-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/15] drm/i915/pps: Split PPS init+sanitize in
 two
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
index 7db71bcd4c4a..53615c0ed869 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5253,6 +5253,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	intel_edp_add_properties(intel_dp);
 
+	intel_pps_init_late(intel_dp);
+
 	return true;
 
 out_vdd_off:
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9877c43a9f6f..db3a12215269 100644
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
@@ -1409,18 +1407,40 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 
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

