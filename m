Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8470A4215B
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:43:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD3610E3EC;
	Mon, 24 Feb 2025 13:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+Yvlv7J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83B2B10E16F;
 Mon, 24 Feb 2025 08:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740385867; x=1771921867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AvtVJhYqp6bzcqHZOg0qWhuyTCqTaBO5E1A6SzviGEA=;
 b=C+Yvlv7JyRQKBKGYXfGFqkq+u97Xvio6vM1o8KxxBm9Ebz2K6im1dGry
 AG6x9bc33ftOF+GUXv9koOY8ZQWQ8jQWSu0LePiqNWsU8v6PxQkTBz1N8
 6ctTL8G8I+/oz9M+KQjeNIlWEV/zbrb4CYQe51/BTLzy9xq9WX9T5988W
 NqTxYb5vjMaxV0jCKmgUzNLXvXQf58E0p6FzkuWIoYqKtBLpx9JrRHPQ3
 Qma5GaGmdtNhHssPISiBz5WSNY/MfDr1TQFitqwswP54DAFJF0ttqtmAv
 hP+l1+v7i8K05IiIn/chCFuVKtiPBU7CWQfSjfLhjMjUC2luvGTqzLkD0 g==;
X-CSE-ConnectionGUID: nSN36pJyS9it9KsqOFUfvg==
X-CSE-MsgGUID: Te0NWEdKRa6FpVzBkJ9reg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41250283"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41250283"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 00:31:07 -0800
X-CSE-ConnectionGUID: IO9nJzrSSdWiMCymdRBzWQ==
X-CSE-MsgGUID: AJxhvFTPQC2SRpt8ssBteQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116630821"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 24 Feb 2025 00:31:05 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 6/8] drm/i915/lobf: Check for sink error and disable LOBF
Date: Mon, 24 Feb 2025 13:38:45 +0530
Message-Id: <20250224080847.326350-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250224080847.326350-1-animesh.manna@intel.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
MIME-Version: 1.0
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

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 25 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c   |  3 +++
 drivers/gpu/drm/i915/display/intel_psr.c  | 15 ++------------
 4 files changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 5c70677ac3c0..92ec03956755 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -532,3 +532,28 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
 		     PORT_ALPM_CTL(cpu_transcoder),
 		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
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
+		drm_dbg_kms(display->drm,
+			    "ALPM lock timeout error, disabling ALPM\n");
+
+		/* Clearing error */
+		drm_dp_dpcd_writeb(aux, DP_RECEIVER_ALPM_STATUS, val);
+		return true;
+	}
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index c6efd25c2062..22469fd4cba5 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -30,4 +30,5 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
 bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
 void intel_alpm_disable(struct intel_dp *intel_dp);
+bool intel_alpm_get_error(struct intel_dp *intel_dp);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 03ca2e02ab02..24ad7680cdf2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5360,6 +5360,9 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_psr_short_pulse(intel_dp);
 
+	if (intel_alpm_get_error(intel_dp))
+		intel_alpm_disable(intel_dp);
+
 	if (intel_dp_test_short_pulse(intel_dp))
 		reprobe_needed = true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1d202f2eb356..fde9463d5ec9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3406,28 +3406,17 @@ static int psr_get_status_and_error_status(struct intel_dp *intel_dp,
 static void psr_alpm_check(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
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
+		intel_alpm_disable(intel_dp);
 		drm_dbg_kms(display->drm,
 			    "ALPM lock timeout error, disabling PSR\n");
-
-		/* Clearing error */
-		drm_dp_dpcd_writeb(aux, DP_RECEIVER_ALPM_STATUS, val);
 	}
 }
 
-- 
2.29.0

