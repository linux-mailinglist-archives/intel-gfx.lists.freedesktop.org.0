Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AB878C90C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 17:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB7CE10E3F4;
	Tue, 29 Aug 2023 15:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E50610E3EA;
 Tue, 29 Aug 2023 15:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693324746; x=1724860746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cPWdhNLT68jHg/LMORxacdjWiK4TIkQARfJU1hq3OP4=;
 b=NRT64M3Ml/kDBdhxhgfcW6Mscbt73RY2pBZXKVXp68XbqQo6BPg33L64
 TttVc9LhuX0ky0V0tZscQnXYaS7eOxa6QMfK6AoZmHxVwWdg/qyFwFmMI
 7hPIqC/Om5r8bjUOs/0f2tq+erLaHN3KNQjd4JwHYiJeqdDnO+E5Wm7rW
 S+7/hU+CChm2EzYROqwj+rDm0MA7CDdRMoE6CznrPDmUYHJiLq+QoQwmS
 6Q+Fi8Qik/ow7rKmw1ShoCyV6LkbFqeGGz7DlPTX32AQPqf0j8DZnkG7l
 FK0pQ3Av4le0Q1CNs09wLktQv02tl2HCOBsukt4L2w1tE/heGc0CEIwCI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="441769294"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="441769294"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 08:59:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="688555010"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="688555010"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orsmga003.jf.intel.com with ESMTP; 29 Aug 2023 08:59:04 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 29 Aug 2023 21:34:00 +0530
Message-ID: <20230829160422.1251087-12-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829160422.1251087-1-uma.shankar@intel.com>
References: <20230829160422.1251087-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 11/33] drm: Replace individual color blobs
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
Cc: wayland-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Replace the color operation blobs depending on the values sent by
userspace.

Co-developed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/drm_atomic_uapi.c | 97 +++++++++++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index a2d3393d21a2..20f9366865ca 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -404,6 +404,92 @@ drm_atomic_replace_property_blob_from_id(struct drm_device *dev,
 	return 0;
 }
 
+/*
+ * Helper to replace individual color blobs for a plane. The function
+ * changes all the color blobs sent by userspace agnostic of the color
+ * pipeline chosen. Since, the information about color pipeline is
+ * available at driver level, the driver should check for
+ * the sanity of the userspace data.
+ */
+static
+int drm_plane_replace_color_op_blobs(struct drm_plane *plane,
+				     struct drm_plane_state *state,
+				     uint64_t color_pipeline_blob_id,
+				     bool *replaced)
+{
+	struct drm_device *dev = plane->dev;
+	struct drm_property_blob *new_blob;
+	struct drm_color_pipeline *color_pipeline;
+	struct drm_color_op_data *color_op;
+	int ret = 0, i;
+	bool blob_replaced = false;
+	bool temp_replaced = false;
+
+	new_blob = drm_property_lookup_blob(dev, color_pipeline_blob_id);
+
+	if (!new_blob) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	color_pipeline = new_blob->data;
+	color_op = kzalloc(color_pipeline->size, GFP_KERNEL);
+	if (!color_op) {
+		ret = -ENOMEM;
+		goto mem_fail;
+	}
+
+	if (copy_from_user(color_op, color_pipeline->data, color_pipeline->size)) {
+		ret = -EFAULT;
+		goto copy_fail;
+	}
+
+	for (i = 0; i < color_pipeline->size / sizeof(struct drm_color_op_data); i++) {
+		if (color_op[i].name == DRM_CB_CSC) {
+			ret = drm_atomic_replace_property_blob_from_id(dev,
+							&state->color.ctm,
+							color_op[i].blob_id,
+							-1, sizeof(struct drm_color_ctm),
+							&blob_replaced);
+		} else if (color_op[i].name ==  DRM_CB_PRE_CSC) {
+			ret = drm_atomic_replace_property_blob_from_id(dev,
+							&state->color.pre_csc_lut,
+							color_op[i].blob_id,
+							-1, sizeof(struct drm_color_lut_ext),
+							&blob_replaced);
+		} else if (color_op[i].name == DRM_CB_POST_CSC) {
+			ret = drm_atomic_replace_property_blob_from_id(dev,
+							&state->color.post_csc_lut,
+							color_op[i].blob_id,
+							-1, sizeof(struct drm_color_lut_ext),
+							&blob_replaced);
+		} else if (color_op[i].name == DRM_CB_PRIVATE) {
+			ret = drm_atomic_replace_property_blob_from_id(dev,
+							&state->color.private_color_op_data,
+							color_op[i].blob_id,
+							-1, -1,
+							&blob_replaced);
+		} else {
+			ret = -EINVAL;
+			goto copy_fail;
+		}
+
+		if (ret)
+			goto copy_fail;
+
+		temp_replaced |= blob_replaced;
+	}
+
+copy_fail:
+	kfree(color_op);
+mem_fail:
+	drm_property_blob_put(new_blob);
+out:
+	if (!ret)
+		*replaced |= temp_replaced;
+	return ret;
+}
+
 static int drm_atomic_crtc_set_property(struct drm_crtc *crtc,
 		struct drm_crtc_state *state, struct drm_property *property,
 		uint64_t val)
@@ -597,6 +683,17 @@ static int drm_atomic_plane_set_property(struct drm_plane *plane,
 					-1,
 					sizeof(struct drm_color_pipeline),
 					&replaced);
+		if (replaced) {
+			/* Consider actual color parameter change only when
+			 * individual color blobs are replaced. Hence, reset
+			 * the replaced boolean.
+			 */
+			replaced = false;
+			ret = drm_plane_replace_color_op_blobs(plane, state,
+							       val,
+							       &replaced);
+		}
+
 		state->color_mgmt_changed |= replaced;
 		return ret;
 	} else if (plane->funcs->atomic_set_property) {
-- 
2.38.1

