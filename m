Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1mx7Lfq6VWpYsAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 06:28:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAF8750D36
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 06:28:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IMXLeNGI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CEE510EBD2;
	Tue, 14 Jul 2026 04:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D8E10E15A;
 Tue, 14 Jul 2026 04:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784003318; x=1815539318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0DTZ550ma/MWSKRVaeQ8N+mZHFYbY/IeRwiO0H/uAEc=;
 b=IMXLeNGIKVN2wDRUOk1RZVc9gkcHsX568hl8wabeGXC2hdSoP6UjC3xw
 NkDrYe75yV8m7xNmLDu8sUizglKolddKizRDfifQFRagUikiyCLB7WVx5
 s5YFYUX792pVrnNaVxqa2hDYQhxiTW9rD+ukCjK5n84dbRMpiECa5sFd+
 26/3pRBcXdRIPE3bG5IGyaV27gp+eBHO0tMGPHvPTVw7wiW+f6+e4sAmJ
 S8WUmm2lK6OBEtTUxexV2aUXIwjmyvFzX2nTWwcSwi8j492nejSIrutzM
 s+mgbn2FJUN6lHCzvAEEj2o5P+yOQzpxulnUufddg64tMlR8xdCSCBYa8 g==;
X-CSE-ConnectionGUID: XQG5wOuwRWGGzlxdNPDnag==
X-CSE-MsgGUID: 8Z6QBMPIRvSbvzccC+TuMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88297061"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88297061"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 21:28:38 -0700
X-CSE-ConnectionGUID: e6Sp3LuLS3a1kNCD7XGQKw==
X-CSE-MsgGUID: hI5pjP6YQyGXg0sNTYQxpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="255243137"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 13 Jul 2026 21:28:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel-list@raspberrypi.com, amd-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, arun.r.murthy@intel.com, abhinav.kumar@linux.dev,
 tzimmermann@suse.de, sean@poorly.ru, marijn.suijten@somainline.org,
 laurent.pinchart+renesas@ideasonboard.com, dave.stevenson@raspberrypi.com,
 tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com, louis.chauvet@bootlin.com,
 kernel-dev@igalia.com, John.Harrison@Igalia.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v6 2/7] drm: writeback: Modify writeback init helpers
Date: Tue, 14 Jul 2026 09:58:00 +0530
Message-Id: <20260714042805.77934-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260714042805.77934-1-suraj.kandpal@intel.com>
References: <20260714042805.77934-1-suraj.kandpal@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5BAF8750D36

The writeback connector init helpers (drm_writeback_connector_init,
drm_writeback_connector_init_with_encoder, drmm_writeback_connector_init
and drmm_writeback_connector_init_with_encoder) require access to the
parent drm_connector object as well as the drm_writeback_connector
object itself. So, pass in the top level drm_connector and traverse
down to drm_writeback_connector rather than passing in the lower level
object and traversing back up. Even where such is not the case, update
to use the top level object for consistency across the interface.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: John Harrison <John.Harrison@Igalia.com>
---
v5 -> v6:
- Rebase over latest kernel

v4 -> v5:
- Make @connector kerneldoc wording consistent across the series (John)
- Fix Drm -> DRM (John)

v3 -> v4:
- Update subject line for consitency (John)
- Update commit message across commits for consitency (John)
- Rename writeback to wb_connector in rcar_du_crtc for clarity (John)


 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c    |  2 +-
 .../drm/arm/display/komeda/komeda_wb_connector.c    |  5 +----
 drivers/gpu/drm/arm/malidp_mw.c                     |  2 +-
 drivers/gpu/drm/drm_writeback.c                     | 13 +++++++------
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c       |  2 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c |  3 +--
 drivers/gpu/drm/vc4/vc4_txp.c                       |  2 +-
 drivers/gpu/drm/vkms/vkms_writeback.c               |  4 ++--
 include/drm/drm_writeback.h                         |  4 ++--
 9 files changed, 17 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
