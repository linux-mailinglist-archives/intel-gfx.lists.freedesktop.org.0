Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D7140EA14
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 20:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20F406E92C;
	Thu, 16 Sep 2021 18:40:24 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65CA96E8EC;
 Thu, 16 Sep 2021 18:40:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="286320737"
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="286320737"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 11:40:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="482809924"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 16 Sep 2021 11:40:13 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Cc: DRI-Devel@Lists.FreeDesktop.Org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Kenneth Graunke <kenneth.w.graunke@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Slawomir Milczarek <slawomir.milczarek@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Date: Thu, 16 Sep 2021 11:40:12 -0700
Message-Id: <20210916184012.2642295-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916184012.2642295-1-John.C.Harrison@Intel.com>
References: <20210916184012.2642295-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/uapi: Add query for hwconfig
 table
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

From: Rodrigo Vivi <rodrigo.vivi@intel.com>

GuC contains a consolidated table with a bunch of information about the
current device.

Previously, this information was spread and hardcoded to all the components
including GuC, i915 and various UMDs. The goal here is to consolidate
the data into GuC in a way that all interested components can grab the
very latest and synchronized information using a simple query.

As per most of the other queries, this one can be called twice.
Once with item.length=0 to determine the exact buffer size, then
allocate the user memory and call it again for to retrieve the
table data. For example:
  struct drm_i915_query_item item = {
    .query_id = DRM_I915_QUERY_HWCONCFIG_TABLE;
  };
  query.items_ptr = (int64_t) &item;
  query.num_items = 1;

  ioctl(fd, DRM_IOCTL_I915_QUERY, query, sizeof(query));

  if (item.length <= 0)
    return -ENOENT;

  data = malloc(item.length);
  item.data_ptr = (int64_t) &data;
  ioctl(fd, DRM_IOCTL_I915_QUERY, query, sizeof(query));

  // Parse the data as appropriate...

The returned array is a simple and flexible KLV (Key/Length/Value)
formatted table. For example, it could be just:
  enum device_attr {
     ATTR_SOME_VALUE = 0,
     ATTR_SOME_MASK  = 1,
  };

  static const u32 hwconfig[] = {
      ATTR_SOME_VALUE,
      1,             // Value Length in DWords
      8,             // Value

      ATTR_SOME_MASK,
      3,
      0x00FFFFFFFF, 0xFFFFFFFF, 0xFF000000,
  };

The attribute ids are defined in a hardware spec.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Kenneth Graunke <kenneth.w.graunke@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Slawomir Milczarek <slawomir.milczarek@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/i915_query.c | 23 +++++++++++++++++++++++
 include/uapi/drm/i915_drm.h       |  1 +
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 5e2b909827f4..96989a37453c 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -477,12 +477,35 @@ static int query_memregion_info(struct drm_i915_private *i915,
 	return total_length;
 }
 
+static int query_hwconfig_table(struct drm_i915_private *i915,
+				struct drm_i915_query_item *query_item)
+{
+	struct intel_gt *gt = &i915->gt;
+	struct intel_guc_hwconfig *hwconfig = &gt->uc.guc.hwconfig;
+
+	if (!hwconfig->size || !hwconfig->ptr)
+		return -ENODEV;
+
+	if (query_item->length == 0)
+		return hwconfig->size;
+
+	if (query_item->length < hwconfig->size)
+		return -EINVAL;
+
+	if (copy_to_user(u64_to_user_ptr(query_item->data_ptr),
+			 hwconfig->ptr, hwconfig->size))
+		return -EFAULT;
+
+	return hwconfig->size;
+}
+
 static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
 					struct drm_i915_query_item *query_item) = {
 	query_topology_info,
 	query_engine_info,
 	query_perf_config,
 	query_memregion_info,
+	query_hwconfig_table,
 };
 
 int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index bde5860b3686..a1281f35b190 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2499,6 +2499,7 @@ struct drm_i915_query_item {
 #define DRM_I915_QUERY_ENGINE_INFO	2
 #define DRM_I915_QUERY_PERF_CONFIG      3
 #define DRM_I915_QUERY_MEMORY_REGIONS   4
+#define DRM_I915_QUERY_HWCONFIG_TABLE   5
 /* Must be kept compact -- no holes and well documented */
 
 	/**
-- 
2.25.1

