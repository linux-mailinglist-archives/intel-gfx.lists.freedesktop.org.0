Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90280856015
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 11:50:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4453E10E57A;
	Thu, 15 Feb 2024 10:50:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6O5DecU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B674610E4D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 10:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994209; x=1739530209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PsYyJD1jQOM4HvvX4rzDgJHp2xeM8iT0dfdYbVtm0vA=;
 b=E6O5DecUNRrBhAYLzsQJ+JaSB1+C/doXuE8zK0h4IC75TEBOvngj0E43
 CDteOxZHeJNtZLlYeJjwpP/I8VcHhLxx30GEhDsQY6R9RS0LfuOpzBLmG
 1lge4xIxaXBkR2wTEHhdqHeuzxkyfWgJzNJN5gpogm2ZiVseXgym9wPfC
 5T4hJBQrZJbKLdoMIhtzwqeWwQK9PnLzUh9E4spmGqNu6NuYANCmyUn4j
 RxIzNMJsgPOf4CPXUXMBSjz3EwSh0FY81EEmS4flK019GITFhBVlow0N7
 U/SRpHjGH6/rBFKBtSpXEsf+Vfa3rYu4RCEbFUhodLXQIRXK/xadFW1vK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2219015"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="2219015"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="26653238"
Received: from marquiz-desk-2.fi.intel.com (HELO jhogande-mobl1.fi.intel.com)
 ([10.237.72.63])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:07 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/6] drm/i915/psr: Calculate aux less switch to active latency
Date: Thu, 15 Feb 2024 12:49:31 +0200
Message-Id: <20240215104934.2395239-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240215104934.2395239-1-jouni.hogander@intel.com>
References: <20240215104934.2395239-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Calculate aux less  switch to active latency and store it into alpm_params
struct.

Bspec: 71477

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 26 ++++++++++++++++---
 2 files changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a531c1e5af20..df82551a3f42 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1722,6 +1722,7 @@ struct intel_psr {
 		/* LNL and beyond */
 		u8 check_entry_lines;
 		u8 aux_less_wake_lines;
+		u8 switch_to_active_lines;
 	} alpm_parameters;
 
 	ktime_t last_entry_attempt;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b139db67df55..4cefb9ada5db 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1154,24 +1154,44 @@ static int _lnl_compute_aux_less_wake_time(int port_clock)
 			    num_ml_phy_lock * tml_phy_lock, 1000);
 }
 
+/*
+ * 128b/132b Switch to Active = 32 * (ML_PHY_LOCK Length + 3 + 64) / fLink (in MHz)
+ * Switch to Active Latency = CEILING( t128b/132b Switch to Active / tLine )
+ * ML_PHY_LOCK Length = 396
+ * The "+3" term is the trailing zero padding after the POST_LT_SCRAMBLER_RESET
+ * The "+64" term represents the MTP timeslots
+ */
+static int _lnl_compute_switch_to_active_time(int port_clock)
+{
+	return 32 * (396 + 3 + 64) / (port_clock / 1000);
+}
+
 static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 					     struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	int aux_less_wake_time, aux_less_wake_lines;
+	int aux_less_wake_time, aux_less_wake_lines, switch_to_active_lines;
 
 	aux_less_wake_time =
 		_lnl_compute_aux_less_wake_time(crtc_state->port_clock / 1000);
 	aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
 						       aux_less_wake_time);
 
-	if (aux_less_wake_lines > 32)
+	switch_to_active_lines =
+		intel_usecs_to_scanlines(
+			&crtc_state->hw.adjusted_mode,
+			_lnl_compute_switch_to_active_time(crtc_state->port_clock / 1000));
+
+	if (aux_less_wake_lines > 32 || switch_to_active_lines > 32)
 		return false;
 
-	if (i915->display.params.psr_safest_params)
+	if (i915->display.params.psr_safest_params) {
 		aux_less_wake_lines = 32;
+		switch_to_active_lines = 32;
+	}
 
 	intel_dp->psr.alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
+	intel_dp->psr.alpm_parameters.switch_to_active_lines = switch_to_active_lines;
 
 	return true;
 }
-- 
2.34.1

