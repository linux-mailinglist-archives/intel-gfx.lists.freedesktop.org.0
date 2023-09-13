Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F5C79E8C7
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 15:11:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A3AB10E4B8;
	Wed, 13 Sep 2023 13:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF6410E0A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 13:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694610677; x=1726146677;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AhSYrekNhBr1QTX8y3j8C17Ob2xKdJlkd8gisF8kSQc=;
 b=c6T95Ak5mVM/PrzgiKGLXjFl2iYuRhliPxzJCn5M8D0dlzvDHM3heMbU
 6N9tA716eW+Shy+KbvPVENlCfalAcH/Yhqfqy2EFdswPbj/2WkBVhpCe3
 4xzcS4i5mAOxD/iv1ZQv1O9zzuPtfdqpN+4NFctIJjGBeCJJtVQkoMCXV
 qybg7SC4pP2M06LYeov4gSqh08c58w+ao+wFTDd6uF8BmzOjBQ40ukmMu
 JSZAbJ76j+Jg7bJESBOY317lrzPLcFc1HcC/7XqGiljq/gkGSOSqiPwU8
 3/wTPTy8OPVfq/7e3upkoAKbohyESAG38DbdwMlNZX+B5kWMPz8iwHigs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="382461120"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="382461120"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 06:09:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="747303654"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="747303654"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 06:09:49 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Sep 2023 15:09:31 +0200
Message-ID: <20230913130935.27707-5-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230913130935.27707-1-nirmoy.das@intel.com>
References: <20230913130935.27707-1-nirmoy.das@intel.com>
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

