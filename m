Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOTbAftKDmoM9gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 01:59:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A33559D148
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 01:59:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E637410E428;
	Wed, 20 May 2026 23:59:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="DtHHoDMq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF9510F19E;
 Wed, 20 May 2026 23:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YWD0zLg2wOSByqR51AAuOV6x0IqPN1IXIbrOdNX1pY0=; b=DtHHoDMqCRXoMd4qB5ACKi5074
 aFVVJuSXQ8zezJsRPHO0j8p8qirL3vecxmtzNtoRLsugnbvsnHduSVgpxzyOpB///ZkuQ6yRIo5cd
 xM5Z5+J8I1njyiqVWFcmyVxqcvDL5x7cGlJA4UkXX4CmoW6GGuew51euSEa0xfG+Ince6D4MMkBOe
 egYNctgnEhxQGm3hjI/DAqAtZNNbvKuqXbWB2d0j/OtvUBRde+NY+fOO3yTWZXdxZuuXHkl2e21vg
 h8/Aja6MvQAexnB3Mla6r7/3sXau/qOuJwxbMX5syxfT5uEkHMf7RVZLm31C+FRd3qPTK1Nn24GVh
 lGRik01g==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=localhost.localdomain) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wPqpG-00456i-Q8; Thu, 21 May 2026 01:59:47 +0200
From: John Harrison <John.Harrison@Igalia.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Rodrigo Siqueira <siqueira@igalia.com>
Subject: [PATCH 7/9] drm/i915/display: Fix XBGR2101010 bpc
Date: Wed, 20 May 2026 16:58:18 -0700
Message-ID: <20260520235820.2313192-8-John.Harrison@Igalia.com>
X-Mailer: git-send-email 2.43.0
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.985];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,Igalia.com:mid]
X-Rspamd-Queue-Id: 6A33559D148
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Rodrigo Siqueira <siqueira@igalia.com>

When running the kms_writeback subtest
writeback-check-output-XBGR2101010, this test always fails due to a CRC
mismatch. For some reason, the test writeback-check-output-XBGR8888 was
not failing, which triggered suspicion that something in the format
manipulation during writeback might be wrong. When looking at how Intel
handles the bpc, it checks the information from the EDID, and if there
is no info about that (this is what happens in the writeback case), it
sets the bpc to 8 (or 24 bpp) by default which would explains why the
XBGR8888 test pass. On the other hand, 24bpp would not work for
XBGR2101010, which requires 30bpp. With this idea in mind, this commit
ensured that depths greater than 24 get 30 bpp in the writeback
sequence.

Notice that to ensure the BPP gets updated, we must update the mode when
there is a difference between what was requested and what is configured.
We also have to consider the fastset path. Finally, to ensure any other
part does not override this configuration, this commit added a callback
implementation for compute_config_late.

Signed-off-by: Rodrigo Siqueira <siqueira@igalia.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../gpu/drm/i915/display/intel_writeback.c    | 25 ++++++++++++++++++-
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 35ca757c76e6..bc52eb0b2473 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5483,7 +5483,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_X(dsi_pll.div);
 
 	if ((display->platform.g4x || DISPLAY_VER(display) >= 5) &&
-	    !is_writeback)
+	    (!is_writeback || fastset))
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
 	if ((!fastset || !pipe_config->update_m_n) && !is_writeback) {
diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 064c6ff5bc73..9808ee2092ef 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -207,7 +207,7 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
 		drm_atomic_get_new_connector_state(state, connector);
 	struct drm_crtc_state *crtc_state;
 	struct drm_framebuffer *fb;
-	int ret;
+	int ret, fb_bpp, intel_pipe_bpp;
 
 	/* We return 0 since this is called while disabling writeback encoder */
 	if (!conn_state->crtc)
@@ -233,6 +233,13 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
 		return ret;
 	}
 
+	// If the required bpc is different from the current one, we need to
+	// force an update
+	intel_pipe_bpp = to_intel_crtc_state(crtc_state)->pipe_bpp;
+	fb_bpp = fb->format->depth > 24 ? 30 : 24;
+	if (intel_pipe_bpp != fb_bpp)
+		crtc_state->mode_changed = true;
+
 	return 0;
 }
 
@@ -475,6 +482,21 @@ intel_writeback_compute_config(struct intel_encoder *encoder,
 	return 0;
 }
 
+static int intel_writeback_compute_config_late(struct intel_encoder *encoder,
+					       struct intel_crtc_state *pipe_config,
+					        struct drm_connector_state *conn_state)
+{
+	if (!conn_state->writeback_job)
+		return 0;
+
+	if (conn_state->writeback_job->fb->format->depth > 24)
+		pipe_config->pipe_bpp = 30;
+	else
+		pipe_config->pipe_bpp = 24;
+
+	return 0;
+}
+
 static void
 intel_writeback_get_config(struct intel_encoder *encoder,
 			   struct intel_crtc_state *crtc_state)
@@ -612,6 +634,7 @@ int intel_writeback_init(struct intel_display *display)
 	encoder->get_config = intel_writeback_get_config;
 	encoder->get_hw_state = intel_writeback_get_hw_state;
 	encoder->compute_config = intel_writeback_compute_config;
+	encoder->compute_config_late = intel_writeback_compute_config_late;
 	encoder->enable = intel_writeback_enable_encoder;
 	encoder->disable = intel_writeback_disable_encoder;
 
-- 
2.43.0