index 18ef4ce73b46..92039d93f9e4 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
@@ -207,7 +207,7 @@ int amdgpu_dm_wb_connector_init(struct amdgpu_display_manager *dm,
 
 	drm_connector_helper_add(&wbcon->base, &amdgpu_dm_wb_conn_helper_funcs);
 
-	res = drmm_writeback_connector_init(&dm->adev->ddev, &wbcon->base.writeback,
+	res = drmm_writeback_connector_init(&dm->adev->ddev, &wbcon->base,
 					    &amdgpu_dm_wb_connector_funcs,
 					    encoder,
 					    amdgpu_dm_wb_formats,
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
index 848ac37a76e4..b6476c3b2ca7 100644
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
@@ -173,7 +170,7 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
 
 	encoder->possible_crtcs = drm_crtc_mask(&kcrtc->base);
 
-	err = drmm_writeback_connector_init(&kms->base, wb_conn,
+	err = drmm_writeback_connector_init(&kms->base, &kwb_conn->base,
 					    &komeda_wb_connector_funcs,
 					    encoder,
 					    formats, n_formats);
diff --git a/drivers/gpu/drm/arm/malidp_mw.c b/drivers/gpu/drm/arm/malidp_mw.c
index 4c77a459c241..271ec83c7e48 100644
--- a/drivers/gpu/drm/arm/malidp_mw.c
+++ b/drivers/gpu/drm/arm/malidp_mw.c
@@ -229,7 +229,7 @@ int malidp_mw_connector_init(struct drm_device *drm)
 
 	encoder->possible_crtcs = drm_crtc_mask(&malidp->crtc);
 
-	ret = drmm_writeback_connector_init(drm, &malidp->mw_connector.writeback,
+	ret = drmm_writeback_connector_init(drm, &malidp->mw_connector,
 					    &malidp_mw_connector_funcs,
 					    encoder,
 					    formats, n_formats);
diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
index f93c936643bb..79c4be2acbbe 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -246,7 +246,8 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
  * a custom encoder
  *
  * @dev: DRM device
- * @wb_connector: Writeback connector to initialize
+ * @connector: DRM connector which contains the writeback connector to initialize
+ * @enc: handle to the already initialized drm encoder
  * @con_funcs: Connector funcs vtable
  * @enc: handle to the already initialized drm encoder
  * @formats: Array of supported pixel formats for the writeback engine
@@ -271,12 +272,12 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
  * Returns: 0 on success, or a negative error code
  */
 int drm_writeback_connector_init(struct drm_device *dev,
-				 struct drm_writeback_connector *wb_connector,
+				 struct drm_connector *connector,
 				 const struct drm_connector_funcs *con_funcs,
 				 struct drm_encoder *enc,
 				 const u32 *formats, int n_formats)
 {
-	struct drm_connector *connector = drm_writeback_to_connector(wb_connector);
+	struct drm_writeback_connector *wb_connector = &connector->writeback;
 	int ret;
 
 	ret = drm_connector_init(dev, connector, con_funcs,
@@ -325,7 +326,7 @@ static void drm_writeback_connector_cleanup(struct drm_device *dev,
  * a custom encoder
  *
  * @dev: DRM device
- * @wb_connector: Writeback connector to initialize
+ * @connector: DRM connector which contains the writeback connector to initialize
  * @con_funcs: Connector funcs vtable
  * @enc: Encoder to connect this writeback connector
  * @formats: Array of supported pixel formats for the writeback engine
@@ -341,12 +342,12 @@ static void drm_writeback_connector_cleanup(struct drm_device *dev,
  * Returns: 0 on success, or a negative error code
  */
 int drmm_writeback_connector_init(struct drm_device *dev,
-				  struct drm_writeback_connector *wb_connector,
+				  struct drm_connector *connector,
 				  const struct drm_connector_funcs *con_funcs,
 				  struct drm_encoder *enc,
 				  const u32 *formats, int n_formats)
 {
-	struct drm_connector *connector = drm_writeback_to_connector(wb_connector);
+	struct drm_writeback_connector *wb_connector = &connector->writeback;
 	int ret;
 
 	ret = drmm_connector_init(dev, connector, con_funcs,
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
index d1211788625a..c9f53490c1a7 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
@@ -134,7 +134,7 @@ int dpu_writeback_init(struct drm_device *dev, struct drm_encoder *enc,
 
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
index 864125cc7d72..f11ad54d067a 100644
--- a/drivers/gpu/drm/vc4/vc4_txp.c
+++ b/drivers/gpu/drm/vc4/vc4_txp.c
@@ -600,7 +600,7 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
 
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

