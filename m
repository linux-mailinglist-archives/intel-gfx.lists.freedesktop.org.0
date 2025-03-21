Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD218A6BDC0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 15:56:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B857C10E7E6;
	Fri, 21 Mar 2025 14:56:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HdCxWp4w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F2010E7E6;
 Fri, 21 Mar 2025 14:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742568988; x=1774104988;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BOwhzz4F6utuKOY+XDiWUgtk1HO9FKvg1gT0oTkBeYI=;
 b=HdCxWp4wR+4vEUfP6gNqUyQsaV/SgxLaOedOzDgua4Hc/LTUPfAgQ7a7
 bamlHSluJSI26aYOKCYc1kBZPBsAwI8rU1p83ya+U5y5mYnMM7ZlqD4eH
 A/txHbkBi+F3WomM3VvAxqC5qITQQbM6VvKCFrPchke0XwSKem+LrFYmR
 AJWEi0wqVXmT+WybbycvcXmO+UkcyQlrrEKy9z2qdVwIo40LfuzwxVdOu
 K68vO+QSMAD+CNVr7WrhfY1DeEz/RMCertLHYAvEmK7DN6mw8S3TS6mHS
 GG9uPnu2GG47qZkNgZYcfiodBltw1152gQ8ueGDEPMrxVTDmsUQEnW1te Q==;
X-CSE-ConnectionGUID: in9A4QGvQYWBqIRTJEPuuQ==
X-CSE-MsgGUID: odGeU8+USIerptHlOzo2UA==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="47617954"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="47617954"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 07:56:27 -0700
X-CSE-ConnectionGUID: FkfS3jLaQnSVdkLaMa7tvA==
X-CSE-MsgGUID: FWxfRGKJRh6MCDLlq8c36w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128478338"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 07:56:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/pps: Add helpers to lock PPS for AUX transfers
Date: Fri, 21 Mar 2025 16:56:24 +0200
Message-ID: <20250321145626.94101-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250321145626.94101-1-imre.deak@intel.com>
References: <20250321145626.94101-1-imre.deak@intel.com>
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

Factor out from the DP AUX transfer function the logic to lock/unlock
the Panel Power Sequencer state and enable/disable the VDD power
required for the AUX transfer, adding these to helpers in intel_pps.c .
This prepares for a follow-up change making these steps dependent on the
platform and output type.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 16 ++----------
 drivers/gpu/drm/i915/display/intel_pps.c    | 29 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_pps.h    |  3 ++-
 3 files changed, 32 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index ec27bbd70bcf0..bf5ccfa24ca0b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -272,15 +272,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	aux_domain = intel_aux_power_domain(dig_port);
 
 	aux_wakeref = intel_display_power_get(display, aux_domain);
-	pps_wakeref = intel_pps_lock(intel_dp);
-
-	/*
-	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
-	 * In such cases we want to leave VDD enabled and it's up to upper layers
-	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
-	 * ourselves.
-	 */
-	vdd = intel_pps_vdd_on_unlocked(intel_dp);
+	pps_wakeref = intel_pps_lock_for_aux(intel_dp, &vdd);
 
 	/*
 	 * dp aux is extremely sensitive to irq latency, hence request the
@@ -289,8 +281,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	 */
 	cpu_latency_qos_update_request(&intel_dp->pm_qos, 0);
 
-	intel_pps_check_power_unlocked(intel_dp);
-
 	/*
 	 * FIXME PSR should be disabled here to prevent
 	 * it using the same AUX CH simultaneously
@@ -427,10 +417,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 out:
 	cpu_latency_qos_update_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
 
-	if (vdd)
-		intel_pps_vdd_off_unlocked(intel_dp, false);
+	intel_pps_unlock_for_aux(intel_dp, pps_wakeref, vdd);
 
-	intel_pps_unlock(intel_dp, pps_wakeref);
 	intel_display_power_put_async(display, aux_domain, aux_wakeref);
 out_unlock:
 	intel_digital_port_unlock(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 617ce49931726..3c078fd53fbfa 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -571,7 +571,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
 	return intel_de_read(display, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
 }
 
-void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
+static void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -955,6 +955,33 @@ void intel_pps_vdd_off(struct intel_dp *intel_dp)
 		intel_pps_vdd_off_unlocked(intel_dp, false);
 }
 
+intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref)
+{
+	intel_wakeref_t wakeref;
+
+	wakeref = intel_pps_lock(intel_dp);
+
+	/*
+	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
+	 * In such cases we want to leave VDD enabled and it's up to upper layers
+	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
+	 * ourselves.
+	 */
+	*vdd_ref = intel_pps_vdd_on_unlocked(intel_dp);
+
+	intel_pps_check_power_unlocked(intel_dp);
+
+	return wakeref;
+}
+
+void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref)
+{
+	if (vdd_ref)
+		intel_pps_vdd_off_unlocked(intel_dp, false);
+
+	intel_pps_unlock(intel_dp, wakeref);
+}
+
 void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index c83007152f07d..4390d05892325 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -31,10 +31,11 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
 void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
 void intel_pps_on_unlocked(struct intel_dp *intel_dp);
 void intel_pps_off_unlocked(struct intel_dp *intel_dp);
-void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
 
 void intel_pps_vdd_on(struct intel_dp *intel_dp);
 void intel_pps_vdd_off(struct intel_dp *intel_dp);
+intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref);
+void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref);
 void intel_pps_on(struct intel_dp *intel_dp);
 void intel_pps_off(struct intel_dp *intel_dp);
 void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
-- 
2.44.2

