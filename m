Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7CB729942
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 14:12:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE25810E6B3;
	Fri,  9 Jun 2023 12:12:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9B8E10E6AE;
 Fri,  9 Jun 2023 12:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686312722; x=1717848722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ywvx/2h5rwvS+9qioVyn96tY4G/yGhwuqOC09z1IttA=;
 b=MaiF769UssYLM7zhbDh628/hOcsrrgc5KqL9mFc5Ikj/IE6zUllcwvAW
 hxcI/uPoPYLUd4mxGiZvy6z/qcSLOhi3YOD4DJRhKFXpYh0XisXl9UTOV
 suwlsx0JYkC94AvSjL6O3JlWOA2v4ODUwV2Guc514Sw5E9bANbzJUn5NS
 hscL2Lcz5u858qnyYD008EXAcTvFYCHyX3LTf9/MqkbabAP3kIqkrvLjN
 26zOoP8smJWT2dAoj+TGDSeNQhHXQUGxv9f47IrXTRNyNv/H/NIyD0Tx9
 hhhD2PE018hpPaHEVkrC4F5GnXfz0n2Xh07ntVSK9VTZFrZ5F0fo1ZU26 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="356474766"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="356474766"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 05:12:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="740150907"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740150907"
Received: from pjdillon-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.210.241])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 05:12:01 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri,  9 Jun 2023 13:11:42 +0100
Message-Id: <20230609121143.1232420-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230609121143.1232420-1-tvrtko.ursulin@linux.intel.com>
References: <20230609121143.1232420-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915: Track imported dma-buf objects in
 memory stats
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

We want to be able to show memory usage of imported dma-buf opjects in the
fdinfo stats.

To achieve this we wrap drm_gem_prime_fd_to_handle(_obj) in
i915_gem_prime_fd_to_handle and append some client management at the end.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 32 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h |  7 +++++
 drivers/gpu/drm/i915/i915_driver.c         |  2 +-
 3 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index fd556a076d05..2e2d9d7c1992 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -11,7 +11,10 @@
 
 #include <asm/smp.h>
 
+#include <drm/drm_file.h>
+
 #include "gem/i915_gem_dmabuf.h"
+#include "i915_drm_client.h"
 #include "i915_drv.h"
 #include "i915_gem_object.h"
 #include "i915_scatterlist.h"
@@ -344,6 +347,35 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
 	return ERR_PTR(ret);
 }
 
+int i915_gem_prime_fd_to_handle(struct drm_device *dev,
+				struct drm_file *file_priv, int prime_fd,
+				uint32_t *handle)
+{
+	struct drm_gem_object *gem_obj = NULL;
+	int ret;
+
+	if (IS_ENABLED(CONFIG_PROC_FS))
+		ret = drm_gem_prime_fd_to_handle_obj(dev, file_priv, prime_fd,
+						     handle, &gem_obj);
+	else
+		ret = drm_gem_prime_fd_to_handle(dev, file_priv, prime_fd,
+						 handle);
+	if (ret)
+		return ret;
+
+	if (gem_obj) {
+		struct drm_i915_file_private *fpriv = file_priv->driver_priv;
+		struct drm_i915_gem_object *obj = to_intel_bo(gem_obj);
+
+		/* Really imported and not just alias? */
+		if (obj->ops == &i915_gem_object_dmabuf_ops)
+			i915_drm_client_add_object(fpriv->client, obj);
+		i915_gem_object_put(obj);
+	}
+
+	return 0;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/mock_dmabuf.c"
 #include "selftests/i915_gem_dmabuf.c"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h
index 6e0405d47ce1..63635c221c7c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h
@@ -6,8 +6,11 @@
 #ifndef __I915_GEM_DMABUF_H__
 #define __I915_GEM_DMABUF_H__
 
+#include <linux/types.h>
+
 struct drm_gem_object;
 struct drm_device;
+struct drm_file;
 struct dma_buf;
 
 struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
@@ -15,4 +18,8 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
 
 struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags);
 
+int i915_gem_prime_fd_to_handle(struct drm_device *dev,
+				struct drm_file *file_priv, int prime_fd,
+				uint32_t *handle);
+
 #endif /* __I915_GEM_DMABUF_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ace8534b6cc5..03f3157371bf 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1806,7 +1806,7 @@ static const struct drm_driver i915_drm_driver = {
 	.show_fdinfo = i915_drm_client_fdinfo,
 
 	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
-	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
+	.prime_fd_to_handle = i915_gem_prime_fd_to_handle,
 	.gem_prime_import = i915_gem_prime_import,
 
 	.dumb_create = i915_gem_dumb_create,
-- 
2.39.2

