Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1E81D45CF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 08:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A786E115;
	Fri, 15 May 2020 06:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B686E115
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 06:23:45 +0000 (UTC)
IronPort-SDR: N7p4hcGcWFLLmS5t3gK8/UnAWGzEAJNTl6ZvVvb5z4nJZAmq1D9m/j1zMu9JJWp5k1uu9iEz3x
 fglHx/yYUmIA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 23:23:44 -0700
IronPort-SDR: D9FrKe8EXc363stulqIOntSK1DhaA1aOqplwi4kdQiBkt7edYyGZaH4DvtPhECUN7gkxXVoY0y
 QK2hibk6ji8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,394,1583222400"; d="scan'208";a="287681799"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga004.fm.intel.com with ESMTP; 14 May 2020 23:23:40 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 May 2020 11:40:29 +0530
Message-Id: <20200515061029.5008-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Update CP as per the kernel
 internal state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Content Protection property should be updated as per the kernel
internal state. Let's say if Content protection is disabled
by userspace, CP property should be set to UNDESIRED so that
reauthentication will not happen until userspace request it again,
but when kernel disables the HDCP due to any DDI disabling sequences
like modeset/DPMS operation, kernel should set the property to
DESIRED, so that when opportunity arises, kernel will start the
HDCP authentication on its own.

Somewhere in the line, state machine to set content protection to
DESIRED from kernel was broken and IGT coverage was missing for it.
This patch fixes it.

v2:
- Fixing hdcp CP state in intel_hdcp_atomic_check(), that will
  require to check hdcp->value in intel_hdcp_update_pipe() in order
  to avoid enabling hdcp, if it was already enabled.

Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Link: https://patchwork.freedesktop.org/patch/350962/?series=72664&rev=2 #v1
Link: https://patchwork.freedesktop.org/patch/359396/?series=72251&rev=3 #v2
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 27 +++++++++++++++++++----
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2cbc4619b4ce..f90f48819838 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2083,6 +2083,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		(conn_state->hdcp_content_type != hdcp->content_type &&
 		 conn_state->content_protection !=
 		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
+	bool desired_and_not_enabled = false;
 
 	/*
 	 * During the HDCP encryption session if Type change is requested,
@@ -2105,8 +2106,15 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 	}
 
 	if (conn_state->content_protection ==
-	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
-	    content_protection_type_changed)
+	    DRM_MODE_CONTENT_PROTECTION_DESIRED) {
+		mutex_lock(&hdcp->mutex);
+		/* Avoid enabling hdcp, if it already ENABLED */
+		desired_and_not_enabled =
+			hdcp->value != DRM_MODE_CONTENT_PROTECTION_ENABLED;
+		mutex_unlock(&hdcp->mutex);
+	}
+
+	if (desired_and_not_enabled || content_protection_type_changed)
 		intel_hdcp_enable(connector,
 				  crtc_state->cpu_transcoder,
 				  (u8)conn_state->hdcp_content_type);
@@ -2155,6 +2163,19 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 		return;
 	}
 
+	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
+						   new_state->crtc);
+	/*
+	 * Fix the HDCP uapi content protection state in case of modeset.
+	 * FIXME: As per HDCP content protection property uapi doc, an uevent()
+	 * need to be sent if there is transition from ENABLED->DESIRED.
+	 */
+	if (drm_atomic_crtc_needs_modeset(crtc_state) &&
+	    (old_cp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
+	    new_cp != DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
+		new_state->content_protection =
+			DRM_MODE_CONTENT_PROTECTION_DESIRED;
+
 	/*
 	 * Nothing to do if the state didn't change, or HDCP was activated since
 	 * the last commit. And also no change in hdcp content type.
@@ -2167,8 +2188,6 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 			return;
 	}
 
-	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
-						   new_state->crtc);
 	crtc_state->mode_changed = true;
 }
 
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
