Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGEkCETxd2lQmgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 23:57:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 424B58E1B9
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 23:57:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1444210E07B;
	Mon, 26 Jan 2026 22:57:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EJeArrdc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46F2310E07B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jan 2026 22:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769468224; x=1801004224;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QyGkkP/dNZXv58YW8LvYHSf2WzNMC4HbU53TpHDtKl8=;
 b=EJeArrdcZ7waP7qgyrsptuMphgRlhZvYLOtUx8RdNyyc8I/b6VRl3mIM
 piic1L9sPeNOOAnXGlgpWKG9kR2vxaIWoREWtruK+GAJ5X5RXW6mhagvh
 h6c94Wv6Dfwnlg8gOwnCdEt8tpkgKh/D8dv9KejWNpyZ0x014p03WytT5
 zeIsB1dlVHe0F1dDcEbqbFcmuQubwr+AwVB17Vtwqj3XKq6A3ZmGpAbIw
 VtwD5ebKKulLotIWbdz0cFSQNRmZrQxC1JmCalNbuKWBvCNHCLnCDaIGj
 yEniXhQD5Q3kYV6mdUNaZHdj3D6foekjjIxQc92BVn23bheAJCFw/Opfi Q==;
X-CSE-ConnectionGUID: +oPfYRuQSLCaOgAsL/6EDg==
X-CSE-MsgGUID: slAGDF3FRVqV6SC9dtQDpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70713190"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="70713190"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 14:57:04 -0800
X-CSE-ConnectionGUID: xe8qvNQISmaUkE6a4Lukhg==
X-CSE-MsgGUID: kQpd5TYxQbiMkKGT+ACkxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="207828156"
Received: from dut4086lnl.fm.intel.com ([10.105.11.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 14:57:04 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com,
	alex.zuo@intel.com,
	jonathan.cavitt@intel.com
Subject: [PATCH] drm/i915/display: Assert valid cpu_transcoder
Date: Mon, 26 Jan 2026 22:57:03 +0000
Message-ID: <20260126225702.66437-2-jonathan.cavitt@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 424B58E1B9
X-Rspamd-Action: no action

Static analysis issue:

Bit operations are being performed using bit offsets computed from
cpu_transcoder values, which may (albeit unlikely) be -1.  Assert this
is not the case when relevant.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 8 +++++++-
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_dp.c      | 3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 3 +++
 4 files changed, 18 insertions(+), 1 deletion(-)

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
index 7491e00e3858..c9d50240d813 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5855,9 +5855,14 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
 {
 	const struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
+	struct drm_device *drm;
 	int i;
 
+	drm = to_intel_display(state)->drm;
+
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (drm_WARN_ON(drm, new_crtc_state->cpu_transcoder == INVALID_TRANSCODER))
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

