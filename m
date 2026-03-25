Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EL2TDfZrw2kqqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C032031FCBE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4034510E791;
	Wed, 25 Mar 2026 05:00:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OYKENF5P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D774E10E792;
 Wed, 25 Mar 2026 05:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414829; x=1805950829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KUfQs9kvSy1oXR4eO3vHjfEUBRMl6oWn9oltAjZxyL4=;
 b=OYKENF5P2l2r48HFxffFlNKUwfJfNHTeg64Huq0ilj26yIHENB4uEsja
 JU5fsvermW2O8rOYhM/pnCIoSSpbTczcN+smBkJCIWzP7VaPdQftctXUi
 HhceodAsR9rEzDvU51Gt3wwcHFZolxcPAhe2GhJT02rZ8rQMy4EqqhQWS
 3MCBqt9tAYC8c3Vyi8mM4kwKkjmxaMr3CQsou8AuLoiDcjw8ixlkOiseN
 Qbs2Vn71RX8inyzBjfSaVS1AJPct5kWqUFiC30xSNmifFerkFgrUmt8gA
 Z132hNXt/ANFUw6FG16/910CngamyI1AQLGtPiOKyAkNDv8Jr4Y+AoLpY A==;
X-CSE-ConnectionGUID: 6VwxGQjJSl6fnz2bvLyhug==
X-CSE-MsgGUID: f4DiYYkjQIasRB0IaXkVSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922384"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922384"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 22:00:28 -0700
X-CSE-ConnectionGUID: 5uPk3B91Spqt99+DJr46+A==
X-CSE-MsgGUID: ewtMLLMYSYeEmKnRXOfPEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580930"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 22:00:26 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 24/26] drm/i915/writeback: Define the disable sequence for
 writeback
Date: Wed, 25 Mar 2026 10:29:14 +0530
Message-Id: <20260325045916.984243-25-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325045916.984243-1-suraj.kandpal@intel.com>
References: <20260325045916.984243-1-suraj.kandpal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C032031FCBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Define the disable sequence for a writeback encoder. We only disable
the encoder if no writeback job is pending, if it is then we just
need to disable the wd function so that values can be updated
accordingly.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_writeback.c    | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 213f5e87ebe2..612721d7d978 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -558,6 +558,33 @@ void intel_writeback_isr_handler(struct intel_display *display)
 	}
 }
 
+static void
+intel_writeback_disable_encoder(struct intel_atomic_state *state,
+				struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state,
+				const struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_writeback_connector *wb_conn =
+		enc_to_intel_writeback_connector(encoder);
+	struct intel_crtc *pipe_crtc;
+	int i = 0;
+
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, crtc_state, i) {
+		const struct intel_crtc_state *old_pipe_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_crtc);
+
+		intel_crtc_vblank_off(old_pipe_crtc_state);
+	}
+
+	intel_de_rmw(display, TRANSCONF_WD(crtc_state->cpu_transcoder), WD_TRANS_ENABLE,
+		     REG_FIELD_PREP(WD_TRANS_ENABLE, 0));
+	intel_de_rmw(display, WD_TRANS_FUNC_CTL(crtc_state->cpu_transcoder),
+		     TRANS_WD_FUNC_ENABLE,
+		     REG_FIELD_PREP(TRANS_WD_FUNC_ENABLE, 0));
+	wb_conn->frame_num = 1;
+}
+
 int intel_writeback_init(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
@@ -586,6 +613,7 @@ int intel_writeback_init(struct intel_display *display)
 	encoder->get_hw_state = intel_writeback_get_hw_state;
 	encoder->compute_config = intel_writeback_compute_config;
 	encoder->enable = intel_writeback_enable_encoder;
+	encoder->disable = intel_writeback_disable_encoder;
 
 	connector = &writeback_conn->connector;
 	ret = intel_writeback_connector_alloc(connector);
-- 
2.34.1

