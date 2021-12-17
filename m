Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA7847855D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 08:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC0A910EB89;
	Fri, 17 Dec 2021 07:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16D0310EB89
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 07:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639724726; x=1671260726;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=TYzpFcIkQSQgvY31N8/l4lZak/7NONVQnaWYAaLW3Ms=;
 b=dBOc/c8vOVP+q/Y0exkgJHoPU2sVBZtecy4XFD4K04d1pej4JwVyZad/
 flYUD7lSlkftInCxjy1JV/5AhBr+tX/ao8dGVTHNNCJFz+UQNE9a90NlQ
 5JHhV6z3kETwW2gdyBoeZF8FexUK7toZfP8I65/YiTtsYYTPkj9fCrIbg
 OWQhzsxzlxy4vQOqV6+O2gujlk/+tbnqlOzDk78egVb+p+uHr2mYSzg2y
 8jgEaWb/WQSoBMNUqY7+Ov8kb0MnWvl2VwjIQElSbpJvTZFSyhkckpXXn
 FjdkTGZs1ngqTICgkP+ELXz/bummhtYhNcb2hwTKZp+YHsHaOphimqVoS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="237236739"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="237236739"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 23:05:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="466405002"
Received: from kandpal.iind.intel.com ([10.190.238.57])
 by orsmga006.jf.intel.com with ESMTP; 16 Dec 2021 23:05:24 -0800
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 12:43:53 +0530
Message-Id: <20211217071356.12517-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211217071356.12517-1-suraj.kandpal@intel.com>
References: <20211217071356.12517-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] [PATCH 1/4] drm: add writeback pointers to drm_connector
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
Cc: arun.r.murthy@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: suraj kandpal <suraj.kandpal@intel.com>

Adding drm_writeback_connector to drm_connector so that
writeback_connector can be fetched from drm_connector
Adding drm_connector and drm_encoder pointers in drm_writeback_connector

Signed-off-by: suraj kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/drm_writeback.c | 19 ++++++++++---------
 include/drm/drm_connector.h     |  3 +++
 include/drm/drm_writeback.h     |  6 +++---
 3 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
index dccf4504f1bb..47238db42363 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -87,7 +87,7 @@ static const char *drm_writeback_fence_get_driver_name(struct dma_fence *fence)
 	struct drm_writeback_connector *wb_connector =
 		fence_to_wb_connector(fence);
 
-	return wb_connector->base.dev->driver->name;
+	return wb_connector->base->dev->driver->name;
 }
 
 static const char *
@@ -177,7 +177,7 @@ int drm_writeback_connector_init(struct drm_device *dev,
 				 const u32 *formats, int n_formats)
 {
 	struct drm_property_blob *blob;
-	struct drm_connector *connector = &wb_connector->base;
+	struct drm_connector *connector = wb_connector->base;
 	struct drm_mode_config *config = &dev->mode_config;
 	int ret = create_writeback_properties(dev);
 
@@ -189,14 +189,15 @@ int drm_writeback_connector_init(struct drm_device *dev,
 	if (IS_ERR(blob))
 		return PTR_ERR(blob);
 
-	drm_encoder_helper_add(&wb_connector->encoder, enc_helper_funcs);
-	ret = drm_encoder_init(dev, &wb_connector->encoder,
+	drm_encoder_helper_add(wb_connector->encoder, enc_helper_funcs);
+	ret = drm_encoder_init(dev, wb_connector->encoder,
 			       &drm_writeback_encoder_funcs,
 			       DRM_MODE_ENCODER_VIRTUAL, NULL);
 	if (ret)
 		goto fail;
 
 	connector->interlace_allowed = 0;
+	connector->wb_connector = wb_connector;
 
 	ret = drm_connector_init(dev, connector, con_funcs,
 				 DRM_MODE_CONNECTOR_WRITEBACK);
@@ -204,7 +205,7 @@ int drm_writeback_connector_init(struct drm_device *dev,
 		goto connector_fail;
 
 	ret = drm_connector_attach_encoder(connector,
-						&wb_connector->encoder);
+						wb_connector->encoder);
 	if (ret)
 		goto attach_fail;
 
@@ -233,7 +234,7 @@ int drm_writeback_connector_init(struct drm_device *dev,
 attach_fail:
 	drm_connector_cleanup(connector);
 connector_fail:
-	drm_encoder_cleanup(&wb_connector->encoder);
+	drm_encoder_cleanup(wb_connector->encoder);
 fail:
 	drm_property_blob_put(blob);
 	return ret;
@@ -263,7 +264,7 @@ int drm_writeback_prepare_job(struct drm_writeback_job *job)
 {
 	struct drm_writeback_connector *connector = job->connector;
 	const struct drm_connector_helper_funcs *funcs =
-		connector->base.helper_private;
+		connector->base->helper_private;
 	int ret;
 
 	if (funcs->prepare_writeback_job) {
@@ -315,7 +316,7 @@ void drm_writeback_cleanup_job(struct drm_writeback_job *job)
 {
 	struct drm_writeback_connector *connector = job->connector;
 	const struct drm_connector_helper_funcs *funcs =
-		connector->base.helper_private;
+		connector->base->helper_private;
 
 	if (job->prepared && funcs->cleanup_writeback_job)
 		funcs->cleanup_writeback_job(connector, job);
@@ -401,7 +402,7 @@ drm_writeback_get_out_fence(struct drm_writeback_connector *wb_connector)
 {
 	struct dma_fence *fence;
 
-	if (WARN_ON(wb_connector->base.connector_type !=
+	if (WARN_ON(wb_connector->base->connector_type !=
 		    DRM_MODE_CONNECTOR_WRITEBACK))
 		return NULL;
 
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 379746d3266f..ec049b1bc4bb 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -42,6 +42,7 @@ struct drm_property_blob;
 struct drm_printer;
 struct edid;
 struct i2c_adapter;
+struct drm_writeback_connector;
 
 enum drm_connector_force {
 	DRM_FORCE_UNSPECIFIED,
@@ -1483,6 +1484,8 @@ struct drm_connector {
 	 */
 	struct drm_encoder *encoder;
 
+	struct drm_writeback_connector *wb_connector;
+
 #define MAX_ELD_BYTES	128
 	/** @eld: EDID-like data, if present */
 	uint8_t eld[MAX_ELD_BYTES];
diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
index 9697d2714d2a..078c9907219c 100644
--- a/include/drm/drm_writeback.h
+++ b/include/drm/drm_writeback.h
@@ -22,7 +22,7 @@ struct drm_writeback_connector {
 	/**
 	 * @base: base drm_connector object
 	 */
-	struct drm_connector base;
+	struct drm_connector *base;
 
 	/**
 	 * @encoder: Internal encoder used by the connector to fulfill
@@ -31,7 +31,7 @@ struct drm_writeback_connector {
 	 * by passing the @enc_funcs parameter to drm_writeback_connector_init()
 	 * function.
 	 */
-	struct drm_encoder encoder;
+	struct drm_encoder *encoder;
 
 	/**
 	 * @pixel_formats_blob_ptr:
@@ -143,7 +143,7 @@ struct drm_writeback_job {
 static inline struct drm_writeback_connector *
 drm_connector_to_writeback(struct drm_connector *connector)
 {
-	return container_of(connector, struct drm_writeback_connector, base);
+	return connector->wb_connector;
 }
 
 int drm_writeback_connector_init(struct drm_device *dev,
-- 
2.17.1

