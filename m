Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ULV4BC+OT2pfjgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:03:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4D4730CA1
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 14:03:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jEs4aGKn;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 312BE10F578;
	Thu,  9 Jul 2026 12:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D7E610F576;
 Thu,  9 Jul 2026 12:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783598637; x=1815134637;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wtQn+VqnEMhRlcpomBaqsvMFXWF4RxH74IKBpvsYwes=;
 b=jEs4aGKnhaWvv2oQGvqMbPHHKX6iSsyFcgSXDr/ToR1is2IiIpQGjetT
 yvq5J+nnnrZr9YEjlrxLrDQceMvX1MhtB2B0GvCym/KxMR/PINMhUT1rs
 JhPQje+ZGZGuHSCIY0YWePGsldG1OoTml6bLNp+3+8gyHDC/0RPZr4ta6
 ha46NGNmmGQwmIDRUSPRKSwKcdsuB6E7iSo6maN16cwngYt2OLtcUSsc+
 us8g6k9ujno9yyvWsZtZIpvkhatuWxj7dnDdfKtRwi8esu13QCsTgSkWg
 w9CyeurHwR8NHxp1mR2fsEZ6tX0AckI8dDFfw2Z5rpG2A8s6V+NHyeuEf A==;
X-CSE-ConnectionGUID: Gax4KyA4R6iDL+iFK2Md8g==
X-CSE-MsgGUID: s6mFoHTSTeukf0D2JsLRPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84468980"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84468980"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 05:03:57 -0700
X-CSE-ConnectionGUID: bBRwr98mQmqBaUxL7gQ/yQ==
X-CSE-MsgGUID: UTQqF7F6QPahfUzhIGTWdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="254686979"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa007.jf.intel.com with ESMTP; 09 Jul 2026 05:03:55 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [PATCH 2/2] drm/i915/dp: set VSC_SDP MSA delegation only for capable
 sinks
Date: Thu,  9 Jul 2026 17:09:51 +0530
Message-Id: <20260709113951.3557968-3-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Queue-Id: AE4D4730CA1

Per DP 1.4a section 2.2.4.3, the MSA MISC1 VSC_SDP bit signals that
the sink should defer colorimetry to the VSC SDP. It should only be set
when the sink advertises DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED and a
VSC SDP with pixel encoding/colorimetry payload will actually be sent.

Fold the colorimetry_support check into intel_dp_needs_vsc_colorimetry()
so both intel_ddi_set_dp_msa() and intel_dp_compute_vsc_sdp() share a
single consistent gate.

Assisted-by: GitHub_Copilot:claude-sonnet-4.6
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c  | 14 ++++++++++----
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c764472bd69a..13010375e21b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -469,6 +469,8 @@ void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
 	 * of Color Encoding Format and Content Color Gamut] while sending
 	 * YCBCR 420, HDR BT.2020 signals we should program MSA MISC1 fields
 	 * which indicate VSC SDP for the Pixel Encoding/Colorimetry Format.
+	 * Only set the delegation bit when the content needs it and
+	 * the sink advertises support.
 	 */
 	if (intel_dp_needs_vsc_colorimetry(crtc_state, conn_state))
 		temp |= DP_MSA_MISC_COLOR_VSC_SDP;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 93282694c29b..53688c5bef74 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3163,8 +3163,7 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 {
 	struct drm_dp_vsc_sdp *vsc;
 
-	if ((!intel_dp->colorimetry_support ||
-	     !intel_dp_needs_vsc_colorimetry(crtc_state, conn_state)) &&
+	if (!intel_dp_needs_vsc_colorimetry(crtc_state, conn_state) &&
 	    !crtc_state->has_psr)
 		return;
 
@@ -3173,7 +3172,6 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 	vsc->sdp_type = DP_SDP_VSC;
 
-	/* Needs colorimetry */
 	if (intel_dp_needs_vsc_colorimetry(crtc_state, conn_state)) {
 		intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
 						 vsc);
@@ -5103,11 +5101,19 @@ bool
 intel_dp_needs_vsc_colorimetry(const struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
+	struct intel_dp *intel_dp =
+		enc_to_intel_dp(to_intel_encoder(conn_state->best_encoder));
+
 	/*
 	 * As per DP 1.4a spec section 2.2.4.3 [MSA Field for Indication
 	 * of Color Encoding Format and Content Color Gamut], in order to
-	 * sending YCBCR 420 or HDR BT.2020 signals we should use DP VSC SDP.
+	 * send YCBCR 420 or HDR BT.2020 signals we should use DP VSC SDP.
+	 * Only signal this when the sink advertises VSC SDP colorimetry
+	 * support.
 	 */
+	if (!intel_dp->colorimetry_support)
+		return false;
+
 	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
 		return true;
 
-- 
2.25.1

