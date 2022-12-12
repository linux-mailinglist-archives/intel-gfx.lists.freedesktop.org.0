Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9037F64AB6F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 00:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9667510E2E7;
	Mon, 12 Dec 2022 23:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9364610E2AE;
 Mon, 12 Dec 2022 23:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670886937; x=1702422937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EAK+5hwzY0wvRP38xByRdKBSasfEWDRGmSbRSdfZRQM=;
 b=bxobFOcOT53GjxcX0jqi7jmc/LYNBvX87YbGn4RFlC/AL+Vdwc0oZ2md
 l9y+HgWL3F8ew+kE3UsMnuklyfgKvlOK0z/GfmFn4bhLVqJn1iBQUkse/
 vuzilL4TJNqxyOlrXHlo0soGUKmBQiKtdqx85xwppH1mQcdUW5mf8bvp8
 vz0TwwnEhpNcOCmqRf5qY2Ff02hrUICgbNkbBZPfTA1b9HnnAzd80ERy3
 XRXz/EqU/wButwAOQCsLNm6HR1ylaitOwMQiL6foRtByK1+xvDa9V091Y
 SvYcjEbOyB1sXiH2HTrpryk9Img+6K/J3i5Qs87kyiiw0NRofonz1aamC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="380196393"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="380196393"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 15:15:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679090353"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="679090353"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 15:15:36 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 12 Dec 2022 15:15:19 -0800
Message-Id: <20221212231527.2384-16-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20221212231527.2384-1-niranjana.vishwanathapura@intel.com>
References: <20221212231527.2384-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 15/23] drm/i915/vm_bind: Expose
 i915_request_await_bind()
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 matthew.auld@intel.com, daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename __i915_request_await_bind() as i915_request_await_bind()
and make it non-static as it will be used in execbuf3 ioctl path.

v2: add documentation

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c |  8 +-------
 drivers/gpu/drm/i915/i915_vma.h | 16 ++++++++++++++++
 2 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 7013b2936565..af3eb6ce68b0 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1923,18 +1923,12 @@ void i915_vma_revoke_mmap(struct i915_vma *vma)
 		list_del(&vma->obj->userfault_link);
 }
 
-static int
-__i915_request_await_bind(struct i915_request *rq, struct i915_vma *vma)
-{
-	return __i915_request_await_exclusive(rq, &vma->active);
-}
-
 static int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
 {
 	int err;
 
 	/* Wait for the vma to be bound before we start! */
-	err = __i915_request_await_bind(rq, vma);
+	err = i915_request_await_bind(rq, vma);
 	if (err)
 		return err;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 1f25e45a6325..d6c05227fb04 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -55,6 +55,22 @@ void i915_vma_unpin_and_release(struct i915_vma **p_vma, unsigned int flags);
 #define __EXEC_OBJECT_NO_RESERVE BIT(31)
 #define __EXEC_OBJECT_NO_REQUEST_AWAIT BIT(30)
 
+/**
+ * i915_request_await_bind() - Setup request to wait for a vma bind completion
+ * @rq: the request which should wait
+ * @vma: vma whose binding @rq should wait to complete
+ *
+ * Setup the request @rq to asynchronously wait for @vma bind to complete
+ * before starting execution.
+ *
+ * Returns 0 on success, error code on failure.
+ */
+static inline int
+i915_request_await_bind(struct i915_request *rq, struct i915_vma *vma)
+{
+	return __i915_request_await_exclusive(rq, &vma->active);
+}
+
 int __must_check _i915_vma_move_to_active(struct i915_vma *vma,
 					  struct i915_request *rq,
 					  struct dma_fence *fence,
-- 
2.21.0.rc0.32.g243a4c7e27

