Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yE0oA/BKDmoM9gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 01:59:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F1459D102
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 01:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EBA110E438;
	Wed, 20 May 2026 23:59:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="LkhBb7Tc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0706010E438;
 Wed, 20 May 2026 23:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n/Ee6L1jSdeCQyFSMIv6H/p53obeVtbY7ouv+z805uI=; b=LkhBb7TcQmM86xkGEd1AOZ2jCj
 hzwqJcqIetEMKQ1ICjcmovne3xkVLEJk7bsRupTIKVtlhDDr7MIH23xtliqN96cXFolqcKrzeDj6b
 0atOjDMp/kAUSal2emz5aVDif4bgsedw+vX0V5qP2sErzrZ/NuXUujabBV7XoSz3mqXv09a6srzxA
 jOxA4UPIEyF0aT7svIk/dUrWIzVTlUciwx0DlZl3Tuk/MucT97jkQv1/DkEFvi2kivR4v192/1Zlj
 MD+FZI1rJevXpcYs7TWCGV9/ebcgd22OrHn7JXJGLvqbhy2hA9AReuIRATDEEU1tY57QCNHVPufs7
 BMQicUrg==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=localhost.localdomain) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wPqp7-00456i-0D; Thu, 21 May 2026 01:59:37 +0200
From: John Harrison <John.Harrison@Igalia.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 1/9] drm/i915/writeback: Fix null pointer problems with
 writeback jobs
Date: Wed, 20 May 2026 16:58:12 -0700
Message-ID: <20260520235820.2313192-2-John.Harrison@Igalia.com>
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.995];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,Igalia.com:mid]
X-Rspamd-Queue-Id: 56F1459D102
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The writeback capture code was using the job to get access to various
information about the capture. However, intel_writeback_capture() is
called immediately after drm_writeback_queue_job(). And the
description for the DRM function explicitly says it clears the job
pointer. To work around this, it looks like the code was trying to
save the job pointer in the Intel specific writeback structure.
Unfortunately, this was broken - the pointer was cleared but never
actually set in the first place. Thus, the capture code hit a null
pointer derefence and died.

The capture function is the only place that needs this saved job
pointer and it is the call immediately after the drm job queue call.
So, it is much simpler to just save the pointer locally and pass it in
to the capture code as a parameter.

There was also a check in the ISR that the saved job pointer has been
initialised. However, the writeback ISR runs for multiple events, some
of which are before the above juggling of the job pointer. The check
seems redundant as the ISR code itself does not touch the job pointer
at all. So just remove that check completely.

As to whether the writeback job is the best place for storing the
pixel format and vma of the writeback buffer is another question
entirely. Maybe they should be saved elsewhere and the juggling of the
job pointer would not be necessary at all?

Signed-off-by: John Harrison <John.Harrison@Igalia.com>
---
 .../gpu/drm/i915/display/intel_writeback.c    | 23 +++++++------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 52c2d8b91aff..2fd49405c0b6 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -32,7 +32,6 @@
 struct intel_writeback_connector {
 	struct intel_connector connector;
 	struct intel_encoder encoder;
-	struct intel_writeback_job *job;
 	enum transcoder trans;
 	enum pipe pipe;
 	int frame_num;
@@ -260,25 +259,22 @@ get_color_mode_bpp(struct intel_display *display, u32 color_format)
 }
 
 static void intel_writeback_capture(struct intel_atomic_state *state,
-				    struct intel_connector *connector)
+				    struct intel_connector *connector,
+				    struct intel_writeback_job *job)
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_writeback_connector *wb_conn =
 		conn_to_intel_writeback_connector(connector);
-	struct drm_connector_state *conn_state =
-		drm_atomic_get_new_connector_state(&state->base, &connector->base);
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, wb_conn->pipe);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	struct drm_writeback_job *wb_job = conn_state->writeback_job;
-	struct intel_writeback_job *job = conn_state->writeback_job->priv;
 	enum transcoder trans = wb_conn->trans;
 	u32 val = 0;
 	int bpp;
 
-	bpp = get_color_mode_bpp(display, wb_job->fb->format->format);
+	bpp = get_color_mode_bpp(display, job->fb->format->format);
 	val = DIV_ROUND_UP((adjusted_mode->hdisplay * bpp), 64);
 	intel_de_write(display, WD_STRIDE(trans), WD_STRIDE_VAL(val));
 
@@ -304,7 +300,6 @@ static void intel_writeback_capture(struct intel_atomic_state *state,
 		wb_conn->frame_num++;
 		if (wb_conn->frame_num > 7)
 			wb_conn->frame_num = 1;
-		wb_conn->job = NULL;
 	}
 }
 
@@ -321,10 +316,12 @@ void intel_writeback_atomic_commit(struct intel_atomic_state *state)
 			return;
 
 		if (conn_state->writeback_job && conn_state->writeback_job->fb) {
+			struct intel_writeback_job *wb_job = conn_state->writeback_job->priv;
+
 			WARN_ON(connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK);
 
 			drm_writeback_queue_job(connector, conn_state);
-			intel_writeback_capture(state, intel_connector);
+			intel_writeback_capture(state, intel_connector, wb_job);
 		}
 	}
 }
@@ -352,7 +349,7 @@ static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_writeback_connector *wb_conn =
 		enc_to_intel_writeback_connector(encoder);
-	struct intel_writeback_job *job = wb_conn->job;
+	struct intel_writeback_job *job;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	enum transcoder trans = crtc_state->cpu_transcoder;
 	struct intel_crtc *pipe_crtc;
@@ -363,6 +360,7 @@ static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
 	if (!conn_state->writeback_job)
 		return;
 
+	job = conn_state->writeback_job->priv;
 	wb_conn->trans = trans;
 	wb_conn->pipe = crtc->pipe;
 	fb = job->fb;
@@ -542,11 +540,6 @@ void intel_writeback_isr_handler(struct intel_display *display)
 			continue;
 
 		wb_conn = enc_to_intel_writeback_connector(encoder);
-		if (!wb_conn->job) {
-			drm_err(display->drm, "No writeback job for the connector\n");
-			continue;
-		}
-
 		crtc = intel_crtc_for_pipe(display, wb_conn->pipe);
 		iir = intel_de_read(display, WD_IIR(wb_conn->trans));
 		if (iir & WD_GTT_FAULT_INT)
-- 
2.43.0

