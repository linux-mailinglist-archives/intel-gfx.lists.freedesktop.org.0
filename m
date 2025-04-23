Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BC7A98664
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8B9610E667;
	Wed, 23 Apr 2025 09:47:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SK5kxmM0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CA9310E65F;
 Wed, 23 Apr 2025 09:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745401637; x=1776937637;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U5xqi+BU7vFws/PoABPxrvP9/vm/xpSMJqWEFVioTnM=;
 b=SK5kxmM0Ev29xx+v18EhNCrEZn7cugvIX+Ev+Qd5HWDLG1FuvP1fFWt7
 dcMKDdEAWrbu048xr/7fazZXRnpwCjLHCgwO+50SGsoph6C69O/iTxHkS
 hQmfb15BmWu6+Kw5aWtSeSCzNbMLNKt6xQLkMR9zePEKHxmBYi7/OMkCe
 168IVh2/4+7wWdAq7sV5Spok/pxOqWouzjbgfYTrmK4PLpC5YlmZOlMZV
 FosUCOLgPudQ0FuGBmYYuqt7i+6pcOoz00++EmAtgeMm9S9aGbUQvjlIH
 BwP+biwKAvsJgQjCK7RGgjTeH78+Mmrj8hU1PYfwB84tuLBEePvElj9sz w==;
X-CSE-ConnectionGUID: scC0U2D4RAevQyO6lTWeGA==
X-CSE-MsgGUID: 8gYwfqPbSyqgNoqBhIxobA==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="58358009"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="58358009"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:47:08 -0700
X-CSE-ConnectionGUID: w1E//LVVTwGM707pinvdFw==
X-CSE-MsgGUID: 4VSNy6LfSYaG2M9s2NWJ3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132811221"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 23 Apr 2025 02:47:06 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 09/11] drm/i915/lobf: Check for sink error and disable LOBF
Date: Wed, 23 Apr 2025 14:53:32 +0530
Message-Id: <20250423092334.2294483-10-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250423092334.2294483-1-animesh.manna@intel.com>
References: <20250423092334.2294483-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Disable LOBF/ALPM for any erroneous condition from sink side.

v1: Initial version.
v2: Add centralized alpm error handling. [Jouni]
v3: Improve debug print. [Jouni]
v4: Disable alpm permanently for sink error. [Jouni]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 28 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h     |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  5 ++++
 drivers/gpu/drm/i915/display/intel_psr.c      | 18 ++----------
 5 files changed, 37 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 606cb3e5f30d..24b666e6d8f9 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -284,6 +284,9 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
+	if (intel_dp->alpm_parameters.sink_alpm_error)
+		return;
+
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
@@ -546,5 +549,30 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 		     PORT_ALPM_CTL(cpu_transcoder),
 		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 
+	drm_dbg_kms(display->drm, "Disabling ALPM\n");
 	mutex_unlock(&intel_dp->alpm_parameters.lock);
 }
+
+bool intel_alpm_get_error(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_dp_aux *aux = &intel_dp->aux;
+	u8 val;
+	int r;
+
+	r = drm_dp_dpcd_readb(aux, DP_RECEIVER_ALPM_STATUS, &val);
+	if (r != 1) {
+		drm_err(display->drm, "Error reading ALPM status\n");
+		return true;
+	}
+
+	if (val & DP_ALPM_LOCK_TIMEOUT_ERROR) {
+		drm_dbg_kms(display->drm, "ALPM lock timeout error\n");
+
+		/* Clearing error */
+		drm_dp_dpcd_writeb(aux, DP_RECEIVER_ALPM_STATUS, val);
+		return true;
+	}
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index c043a071f84f..d7126d65b60f 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -31,4 +31,5 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
 bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
 void intel_alpm_disable(struct intel_dp *intel_dp);
+bool intel_alpm_get_error(struct intel_dp *intel_dp);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 11346c159489..97db0f569a92 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1814,6 +1814,7 @@ struct intel_dp {
 		u8 silence_period_sym_clocks;
 		u8 lfps_half_cycle_num_of_syms;
 		bool lobf_disable_debug;
+		bool sink_alpm_error;
 	} alpm_parameters;
 
 	u8 alpm_dpcd;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ece787bb3335..607aea1bf6fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5392,6 +5392,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_psr_short_pulse(intel_dp);
 
+	if (intel_alpm_get_error(intel_dp)) {
+		intel_alpm_disable(intel_dp);
+		intel_dp->alpm_parameters.sink_alpm_error = true;
+	}
+
 	if (intel_dp_test_short_pulse(intel_dp))
 		reprobe_needed = true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1bd2fcd0fa4b..43ed166007eb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3384,29 +3384,15 @@ static int psr_get_status_and_error_status(struct intel_dp *intel_dp,
 
 static void psr_alpm_check(struct intel_dp *intel_dp)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_dp_aux *aux = &intel_dp->aux;
 	struct intel_psr *psr = &intel_dp->psr;
-	u8 val;
-	int r;
 
 	if (!psr->sel_update_enabled)
 		return;
 
-	r = drm_dp_dpcd_readb(aux, DP_RECEIVER_ALPM_STATUS, &val);
-	if (r != 1) {
-		drm_err(display->drm, "Error reading ALPM status\n");
-		return;
-	}
-
-	if (val & DP_ALPM_LOCK_TIMEOUT_ERROR) {
+	if (intel_alpm_get_error(intel_dp)) {
 		intel_psr_disable_locked(intel_dp);
 		psr->sink_not_reliable = true;
-		drm_dbg_kms(display->drm,
-			    "ALPM lock timeout error, disabling PSR\n");
-
-		/* Clearing error */
-		drm_dp_dpcd_writeb(aux, DP_RECEIVER_ALPM_STATUS, val);
+		intel_alpm_disable(intel_dp);
 	}
 }
 
-- 
2.29.0

