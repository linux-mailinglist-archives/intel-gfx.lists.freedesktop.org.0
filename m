Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C7F4AE2C7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 22:05:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19AD10E32B;
	Tue,  8 Feb 2022 21:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D945110E24B;
 Tue,  8 Feb 2022 21:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644354310; x=1675890310;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Zu7Eblxg822KDxynxPZ7A8kRiJYw05Yj3cMvp94maQ=;
 b=d8HbUBwfMKmP/tZLQJDP3METQBkTSFJaO0rfQVY4vPcjCqedYG2vBMx2
 Tt6bji7Uhywpu5O/wYuQC3O/3qczsJOSuiHjLilJVHz9u3ZdmOCt2Xlag
 wIcQqlsXaY+FR5yRCLz1Sixkhy5z9XGbePogKFiyYLdg1oEauqfSpCGjh
 ekeVlNvw/BNQSBU8iFzWLoT2BP4vyUBUXCXH98woDhNS0dOqlUzOsetko
 eumy1NR8ReJ5WcrDKsIZ6wOJjmm++n+EAteLqsiBCO4v7F+QbNyboLc6R
 c6f6c9g+gYMdSPBhUpc8zaQEch/ZWeYIjLm5oaeHhDtzZndVQNoc7K+dW A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="246637927"
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="246637927"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 13:05:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="536699573"
Received: from fpaillet-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.65.117])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 13:05:09 -0800
From: Jordan Justen <jordan.l.justen@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue,  8 Feb 2022 13:05:01 -0800
Message-Id: <20220208210503.869491-3-jordan.l.justen@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220208210503.869491-1-jordan.l.justen@intel.com>
References: <20220208210503.869491-1-jordan.l.justen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915/uapi: Add query for hwconfig
 blob
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
Cc: Kenneth Graunke <kenneth.w.graunke@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Slawomir Milczarek <slawomir.milczarek@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Rodrigo Vivi <rodrigo.vivi@intel.com>

The DRM_I915_QUERY_HWCONFIG_BLOB query item returns a blob of data
which it receives from the GuC software. This blob provides some
useful data about the hardware for drivers.

Although the blob is not fully documented at this time, the basic
format is an array of u32 values. The array is a simple and flexible
KLV (Key/Length/Value) formatted table. For example, it could be just:
enum device_attr { ATTR_SOME_VALUE = 0, ATTR_SOME_MASK = 1, };

  static const u32 hwconfig[] = {
      ATTR_SOME_VALUE,
      1,             // Value Length in DWords
      8,             // Value

      ATTR_SOME_MASK,
      3,
      0x00FFFFFFFF, 0xFFFFFFFF, 0xFF000000,
  };

The attribute ids and meaning of the values will be documented in the
Programmer Reference Manuals when released.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Kenneth Graunke <kenneth.w.graunke@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Slawomir Milczarek <slawomir.milczarek@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
Acked-by: Jordan Justen <jordan.l.justen@intel.com>
Tested-by: Jordan Justen <jordan.l.justen@intel.com>
---
 drivers/gpu/drm/i915/i915_query.c | 23 +++++++++++++++++++++++
 include/uapi/drm/i915_drm.h       |  1 +
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 2dfbc22857a3..195524e9a369 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -479,12 +479,35 @@ static int query_memregion_info(struct drm_i915_private *i915,
 	return total_length;
 }
 
+static int query_hwconfig_blob(struct drm_i915_private *i915,
+			       struct drm_i915_query_item *query_item)
+{
+	struct intel_gt *gt = to_gt(i915);
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
+	query_hwconfig_blob,
 };
 
 int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 914ebd9290e5..069d2fadfbd9 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2685,6 +2685,7 @@ struct drm_i915_query_item {
 #define DRM_I915_QUERY_ENGINE_INFO	2
 #define DRM_I915_QUERY_PERF_CONFIG      3
 #define DRM_I915_QUERY_MEMORY_REGIONS   4
+#define DRM_I915_QUERY_HWCONFIG_BLOB	5
 /* Must be kept compact -- no holes and well documented */
 
 	/**
-- 
2.34.1

