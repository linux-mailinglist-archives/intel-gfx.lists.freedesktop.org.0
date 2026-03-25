Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDkjGgvCw2n6twQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:07:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F10B832385A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E7710E84A;
	Wed, 25 Mar 2026 11:07:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ijuUgJTG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0546310E84A;
 Wed, 25 Mar 2026 11:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436872; x=1805972872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RHo2oKOc/DmfCx/+WKWLFnz2m9Cra0PNNM33CyNcXco=;
 b=ijuUgJTGKD91Akm8tCvBDE5EB8pqSrYtx5tKh1HQZJwIOq3tidvNPAc1
 9Qc1yLJ/RIrlg5JRnDPB6x1lvce6ZSKvJzgDwDImxlN1J4Vq7olT8gRHb
 6+T0j3gMguS0QjeeDY9bASgIoGybw3DaoN6x6Rc+TVF3ghcW5E+bTGfis
 eS+fJDAs1swyMR2RgyNFk2edKkctpzbghQgEcs+1/L+JuURW+8Q8BWQQ9
 Ju0k77PAeTb4tR0J19Go/nw0IidVp+blIkndYhyRHFugicriph7E6H+qa
 b8iJfOecsdp1D7tXwPJg5E9nY159IOMM6QgcYQo8DkRuLz87xDuVMhauW Q==;
X-CSE-ConnectionGUID: lDVC2eBcT0qV+yNoLlCxrA==
X-CSE-MsgGUID: 0HcMCa6JREWl5EWr/d3YEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047484"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047484"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:07:52 -0700
X-CSE-ConnectionGUID: 7iBmQbVAS0u7EJp0jHbEYw==
X-CSE-MsgGUID: J0uQ5MPUQa6hnFPULiHydw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798254"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:07:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>
Subject: [PATCH v3 DO NOT REVIEW 01/26] drm: writeback: rename
 drm_writeback_connector_init_with_encoder()
Date: Wed, 25 Mar 2026 16:37:19 +0530
Message-Id: <20260325110744.1096786-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,qualcomm.com:email,bootlin.com:email]
X-Rspamd-Queue-Id: F10B832385A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Rename drm_writeback_connector_init_with_encoder() to
drm_writeback_connector_init() and adapt its interface to follow
drmm_writeback_connector_init().

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  2 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c  | 18 +++--
 .../arm/display/komeda/komeda_wb_connector.c  | 30 ++++----
 drivers/gpu/drm/arm/malidp_mw.c               | 25 ++++---
 drivers/gpu/drm/drm_writeback.c               | 69 ++-----------------
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c |  3 +-
 .../drm/renesas/rcar-du/rcar_du_writeback.c   | 23 +++++--
 drivers/gpu/drm/vc4/vc4_txp.c                 |  9 ++-
 include/drm/drm_writeback.h                   | 22 +-----
 9 files changed, 76 insertions(+), 125 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 646fbdd5688b..02a260127e16 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -10633,7 +10633,7 @@ static void dm_set_writeback(struct amdgpu_display_manager *dm,
 		return;
 	}
 
