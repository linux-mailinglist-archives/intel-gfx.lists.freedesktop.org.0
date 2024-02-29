Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB0286CA83
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 14:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49EDD10E1A0;
	Thu, 29 Feb 2024 13:42:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mWKA2jBY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B57CB10E1A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 13:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709214178; x=1740750178;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EVO+ZXQFHZeQDQng0nTYsb/HgnW4/RNkM8oIJLIH4RU=;
 b=mWKA2jBYqC77n5IvBQIjWbSDsTCeaH5Ys+bH+0IzXqGEvYvQe88XM1Q0
 c5ZTjFvvIITR1IPaISHRGN+l5wzOVuNfN1PwqNgcfahDHc6Br9G6nao+U
 mSaQ081t+dycifqozOkHBqfzhSG4/un1MXp+x9RMBdgjou0lWtQ9tllfi
 msCxNGgR/5qL5rN0muHsJZ1As1q5h/iJAu8dt82WNNTy6UvNZWS3M/wTe
 9AOprNjylaoWVcFPlhxyFIb441CmC+xLg3cAUVvD9qfcadVT7Nb3wId6r
 GEkT0rP5p1q2QyFVQk6MZxee/wIuy/5lpcspaslqofygKIaecoZNHOmIK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="6631041"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="6631041"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 05:42:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="12512172"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 05:42:56 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nirmoy Das <nirmoy.das@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH] drm/i915: Add missing doc for drm_i915_reset_stats
Date: Thu, 29 Feb 2024 14:29:18 +0100
Message-ID: <20240229132918.10205-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
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

Add missing doc for struct drm_i915_reset_stats.

Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 include/uapi/drm/i915_drm.h | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 2ee338860b7e..1279a6b2bece 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2623,19 +2623,29 @@ struct drm_i915_reg_read {
  *
  */
 
+/*
+ * struct drm_i915_reset_stats - Return global reset and other context stats
+ *
+ * Driver keeps few stats for each contexts and also global reset count.
+ * This struct can be used to query those stats.
+ */
 struct drm_i915_reset_stats {
+	/** @ctx_id: ID of the requested context */
 	__u32 ctx_id;
+
+	/** @flags: MBZ */
 	__u32 flags;
 
-	/* All resets since boot/module reload, for all contexts */
+	/** @reset_count: All resets since boot/module reload, for all contexts */
 	__u32 reset_count;
 
-	/* Number of batches lost when active in GPU, for this context */
+	/** @batch_active: Number of batches lost when active in GPU, for this context */
 	__u32 batch_active;
 
-	/* Number of batches lost pending for execution, for this context */
+	/** @batch_pending: Number of batches lost pending for execution, for this context */
 	__u32 batch_pending;
 
+	/** @pad: MBZ */
 	__u32 pad;
 };
 
-- 
2.42.0

