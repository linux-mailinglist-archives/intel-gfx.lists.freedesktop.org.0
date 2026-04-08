Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PnBwCdRf1mmEEwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 16:01:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1923BD54B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 16:01:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A1510E67D;
	Wed,  8 Apr 2026 14:01:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AlLukUU1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 292DE10E67A;
 Wed,  8 Apr 2026 14:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775656910; x=1807192910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l6eazxD+e5EdhsUi3/v4KGVlw7FvbXy0Y+CdcQiszOU=;
 b=AlLukUU1trqtUSwI20yqDxcM/dVWPlMkrVsVQsZzbWPZkgZevLZq3QQ0
 8f2VhTrOx04gi4aCp0gqIinRyKEUCaRigJQAAdhSL8ICq0lJUki8rfQsJ
 MBojYkyrVBiXMrg6Hin4fuGjeqKxy17V2b/ZZOFT1uVViQmAlILlETC/d
 Bv00tDD679seSvdGq4Rx+S6zE7D2mHiAEu588vLzjp6I5rw4SveYtu3kd
 IkFNRLW3t2zg+wTESCWFJCL8VpBtoWJ7GxLm8EK9gr5nuGTLo5cM1hN4z
 DMdxrcQz2WHqSbEdJDvii0amDLHsCqp4yae2PWf7U1gTmtMh6/fhxsxam w==;
X-CSE-ConnectionGUID: LTAGVkqrTumxH9BlqxF/9g==
X-CSE-MsgGUID: 3Ow9Mz0vTAKR9rTq7qSUEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75811565"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="75811565"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:01:27 -0700
X-CSE-ConnectionGUID: dFC/mxRvRNubU+1YoA/jFg==
X-CSE-MsgGUID: d4WhcxZkR5eORlmnL7FmOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228726690"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.244.251])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:01:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/7] drm/i915/psr: Read all PSR capability registers at once
Date: Wed,  8 Apr 2026 17:00:57 +0300
Message-ID: <20260408140059.252067-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260408140059.252067-1-jouni.hogander@intel.com>
References: <20260408140059.252067-1-jouni.hogander@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: DF1923BD54B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently we are reading PSR capability registers in three phases:

1. read PSR capability and support register
2. read PSR2 X granularity register
3. read PSR2 Y grnaularity register

instead read them on one go and cache them all in
intel_connector:psr_caps:psr_dpcd.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 48 ++++++++----------------
 1 file changed, 16 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a927b73c3f6e..0adaba7e8f7a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -496,47 +496,31 @@ static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
 	return val;
 }
 
-static void _psr_compute_su_granularity(struct intel_dp *intel_dp,
-					struct intel_connector *connector)
+static void _psr_compute_su_granularity(struct intel_connector *connector)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	ssize_t r;
-	__le16 w;
+	u16 w;
 	u8 y;
 
 	/*
 	 * If sink don't have specific granularity requirements set legacy
 	 * ones.
 	 */
-	if (!(connector->dp.psr_caps.dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
+	if (!(connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR_CAPS)] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
 		/* As PSR2 HW sends full lines, we do not care about x granularity */
-		w = cpu_to_le16(4);
+		w = 4;
 		y = 4;
 		goto exit;
 	}
 
-	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_X_GRANULARITY, &w, sizeof(w));
-	if (r != sizeof(w))
-		drm_dbg_kms(display->drm,
-			    "Unable to read selective update x granularity\n");
 	/*
 	 * Spec says that if the value read is 0 the default granularity should
 	 * be used instead.
 	 */
-	if (r != sizeof(w) || w == 0)
-		w = cpu_to_le16(4);
-
-	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_Y_GRANULARITY, &y, 1);
-	if (r != 1) {
-		drm_dbg_kms(display->drm,
-			    "Unable to read selective update y granularity\n");
-		y = 4;
-	}
-	if (y == 0)
-		y = 1;
+	w = le16_to_cpu(*(__le16 *)&connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR2_SU_X_GRANULARITY)]) ? : 4;
+	y = connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR2_SU_Y_GRANULARITY)] ? : 1;
 
 exit:
-	connector->dp.psr_caps.su_w_granularity = le16_to_cpu(w);
+	connector->dp.psr_caps.su_w_granularity = w;
 	connector->dp.psr_caps.su_y_granularity = y;
 }
 
@@ -672,11 +656,11 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 	if (ret < 0)
 		return;
 
-	if (!connector->dp.psr_caps.dpcd[0])
+	if (!connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR_SUPPORT)])
 		return;
 
 	drm_dbg_kms(display->drm, "eDP panel supports PSR version %x\n",
-		    connector->dp.psr_caps.dpcd[0]);
+		    connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR_SUPPORT)]);
 
 	if (drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_NO_PSR)) {
 		drm_dbg_kms(display->drm,
@@ -696,8 +680,8 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 	connector->dp.psr_caps.sync_latency = intel_dp_get_sink_sync_latency(intel_dp);
 
 	if (DISPLAY_VER(display) >= 9 &&
-	    connector->dp.psr_caps.dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
-		bool y_req = connector->dp.psr_caps.dpcd[1] &
+	    connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR_SUPPORT)] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
+		bool y_req = connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR_CAPS)] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
 
 		/*
@@ -718,7 +702,7 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
 	}
 
 	if (connector->dp.psr_caps.su_support)
-		_psr_compute_su_granularity(intel_dp, connector);
+		_psr_compute_su_granularity(connector);
 }
 
 void intel_psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
@@ -777,7 +761,7 @@ static bool psr2_su_region_et_valid(struct intel_connector *connector, bool pane
 	return panel_replay ?
 		connector->dp.panel_replay_caps.dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 		DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
-		connector->dp.psr_caps.dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
+		connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR_SUPPORT)] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
 }
 
 static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
@@ -1415,7 +1399,7 @@ static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
 	if (psr_setup_time < 0) {
 		drm_dbg_kms(display->drm,
 			    "PSR condition failed: Invalid PSR setup time (0x%02x)\n",
-			    connector->dp.psr_caps.dpcd[1]);
+			    connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR_CAPS)]);
 		return -ETIME;
 	}
 
@@ -4222,8 +4206,8 @@ static void intel_psr_sink_capability(struct intel_connector *connector,
 		   str_yes_no(connector->dp.psr_caps.support));
 
 	if (connector->dp.psr_caps.support)
-		seq_printf(m, " [0x%02x]", connector->dp.psr_caps.dpcd[0]);
-	if (connector->dp.psr_caps.dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
+		seq_printf(m, " [0x%02x]", connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR_SUPPORT)]);
+	if (connector->dp.psr_caps.dpcd[INTEL_PSR_DPCD_INDEX(DP_PSR_SUPPORT)] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
 		seq_printf(m, " (Early Transport)");
 	seq_printf(m, ", Panel Replay = %s", str_yes_no(connector->dp.panel_replay_caps.support));
 	seq_printf(m, ", Panel Replay Selective Update = %s",
-- 
2.43.0

