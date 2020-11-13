Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D069A2B27C7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 23:05:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C0EC6E86E;
	Fri, 13 Nov 2020 22:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C638C6E86E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 22:04:58 +0000 (UTC)
IronPort-SDR: uXlno11mYnIfS6TApD8I9D6L4ayHVXxqYXEKEOQC2HBQRxMDJE6Cg0u8D/LwHy9xCueorKgb6K
 s7BLTW7jN2qA==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="150387634"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="150387634"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 14:04:57 -0800
IronPort-SDR: GnWDfbQwoNZ2UaOqYIRx3EMVTc9Sd2PCLg0gsxl608UJee4h4yf6HcEXY40ivIl6QMCXIgHD6m
 v2yLO3S7iKhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="399870159"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 13 Nov 2020 14:04:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 14 Nov 2020 00:04:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Nov 2020 00:03:54 +0200
Message-Id: <20201113220358.24794-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/23] drm/i915: Add debugfs dumping for
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
 .../drm/i915/display/intel_display_debugfs.c  | 25 ++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 00b79593bcef..ca41e8c00ad7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -755,6 +755,17 @@ static void plane_rotation(char *buf, size_t bufsize, unsigned int rotation)
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
@@ -773,13 +784,19 @@ static void intel_plane_uapi_info(struct seq_file *m, struct intel_plane *plane)
 	plane_rotation(rot_str, sizeof(rot_str),
 		       plane_state->uapi.rotation);
 
-	seq_printf(m, "\t\tuapi: [FB:%d] %s,0x%llx,%dx%d, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",
+	seq_printf(m, "\t\tuapi: [FB:%d] %s,0x%llx,%dx%d, visible=%s, src=" DRM_RECT_FP_FMT ", dst=" DRM_RECT_FMT ", rotation=%s\n",
 		   fb ? fb->base.id : 0, fb ? format_name.str : "n/a",
 		   fb ? fb->modifier : 0,
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
 }
 
 static void intel_plane_hw_info(struct seq_file *m, struct intel_plane *plane)
@@ -875,6 +892,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
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
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
