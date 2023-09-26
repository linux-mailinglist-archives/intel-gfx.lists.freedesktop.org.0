Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC737AE832
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 10:38:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B49810E37C;
	Tue, 26 Sep 2023 08:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035C610E37B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 08:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695717479; x=1727253479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w3+iFPMtTnj+JslV91VR/Zfon1S9JtUOk5KfXGcZuUQ=;
 b=ceUFMFXNAw8U4Apar+jGYyZgzoWpJ4LAsxAKq33WA6kkCrrmbb49IGob
 sVVrEE1THx18LwYZTLqVDiySJhP5/ORqGSDU+JBy01MCf8D5IT01Bui02
 gzW3h/yN8IjxollNxhNMHPrcmkho5fJo11LSUOw/NstKa+PF+d9oVPobn
 a7kNq01TZwAKZ7oKpEJNWFnDfm+lH/FJIqWeyhDGKHHQHFcUiQe/lrDpb
 7L+GIsZAemphey27v5D79L4ioQ3uNy8cSUSeIfcSUheqWTGNyepcycJnM
 OcJ8cPuXXng1Z/Ww5ezslwIJSPejfURwDRKbCo6h2XsgZowOJq8yielaP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="381419220"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="381419220"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:37:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="1079623518"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="1079623518"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:37:57 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 10:37:38 +0200
Message-ID: <20230926083742.14740-4-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230926083742.14740-1-nirmoy.das@intel.com>
References: <20230926083742.14740-1-nirmoy.das@intel.com>
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
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
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

