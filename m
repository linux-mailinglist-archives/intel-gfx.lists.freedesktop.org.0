Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 469F87A5059
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 19:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C3E10E2C1;
	Mon, 18 Sep 2023 17:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A91B10E297
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 17:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695056630; x=1726592630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ng2pi+cT7mq61aARraAmC/Tma6GcMTx5cxS/HOVib2s=;
 b=ib9gX+2ak3QG24rurvRqNwKgoHb6/pQ9d+vEsy3w9WWv2aug3BrFZ0YE
 0E7H8mB81WMK1ZAXWaQGex5x12ENVq6MUtXKPdAT1/w3xdQF0L3YDnTbD
 daWFrXnrbNIZoo22rkEALOtgW49m5Y871UfqivLtFKSrymet5td0qUE4f
 jIxl7+quJ8LKu1PH+3Hswt5memEih421rCoDCqR4nLT4L5Ph25dVbRIqj
 OekVn9I1p6g+yVbix3fwb4LVV5QqHRTxH1sXzg6a1Bo4eOI7qlsduj4zg
 iHAUnZCfbvsZe0crjSTquGIbWBV+sWCU5hjHV553cKNwWK8PN+O3rgcB7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="378626097"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="378626097"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="816109795"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="816109795"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:11 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Sep 2023 19:02:53 +0200
Message-ID: <20230918170257.8586-4-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918170257.8586-1-nirmoy.das@intel.com>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Implement for_each_sgt_daddr_next
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement a way to iterate over sgt with pre-initialized
sgt_iter state.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.h     |  3 +++
 drivers/gpu/drm/i915/i915_scatterlist.h | 10 ++++++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 346ec8ec2edd..41e530d0a4e9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -171,6 +171,9 @@ struct intel_gt;
 #define for_each_sgt_daddr(__dp, __iter, __sgt) \
 	__for_each_sgt_daddr(__dp, __iter, __sgt, I915_GTT_PAGE_SIZE)
 
+#define for_each_sgt_daddr_next(__dp, __iter) \
+	__for_each_daddr_next(__dp, __iter, I915_GTT_PAGE_SIZE)
+
 struct i915_page_table {
 	struct drm_i915_gem_object *base;
 	union {
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
index 5a10c1a31183..6cf8a298849f 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.h
+++ b/drivers/gpu/drm/i915/i915_scatterlist.h
@@ -91,6 +91,16 @@ static inline struct scatterlist *__sg_next(struct scatterlist *sg)
 	     ((__dp) = (__iter).dma + (__iter).curr), (__iter).sgp;	\
 	     (((__iter).curr += (__step)) >= (__iter).max) ?		\
 	     (__iter) = __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)
+/**
+ * __for_each_daddr_next - iterates over the device addresses with pre-initialized iterator.
+ * @__dp:	Device address (output)
+ * @__iter:	'struct sgt_iter' (iterator state, external)
+ * @__step:	step size
+ */
+#define __for_each_daddr_next(__dp, __iter, __step)                  \
+	for (; ((__dp) = (__iter).dma + (__iter).curr), (__iter).sgp;   \
+	     (((__iter).curr += (__step)) >= (__iter).max) ?            \
+	     (__iter) = __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)
 
 /**
  * for_each_sgt_page - iterate over the pages of the given sg_table
-- 
2.41.0

