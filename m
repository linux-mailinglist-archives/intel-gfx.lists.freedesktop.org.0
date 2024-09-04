Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F8196BF83
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 16:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF01810E7CF;
	Wed,  4 Sep 2024 14:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rq/TOJ1F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC3810E7CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 14:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725458585; x=1756994585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H9ZsieO1FS/bPVGCFoMS+ZVXMyeZPInIXWjb6uAn9tg=;
 b=Rq/TOJ1FnJ+MzsjBvRnaJrYyqN2b7vGOXe5l5B3XxM9a0jlJdUj1Cb9+
 X8o4uVriPKHmaqCcb6LaIngCvnNfcEbau0ohZpdFKn8FZ+oqiQ46kbE00
 NFaQuaY0kauUgSA+nIq2kGfTVdt31/ARdaAH346V5lS6MH+pWU9qCsy1e
 WkFrjrGzwTpQHgwUgnB+m7KcZgPAm8Z2Z6Sjb3LD8Zy15hx6Vp+8F5vqW
 0SD0+fcviXyGRVfZrHNnPanRFoDR8T+RJxw7EdrSCagFQ+nmUYuMRcXB9
 iSRUe29dqRl4hMmy1YV0JloYFBl+D0d4xxrA2EAC4ewr747Uhkqmj4gkb Q==;
X-CSE-ConnectionGUID: A0YzDfbpTie29sjBZFUNtA==
X-CSE-MsgGUID: 0rDJNH+KT3a4+E0MipOrmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34784276"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34784276"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:03:02 -0700
X-CSE-ConnectionGUID: Nrwsx0KoTWGoms8V6pwFKA==
X-CSE-MsgGUID: av9FplDXRV+Wr8jBiAnVxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="66012944"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:03:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/4] drm/i915/pps: move active_pipe set to
 intel_pps_dp_encoder_reset()
Date: Wed,  4 Sep 2024 17:02:32 +0300
Message-Id: <2ff303809266086d50f86c96eb60ab506b98b811.1725458428.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725458428.git.jani.nikula@intel.com>
References: <cover.1725458428.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Rename intel_pps_encoder_reset() to intel_pps_dp_encoder_reset() to
highlight it's to be called on all DP, not just eDP. Move the VLV/CHV
active pipe set there from intel_dp_encoder_reset(), hiding the PPS pipe
details inside PPS code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 10 +---------
 drivers/gpu/drm/i915/display/intel_ddi.c |  2 +-
 drivers/gpu/drm/i915/display/intel_pps.c | 10 +++++++++-
 drivers/gpu/drm/i915/display/intel_pps.h |  2 +-
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 526c8c4d7b53..1f9812223263 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1266,21 +1266,13 @@ enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
 static void intel_dp_encoder_reset(struct drm_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder->dev);
-	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
 
 	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
 
 	intel_dp->reset_link_params = true;
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		intel_wakeref_t wakeref;
-
-		with_intel_pps_lock(intel_dp, wakeref)
-			intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
-	}
-
-	intel_pps_encoder_reset(intel_dp);
+	intel_pps_dp_encoder_reset(intel_dp);
 }
 
 static const struct drm_encoder_funcs intel_dp_enc_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 00fbe9f8c03a..fba3be6420cd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4392,7 +4392,7 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
 
 	intel_dp->reset_link_params = true;
 
-	intel_pps_encoder_reset(intel_dp);
+	intel_pps_dp_encoder_reset(intel_dp);
 
 	if (intel_encoder_is_tc(&dig_port->base))
 		intel_tc_port_init_mode(dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 2b71e1bf519f..9e54acfea992 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1599,12 +1599,20 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 		    (intel_de_read(display, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
 }
 
-void intel_pps_encoder_reset(struct intel_dp *intel_dp)
+/* Call on all DP, not just eDP */
+void intel_pps_dp_encoder_reset(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		intel_wakeref_t wakeref;
+
+		with_intel_pps_lock(intel_dp, wakeref)
+			intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
+	}
+
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 343798461f49..8dbea05f498d 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -44,7 +44,7 @@ bool intel_pps_init(struct intel_dp *intel_dp);
 void intel_pps_init_late(struct intel_dp *intel_dp);
 
 void intel_pps_dp_init(struct intel_dp *intel_dp);
-void intel_pps_encoder_reset(struct intel_dp *intel_dp);
+void intel_pps_dp_encoder_reset(struct intel_dp *intel_dp);
 void intel_pps_reset_all(struct intel_display *display);
 
 void vlv_pps_init(struct intel_encoder *encoder,
-- 
2.39.2

