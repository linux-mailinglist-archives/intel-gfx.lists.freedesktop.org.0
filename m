Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC27971919
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029C510E509;
	Mon,  9 Sep 2024 12:16:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZdJLsdfX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18CC210E515;
 Mon,  9 Sep 2024 12:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884175; x=1757420175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X/uEbQnZ00mXE4zuw4IGWF+zUbOYVYge2xR/nyfloT8=;
 b=ZdJLsdfXEIIn/aD2+DVYsSbtNq0Gso4IixYrxAemejho8P+BpZUO2RBE
 OzhizYBZDFdzmpDRTVg8rzVpJmS3eFtGypPtbk4Eze1NdQflGunwH7ltH
 FHn0ylwAjJ+W54Y+S60UvXyPSxumXBldQCYzQiw9zNLdNQWc7CznzfrcK
 nQTMMWB/akdV2T2k96VJ9iCni0eHiGVRRF8sxJRbVPEY3+3b+z0lcT3wG
 AtELoo4VWlzMdtpXhB3mPVgh2VOZEP93kgx3HhqTcR3Mbn4hJeEE4GAds
 ak/v/HyswkMu6qTriqfw6F/wlFX48UII+J8H/56MZlpbllVMQcki2c7aV w==;
X-CSE-ConnectionGUID: 6J5HKgYnSHyloJJS+CW5WQ==
X-CSE-MsgGUID: f/3zXWbkRjmYXmO8HSVzLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="27500926"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="27500926"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:15 -0700
X-CSE-ConnectionGUID: fwBSb6qNTUe0IvPYvA4Q7Q==
X-CSE-MsgGUID: OC0rsrcGTFyTMcKT5YNkpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="67383722"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 5/8] drm/i915/pps: add vlv_pps_port_disable()
Date: Mon,  9 Sep 2024 15:15:40 +0300
Message-Id: <3a0157afb9510e8580ad7067def5cdfba185bdd8.1725883885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725883885.git.jani.nikula@intel.com>
References: <cover.1725883885.git.jani.nikula@intel.com>
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

Add vlv_pps_port_disable() and move the VLV/CHV active pipe clear there
from intel_dp_link_down(), hiding the PPS pipe details inside PPS code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    |  8 ++------
 drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h |  2 ++
 3 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index edbd654757e2..e3db1cba11c9 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -477,12 +477,8 @@ intel_dp_link_down(struct intel_encoder *encoder,
 
 	msleep(intel_dp->pps.panel_power_down_delay);
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		intel_wakeref_t wakeref;
-
-		with_intel_pps_lock(intel_dp, wakeref)
-			intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
-	}
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		vlv_pps_port_disable(encoder, old_crtc_state);
 }
 
 static void g4x_dp_audio_enable(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 28a3044a3693..33fae565588a 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1272,6 +1272,18 @@ void vlv_pps_init(struct intel_encoder *encoder,
 	pps_init_registers(intel_dp, true);
 }
 
+/* Call on all DP, not just eDP */
+void vlv_pps_port_disable(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_wakeref_t wakeref;
+
+	with_intel_pps_lock(intel_dp, wakeref)
+		intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
+}
+
 static void pps_vdd_init(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 9c269a138ff0..58df4cd3addd 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -50,6 +50,8 @@ void vlv_pps_pipe_init(struct intel_dp *intel_dp);
 void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state);
+void vlv_pps_port_disable(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state);
 
 void intel_pps_unlock_regs_wa(struct intel_display *display);
 void intel_pps_setup(struct intel_display *display);
-- 
2.39.2

