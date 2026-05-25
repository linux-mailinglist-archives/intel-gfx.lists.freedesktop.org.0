Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGtEDh8fFGpGKAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 12:06:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFF25C8F0D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 12:06:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E27010E24A;
	Mon, 25 May 2026 10:06:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="Df2WkEyC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF4C10E0EC;
 Mon, 25 May 2026 10:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eBEeZMrZM7/C8pXjQYVWQa4FrwVMoSc7Wozy/Zc+UnU=; b=Df2WkEyCbxrLiwT9wGvQmP2mVS
 h2b+hLVY6nHelGBgqaAVoFk7GGzdpE4ktnBVlbUlkdR3IXCP/aRn9X0IeRSC7wjmhoOjgrbP7/6tp
 uvIVnxS6lM4urU/QOaPKlsJmb7nzA45v8SDIAdVbZhg1mgZhgal/FuLAnYuLegIMdlQAM4LclGhPu
 4pJ+2+Gy7I0/yhd5Bs0Iqe4m6u5QviOr+R9AsHhrPjMHgJGOi3np363x37z/j7xuRr7AMlSMV/H7y
 15FLLhZn8nBbDiO+0zIp6PVULmpf34AQ8W/P9/XN9fbR/Dwniy7JQCNsnCVlHplidpGoUX7V6HKeR
 AaBQcL4A==;
Received: from [79.117.146.159] (helo=killbill.home)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wRSBo-007xuT-IW; Mon, 25 May 2026 12:05:40 +0200
From: Melissa Wen <mwen@igalia.com>
To: airlied@gmail.com, alexander.deucher@amd.com, christian.koenig@amd.com,
 harry.wentland@amd.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, simona@ffwll.ch, siqueira@igalia.com,
 sunpeng.li@amd.com, tzimmermann@suse.de
Cc: Alex Hung <alex.hung@amd.com>, Simon Ser <contact@emersion.fr>,
 Uma Shankar <uma.shankar@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Xaver Hugl <xaver.hugl@kde.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 amd-gfx@lists.freedesktop.org, kernel-dev@igalia.com,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v7 3/4] drm/atomic: track individual colorop updates
Date: Mon, 25 May 2026 11:50:00 +0200
Message-ID: <20260525100524.304263-4-mwen@igalia.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260525100524.304263-1-mwen@igalia.com>
References: <20260525100524.304263-1-mwen@igalia.com>
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
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,linux.intel.com,kernel.org,ffwll.ch,igalia.com,suse.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FREEMAIL_CC(0.00)[amd.com,emersion.fr,intel.com,kde.org,collabora.com,bootlin.com,linux.dev,lists.freedesktop.org,igalia.com,oss.qualcomm.com,kernel.org,gmail.com,poorly.run,somainline.org,vger.kernel.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mwen@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.891];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: DBFF25C8F0D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As we do for CRTC color mgmt properties, use color_mgmt_changed flag to
track any value changes in the color pipeline of a given plane, so that
drivers can update color blocks as soon as plane color pipeline or
individual colorop values change. Since we're here, only announce and
track changes to plane COLOR_PIPELINE prop if its value is actually
changing.

Reviewed-by: Harry Wentland <harry.wentland@amd.com> #v1
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Melissa Wen <mwen@igalia.com>

---

v3: track lut(1/3)d_interpolation property updates (Chaitanya)
v6: use `|= replaced` for consistency (Chaitanya)
---
 drivers/gpu/drm/drm_atomic_uapi.c | 64 ++++++++++++++++++++++++-------
 include/drm/drm_atomic_uapi.h     |  4 +-
 2 files changed, 54 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index 78423905051e..e997917819e8 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -265,13 +265,19 @@ EXPORT_SYMBOL(drm_atomic_set_fb_for_plane);
  *
  * Helper function to select the color pipeline on a plane by setting
  * it to the first drm_colorop element of the pipeline.
+ *
+ * Return: true if plane color pipeline value changed, false otherwise.
  */
