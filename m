Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PGHHyCaDmp+AgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 07:37:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C0A59F17A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 07:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5C910F1F6;
	Thu, 21 May 2026 05:37:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZaZuxgZv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C5D610F1F1;
 Thu, 21 May 2026 05:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779341853; x=1810877853;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bvYnfe8g1IYlHC199CBSzDfVfxSd/JHTSoA2AE+uhGQ=;
 b=ZaZuxgZvwQB+IzpSGElDZxaQjOG6dOPqiqNH+HD9LZtdRDzRFGxjx1lw
 O1IqT2IAFS8/GcByv5YNo0xu29a6B1cehokSk1wfs01gsgvUTob+h/ilJ
 VUTRipcm/s8ibMEPWf2fw96P2NkvbopCm4tHK0aLu6xCI1ZBhEeaWKKzU
 +Ley0WmsPBJJfFBLHAOUQ1al8vbIV33WFhEVpWxTWpWS/ohCj4uynM6Qo
 vHvUDsCyYK1BPPASJJKPndxhPqzAJhBAbUv9vfhe5yhlK5xJnqVnQ6By5
 mKm81nTRJlGTc0Zfk631Egksi3/z84zrs9LxYK1ZlTXMB8LZtRBCE3m++ A==;
X-CSE-ConnectionGUID: 1x1t4tk9SI65XRUc2ADrWQ==
X-CSE-MsgGUID: xryp37dOTva+6ZI3ZI2CiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80286417"
X-IronPort-AV: E=Sophos;i="6.23,245,1770624000"; d="scan'208";a="80286417"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 22:37:32 -0700
X-CSE-ConnectionGUID: 3Gztv0GASmOo0Qow9YgN9Q==
X-CSE-MsgGUID: rRDMQD5wS0ycETcbFvwsAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,245,1770624000"; d="scan'208";a="245420588"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa005.jf.intel.com with ESMTP; 20 May 2026 22:37:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel-list@raspberrypi.com, amd-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: abhinav.kumar@linux.dev, tzimmermann@suse.de, sean@poorly.ru,
 marijn.suijten@somainline.org, laurent.pinchart+renesas@ideasonboard.com,
 dave.stevenson@raspberrypi.com, tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com,
 Louis Chauvet <louis.chauvet@bootlin.com>, kernel-dev@igalia.com,
 John.Harrison@Igalia.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 2/7] drm: writeback: Modify writeback init helpers
Date: Thu, 21 May 2026 11:07:03 +0530
Message-Id: <20260521053708.1475129-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260521053708.1475129-1-suraj.kandpal@intel.com>
References: <20260521053708.1475129-1-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 03C0A59F17A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The writeback connector init helpers (drm_writeback_connector_init,
drm_writeback_connector_init_with_encoder, drmm_writeback_connector_init
and drmm_writeback_connector_init_with_encoder) require access to the
parent drm_connector object as well as the drm_writeback_connector
object itself. So, pass in the top level drm_connector and traverse
down to drm_writeback_connector rather than passing in the lower level
object and traversing back up. Even where such is not the case, update
to use the top level object for consistency across the interface.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
v3 -> v4:
- Update subject line for consitency (John)
- Update commit message across commits for consitency (John)
- Rename writeback to wb_connector in rcar_du_crtc for clarity (John)

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c   |  2 +-
 .../drm/arm/display/komeda/komeda_wb_connector.c   |  5 +----
 drivers/gpu/drm/arm/malidp_mw.c                    |  2 +-
 drivers/gpu/drm/drm_writeback.c                    | 14 ++++++--------
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c      |  2 +-
 .../gpu/drm/renesas/rcar-du/rcar_du_writeback.c    |  3 +--
 drivers/gpu/drm/vc4/vc4_txp.c                      |  2 +-
 drivers/gpu/drm/vkms/vkms_writeback.c              |  4 ++--
 include/drm/drm_writeback.h                        |  4 ++--
 9 files changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
