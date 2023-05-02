Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5A26F4BAF
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 22:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E9210E091;
	Tue,  2 May 2023 20:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC0810E091
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 20:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683061123; x=1714597123;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UkVgXh9CdhGj61q9jOtwl33TXIs/uBe3xnUdC8k6DlA=;
 b=m1cW91YFU52N4skZEMDmkvFr3+eyaG2AfnpF64MfKaQ2oA2wudRdZ/n0
 RFC5kZZToDLEKGgL8g8xlvLSGqklUOfrC1onvtUVBDz79UD1wqDjuwwHN
 c4MWyzVNHLJzCE741eTgCeJYZmtyqIwp8J5Yq4KBOBtuheBomOK74TDyr
 teFSTH2BWd/vYYvQq71cA12PM40Z3WiCuflobcnfgBD6IlG/3NqhcavqN
 QA4BwwfgWewUCuYyA8Usk+t6dCjfaILdHlzgxR+swOWOqm9VwV586a9+K
 UJdJA1pht1xd3hkoQLz/Bi6HaJxXeC746UyX/btqlnX8DZ0NFnoHzcl0m Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="434812469"
X-IronPort-AV: E=Sophos;i="5.99,245,1677571200"; d="scan'208";a="434812469"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 13:58:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="785818172"
X-IronPort-AV: E=Sophos;i="5.99,245,1677571200"; d="scan'208";a="785818172"
Received: from mbosch-mobl.amr.corp.intel.com (HELO localhost) ([10.209.88.12])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 13:58:41 -0700
From: Jordan Justen <jordan.l.justen@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 13:57:44 -0700
Message-Id: <20230502205744.1067094-1-jordan.l.justen@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/uapi: Add
 DRM_I915_QUERY_GEM_CREATE_EXTENSIONS query item
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cc: Fei Yang <fei.yang@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jordan Justen <jordan.l.justen@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 30 ++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_create.h |  2 ++
 drivers/gpu/drm/i915/i915_query.c          | 36 ++++++++++++++++++++++
 include/uapi/drm/i915_drm.h                |  2 ++
 4 files changed, 70 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index bfe1dbda4cb7..56342a352599 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -399,6 +399,36 @@ static const i915_user_extension_fn create_extensions[] = {
 	[I915_GEM_CREATE_EXT_PROTECTED_CONTENT] = ext_set_protected,
 };
 
+/**
+ * Fills buffer will known create_ext extensions
+ * @buffer: buffer to fill with extensions
+ * @buffer_size: size of the buffer in bytes
+ *
+ * If @buffer_size is 0, then @buffer is not accessed, and the
+ * required buffer size is returned.
+ *
+ * If @buffer_size != 0, but not large enough, then -EINVAL is
+ * returned.
+ *
+ * If @buffer_size is large enough, then @buffer will be filled as a
+ * u64 array of extension names.
+ */
+int
+i915_gem_create_ext_get_extensions(void *buffer, size_t buffer_size)
+{
+	unsigned int i;
+
+	if (buffer_size == 0)
+		return ARRAY_SIZE(create_extensions) * sizeof(u64);
+	else if (buffer_size < (ARRAY_SIZE(create_extensions) * sizeof(u64)))
+		return -EINVAL;
+
+	for (i = 0; i < ARRAY_SIZE(create_extensions); i++)
+		((u64*)buffer)[i] = i;
+
+	return ARRAY_SIZE(create_extensions) * sizeof(u64);
+}
+
 /**
  * i915_gem_create_ext_ioctl - Creates a new mm object and returns a handle to it.
  * @dev: drm device pointer
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.h b/drivers/gpu/drm/i915/gem/i915_gem_create.h
index 9536aa906001..e7ebef308038 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.h
@@ -14,4 +14,6 @@ int i915_gem_dumb_create(struct drm_file *file_priv,
 			 struct drm_device *dev,
 			 struct drm_mode_create_dumb *args);
 
+int i915_gem_create_ext_get_extensions(void *buffer, size_t buffer_size);
+
 #endif /* __I915_GEM_CREATE_H__ */
diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 00871ef99792..f360f76516de 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -9,6 +9,7 @@
 #include "i915_drv.h"
 #include "i915_perf.h"
 #include "i915_query.h"
+#include "gem/i915_gem_create.h"
 #include "gt/intel_engine_user.h"
 #include <uapi/drm/i915_drm.h>
 
@@ -551,6 +552,40 @@ static int query_hwconfig_blob(struct drm_i915_private *i915,
 	return hwconfig->size;
 }
 
+static int query_gem_create_extensions(struct drm_i915_private *i915,
+				       struct drm_i915_query_item *query_item)
+{
+	void *buffer;
+	int buffer_size, fill_size;
+
+	buffer_size = i915_gem_create_ext_get_extensions(NULL, 0);
+
+	if (query_item->length == 0)
+		return buffer_size;
+
+	if (query_item->length < buffer_size)
+		return -EINVAL;
+
+	buffer = kzalloc(buffer_size, GFP_KERNEL);
+	if (!buffer)
+		return -ENOMEM;
+
+	fill_size = i915_gem_create_ext_get_extensions(buffer, buffer_size);
+	if (fill_size != buffer_size) {
+		kfree(buffer);
+		return -EINVAL;
+	}
+
+	if (copy_to_user(u64_to_user_ptr(query_item->data_ptr),
+			 buffer, buffer_size)) {
+		kfree(buffer);
+		return -EFAULT;
+	}
+
+	kfree(buffer);
+	return buffer_size;
+}
+
 static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
 					struct drm_i915_query_item *query_item) = {
 	query_topology_info,
@@ -559,6 +594,7 @@ static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
 	query_memregion_info,
 	query_hwconfig_blob,
 	query_geometry_subslices,
+	query_gem_create_extensions,
 };
 
 int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index dba7c5a5b25e..46be28ee3795 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2963,6 +2963,7 @@ struct drm_i915_query_item {
 	 *  - %DRM_I915_QUERY_MEMORY_REGIONS (see struct drm_i915_query_memory_regions)
 	 *  - %DRM_I915_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob uAPI`)
 	 *  - %DRM_I915_QUERY_GEOMETRY_SUBSLICES (see struct drm_i915_query_topology_info)
+	 *  - %DRM_I915_QUERY_GEM_CREATE_EXTENSIONS (u64 array of known DRM_I915_GEM_CREATE_EXT extensions)
 	 */
 	__u64 query_id;
 #define DRM_I915_QUERY_TOPOLOGY_INFO		1
@@ -2971,6 +2972,7 @@ struct drm_i915_query_item {
 #define DRM_I915_QUERY_MEMORY_REGIONS		4
 #define DRM_I915_QUERY_HWCONFIG_BLOB		5
 #define DRM_I915_QUERY_GEOMETRY_SUBSLICES	6
+#define DRM_I915_QUERY_GEM_CREATE_EXTENSIONS	7
 /* Must be kept compact -- no holes and well documented */
 
 	/**
-- 
2.39.2

