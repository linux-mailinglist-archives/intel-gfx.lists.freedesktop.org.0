Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sAc5MS2OT2pdjgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:03:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B3B730C99
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:03:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BqMIsigr;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFBA10F575;
	Thu,  9 Jul 2026 12:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0DF310F56D;
 Thu,  9 Jul 2026 12:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783598635; x=1815134635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OfdstMJqKbjTERHA4thm3fHvX2AjLalNVu7GhYDR9/c=;
 b=BqMIsigrjwe0K9mmdA1qyqL0Q6bU6S/CRMlM7xNLD3sN/ht9CRrkZLQP
 EGkRyE08HjAQRQTQ3DioZtV+fjVpwJVdOCr457rwpWwQcNNoUWVEGrCH/
 b+PhsY5N9mZh98JcRc+xZSIxXRod+7eHAjyrog9UfFHzDbKf1CoaPSEGE
 vQ1DSH7bLAKRaHQUlkQ63D+XybLza0fVOMQnRTLI+JIbqjE661JC/E4JW
 XA9uyF8Hkpb0mv1dn/7AKp4szpFaho+Ftz3QVHPjrNvOAz+2MK5KXZn9N
 u/SfY/l9ovZ96JOQ2IcFhTui4eatBr2iY4Ci6MWO/BsBVWKtV+2DuBTRu g==;
X-CSE-ConnectionGUID: DMRFuJnbQQeXCXoAQMXM8g==
X-CSE-MsgGUID: +Ny+UpRrTTW1rbaTtWd/eQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84468978"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84468978"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 05:03:55 -0700
X-CSE-ConnectionGUID: QghwjeOJSkOJRy8Oi6mnEQ==
X-CSE-MsgGUID: e1GZ7IljQzayKOKibYU2hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="254686966"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa007.jf.intel.com with ESMTP; 09 Jul 2026 05:03:54 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [PATCH 1/2] drm/i915/dp:
 s/intel_dp_needs_vsc_sdp/intel_dp_needs_vsc_colorimetry
Date: Thu,  9 Jul 2026 17:09:50 +0530
Message-Id: <20260709113951.3557968-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260709113951.3557968-1-chaitanya.kumar.borah@intel.com>
References: <20260709113951.3557968-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 72B3B730C99

The function answers whether a VSC SDP with colorimetry payload is
required by the content being displayed. Rename it to reflect that.

No functional change intended.

Assisted-by: GitHub_Copilot:claude-sonnet-4.6
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c  | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dp.h  | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2b7eb010511b..c764472bd69a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -470,7 +470,7 @@ void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 	 * YCBCR 420, HDR BT.2020 signals we should program MSA MISC1 fields
 	 * which indicate VSC SDP for the Pixel Encoding/Colorimetry Format.
 	 */
-	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state))
+	if (intel_dp_needs_vsc_colorimetry(crtc_state, conn_state))
 		temp |= DP_MSA_MISC_COLOR_VSC_SDP;
 
 	intel_de_write(display, TRANS_MSA_MISC(display, cpu_transcoder),
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ade7e51e7590..93282694c29b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3164,7 +3164,7 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	struct drm_dp_vsc_sdp *vsc;
 
 	if ((!intel_dp->colorimetry_support ||
-	     !intel_dp_needs_vsc_sdp(crtc_state, conn_state)) &&
+	     !intel_dp_needs_vsc_colorimetry(crtc_state, conn_state)) &&
 	    !crtc_state->has_psr)
 		return;
 
@@ -3174,7 +3174,7 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	vsc->sdp_type = DP_SDP_VSC;
 
 	/* Needs colorimetry */
-	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
+	if (intel_dp_needs_vsc_colorimetry(crtc_state, conn_state)) {
 		intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
 						 vsc);
 	} else if (crtc_state->has_panel_replay) {
@@ -5100,8 +5100,8 @@ static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8
 }
 
 bool
-intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
-		       const struct drm_connector_state *conn_state)
+intel_dp_needs_vsc_colorimetry(const struct intel_crtc_state *crtc_state,
+			       const struct drm_connector_state *conn_state)
 {
 	/*
 	 * As per DP 1.4a spec section 2.2.4.3 [MSA Field for Indication
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 02b691df6755..54570aa142f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -128,8 +128,8 @@ int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
 bool intel_dp_joiner_needs_dsc(struct intel_display *display,
 			       int num_joined_pipes);
 bool intel_dp_has_joiner(struct intel_dp *intel_dp);
-bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
-			    const struct drm_connector_state *conn_state);
+bool intel_dp_needs_vsc_colorimetry(const struct intel_crtc_state *crtc_state,
+				    const struct drm_connector_state *conn_state);
 void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state);
-- 
2.25.1

