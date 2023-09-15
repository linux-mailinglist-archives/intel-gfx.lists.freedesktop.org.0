Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 631A37A18F4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 10:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5807A10E5D8;
	Fri, 15 Sep 2023 08:34:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2C510E5CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 08:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694766875; x=1726302875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ng2pi+cT7mq61aARraAmC/Tma6GcMTx5cxS/HOVib2s=;
 b=KFoqUDwtLq3NJ7KHN3Mhf6HjqpJrJICbg/9V7NAVwD44KUeXCZR5PMJ5
 YSMoLbjU/B9W5ULIMwCeIBKfXMg+WhMw4oo0ajYgczd8I0H1lrjPkJoRW
 9lncoos4QXR51qZAuh0kPer9BUMXstTXzzaZCVZRJGlFADA1BhvDuulGR
 utMeitxQYUZQoSX9MdVJho3Io96UJmCN8vSTr5ylZcDISmQTAxmqkk/8U
 9RetA6QhsGqEg+WC7ko/sV0vzApHdmHFNpGUICjVlh2vlIMUvGsx22JUi
 BG10yJB/abRmNECu2PAdGKohpRnq9D5BeCG+t2EHDWeCb/WZwhqe7hIVa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="381925579"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="381925579"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:34:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="694647741"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="694647741"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:34:32 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:34:08 +0200
Message-ID: <20230915083412.4572-4-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230915083412.4572-1-nirmoy.das@intel.com>
References: <20230915083412.4572-1-nirmoy.das@intel.com>
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

