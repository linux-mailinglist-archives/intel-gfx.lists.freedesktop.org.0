Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3D4195B5A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 17:44:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 533046E0CF;
	Fri, 27 Mar 2020 16:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 863986E0CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 16:44:27 +0000 (UTC)
IronPort-SDR: 7wuzw/q8/VjO9Oc/egLRR/PD41a9E9V1q/bPLxTC/Kv5jTkD0ANiadMXUQdJUBbv9qaKbA/SuY
 tyUwCXMlxI3Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 09:44:27 -0700
IronPort-SDR: WxKfsoti2F7ch4QG3wZ2LXVAGYX3akqSbQ0aVhGYi6An2Sp8XuH1Rl+HbFPC223QpyuziTpcPG
 dQ2HEL4PtE7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="293976516"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Mar 2020 09:44:25 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 21:59:21 +0530
Message-Id: <20200327162921.15622-1-anshuman.gupta@intel.com>
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
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 24 +++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index cd3b686980b2..ec52e053c57f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2087,6 +2087,7 @@ void intel_hdcp_update_pipe(struct intel_encoder *encoder,
 		(conn_state->hdcp_content_type != hdcp->content_type &&
 		 conn_state->content_protection !=
 		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
+	bool not_enabled;
 
 	/*
 	 * During the HDCP encryption session if Type change is requested,
@@ -2108,8 +2109,12 @@ void intel_hdcp_update_pipe(struct intel_encoder *encoder,
 		mutex_unlock(&hdcp->mutex);
 	}
 
-	if (conn_state->content_protection ==
-	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
+	mutex_lock(&hdcp->mutex);
+	not_enabled = hdcp->value != DRM_MODE_CONTENT_PROTECTION_ENABLED;
+	mutex_unlock(&hdcp->mutex);
+
+	if ((conn_state->content_protection ==
+	    DRM_MODE_CONTENT_PROTECTION_DESIRED && not_enabled) ||
 	    content_protection_type_changed)
 		intel_hdcp_enable(connector,
 				  crtc_state->cpu_transcoder,
@@ -2159,6 +2164,19 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
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
@@ -2171,8 +2189,6 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
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
