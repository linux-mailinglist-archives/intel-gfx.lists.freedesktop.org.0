Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FjJBzTCw2kOuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A8B3238F5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A05510E86D;
	Wed, 25 Mar 2026 11:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SIJHH6mM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A751410E86D;
 Wed, 25 Mar 2026 11:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436913; x=1805972913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EQSTBp3tx0+ybvj8DVkvKdoNf1fsM+IurvTXvIPaQ8k=;
 b=SIJHH6mM/ZJbqwDLW/m2gC5yHJwSK4JIypoZBlD6fUTiFDnWQSwOcSwu
 4n3TpvKVlOowSKLagY14QgwQh7zJ4D6ieEaoHSh1HLJ+5MfcpzV0FnYpQ
 xvkF6Os9WdxkXQ/pHewJt4mQNInd3vczFRqVhSOH0MUFaGst3T5vhbLAa
 axr5cy8uJmI3c+SL7cpAeNwQd8eRSlb1U7eSZMUU1GAOeMsCXwKohQ0VR
 egBRjxg/bogwtjdTh4a5O3trsdWe6PTIGpr8qDbn4iFMRa0qmeUFMeNkg
 mRx/GXaxpPUzVbAMoZBw7H2CXLmz6JGyr04bwxUjsYqnzqO5r3pwt1/IY Q==;
X-CSE-ConnectionGUID: DRljc0SRSLaxIw6zsvGprg==
X-CSE-MsgGUID: Jd6mCQUjReue0WYfy+PF4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047531"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047531"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:32 -0700
X-CSE-ConnectionGUID: ThrWtLClRcmJk5Ehp25pWg==
X-CSE-MsgGUID: mDlf3fM0Rje0yfMf4CssqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798403"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 17/26] drm/i915/writeback: Add the enable sequence from
 writeback
Date: Wed, 25 Mar 2026 16:37:35 +0530
Message-Id: <20260325110744.1096786-18-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: C2A8B3238F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add enable sequence for writeback, use encoder->enable hook to
enable the transcoder.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_writeback.c    | 103 ++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index ba4c162847c8..d45d5faaf7cc 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -17,8 +17,10 @@
 
 #include "intel_atomic.h"
 #include "intel_connector.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
+#include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_fb_pin.h"
@@ -30,6 +32,7 @@ struct intel_writeback_connector {
 	struct intel_encoder encoder;
 	struct intel_writeback_job *job;
 	enum transcoder trans;
+	enum pipe pipe;
 	int frame_num;
 };
 
@@ -48,6 +51,12 @@ static const u32 writeback_formats[] = {
 	DRM_FORMAT_XBGR2101010,
 };
 
+static struct intel_writeback_connector
+*enc_to_intel_writeback_connector(struct intel_encoder *encoder)
+{
+	return container_of(encoder, struct intel_writeback_connector, encoder);
+}
+
 static int intel_writeback_connector_init(struct intel_connector *connector)
 {
 	struct intel_digital_connector_state *conn_state;
@@ -215,6 +224,99 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
 	return 0;
 }
 
+static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
+					   struct intel_encoder *encoder,
+					   const struct intel_crtc_state *crtc_state,
+					   const struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_writeback_connector *wb_conn =
+		enc_to_intel_writeback_connector(encoder);
+	struct intel_writeback_job *job = wb_conn->job;
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	enum transcoder trans = crtc_state->cpu_transcoder;
+	struct intel_crtc *pipe_crtc;
+	struct drm_framebuffer *fb;
+	u32 val = 0, hactive, vactive;
+	int i = 0;
+
+	if (!conn_state->writeback_job)
+		return;
+
+	wb_conn->trans = trans;
+	wb_conn->pipe = crtc->pipe;
+	fb = job->fb;
+	hactive = adjusted_mode->hdisplay;
+	vactive = adjusted_mode->vdisplay;
+
+	/* Configure WD_STRIDE, WD_SURF and WD_TAIL_CFG */
+	/* Enable Planes, Pipes and Transcoder */
+	/* TRANSCODER TIMINGS and other transcoder setting*/
+	/* minimum hactive as per bspec: 64 pixels */
+	if (hactive < 64)
+		drm_err(display->drm, "hactive is less then 64 pixels\n");
+
+	intel_de_write(display, TRANS_HTOTAL(display, trans), HACTIVE(hactive - 1));
+	intel_de_write(display, TRANS_VTOTAL(display, trans), VACTIVE(vactive - 1));
+
+	val = 0;
+	/* 2f) Configure and enable TRANS_WD_FUNC_CTL */
+	switch (crtc->pipe) {
+	default:
+		fallthrough;
+	case PIPE_A:
+		val |= WD_INPUT_PIPE_A;
+		break;
+	case PIPE_B:
+		val |= WD_INPUT_PIPE_B;
+		break;
+	case PIPE_C:
+		val |= WD_INPUT_PIPE_C;
+		break;
+	case PIPE_D:
+		val |= WD_INPUT_PIPE_D;
+		break;
+	}
+
+	switch (fb->format->format) {
+	default:
+		fallthrough;
+	case DRM_FORMAT_YUYV:
+		val |= WD_PIX_FMT_YUYV;
+		break;
+	case DRM_FORMAT_XYUV8888:
+		val |= WD_PIX_FMT_XYUV8888;
+		break;
+	case DRM_FORMAT_XBGR8888:
+		val |= WD_PIX_FMT_XBGR8888;
+		break;
+	case DRM_FORMAT_XBGR2101010:
+		val |= WD_PIX_FMT_XBGR2101010;
+		break;
+	}
+
+	val |= TRANS_WD_FUNC_ENABLE | WD_TRIGGERED_CAP_MODE_ENABLE |
+		WD_DISABLE_POINTERS;
+	intel_de_write(display, WD_TRANS_FUNC_CTL(trans), val);
+
+	if (DISPLAY_VER(display) >= 13)
+		intel_de_rmw(display, PIPE_CHICKEN(crtc->pipe),
+			     UNDERRUN_RECOVERY_DISABLE_ADLP,
+			     UNDERRUN_RECOVERY_DISABLE_ADLP);
+
+	/*  Configure and enable TRANS_CONF */
+	intel_de_write(display, TRANSCONF_WD(trans), WD_TRANS_ENABLE);
+	intel_de_posting_read(display, TRANSCONF_WD(trans));
+
+	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) {
+		const struct intel_crtc_state *pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
+
+		intel_crtc_vblank_on(pipe_crtc_state);
+	}
+}
+
 static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
 	.destroy = drm_encoder_cleanup,
 };
@@ -335,6 +437,7 @@ int intel_writeback_init(struct intel_display *display)
 	encoder->get_config = intel_writeback_get_config;
 	encoder->get_hw_state = intel_writeback_get_hw_state;
 	encoder->compute_config = intel_writeback_compute_config;
+	encoder->enable = intel_writeback_enable_encoder;
 
 	connector = &writeback_conn->connector;
 	ret = intel_writeback_connector_alloc(connector);
-- 
2.34.1

