Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19410A918C4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 12:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE5F610EA94;
	Thu, 17 Apr 2025 10:05:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MMskAg3c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F409F10EA95;
 Thu, 17 Apr 2025 10:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744884312; x=1776420312;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XpyGmOnH32K2b0cVa/rj9iL33kP+k52tvbsVYVEhqaQ=;
 b=MMskAg3cS5G/IfO9L4iVooVwAtWfS2rbHVW4BnvC8znGqfdl8SKK9AP7
 MvxSffpvYA58tgqpGekyZatlLjQzXFSAftTjoviarDzpos/GahciLUDGJ
 naUxGkQ6W92/F73K/new1Rs2ctJ7mo1h4VP55Zq4ZM7w9T4aiz9muTs7d
 Mk2maUIAf43lD5Quk71ehbXnCsT4+qeP4+aGm2ytTC2rrWcdeDrIfeaK4
 svejFCjJkBIS5EfsoMgFFlLFDHJDuChAnMEHBsvb/+qisApS5Jx7U0ioz
 di2Ntfi12Px6yKyNPvo5MRwZs1Fmgqto9KNsCJtfuXtuYXnjP7NCP2Rud A==;
X-CSE-ConnectionGUID: JINhYKKoQSamqTI7pty8Qw==
X-CSE-MsgGUID: q/2UE1wSQY2t1J9HCYkvTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57106744"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57106744"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 03:05:12 -0700
X-CSE-ConnectionGUID: Zg5t9QCwTF+0nWY5X2X3ZA==
X-CSE-MsgGUID: B8V5rGDoSD+fS4QoN2Y0OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="130745652"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 17 Apr 2025 03:05:10 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 09/10] drm/i915/lobf: Check for sink error and disable LOBF
Date: Thu, 17 Apr 2025 15:11:22 +0530
Message-Id: <20250417094123.1662424-10-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250417094123.1662424-1-animesh.manna@intel.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
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
index 2f2198ed67c8..3d4459881e7c 100644
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
 
@@ -550,5 +553,30 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
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
index e26dc2ad1be7..b70b09c17d92 100644
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