index 6fb8cb4d520c..bb4945f01616 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
@@ -202,7 +202,7 @@ int amdgpu_dm_wb_connector_init(struct amdgpu_display_manager *dm,
 
 	drm_connector_helper_add(&wbcon->base, &amdgpu_dm_wb_conn_helper_funcs);
 
-	res = drmm_writeback_connector_init(&dm->adev->ddev, &wbcon->base.writeback,
+	res = drmm_writeback_connector_init(&dm->adev->ddev, &wbcon->base,
 					    &amdgpu_dm_wb_connector_funcs,
 					    encoder,
 					    amdgpu_dm_wb_formats,
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
index fa2f63c142cd..85b34375d275 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
@@ -135,7 +135,6 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 {
 	struct komeda_dev *mdev = kms->base.dev_private;
 	struct komeda_wb_connector *kwb_conn;
-	struct drm_writeback_connector *wb_conn;
 	struct drm_display_info *info;
 	struct drm_encoder *encoder;
 
@@ -151,8 +150,6 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 
 	kwb_conn->wb_layer = kcrtc->master->wb_layer;
 
-	wb_conn = &kwb_conn->base.writeback;
-
 	formats = komeda_get_layer_fourcc_list(&mdev->fmt_tbl,
 					       kwb_conn->wb_layer->layer_type,
 					       &n_formats);
@@ -170,7 +167,7 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 
 	encoder->possible_crtcs = drm_crtc_mask(&kcrtc->base);
 
-	err = drmm_writeback_connector_init(&kms->base, wb_conn,
+	err = drmm_writeback_connector_init(&kms->base, &kwb_conn->base,
 					    &komeda_wb_connector_funcs,
 					    encoder,
 					    formats, n_formats);
diff --git a/drivers/gpu/drm/arm/malidp_mw.c b/drivers/gpu/drm/arm/malidp_mw.c
index 6842c73f27b9..c6d11c7af1e4 100644
--- a/drivers/gpu/drm/arm/malidp_mw.c
+++ b/drivers/gpu/drm/arm/malidp_mw.c
@@ -228,7 +228,7 @@ int malidp_mw_connector_init(struct drm_device *drm)
 
 	encoder->possible_crtcs = drm_crtc_mask(&malidp->crtc);
 
-	ret = drmm_writeback_connector_init(drm, &malidp->mw_connector.writeback,
+	ret = drmm_writeback_connector_init(drm, &malidp->mw_connector,
 					    &malidp_mw_connector_funcs,
 					    encoder,
 					    formats, n_formats);
diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
index 7bf9f6374712..9a3037d11009 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -242,7 +242,7 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
  * a custom encoder
  *
  * @dev: DRM device
- * @wb_connector: Writeback connector to initialize
+ * @connector: Drm connector which contains the writeback connector to initialize
  * @enc: handle to the already initialized drm encoder
  * @con_funcs: Connector funcs vtable
  * @formats: Array of supported pixel formats for the writeback engine
@@ -267,13 +267,12 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
  * Returns: 0 on success, or a negative error code
  */
 int drm_writeback_connector_init(struct drm_device *dev,
-				 struct drm_writeback_connector *wb_connector,
+				 struct drm_connector *connector,
 				 const struct drm_connector_funcs *con_funcs,
 				 struct drm_encoder *enc,
 				 const u32 *formats, int n_formats)
 {
-	struct drm_connector *connector =
-		drm_writeback_to_connector(wb_connector);
+	struct drm_writeback_connector *wb_connector = &connector->writeback;
 	int ret;
 
 	ret = drm_connector_init(dev, connector, con_funcs,
@@ -322,7 +321,7 @@ static void drm_writeback_connector_cleanup(struct drm_device *dev,
  * a custom encoder
  *
  * @dev: DRM device
- * @wb_connector: Writeback connector to initialize
+ * @connector: Drm connector containing the writeback connector to initialize
  * @con_funcs: Connector funcs vtable
  * @enc: Encoder to connect this writeback connector
  * @formats: Array of supported pixel formats for the writeback engine
@@ -338,13 +337,12 @@ static void drm_writeback_connector_cleanup(struct drm_device *dev,
  * Returns: 0 on success, or a negative error code
  */
 int drmm_writeback_connector_init(struct drm_device *dev,
-				  struct drm_writeback_connector *wb_connector,
+				  struct drm_connector *connector,
 				  const struct drm_connector_funcs *con_funcs,
 				  struct drm_encoder *enc,
 				  const u32 *formats, int n_formats)
 {
-	struct drm_connector *connector =
-		drm_writeback_to_connector(wb_connector);
+	struct drm_writeback_connector *wb_connector = &connector->writeback;
 	int ret;
 
 	ret = drmm_connector_init(dev, connector, con_funcs,
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
index 69eb2f85dec3..4dee524d1270 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
@@ -136,7 +136,7 @@ int dpu_writeback_init(struct drm_device *dev, struct drm_encoder *enc,
 
 	drm_connector_helper_add(&dpu_wb_conn->base, &dpu_wb_conn_helper_funcs);
 
-	rc = drmm_writeback_connector_init(dev, &dpu_wb_conn->base.writeback,
+	rc = drmm_writeback_connector_init(dev, &dpu_wb_conn->base,
 					   &dpu_wb_conn_funcs, enc,
 					   format_list, num_formats);
 
diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
index 39be854c465a..6b27307941a4 100644
--- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
+++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
@@ -201,7 +201,6 @@ static const u32 writeback_formats[] = {
 int rcar_du_writeback_init(struct rcar_du_device *rcdu,
 			   struct rcar_du_crtc *rcrtc)
 {
-	struct drm_writeback_connector *wb_conn = &rcrtc->wb_connector.writeback;
 	struct drm_encoder *encoder;
 
 	encoder = drmm_plain_encoder_alloc(&rcdu->ddev, NULL,
@@ -216,7 +215,7 @@ int rcar_du_writeback_init(struct rcar_du_device *rcdu,
 	drm_connector_helper_add(&rcrtc->wb_connector,
 				 &rcar_du_wb_conn_helper_funcs);
 
-	return drmm_writeback_connector_init(&rcdu->ddev, wb_conn,
+	return drmm_writeback_connector_init(&rcdu->ddev, &rcrtc->wb_connector,
 					     &rcar_du_wb_conn_funcs,
 					     encoder,
 					     writeback_formats,
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index 8a4afa6a1eec..c762b93738d3 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -601,7 +601,7 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 
 	drm_connector_helper_add(&txp->connector,
 				 &vc4_txp_connector_helper_funcs);
-	ret = drmm_writeback_connector_init(drm, &txp->connector.writeback,
+	ret = drmm_writeback_connector_init(drm, &txp->connector,
 					    &vc4_txp_connector_funcs,
 					    encoder,
 					    drm_fmts, ARRAY_SIZE(drm_fmts));
diff --git a/drivers/gpu/drm/vkms/vkms_writeback.c b/drivers/gpu/drm/vkms/vkms_writeback.c
index 64d524d2168f..9341533b0325 100644
--- a/drivers/gpu/drm/vkms/vkms_writeback.c
+++ b/drivers/gpu/drm/vkms/vkms_writeback.c
@@ -170,7 +170,6 @@ static const struct drm_connector_helper_funcs vkms_wb_conn_helper_funcs = {
 int vkms_enable_writeback_connector(struct vkms_device *vkmsdev,
 				    struct vkms_output *vkms_output)
 {
-	struct drm_writeback_connector *wb = &vkms_output->wb_connector.writeback;
 	int ret;
 
 	ret = drmm_encoder_init(&vkmsdev->drm, &vkms_output->wb_encoder,
@@ -183,7 +182,8 @@ int vkms_enable_writeback_connector(struct vkms_device *vkmsdev,
 
 	drm_connector_helper_add(&vkms_output->wb_connector, &vkms_wb_conn_helper_funcs);
 
-	return drmm_writeback_connector_init(&vkmsdev->drm, wb,
+	return drmm_writeback_connector_init(&vkmsdev->drm,
+					     &vkms_output->wb_connector,
 					     &vkms_wb_connector_funcs,
 					     &vkms_output->wb_encoder,
 					     vkms_wb_formats,
diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
index 702141099520..c6960c7e634e 100644
--- a/include/drm/drm_writeback.h
+++ b/include/drm/drm_writeback.h
@@ -78,13 +78,13 @@ drm_writeback_to_connector(struct drm_writeback_connector *wb_connector)
 }
 
 int drm_writeback_connector_init(struct drm_device *dev,
-				 struct drm_writeback_connector *wb_connector,
+				 struct drm_connector *connector,
 				 const struct drm_connector_funcs *con_funcs,
 				 struct drm_encoder *enc,
 				 const u32 *formats, int n_formats);
 
 int drmm_writeback_connector_init(struct drm_device *dev,
-				  struct drm_writeback_connector *wb_connector,
+				  struct drm_connector *connector,
 				  const struct drm_connector_funcs *con_funcs,
 				  struct drm_encoder *enc,
 				  const u32 *formats, int n_formats);
-- 
2.34.1

