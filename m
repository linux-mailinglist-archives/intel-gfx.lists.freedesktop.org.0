Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B288EA6BDC1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 15:56:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D853510E7EB;
	Fri, 21 Mar 2025 14:56:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PSEC59pu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C3E210E7E6;
 Fri, 21 Mar 2025 14:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742568989; x=1774104989;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5/Q3mFBViPYg85BZLlfkDj46Y2Iv85V1ewe/oDWFZi4=;
 b=PSEC59puQYqU63ETguoQG/8dIuGKDnbakjdjm1uwLm0ofw+QL51pZ1x0
 2Q2MHdz+pIzvTwEwGdZGqMb0k8AdM7Y0Tqi1nVvg31PfmGYeJBngdUSIv
 fA5ykKJVLSbuJl6wpBBuSSR4w4+/niHPJBozpJLOumqajtxrojDSB5ZEp
 ljTG2QOj+BEWhDNuzmmL7+OwHsrkaKqiux9E9wlM1Jm5u3pGsquvXoL5g
 iqISHmGm3ZVYYVTxs7A/M/grP0QcbxjSPooNqOl+tXeThn4RxI12SVuZ8
 Edf/9rusGvMiyGb/oHzW8LsczIRJXOPdLl2GgP6TaUsommjm2lJdwZPMe A==;
X-CSE-ConnectionGUID: 6/qIz0gLSAGGnmkGl7WP1Q==
X-CSE-MsgGUID: QNplVI+NTtuVZAdJELnL0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="47617962"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="47617962"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 07:56:29 -0700
X-CSE-ConnectionGUID: clkXaSNXRM60aaEUCmOo+A==
X-CSE-MsgGUID: 2G+sD8LRQy6TdEAv/g7ZeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128478344"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 07:56:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/dp_mst: Fix side-band message timeouts due to
 long PPS delays
Date: Fri, 21 Mar 2025 16:56:25 +0200
Message-ID: <20250321145626.94101-3-imre.deak@intel.com>
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

The Panel Power Sequencer lock held on an eDP port (a) blocks a DP AUX
transfer on another port (b), since the PPS lock is device global, thus
shared by all ports. The PPS lock can be held on port (a) for a longer
period due to the various PPS delays (panel/backlight on/off,
power-cycle delays). This in turn can cause an MST down-message request
on port (b) time out, if the above PPS delay defers the handling of the
reply to the request by more than 100ms: the MST branch device sending
the reply (signaling this via the DP_DOWN_REP_MSG_RDY flag in the
DP_DEVICE_SERVICE_IRQ_VECTOR DPCD register) may cancel the reply
(clearing DP_DOWN_REP_MSG_RDY and the reply message buffer) after 110
ms, if the reply is not processed by that time.

Avoid MST down-message timeouts described above, by locking the PPS
state for AUX transfers only if this is actually required: on eDP ports,
where the VDD power depends on the PPS state and on all DP and eDP ports
on VLV/CHV, where the PPS is a pipe instance and hence a modeset on any
port possibly affecting the PPS state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 34 ++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 3c078fd53fbfa..7d7157983f25e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -26,6 +26,11 @@ static void vlv_steal_power_sequencer(struct intel_display *display,
 static void pps_init_delays(struct intel_dp *intel_dp);
 static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd);
 
+static bool intel_pps_is_pipe_instance(struct intel_display *display)
+{
+	return display->platform.valleyview || display->platform.cherryview;
+}
+
 static const char *pps_name(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -955,10 +960,32 @@ void intel_pps_vdd_off(struct intel_dp *intel_dp)
 		intel_pps_vdd_off_unlocked(intel_dp, false);
 }
 
+static bool aux_needs_pps_lock(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	/*
+	 * The PPS state needs to be locked for:
+	 * - eDP on all platforms, since AUX transfers on eDP need VDD power
+	 *   (either forced or via panel power) which depends on the PPS
+	 *   state.
+	 * - non-eDP on platforms where the PPS is a pipe instance (VLV/CHV),
+	 *   since changing the PPS state (via a parallel modeset for
+	 *   instance) may interfere with the AUX transfers on a non-eDP
+	 *   output as well.
+	 */
+	return intel_dp_is_edp(intel_dp) || intel_pps_is_pipe_instance(display);
+}
+
 intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref)
 {
 	intel_wakeref_t wakeref;
 
+	if (!aux_needs_pps_lock(intel_dp)) {
+		*vdd_ref = false;
+		return NULL;
+	}
+
 	wakeref = intel_pps_lock(intel_dp);
 
 	/*
@@ -976,6 +1003,13 @@ intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref)
 
 void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (!wakeref) {
+		drm_WARN_ON(display->drm, vdd_ref || aux_needs_pps_lock(intel_dp));
+		return;
+	}
+
 	if (vdd_ref)
 		intel_pps_vdd_off_unlocked(intel_dp, false);
 
-- 
2.44.2