-	acrtc = to_amdgpu_crtc(wb_conn->encoder.crtc);
+	acrtc = to_amdgpu_crtc(crtc_state->base.crtc);
 	if (!acrtc) {
 		drm_err(adev_to_drm(adev), "no amdgpu_crtc found\n");
 		kfree(wb_info);
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
index d9527c05fc87..80c37487ca77 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
@@ -171,7 +171,6 @@ static const struct drm_encoder_helper_funcs amdgpu_dm_wb_encoder_helper_funcs =
 
 static const struct drm_connector_funcs amdgpu_dm_wb_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = drm_connector_cleanup,
 	.reset = amdgpu_dm_connector_funcs_reset,
 	.atomic_duplicate_state = amdgpu_dm_connector_atomic_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
@@ -190,17 +189,26 @@ int amdgpu_dm_wb_connector_init(struct amdgpu_display_manager *dm,
 	struct dc *dc = dm->dc;
 	struct dc_link *link = dc_get_link_at_index(dc, link_index);
 	int res = 0;
+	struct drm_encoder *encoder;
+
+	encoder = drmm_plain_encoder_alloc(&dm->adev->ddev, NULL,
+					   DRM_MODE_ENCODER_VIRTUAL, NULL);
+	if (IS_ERR(encoder))
+		return PTR_ERR(encoder);
+
+	drm_encoder_helper_add(encoder, &amdgpu_dm_wb_encoder_helper_funcs);
+
+	encoder->possible_crtcs = amdgpu_dm_get_encoder_crtc_mask(dm->adev);
 
 	wbcon->link = link;
 
 	drm_connector_helper_add(&wbcon->base.base, &amdgpu_dm_wb_conn_helper_funcs);
 
-	res = drm_writeback_connector_init(&dm->adev->ddev, &wbcon->base,
+	res = drmm_writeback_connector_init(&dm->adev->ddev, &wbcon->base,
 					    &amdgpu_dm_wb_connector_funcs,
-					    &amdgpu_dm_wb_encoder_helper_funcs,
+					    encoder,
 					    amdgpu_dm_wb_formats,
-					    ARRAY_SIZE(amdgpu_dm_wb_formats),
-					    amdgpu_dm_get_encoder_crtc_mask(dm->adev));
+					    ARRAY_SIZE(amdgpu_dm_wb_formats));
 
 	if (res)
 		return res;
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
index 41cc3e080dc9..bcc53d4015f1 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
@@ -5,6 +5,7 @@
  *
  */
 #include <drm/drm_framebuffer.h>
+#include <drm/drm_managed.h>
 #include "komeda_dev.h"
 #include "komeda_kms.h"
 
@@ -121,17 +122,10 @@ komeda_wb_connector_fill_modes(struct drm_connector *connector,
 	return 0;
 }
 
-static void komeda_wb_connector_destroy(struct drm_connector *connector)
-{
-	drm_connector_cleanup(connector);
-	kfree(to_kconn(to_wb_conn(connector)));
-}
-
 static const struct drm_connector_funcs komeda_wb_connector_funcs = {
 	.reset			= drm_atomic_helper_connector_reset,
 	.detect			= komeda_wb_connector_detect,
 	.fill_modes		= komeda_wb_connector_fill_modes,
-	.destroy		= komeda_wb_connector_destroy,
 	.atomic_duplicate_state	= drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state	= drm_atomic_helper_connector_destroy_state,
 };
@@ -143,13 +137,15 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 	struct komeda_wb_connector *kwb_conn;
 	struct drm_writeback_connector *wb_conn;
 	struct drm_display_info *info;
+	struct drm_encoder *encoder;
+
 	u32 *formats, n_formats = 0;
 	int err;
 
 	if (!kcrtc->master->wb_layer)
 		return 0;
 
-	kwb_conn = kzalloc_obj(*kwb_conn);
+	kwb_conn = drmm_kzalloc(&kms->base, sizeof(*kwb_conn), GFP_KERNEL);
 	if (!kwb_conn)
 		return -ENOMEM;
 
@@ -165,11 +161,19 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 		return -ENOMEM;
 	}
 
-	err = drm_writeback_connector_init(&kms->base, wb_conn,
-					   &komeda_wb_connector_funcs,
-					   &komeda_wb_encoder_helper_funcs,
-					   formats, n_formats,
-					   BIT(drm_crtc_index(&kcrtc->base)));
+	encoder = drmm_plain_encoder_alloc(&kms->base, NULL,
+					   DRM_MODE_ENCODER_VIRTUAL, NULL);
+	if (IS_ERR(encoder))
+		return PTR_ERR(encoder);
+
+	drm_encoder_helper_add(encoder, &komeda_wb_encoder_helper_funcs);
+
+	encoder->possible_crtcs = drm_crtc_mask(&kcrtc->base);
+
+	err = drmm_writeback_connector_init(&kms->base, wb_conn,
+					    &komeda_wb_connector_funcs,
+					    encoder,
+					    formats, n_formats);
 	komeda_put_fourcc_list(formats);
 	if (err) {
 		kfree(kwb_conn);
diff --git a/drivers/gpu/drm/arm/malidp_mw.c b/drivers/gpu/drm/arm/malidp_mw.c
index fad343842038..6e0c78e998aa 100644
--- a/drivers/gpu/drm/arm/malidp_mw.c
+++ b/drivers/gpu/drm/arm/malidp_mw.c
@@ -84,11 +84,6 @@ malidp_mw_connector_detect(struct drm_connector *connector, bool force)
 	return connector_status_connected;
 }
 
-static void malidp_mw_connector_destroy(struct drm_connector *connector)
-{
-	drm_connector_cleanup(connector);
-}
-
 static struct drm_connector_state *
 malidp_mw_connector_duplicate_state(struct drm_connector *connector)
 {
@@ -114,7 +109,6 @@ static const struct drm_connector_funcs malidp_mw_connector_funcs = {
 	.reset = malidp_mw_connector_reset,
 	.detect = malidp_mw_connector_detect,
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = malidp_mw_connector_destroy,
 	.atomic_duplicate_state = malidp_mw_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 };
@@ -211,6 +205,7 @@ static u32 *get_writeback_formats(struct malidp_drm *malidp, int *n_formats)
 int malidp_mw_connector_init(struct drm_device *drm)
 {
 	struct malidp_drm *malidp = drm_to_malidp(drm);
+	struct drm_encoder *encoder;
 	u32 *formats;
 	int ret, n_formats;
 
@@ -224,11 +219,19 @@ int malidp_mw_connector_init(struct drm_device *drm)
 	if (!formats)
 		return -ENOMEM;
 
-	ret = drm_writeback_connector_init(drm, &malidp->mw_connector,
-					   &malidp_mw_connector_funcs,
-					   &malidp_mw_encoder_helper_funcs,
-					   formats, n_formats,
-					   1 << drm_crtc_index(&malidp->crtc));
+	encoder = drmm_plain_encoder_alloc(drm, NULL, DRM_MODE_ENCODER_VIRTUAL,
+					   NULL);
+	if (IS_ERR(encoder))
+		return PTR_ERR(encoder);
+
+	drm_encoder_helper_add(encoder, &malidp_mw_encoder_helper_funcs);
+
+	encoder->possible_crtcs = drm_crtc_mask(&malidp->crtc);
+
+	ret = drmm_writeback_connector_init(drm, &malidp->mw_connector,
+					    &malidp_mw_connector_funcs,
+					    encoder,
+					    formats, n_formats);
 	kfree(formats);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
index 4da5d6094721..68fdac745f42 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -142,61 +142,6 @@ static int create_writeback_properties(struct drm_device *dev)
 	return 0;
 }
 
-static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
-	.destroy = drm_encoder_cleanup,
-};
-
-/**
- * drm_writeback_connector_init - Initialize a writeback connector and its properties
- * @dev: DRM device
- * @wb_connector: Writeback connector to initialize
- * @con_funcs: Connector funcs vtable
- * @enc_helper_funcs: Encoder helper funcs vtable to be used by the internal encoder
- * @formats: Array of supported pixel formats for the writeback engine
- * @n_formats: Length of the formats array
- * @possible_crtcs: possible crtcs for the internal writeback encoder
- *
- * This function creates the writeback-connector-specific properties if they
- * have not been already created, initializes the connector as
- * type DRM_MODE_CONNECTOR_WRITEBACK, and correctly initializes the property
- * values. It will also create an internal encoder associated with the
- * drm_writeback_connector and set it to use the @enc_helper_funcs vtable for
- * the encoder helper.
- *
- * Drivers should always use this function instead of drm_connector_init() to
- * set up writeback connectors.
- *
- * Returns: 0 on success, or a negative error code
- */
-int drm_writeback_connector_init(struct drm_device *dev,
-				 struct drm_writeback_connector *wb_connector,
-				 const struct drm_connector_funcs *con_funcs,
-				 const struct drm_encoder_helper_funcs *enc_helper_funcs,
-				 const u32 *formats, int n_formats,
-				 u32 possible_crtcs)
-{
-	int ret = 0;
-
-	drm_encoder_helper_add(&wb_connector->encoder, enc_helper_funcs);
-
-	wb_connector->encoder.possible_crtcs = possible_crtcs;
-
-	ret = drm_encoder_init(dev, &wb_connector->encoder,
-			       &drm_writeback_encoder_funcs,
-			       DRM_MODE_ENCODER_VIRTUAL, NULL);
-	if (ret)
-		return ret;
-
-	ret = drm_writeback_connector_init_with_encoder(dev, wb_connector, &wb_connector->encoder,
-			con_funcs, formats, n_formats);
-
-	if (ret)
-		drm_encoder_cleanup(&wb_connector->encoder);
-
-	return ret;
-}
-EXPORT_SYMBOL(drm_writeback_connector_init);
-
 static void delete_writeback_properties(struct drm_device *dev)
 {
 	if (dev->mode_config.writeback_pixel_formats_property) {
@@ -290,7 +235,7 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
 }
 
 /**
- * drm_writeback_connector_init_with_encoder - Initialize a writeback connector with
+ * drm_writeback_connector_init - Initialize a writeback connector with
  * a custom encoder
  *
  * @dev: DRM device
@@ -318,11 +263,11 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
  *
  * Returns: 0 on success, or a negative error code
  */
-int drm_writeback_connector_init_with_encoder(struct drm_device *dev,
-					      struct drm_writeback_connector *wb_connector,
-					      struct drm_encoder *enc,
-					      const struct drm_connector_funcs *con_funcs,
-					      const u32 *formats, int n_formats)
+int drm_writeback_connector_init(struct drm_device *dev,
+				 struct drm_writeback_connector *wb_connector,
+				 const struct drm_connector_funcs *con_funcs,
+				 struct drm_encoder *enc,
+				 const u32 *formats, int n_formats)
 {
 	struct drm_connector *connector = &wb_connector->base;
 	int ret;
@@ -339,7 +284,7 @@ int drm_writeback_connector_init_with_encoder(struct drm_device *dev,
 
 	return ret;
 }
-EXPORT_SYMBOL(drm_writeback_connector_init_with_encoder);
+EXPORT_SYMBOL(drm_writeback_connector_init);
 
 /**
  * drm_writeback_connector_cleanup - Cleanup the writeback connector
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
index 7545c0293efb..6f2370c9dd98 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_edid.h>
 #include <drm/drm_framebuffer.h>
+#include <drm/drm_managed.h>
 
 #include "dpu_writeback.h"
 
@@ -125,7 +126,7 @@ int dpu_writeback_init(struct drm_device *dev, struct drm_encoder *enc,
 	struct dpu_wb_connector *dpu_wb_conn;
 	int rc = 0;
 
-	dpu_wb_conn = devm_kzalloc(dev->dev, sizeof(*dpu_wb_conn), GFP_KERNEL);
+	dpu_wb_conn = drmm_kzalloc(dev, sizeof(*dpu_wb_conn), GFP_KERNEL);
 	if (!dpu_wb_conn)
 		return -ENOMEM;
 
diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
index e5e6e6a156aa..aa37cf99754c 100644
--- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
+++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
@@ -134,7 +134,6 @@ static void rcar_du_wb_conn_reset(struct drm_connector *connector)
 static const struct drm_connector_funcs rcar_du_wb_conn_funcs = {
 	.reset = rcar_du_wb_conn_reset,
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = drm_connector_cleanup,
 	.atomic_duplicate_state = rcar_du_wb_conn_duplicate_state,
 	.atomic_destroy_state = rcar_du_wb_conn_destroy_state,
 };
@@ -202,15 +201,25 @@ int rcar_du_writeback_init(struct rcar_du_device *rcdu,
 {
 	struct drm_writeback_connector *wb_conn = &rcrtc->writeback;
 
+	struct drm_encoder *encoder;
+
+	encoder = drmm_plain_encoder_alloc(&rcdu->ddev, NULL,
+					   DRM_MODE_ENCODER_VIRTUAL, NULL);
+	if (IS_ERR(encoder))
+		return PTR_ERR(encoder);
+
+	drm_encoder_helper_add(encoder, &rcar_du_wb_enc_helper_funcs);
+
+	encoder->possible_crtcs = drm_crtc_mask(&rcrtc->crtc);
+
 	drm_connector_helper_add(&wb_conn->base,
 				 &rcar_du_wb_conn_helper_funcs);
 
-	return drm_writeback_connector_init(&rcdu->ddev, wb_conn,
-					    &rcar_du_wb_conn_funcs,
-					    &rcar_du_wb_enc_helper_funcs,
-					    writeback_formats,
-					    ARRAY_SIZE(writeback_formats),
-					    1 << drm_crtc_index(&rcrtc->crtc));
+	return drmm_writeback_connector_init(&rcdu->ddev, wb_conn,
+					     &rcar_du_wb_conn_funcs,
+					     encoder,
+					     writeback_formats,
+					     ARRAY_SIZE(writeback_formats));
 }
 
 void rcar_du_writeback_setup(struct rcar_du_crtc *rcrtc,
diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
index 9082902100e4..befdb094c173 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -378,7 +378,6 @@ vc4_txp_connector_detect(struct drm_connector *connector, bool force)
 static const struct drm_connector_funcs vc4_txp_connector_funcs = {
 	.detect = vc4_txp_connector_detect,
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = drm_connector_cleanup,
 	.reset = drm_atomic_helper_connector_reset,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
@@ -602,10 +601,10 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 
 	drm_connector_helper_add(&txp->connector.base,
 				 &vc4_txp_connector_helper_funcs);
-	ret = drm_writeback_connector_init_with_encoder(drm, &txp->connector,
-							encoder,
-							&vc4_txp_connector_funcs,
-							drm_fmts, ARRAY_SIZE(drm_fmts));
+	ret = drmm_writeback_connector_init(drm, &txp->connector,
+					    &vc4_txp_connector_funcs,
+					    encoder,
+					    drm_fmts, ARRAY_SIZE(drm_fmts));
 	if (ret)
 		return ret;
 
diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
index c380a7b8f55a..958466a05e60 100644
--- a/include/drm/drm_writeback.h
+++ b/include/drm/drm_writeback.h
@@ -24,17 +24,6 @@ struct drm_writeback_connector {
 	 */
 	struct drm_connector base;
 
-	/**
-	 * @encoder: Internal encoder used by the connector to fulfill
-	 * the DRM framework requirements. The users of the
-	 * @drm_writeback_connector control the behaviour of the @encoder
-	 * by passing the @enc_funcs parameter to drm_writeback_connector_init()
-	 * function.
-	 * For users of drm_writeback_connector_init_with_encoder(), this field
-	 * is not valid as the encoder is managed within their drivers.
-	 */
-	struct drm_encoder encoder;
-
 	/**
 	 * @pixel_formats_blob_ptr:
 	 *
@@ -151,15 +140,8 @@ drm_connector_to_writeback(struct drm_connector *connector)
 int drm_writeback_connector_init(struct drm_device *dev,
 				 struct drm_writeback_connector *wb_connector,
 				 const struct drm_connector_funcs *con_funcs,
-				 const struct drm_encoder_helper_funcs *enc_helper_funcs,
-				 const u32 *formats, int n_formats,
-				 u32 possible_crtcs);
-
-int drm_writeback_connector_init_with_encoder(struct drm_device *dev,
-				struct drm_writeback_connector *wb_connector,
-				struct drm_encoder *enc,
-				const struct drm_connector_funcs *con_funcs, const u32 *formats,
-				int n_formats);
+				 struct drm_encoder *enc,
+				 const u32 *formats, int n_formats);
 
 int drmm_writeback_connector_init(struct drm_device *dev,
 				  struct drm_writeback_connector *wb_connector,
-- 
2.34.1

