Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jlUnGBWaK2rOAAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 07:33:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0852B676C47
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 07:33:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZaesbI2Q;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A20A10E93F;
	Fri, 12 Jun 2026 05:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83EE810E92F;
 Fri, 12 Jun 2026 05:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781242385; x=1812778385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TirINe5fTj51GKHGr8DnTLKfFTtlmyVXhDa+XSncfuM=;
 b=ZaesbI2Qr5rr88UvAAyZdr8k71LhFbOsBTFnFXLaWu+4KGZ2FrIVgdtr
 QZEZhQofyjxCqKY78UwNxOpxxgTFp66QZnyMIqIdmmG5PQdmQnZCVj92M
 xwiIRKbzz3B24O4fKnzBiPUFSPMljJeTw7BrbSQVFqHQtZGoUkEoWbfS4
 pg38eBcze2r+IssP/d52w17xZcQNh30v1qYbz/AWkMrheNMCgkAMBDg51
 2Jx3ijCoaNe3ExQlq01dT8WF4T3cpsVpNOa1Ka8FxxKE1DkNu+Q10aWBl
 C2qusOsS5RWMnLUvtBrajfHrNC41VUKn+7I/wByG6hOLo5OSba1F8q/af Q==;
X-CSE-ConnectionGUID: Ky5X9clnRTWXixn4NmMd3g==
X-CSE-MsgGUID: EVTxwz03QB+e6duBlV1PDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82075221"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="82075221"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 22:33:04 -0700
X-CSE-ConnectionGUID: FTxkjPWcSMWz5F4hd75sYw==
X-CSE-MsgGUID: ll+96DG8Q+yWlnt4X7zjuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="270762777"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.89])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 22:33:02 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/3] drm/i915/psr: Split intel_psr_short_pulse
Date: Fri, 12 Jun 2026 08:32:47 +0300
Message-ID: <20260612053249.246878-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260612053249.246878-1-jouni.hogander@intel.com>
References: <20260612053249.246878-1-jouni.hogander@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0852B676C47

We are currently handling Panel Replay and PSR both in
intel_psr_short_pulse. As own logic for error handling is needed for Panel
Replay let's split it now. Keep functionality as it is.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 94 +++++++++++++++++-------
 1 file changed, 66 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e138982dc91f6..99d357bfd84b7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3899,46 +3899,67 @@ static void psr_capability_changed_check(struct intel_dp *intel_dp)
 	}
 }
 
-/*
- * On common bits:
- * DP_PSR_RFB_STORAGE_ERROR == DP_PANEL_REPLAY_RFB_STORAGE_ERROR
- * DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR == DP_PANEL_REPLAY_VSC_SDP_UNCORRECTABLE_ERROR
- * DP_PSR_LINK_CRC_ERROR == DP_PANEL_REPLAY_LINK_CRC_ERROR
- * this function is relying on PSR definitions
- */
-void intel_psr_short_pulse(struct intel_dp *intel_dp)
+static void _panel_replay_short_pulse(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
-	u8 status, error_status;
-	const u8 errors = DP_PSR_RFB_STORAGE_ERROR |
-			  DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR |
-			  DP_PSR_LINK_CRC_ERROR;
+	int ret;
+	u8 error_status;
+	const u8 errors = DP_PANEL_REPLAY_LINK_CRC_ERROR |
+			  DP_PANEL_REPLAY_RFB_STORAGE_ERROR |
+			  DP_PANEL_REPLAY_VSC_SDP_UNCORRECTABLE_ERROR;
 
-	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
+	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_PANEL_REPLAY_ERROR_STATUS,
+				    &error_status);
+	if (ret < 0)
 		return;
 
-	mutex_lock(&psr->lock);
+	if (error_status & errors) {
+		intel_psr_disable_locked(intel_dp);
+		psr->sink_not_reliable = true;
+	}
 
-	psr->link_ok = false;
+	if (error_status & DP_PANEL_REPLAY_RFB_STORAGE_ERROR)
+		drm_dbg_kms(display->drm,
+			    "Panel Replay RFB storage error\n");
+	if (error_status & DP_PANEL_REPLAY_VSC_SDP_UNCORRECTABLE_ERROR)
+		drm_dbg_kms(display->drm,
+			    "Panel Replay VSC SDP uncorrectable error\n");
+	if (error_status & DP_PANEL_REPLAY_LINK_CRC_ERROR)
+		drm_dbg_kms(display->drm,
+			    "Panel Replay Link CRC error\n");
 
-	if (!psr->enabled)
-		goto exit;
+	if (error_status & ~errors)
+		drm_err(display->drm,
+			"PANEL_REPLAY_ERROR_STATUS unhandled errors %x\n",
+			error_status & ~errors);
+
+	/* clear status register */
+	drm_dp_dpcd_write_byte(&intel_dp->aux, DP_PANEL_REPLAY_ERROR_STATUS,
+			       error_status);
+}
+
+static void _psr_short_pulse(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+	u8 status, error_status;
+	const u8 errors = DP_PSR_RFB_STORAGE_ERROR |
+			  DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR |
+			  DP_PSR_LINK_CRC_ERROR;
 
 	if (psr_get_status_and_error_status(intel_dp, &status, &error_status)) {
 		drm_err(display->drm,
 			"Error reading PSR status or error status\n");
-		goto exit;
+		return;
 	}
 
-	if ((!psr->panel_replay_enabled && status == DP_PSR_SINK_INTERNAL_ERROR) ||
-	    (error_status & errors)) {
+	if (status == DP_PSR_SINK_INTERNAL_ERROR || (error_status & errors)) {
 		intel_psr_disable_locked(intel_dp);
 		psr->sink_not_reliable = true;
 	}
 
-	if (!psr->panel_replay_enabled && status == DP_PSR_SINK_INTERNAL_ERROR &&
-	    !error_status)
+	if (status == DP_PSR_SINK_INTERNAL_ERROR && !error_status)
 		drm_dbg_kms(display->drm,
 			    "PSR sink internal error, disabling PSR\n");
 	if (error_status & DP_PSR_RFB_STORAGE_ERROR)
@@ -3955,16 +3976,33 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 		drm_err(display->drm,
 			"PSR_ERROR_STATUS unhandled errors %x\n",
 			error_status & ~errors);
+
 	/* clear status register */
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_ERROR_STATUS, error_status);
+	drm_dp_dpcd_write_byte(&intel_dp->aux, DP_PSR_ERROR_STATUS, error_status);
 
-	if (!psr->panel_replay_enabled) {
-		psr_alpm_check(intel_dp);
-		psr_capability_changed_check(intel_dp);
-	}
+	psr_alpm_check(intel_dp);
+	psr_capability_changed_check(intel_dp);
+}
+
+void intel_psr_short_pulse(struct intel_dp *intel_dp)
+{
+	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
+		return;
+
+	mutex_lock(&intel_dp->psr.lock);
+
+	if (!intel_dp->psr.enabled)
+		goto exit;
+
+	intel_dp->psr.link_ok = false;
+
+	if (intel_dp->psr.panel_replay_enabled)
+		_panel_replay_short_pulse(intel_dp);
+	else
+		_psr_short_pulse(intel_dp);
 
 exit:
-	mutex_unlock(&psr->lock);
+	mutex_unlock(&intel_dp->psr.lock);
 }
 
 bool intel_psr_enabled(struct intel_dp *intel_dp)
-- 
2.43.0

