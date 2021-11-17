Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D946454D39
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 19:31:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3EB66E4C5;
	Wed, 17 Nov 2021 18:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C96D46E4C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 18:31:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="231505249"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="231505249"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 10:31:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="454989880"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 17 Nov 2021 10:31:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Nov 2021 20:31:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Nov 2021 20:31:02 +0200
Message-Id: <20211117183103.27418-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211117183103.27418-1-ville.syrjala@linux.intel.com>
References: <20211117183103.27418-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Do vblank evasion correctly if
 vrr push has already been sent
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Let's adjust the vblank evasion to account for the case where
a push has already been sent. In that case the vblank exit will start
at vmin vblank start (as opposed to vmax vblank start when no push
has been sent).

This should minimize the effects of the tiny race between sampling
the frame counter vs. intel_vrr_send_push() during the previous frame.
This will also be required if we want to do mailbox style updates with
vrr since then we'd definitely do multiple commits per frame. Currently
mailbox updates are only used by the legacy cursor, but we don't do
vrr push for those.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_vrr.c  | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h  |  1 +
 3 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index cf403be7736c..eb5444f90e77 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -470,10 +470,14 @@ void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
 
-	if (new_crtc_state->vrr.enable)
-		vblank_start = intel_vrr_vmax_vblank_start(new_crtc_state);
-	else
+	if (new_crtc_state->vrr.enable) {
+		if (intel_vrr_is_push_sent(new_crtc_state))
+			vblank_start = intel_vrr_vmin_vblank_start(new_crtc_state);
+		else
+			vblank_start = intel_vrr_vmax_vblank_start(new_crtc_state);
+	} else {
 		vblank_start = intel_mode_vblank_start(adjusted_mode);
+	}
 
 	/* FIXME needs to be calibrated sensibly */
 	min = vblank_start - intel_usecs_to_scanlines(adjusted_mode,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c335b1dbafcf..db1c3902fc2d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -193,6 +193,18 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 		       TRANS_PUSH_EN | TRANS_PUSH_SEND);
 }
 
+bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!crtc_state->vrr.enable)
+		return false;
+
+	return intel_de_read(dev_priv, TRANS_PUSH(cpu_transcoder)) & TRANS_PUSH_SEND;
+}
+
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 96f9c9c27ab9..1c2da572693d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -23,6 +23,7 @@ void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 void intel_vrr_enable(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
 void intel_vrr_get_config(struct intel_crtc *crtc,
 			  struct intel_crtc_state *crtc_state);
-- 
2.32.0

