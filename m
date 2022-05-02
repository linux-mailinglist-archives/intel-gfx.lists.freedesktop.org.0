Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DF651785B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 22:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDF3910E65B;
	Mon,  2 May 2022 20:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A4D10E65B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 20:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651524039; x=1683060039;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UD0Roz+JJhMkM/TvXZ8wJywDiuh41cckCrr7E1e1epI=;
 b=X7hfAzAVYhd/dNHSIIJ6XBbRP8c6XKuQsi2w/vrHWEiP92YQcp1RTUQj
 PCPoktH5cVtqVEyVsjsaLuejQtB57Xes6o/gZ4HGkv+GdSxbpydpeFDlY
 JuUlRjXJvDRTfcSJHbL0aNZ8ogjEntl093xEuEcTlNB5oKZI7zwgL65g7
 MzxI6c9UOwYqa+cH14jMQ5CfkNCx8xjn5B9W1OP9FWobdFM7kUuIYORmJ
 wcEeHK+nuo+cFvU8HkoxlawbdMAPVgAW6sOLzyKDSjjDKTdCkhJlSiVnh
 rJvrGteFFEp6eTK23fnSPRO8kNOdKBKDJABF15814bXbv+l0BwizEXX4O w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="247873036"
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="247873036"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 13:40:38 -0700
X-IronPort-AV: E=Sophos;i="5.91,193,1647327600"; d="scan'208";a="690670554"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 13:40:37 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 May 2022 13:41:15 -0700
Message-Id: <20220502204117.32938-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/display: Allow DRRS to be
 enabled during driver load
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

When driver takes over display from firmware it does some checks and
if possible it tries to avoid a modeset to improve user boot
experience.

But even if DRRS is supported it was being left disabled as
intel_crtc_copy_fastset() was overwritten new state with the old one
(hardware readout).

So here checking if platform has only one set of m_n registers that
can change on the fly between high and low clock, if yes we can keep
DRRS enabled.

Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  7 ++++--
 drivers/gpu/drm/i915/display/intel_drrs.c    | 24 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_drrs.h    |  2 ++
 3 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0decf3d242372..17d0cad9e1686 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7086,8 +7086,11 @@ static void intel_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_stat
 	 */
 	new_crtc_state->fdi_m_n = old_crtc_state->fdi_m_n;
 	new_crtc_state->dp_m_n = old_crtc_state->dp_m_n;
-	new_crtc_state->dp_m2_n2 = old_crtc_state->dp_m2_n2;
-	new_crtc_state->has_drrs = old_crtc_state->has_drrs;
+
+	if (!intel_drrs_crtc_copy_fastset(old_crtc_state, new_crtc_state)) {
+		new_crtc_state->dp_m2_n2 = old_crtc_state->dp_m2_n2;
+		new_crtc_state->has_drrs = old_crtc_state->has_drrs;
+	}
 }
 
 static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 166caf293f7bc..d266fad83a086 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -300,3 +300,27 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
 	mutex_init(&crtc->drrs.mutex);
 	crtc->drrs.cpu_transcoder = INVALID_TRANSCODER;
 }
+
+/**
+ * intel_drrs_crtc_copy_fastset - Handles crtc state copy during fastsets when
+ * new state has DRRS.
+ * @old_crtc_state: old crtc state
+ * @new_crtc_state: new crtc state
+ *
+ * Handle crtc state copy during fastsets trying to keep DRRS enabled.
+ * That can be done in platforms that supports change the dp_m_n register on
+ * the fly between high and low clocks.
+ *
+ * Returns true if crtc copy was already handled otherwise returns false.
+ */
+bool intel_drrs_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_state,
+				  struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(old_crtc_state->uapi.crtc->dev);
+
+	/* m2_n2 register needs to already be set */
+	if (intel_cpu_transcoder_has_m2_n2(i915, new_crtc_state->cpu_transcoder))
+		return false;
+
+	return true;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 3ad1be1ad9c13..749ac717db063 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -24,5 +24,7 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits);
 void intel_crtc_drrs_init(struct intel_crtc *crtc);
+bool intel_drrs_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_state,
+				  struct intel_crtc_state *new_crtc_state);
 
 #endif /* __INTEL_DRRS_H__ */
-- 
2.36.0