-void
+bool
 drm_atomic_set_colorop_for_plane(struct drm_plane_state *plane_state,
 				 struct drm_colorop *colorop)
 {
 	struct drm_plane *plane = plane_state->plane;
 
+	/* Color pipeline didn't change */
+	if (plane_state->color_pipeline == colorop)
+		return false;
+
 	if (colorop)
 		drm_dbg_atomic(plane->dev,
 			       "Set [COLOROP:%d] for [PLANE:%d:%s] state %p\n",
@@ -283,6 +289,8 @@ drm_atomic_set_colorop_for_plane(struct drm_plane_state *plane_state,
 			       plane->base.id, plane->name, plane_state);
 
 	plane_state->color_pipeline = colorop;
+
+	return true;
 }
 EXPORT_SYMBOL(drm_atomic_set_colorop_for_plane);
 
@@ -604,7 +612,7 @@ static int drm_atomic_plane_set_property(struct drm_plane *plane,
 		if (val && !colorop)
 			return -EACCES;
 
-		drm_atomic_set_colorop_for_plane(state, colorop);
+		state->color_mgmt_changed |= drm_atomic_set_colorop_for_plane(state, colorop);
 	} else if (property == config->prop_fb_damage_clips) {
 		ret = drm_property_replace_blob_from_id(dev,
 					&state->fb_damage_clips,
@@ -713,11 +721,11 @@ drm_atomic_plane_get_property(struct drm_plane *plane,
 static int drm_atomic_color_set_data_property(struct drm_colorop *colorop,
 					      struct drm_colorop_state *state,
 					      struct drm_property *property,
-					      uint64_t val)
+					      uint64_t val,
+					      bool *replaced)
 {
 	ssize_t elem_size = -1;
 	ssize_t size = -1;
-	bool replaced = false;
 
 	switch (colorop->type) {
 	case DRM_COLOROP_1D_LUT:
@@ -739,28 +747,45 @@ static int drm_atomic_color_set_data_property(struct drm_colorop *colorop,
 						 &state->data,
 						 val,
 						 -1, size, elem_size,
-						 &replaced);
+						 replaced);
 }
 
 static int drm_atomic_colorop_set_property(struct drm_colorop *colorop,
 					   struct drm_colorop_state *state,
 					   struct drm_file *file_priv,
 					   struct drm_property *property,
-					   uint64_t val)
+					   uint64_t val,
+					   bool *replaced)
 {
 	if (property == colorop->bypass_property) {
-		state->bypass = val;
+		if (state->bypass != val) {
+			state->bypass = val;
+			*replaced = true;
+		}
 	} else if (property == colorop->lut1d_interpolation_property) {
-		state->lut1d_interpolation = val;
+		if (state->lut1d_interpolation != val) {
+			state->lut1d_interpolation = val;
+			*replaced = true;
+		}
 	} else if (property == colorop->curve_1d_type_property) {
-		state->curve_1d_type = val;
+		if (state->curve_1d_type != val) {
+			state->curve_1d_type = val;
+			*replaced = true;
+		}
 	} else if (property == colorop->multiplier_property) {
-		state->multiplier = val;
+		if (state->multiplier != val) {
+			state->multiplier = val;
+			*replaced = true;
+		}
 	} else if (property == colorop->lut3d_interpolation_property) {
-		state->lut3d_interpolation = val;
+		if (state->lut3d_interpolation != val) {
+			state->lut3d_interpolation = val;
+			*replaced = true;
+		}
 	} else if (property == colorop->data_property) {
 		return drm_atomic_color_set_data_property(colorop, state,
-							  property, val);
+							  property, val,
+							  replaced);
 	} else {
 		drm_dbg_atomic(colorop->dev,
 			       "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
@@ -1275,8 +1300,10 @@ int drm_atomic_set_property(struct drm_atomic_commit *state,
 		break;
 	}
 	case DRM_MODE_OBJECT_COLOROP: {
+		struct drm_plane_state *plane_state;
 		struct drm_colorop *colorop = obj_to_colorop(obj);
 		struct drm_colorop_state *colorop_state;
+		bool replaced = false;
 
 		colorop_state = drm_atomic_get_colorop_state(state, colorop);
 		if (IS_ERR(colorop_state)) {
@@ -1285,7 +1312,18 @@ int drm_atomic_set_property(struct drm_atomic_commit *state,
 		}
 
 		ret = drm_atomic_colorop_set_property(colorop, colorop_state,
-						      file_priv, prop, prop_value);
+						      file_priv, prop, prop_value,
+						      &replaced);
+		if (ret || !replaced)
+			break;
+
+		plane_state = drm_atomic_get_plane_state(state, colorop->plane);
+		if (IS_ERR(plane_state)) {
+			ret = PTR_ERR(plane_state);
+			break;
+		}
+		plane_state->color_mgmt_changed |= replaced;
+
 		break;
 	}
 	default:
diff --git a/include/drm/drm_atomic_uapi.h b/include/drm/drm_atomic_uapi.h
index 436315523326..4e7e78f711e2 100644
--- a/include/drm/drm_atomic_uapi.h
+++ b/include/drm/drm_atomic_uapi.h
@@ -29,6 +29,8 @@
 #ifndef DRM_ATOMIC_UAPI_H_
 #define DRM_ATOMIC_UAPI_H_
 
+#include <linux/types.h>
+
 struct drm_crtc_state;
 struct drm_display_mode;
 struct drm_property_blob;
@@ -50,7 +52,7 @@ drm_atomic_set_crtc_for_plane(struct drm_plane_state *plane_state,
 			      struct drm_crtc *crtc);
 void drm_atomic_set_fb_for_plane(struct drm_plane_state *plane_state,
 				 struct drm_framebuffer *fb);
-void drm_atomic_set_colorop_for_plane(struct drm_plane_state *plane_state,
+bool drm_atomic_set_colorop_for_plane(struct drm_plane_state *plane_state,
 				      struct drm_colorop *colorop);
 int __must_check
 drm_atomic_set_crtc_for_connector(struct drm_connector_state *conn_state,
-- 
2.53.0

