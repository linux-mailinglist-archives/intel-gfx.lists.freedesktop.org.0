Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFDNFaqXHWoXcgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:31:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19204620E1E
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E318D10E804;
	Mon,  1 Jun 2026 14:31:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BfqTVKTi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BD6910E804;
 Mon,  1 Jun 2026 14:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780324262; x=1811860262;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RY5vQ3nIM6Q+0ZvuSuyg9eXR4w3jXIkq3C5Ae0SIB6s=;
 b=BfqTVKTia/FHSZYc95bAB/RiecmGpsaZBMVCRC5HJiLeEMI9gya3mcBr
 vGoB5nyiojpWt1SUokbBvIXrEZN2+CsH2vkgBF28ZuBAFwZ/cXVHnQXFl
 gxjCZfIEREJiYEBqCH0afUqhjVmYDknXwZrxfp+UmKkh+Tjo655PdUMue
 TXyZ032VUmsgESmXJUvza90Qi79JYbUmSHjt5QFPqu9qrpCfagucRH3wL
 Vi/QiHySa0E9bZujrq2Nn9wm6JQ+f3mH7356a9rYx0fpIMaQbQlb6y83I
 EPaWFuhQUMIZBW96oT+xCb2mBf/Ky+GqHdLSwNaeVSBKTfQwBe5H8Wji7 A==;
X-CSE-ConnectionGUID: Kd1op5NrRUuNe+u9HYRWbQ==
X-CSE-MsgGUID: ati0/gzzR4CL3Y1gK89iiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="106529931"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="106529931"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 07:31:02 -0700
X-CSE-ConnectionGUID: 52mnO6jtQCm1pDzsal5RDw==
X-CSE-MsgGUID: A8WUt+XQTZ+p+cMbuG2Dwg==
X-ExtLoop1: 1
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa003.fm.intel.com with ESMTP; 01 Jun 2026 07:31:00 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Stephen Fuhry <fuhrysteve@gmail.com>
Subject: [PATCH] drm/i915/display: Refcount for fec enable/disable
Date: Mon,  1 Jun 2026 19:59:43 +0530
Message-Id: <20260601142943.1481728-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.993];
	FREEMAIL_CC(0.00)[intel.com,gmail.com];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 19204620E1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The FEC_ENABLE bit is per port basis and is enabled/disabled on ddi
pre_enable and post_disable. This fec is shared across the mst streams
and can be enabled per stream basis as well.
So have a refcount to track the usage of FEC and then enable/disable
accordingly.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 66 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_ddi.h      |  1 +
 .../drm/i915/display/intel_display_types.h    | 12 ++++
 .../drm/i915/display/intel_modeset_setup.c    |  6 ++
 4 files changed, 85 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 86520848892e..e12a3d6d6a67 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2096,6 +2096,47 @@ void intel_ddi_disable_clock(struct intel_encoder *encoder)
 		encoder->disable_clock(encoder);
 }
 
+/**
+ * intel_ddi_seed_fec_refcounts - Seed per-port FEC refcounts from active CRTCs
+ * @display: display device
+ *
+ * intel_digital_port::fec_active_streams is the per-port refcount that gates
+ * programming of the shared DP_TP_CTL_FEC_ENABLE bit. After initial HW state
+ * readout (driver load, resume, GPU reset takeover), the persistent
+ * crtc_state->fec_enable values reflect what HW currently has; we need to
+ * align the refcount with that so the first paired disable doesn't underflow
+ * and the next enable doesn't incorrectly skip programming the HW bit.
+ *
+ * Must be called once after intel_modeset_readout_hw_state(), before any new
+ * modeset commit can run.
+ */
+void intel_ddi_seed_fec_refcounts(struct intel_display *display)
+{
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(display->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+		struct intel_encoder *encoder;
+
+		if (!crtc_state->hw.active || !crtc_state->fec_enable)
+			continue;
+
+		for_each_intel_encoder(display->drm, encoder) {
+			struct intel_digital_port *dig_port;
+
+			if (encoder->base.crtc != &crtc->base)
+				continue;
+			if (!intel_encoder_is_dig_port(encoder))
+				continue;
+
+			dig_port = enc_to_dig_port(encoder);
+			dig_port->fec_active_streams++;
+			break;
+		}
+	}
+}
+
 void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -2413,12 +2454,22 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	int i;
 	int ret;
 
 	if (!crtc_state->fec_enable)
 		return;
 
+	/*
+	 * FEC is link-wide: DP_TP_CTL_FEC_ENABLE is per-port while
+	 * crtc_state->fec_enable is per-stream. For DP MST, several streams
+	 * on this port share the bit. Only program HW on the first stream
+	 * needing FEC; subsequent streams just bump the refcount.
+	 */
+	if (dig_port->fec_active_streams++ > 0)
+		return;
+
 	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
 		     0, DP_TP_CTL_FEC_ENABLE);
 
@@ -2454,10 +2505,25 @@ static void intel_ddi_disable_fec(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (!crtc_state->fec_enable)
 		return;
 
+	/*
+	 * FEC is a link-wide property and DP_TP_CTL_FEC_ENABLE is a per-port
+	 * register, but crtc_state->fec_enable is per-stream. For DP MST,
+	 * multiple streams on the same port share this bit. Refcount the
+	 * active FEC users on the port and only clear the HW bit when the
+	 * last user goes away, otherwise tearing down one MST stream would
+	 * disable FEC for sibling streams still using it.
+	 */
+	if (drm_WARN_ON(display->drm, dig_port->fec_active_streams <= 0))
+		return;
+
+	if (--dig_port->fec_active_streams > 0)
+		return;
+
 	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
 		     DP_TP_CTL_FEC_ENABLE, 0);
 	intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 580ecb09b8b6..3678c28a0dc9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 			       enum transcoder cpu_transcoder,
 			       bool enable, u32 hdcp_mask);
 void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
+void intel_ddi_seed_fec_refcounts(struct intel_display *display);
 int intel_ddi_level(struct intel_encoder *encoder,
 		    const struct intel_crtc_state *crtc_state,
 		    int lane);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f44be5c689ae..84bd0d993197 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1987,6 +1987,18 @@ struct intel_digital_port {
 	struct ref_tracker *ddi_io_wakeref;
 	struct ref_tracker *aux_wakeref;
 
+	/*
+	 * Number of active streams on this port currently using FEC.
+	 *
+	 * DP_TP_CTL_FEC_ENABLE is a per-port (link-wide) HW bit, but
+	 * crtc_state->fec_enable is per-stream. For DP MST several streams
+	 * share the same port and therefore the same FEC enable bit. Track
+	 * how many active streams want FEC so that the HW bit is only
+	 * programmed on the first enable and only cleared on the last
+	 * disable. Modified under the modeset locks.
+	 */
+	int fec_active_streams;
+
 	struct intel_tc_port *tc;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index e88082c8caac..14f038b8ef81 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -950,6 +950,12 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
 
 	intel_modeset_readout_hw_state(display);
 
+	/*
+	 * Seed per-port FEC refcounts from the just-populated active
+	 * crtc_states before anything can issue an enable/disable.
+	 */
+	intel_ddi_seed_fec_refcounts(display);
+
 	/* HW state is read out, now we need to sanitize this mess. */
 	get_encoder_power_domains(display);
 
-- 
2.25.1

