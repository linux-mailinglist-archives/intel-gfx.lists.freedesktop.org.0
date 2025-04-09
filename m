Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 810A3A827C3
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A7010E908;
	Wed,  9 Apr 2025 14:26:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mPuQ6oWg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E27010E908;
 Wed,  9 Apr 2025 14:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744208777; x=1775744777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aGowCRnl88XbQqS7nbUNmkFlduByro7x5z//9mMtf88=;
 b=mPuQ6oWg/9w1GusujQa6SW52PccWXXEnwfp0JD6mBFrz39MQ/oQh5pbB
 IXQ5cj1sbaZBEOwJUFDSMqxxoFTOTKQdT++/sjhAgxqFxG7mu9dZA/M4Y
 6nv/anIC6bOJANfwJm3gQG96YX2z5dlKnaHQroZPHgTLdAMAP34a//vZx
 XuXYAradLjS/iOR5jQfbi+D4+Q9Q4pkB16L4nZImqitGnmxXiIOZdAe+c
 dC1dUlgYIGtEAVnddzxhODmOK2bW+vgMGK65Y6x5CjqZ9svvODrsmeThD
 HrnqI+RphdVgFBVWOqwhDCWmedpz3izLbE6ckagv1wts6ClmipULZMc23 A==;
X-CSE-ConnectionGUID: bd53dNgMQeyKCuCVHMgWIQ==
X-CSE-MsgGUID: BEjy5a29TwiuwJdWnKLAfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49347814"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49347814"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:26:17 -0700
X-CSE-ConnectionGUID: DKm2YmcATZ611lFCaWjVTw==
X-CSE-MsgGUID: /VKxnCu7TPGhd7fQwMlr/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="132732753"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 09 Apr 2025 07:26:15 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 9/9] drm/i915/lobf: Check for sink error and disable LOBF
Date: Wed,  9 Apr 2025 19:32:58 +0530
Message-Id: <20250409140258.785834-10-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250409140258.785834-1-animesh.manna@intel.com>
References: <20250409140258.785834-1-animesh.manna@intel.com>
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
index e4eb7dae5f43..d7dbe32076ff 100644
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
 
@@ -510,5 +513,30 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
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
index 012b0b1d17ff..4f86322a9995 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -29,4 +29,5 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
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
index ed94115560c7..cb2c097c1ec9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5391,6 +5391,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
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

