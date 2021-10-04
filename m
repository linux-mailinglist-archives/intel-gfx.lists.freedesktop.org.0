Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C42E4219AE
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 00:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B971898AA;
	Mon,  4 Oct 2021 22:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A8A6E221;
 Mon,  4 Oct 2021 22:11:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="248854266"
X-IronPort-AV: E=Sophos;i="5.85,347,1624345200"; d="scan'208";a="248854266"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 15:11:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,347,1624345200"; d="scan'208";a="487735468"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 15:11:30 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <john.c.harrison@intel.com>,
	<daniele.ceraolospurio@intel.com>
Date: Mon,  4 Oct 2021 15:06:17 -0700
Message-Id: <20211004220637.14746-7-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211004220637.14746-1-matthew.brost@intel.com>
References: <20211004220637.14746-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/26] drm/i915: Expose logical engine instance
 to user
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

Expose logical engine instance to user via query engine info IOCTL. This
is required for split-frame workloads as these needs to be placed on
engines in a logically contiguous order. The logical mapping can change
based on fusing. Rather than having user have knowledge of the fusing we
simply just expose the logical mapping with the existing query engine
info IOCTL.

IGT: https://patchwork.freedesktop.org/patch/445637/?series=92854&rev=1
media UMD: https://github.com/intel/media-driver/pull/1252

v2:
 (Daniel Vetter)
  - Add IGT link, placeholder for media UMD

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/i915_query.c | 2 ++
 include/uapi/drm/i915_drm.h       | 8 +++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 5e2b909827f4..51b368be0fc4 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -124,7 +124,9 @@ query_engine_info(struct drm_i915_private *i915,
 	for_each_uabi_engine(engine, i915) {
 		info.engine.engine_class = engine->uabi_class;
 		info.engine.engine_instance = engine->uabi_instance;
+		info.flags = I915_ENGINE_INFO_HAS_LOGICAL_INSTANCE;
 		info.capabilities = engine->uabi_capabilities;
+		info.logical_instance = ilog2(engine->logical_mask);
 
 		if (copy_to_user(info_ptr, &info, sizeof(info)))
 			return -EFAULT;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index bde5860b3686..b1248a67b4f8 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2726,14 +2726,20 @@ struct drm_i915_engine_info {
 
 	/** @flags: Engine flags. */
 	__u64 flags;
+#define I915_ENGINE_INFO_HAS_LOGICAL_INSTANCE		(1 << 0)
 
 	/** @capabilities: Capabilities of this engine. */
 	__u64 capabilities;
 #define I915_VIDEO_CLASS_CAPABILITY_HEVC		(1 << 0)
 #define I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC	(1 << 1)
 
+	/** @logical_instance: Logical instance of engine */
+	__u16 logical_instance;
+
 	/** @rsvd1: Reserved fields. */
-	__u64 rsvd1[4];
+	__u16 rsvd1[3];
+	/** @rsvd2: Reserved fields. */
+	__u64 rsvd2[3];
 };
 
 /**
-- 
2.32.0

