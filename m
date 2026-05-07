Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKl0B6vr+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E713D4E1FE7
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7141310EF50;
	Thu,  7 May 2026 01:32:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FKQCYMZG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 218BE10EF50;
 Thu,  7 May 2026 01:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117545; x=1809653545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fj5nAARmdU9klVjLBTRQKxL7hgDPgNtsjm2qnY/2cVg=;
 b=FKQCYMZGM41bjmtYJ00AjMgK7pMPUeKP9UpowtP9pPHqqzEyzmxZnT2a
 eDt2HzS2AUh3OuriCo9fVb6JzdxjDBaJxXQHhl2W6/Zx+453uQ5C0aQZJ
 jsL2FxkdeFeUe+3un9tVrz9rE27rvOibJrznDCv5HPfY88K26O9VZ3V3P
 1xWwOZ4xhKcRQD/o6RKDX/yy7Y+fX7c37zrk35fd80t9WDTL16DudKLAI
 vBy1hfUGJrdxHXuH+hAzOaRTAO0GKYZdtA2oL5rFT/5ZtC9h+cisD6+n7
 sSnPXjS+7Qkgq7eA6MCS9+kyiSpYBhxwsq4TmAn511OX6s+UWs896UiqS w==;
X-CSE-ConnectionGUID: yeGCtqxNRLO3HtP9/W5Sow==
X-CSE-MsgGUID: tIMtXsaKT6iwKbv0CIV5fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089050"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089050"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:25 -0700
X-CSE-ConnectionGUID: g1Eddw1JTTKmdZhI51rV8g==
X-CSE-MsgGUID: 3crX9m3uSFSU8f94AUytBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692862"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:24 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 23/31] drm/i915/buf_trans: compute C10's VS/PE-O index
Date: Thu,  7 May 2026 03:31:29 +0200
Message-ID: <20260507013137.527510-24-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260507013137.527510-1-michal.grzelak@intel.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Queue-Id: E713D4E1FE7
X-Rspamd-Server: lfdr
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Compute the most appropriate VS/PE-O index for C10.

For external DP use 2nd table if encoder supports any mode beyond or
including HBR2. Use 1st table if external DP encoder supports anything
lower than HBR2.

For eDP use 4th table if encoder supports HBR3. Otherwise use 3rd table
for eDP.

Warn if encoder does not support DP. In that case fallback to using
default VS/PE tables.

v2->v3
- return -EINVAL instead of -1 (Suraj)

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 28 ++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 2e4177ab55a34..a9f1242e2bcf0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1786,6 +1786,30 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static int
+snps_c10_compute_index(const struct intel_crtc_state *crtc_state)
+{
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+		if (crtc_state->port_clock > 540000)
+			return 3;
+		else
+			return 2;
+	}
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (crtc_state->port_clock > 270000)
+			return 1;
+		else
+			return 0;
+	}
+
+	drm_WARN(to_intel_display(crtc_state)->drm, 1,
+		 "non-DP (%d) encoder asks to compute VS/PE-O index\n",
+		 crtc_state->output_types);
+
+	return -EINVAL;
+}
+
 static enum snps_c20_vspeo_index
 snps_c20_compute_index(const struct intel_crtc_state *crtc_state)
 {
@@ -1829,7 +1853,9 @@ vspeo_compute_index(struct intel_encoder *encoder,
 	if (HAS_LT_PHY(display)) {
 		return lt_compute_index(crtc_state);
 	} else if (DISPLAY_VER(display) >= 14) {
-		if (!intel_encoder_is_c10phy(encoder))
+		if (intel_encoder_is_c10phy(encoder))
+			return snps_c10_compute_index(crtc_state);
+		else
 			return snps_c20_compute_index(crtc_state);
 	}
 
-- 
2.45.2

