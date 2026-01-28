Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFr2Lss4eml+4gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 17:26:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07546A5A0B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 17:26:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B4A10E737;
	Wed, 28 Jan 2026 16:26:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SUuNW1YJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCC3B10E736
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 16:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769617608; x=1801153608;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7kQSkn9zCiNJobSRetBRcv4CbXnWOk/k+R89r/6rq28=;
 b=SUuNW1YJcWPyMOCX8nCDvBhzJFfeya3xcib1RGgwgPTbvsiP3tIu65Qt
 C5doA1foZar+DDyJbF1Vj7TTjWVavVoQ+VORk2DB/s6uTPe/oYrngVYOR
 eoIUBghgR3CJhcErlWoITbHumdklpFN1636YckmEMeuTO55deNIBk2f5P
 6+NSttgkcZf1ChdHPYs3XFQSjx7/YZ7luoVip3IXeyqfL8ZucWl8SARg2
 YdTFW7Y6Qd2N7TvF94hKJstb7JqjZT6dGRgd7nMIEM5BInefgNexK3Xy4
 tC0N+/crfJllGmBRa1jWN/bkrT2usaCxGz7vljMo1W186evKa/52bz697 w==;
X-CSE-ConnectionGUID: OjirQYnITxqESgBIWO4LSA==
X-CSE-MsgGUID: 2CnfRfpTTLuYZl339y7WHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74696786"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="74696786"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 08:26:47 -0800
X-CSE-ConnectionGUID: edGHZMgST16CNdJfq4VWmA==
X-CSE-MsgGUID: r9jyVaEDROKYw2avrpUh+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213279769"
Received: from dut4086lnl.fm.intel.com ([10.105.10.177])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 08:26:46 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v2] drm/i915/display: Assert valid cpu_transcoder
Date: Wed, 28 Jan 2026 16:26:46 +0000
Message-ID: <20260128162645.60413-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 07546A5A0B
X-Rspamd-Action: no action

Static analysis issue:

Bit operations are being performed using bit offsets computed from
cpu_transcoder values, which may (albeit unlikely) be -1.  Assert this
is not the case when relevant.

v2: Don't use drm_device in display code (Jani)

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 8 +++++++-
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dp.c      | 3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 3 +++
 4 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d8739e2bb004..ec947c415e5f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3876,7 +3876,8 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 static bool intel_ddi_is_audio_enabled(struct intel_display *display,
 				       enum transcoder cpu_transcoder)
 {
-	if (cpu_transcoder == TRANSCODER_EDP)
+	if (cpu_transcoder == TRANSCODER_EDP ||
+	    drm_WARN_ON(display->drm, cpu_transcoder == INVALID_TRANSCODER))
 		return false;
 
 	if (!intel_display_power_is_enabled(display, POWER_DOMAIN_AUDIO_MMIO))
@@ -4611,6 +4612,8 @@ intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_state,
 		if (!crtcs_port_sync_compatible(ref_crtc_state,
 						crtc_state))
 			continue;
+		if (drm_WARN_ON(display->drm, crtc_state->cpu_transcoder == INVALID_TRANSCODER))
+			continue;
 		transcoders |= BIT(crtc_state->cpu_transcoder);
 	}
 
@@ -4649,6 +4652,9 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 	else
 		crtc_state->master_transcoder = ffs(port_sync_transcoders) - 1;
 
+	if (drm_WARN_ON(display->drm, crtc_state->cpu_transcoder == INVALID_TRANSCODER))
+		return -EINVAL;
+
 	if (crtc_state->master_transcoder == crtc_state->cpu_transcoder) {
 		crtc_state->master_transcoder = INVALID_TRANSCODER;
 		crtc_state->sync_mode_slaves_mask =
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7491e00e3858..6b2a0cb0e0e1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5854,10 +5854,16 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
 					       u8 transcoders)
 {
 	const struct intel_crtc_state *new_crtc_state;
+	struct intel_display *display;
 	struct intel_crtc *crtc;
 	int i;
 
+	display = to_intel_display(state);
+
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (drm_WARN_ON(display->drm,
+				new_crtc_state->cpu_transcoder == INVALID_TRANSCODER))
+			continue;
 		if (new_crtc_state->hw.enable &&
 		    transcoders & BIT(new_crtc_state->cpu_transcoder) &&
 		    intel_crtc_needs_modeset(new_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 79fd3b8d8b25..402b22423ff2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6412,6 +6412,9 @@ static int intel_modeset_affected_transcoders(struct intel_atomic_state *state,
 		if (!crtc_state->hw.enable)
 			continue;
 
+		if (drm_WARN_ON(display->drm, crtc_state->cpu_transcoder == INVALID_TRANSCODER))
+			continue;
+
 		if (!(transcoders & BIT(crtc_state->cpu_transcoder)))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 24f8e60df9ac..f6690130d1cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -741,6 +741,9 @@ intel_dp_mst_transcoder_mask(struct intel_atomic_state *state,
 		if (!crtc_state->hw.active)
 			continue;
 
+		if (drm_WARN_ON(display->drm, crtc_state->cpu_transcoder == INVALID_TRANSCODER))
+			continue;
+
 		transcoders |= BIT(crtc_state->cpu_transcoder);
 	}
 
-- 
2.43.0

