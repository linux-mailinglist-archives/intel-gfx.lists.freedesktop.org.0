Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF1D2217E2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 00:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30D8F6EC1B;
	Wed, 15 Jul 2020 22:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F606EC0A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 22:40:24 +0000 (UTC)
IronPort-SDR: KI39UgD0l+hswFeTMxmgIFMt8gBbWMXmtyGq453vcQ410wdROGAZ+bx0BuGnCSCIQqW0rw5zKg
 wiD/uJtzQX5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="137414150"
X-IronPort-AV: E=Sophos;i="5.75,357,1589266800"; d="scan'208";a="137414150"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 15:40:23 -0700
IronPort-SDR: na4JfmSfSKF3kZ/kGU6P2uqphFO9Hq3OLRsgG15OSr/JV3PZsOmWyOwwvDaQ9EFXPjZ5pVL1AS
 JNyZtnjlu7JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,357,1589266800"; d="scan'208";a="316850671"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga008.jf.intel.com with ESMTP; 15 Jul 2020 15:40:22 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 15:42:22 -0700
Message-Id: <20200715224222.7557-11-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200715224222.7557-1-manasi.d.navare@intel.com>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 11/11] drm/i915: Add debugfs dumping for
 bigjoiner, v3.
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

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Dump debugfs and planar links as well, this will make it easier to debug
when things go wrong.

v4:
* Rebase
Changes since v1:
- Report planar slaves as such, now that we have the plane_state switch.
Changes since v2:
- Rebase on top of the new plane format dumping

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 29 ++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 3644752cc5ec..5576f79f84ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -745,6 +745,17 @@ static void plane_rotation(char *buf, size_t bufsize, unsigned int rotation)
 		 rotation);
 }
 
+static const char *plane_visibility(const struct intel_plane_state *plane_state)
+{
+	if (plane_state->uapi.visible)
+		return "visible";
+
+	if (plane_state->planar_slave)
+		return "planar-slave";
+
+	return "hidden";
+}
+
 static void intel_plane_uapi_info(struct seq_file *m, struct intel_plane *plane)
 {
 	const struct intel_plane_state *plane_state =
@@ -763,12 +774,22 @@ static void intel_plane_uapi_info(struct seq_file *m, struct intel_plane *plane)
 	plane_rotation(rot_str, sizeof(rot_str),
 		       plane_state->uapi.rotation);
 
-	seq_printf(m, "\t\tuapi: fb=%d,%s,%dx%d, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",
+	seq_printf(m, "\t\tuapi: fb=%d,%s,%dx%d, visible=%s, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",
 		   fb ? fb->base.id : 0, fb ? format_name.str : "n/a",
 		   fb ? fb->width : 0, fb ? fb->height : 0,
+		   plane_visibility(plane_state),
 		   DRM_RECT_FP_ARG(&src),
 		   DRM_RECT_ARG(&dst),
 		   rot_str);
+
+	if (plane_state->planar_linked_plane)
+		seq_printf(m, "\t\tplanar: Linked to [PLANE:%d:%s] as a %s\n",
+			   plane_state->planar_linked_plane->base.base.id, plane_state->planar_linked_plane->base.name,
+			   plane_state->planar_slave ? "slave" : "master");
+	if (plane_state->bigjoiner_plane)
+		seq_printf(m, "\t\tbigjoiner: Linked to [PLANE:%d:%s] as a %s\n",
+			   plane_state->bigjoiner_plane->base.base.id, plane_state->bigjoiner_plane->base.name,
+			   plane_state->bigjoiner_slave ? "slave" : "master");
 }
 
 static void intel_plane_hw_info(struct seq_file *m, struct intel_plane *plane)
@@ -864,6 +885,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 		intel_scaler_info(m, crtc);
 	}
 
+	if (crtc_state->bigjoiner)
+		seq_printf(m, "\tLinked to [CRTC:%d:%s] as a %s\n",
+			   crtc_state->bigjoiner_linked_crtc->base.base.id,
+			   crtc_state->bigjoiner_linked_crtc->base.name,
+			   crtc_state->bigjoiner_slave ? "slave" : "master");
+
 	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
 				    crtc_state->uapi.encoder_mask)
 		intel_encoder_info(m, crtc, encoder);
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
