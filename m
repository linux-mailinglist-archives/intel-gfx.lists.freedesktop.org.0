Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA884D6B4E
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Mar 2022 01:11:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61FD10E06A;
	Sat, 12 Mar 2022 00:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EF7010E059
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Mar 2022 00:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647043881; x=1678579881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xtGsIP2AVkeVC+UFlSeblIBntNN/RkvdMvgrW9vtVKw=;
 b=K4M9CNN8u/2V9cqkb85rKQBgp9rqEqFmVwXg4KqreYmWmD1LIspCc2ji
 GJs8IN3MK54qS5A5dUjv7lVBYaKzi5QVhUmlMEHx1dKmYoFb3/QbTkHGY
 lcCXBEXOusWi7asIsdJNIsSqv2WZCqpZYwiHm0rNvD/NxCwfI6r7+Dg4W
 P9CZDv969nNJGuJCitLfziCYUUr2mvPKsQhgb2YRKSdZfrX7M+888Cnr5
 IGm7Ao8SFy5grKIKq41fkVWStFOJG8KNhX3UHPtDMdxJWEWJfdH2wy/fD
 WYQEIbqHA7s+mFjEmoBZ5BQRchfvecJoLgYcIyETWd1kTCMuzhZvsbPh0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="316399853"
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="316399853"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 16:11:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="514681564"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 11 Mar 2022 16:11:20 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 16:13:36 -0800
Message-Id: <20220312001344.1314090-7-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220312001344.1314090-1-alan.previn.teres.alexis@intel.com>
References: <20220312001344.1314090-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 06/13] drm/i915/guc: Add GuC's error state
 capture output structures.
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add GuC's error capture output structures and definitions as how
they would appear in GuC log buffer's error capture subregion after
an error state capture G2H event notification.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
index 6c199433945d..8824c5eba355 100644
--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -55,6 +55,53 @@ struct __guc_mmio_reg_descr_group {
 	struct __guc_mmio_reg_descr *extlist; /* only used for steered registers */
 };
 
+/**
+ * struct guc_state_capture_header_t / struct guc_state_capture_t /
+ * guc_state_capture_group_header_t / guc_state_capture_group_t
+ *
+ * Prior to resetting engines that have hung or faulted, GuC microkernel
+ * reports the engine error-state (register values that was read) by
+ * logging them into the shared GuC log buffer using these hierarchy
+ * of structures.
+ */
+struct guc_state_capture_header_t {
+	u32 owner;
+#define CAP_HDR_CAPTURE_VFID GENMASK(7, 0)
+	u32 info;
+#define CAP_HDR_CAPTURE_TYPE GENMASK(3, 0) /* see enum guc_capture_type */
+#define CAP_HDR_ENGINE_CLASS GENMASK(7, 4) /* see GUC_MAX_ENGINE_CLASSES */
+#define CAP_HDR_ENGINE_INSTANCE GENMASK(11, 8)
+	u32 lrca; /* if type-instance, LRCA (address) that hung, else set to ~0 */
+	u32 guc_id; /* if type-instance, context index of hung context, else set to ~0 */
+	u32 num_mmios;
+#define CAP_HDR_NUM_MMIOS GENMASK(9, 0)
+} __packed;
+
+struct guc_state_capture_t {
+	struct guc_state_capture_header_t header;
+	struct guc_mmio_reg mmio_entries[0];
+} __packed;
+
+enum guc_capture_group_types {
+	GUC_STATE_CAPTURE_GROUP_TYPE_FULL,
+	GUC_STATE_CAPTURE_GROUP_TYPE_PARTIAL,
+	GUC_STATE_CAPTURE_GROUP_TYPE_MAX,
+};
+
+struct guc_state_capture_group_header_t {
+	u32 owner;
+#define CAP_GRP_HDR_CAPTURE_VFID GENMASK(7, 0)
+	u32 info;
+#define CAP_GRP_HDR_NUM_CAPTURES GENMASK(7, 0)
+#define CAP_GRP_HDR_CAPTURE_TYPE GENMASK(15, 8) /* guc_capture_group_types */
+} __packed;
+
+/* this is the top level structure where an error-capture dump starts */
+struct guc_state_capture_group_t {
+	struct guc_state_capture_group_header_t grp_header;
+	struct guc_state_capture_t capture_entries[0];
+} __packed;
+
 /**
  * struct __guc_capture_ads_cache
  *
-- 
2.25.1

