Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED40F2A379F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 01:17:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E36C6E5C3;
	Tue,  3 Nov 2020 00:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 195396E563
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 00:17:35 +0000 (UTC)
IronPort-SDR: mFp+skx7aGXgUX5cTK2J25SUtNTL2mt++UGc8DdoszrSmq1+2+U1DikryDHfDjaTH/KgxHKL2w
 GA6IjLKIotjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="155962138"
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; d="scan'208";a="155962138"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 16:17:33 -0800
IronPort-SDR: A4OLoODyHsolt+MbvMTQMZosSNy9NyqvfLi1ZwRfQ21cPYU7A/32JplSOkOayqCjrQcHw2WTMu
 fV6YrpDNJenQ==
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; d="scan'208";a="470573481"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 02 Nov 2020 16:17:32 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Nov 2020 16:19:32 -0800
Message-Id: <20201103001932.11286-14-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201103001932.11286-1-manasi.d.navare@intel.com>
References: <20201103001932.11286-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v14 13/13] drm/i915: Add debugfs dumping for
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
index cfb4c1474982..963069b266ab 100644
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
@@ -773,12 +784,22 @@ static void intel_plane_uapi_info(struct seq_file *m, struct intel_plane *plane)
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
@@ -874,6 +895,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
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
