Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CE63DF785
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 00:13:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F20A6E950;
	Tue,  3 Aug 2021 22:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF556E23F;
 Tue,  3 Aug 2021 22:11:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="193393483"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="193393483"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 15:11:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="511512736"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 15:11:55 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue,  3 Aug 2021 15:29:33 -0700
Message-Id: <20210803222943.27686-37-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210803222943.27686-1-matthew.brost@intel.com>
References: <20210803222943.27686-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 36/46] drm/i915: Allow callers of
 i915_gem_do_execbuffer to override the batch index
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

Allow specifying the batch directly over what is inferred from passed in
execbuf flags.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1f1f477e46b4..707e12725f74 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3146,6 +3146,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		       struct drm_file *file,
 		       struct drm_i915_gem_execbuffer2 *args,
 		       struct drm_i915_gem_exec_object2 *exec,
+		       int batch_index,
 		       struct dma_fence *in_fence,
 		       struct dma_fence *exec_fence,
 		       struct dma_fence **out_fence)
@@ -3202,6 +3203,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 	GEM_BUG_ON(!eb.lut_size);
 
+	if (batch_index >= 0)
+		eb.batch_index = batch_index;
+
 	err = eb_select_context(&eb);
 	if (unlikely(err))
 		goto err_destroy;
@@ -3429,7 +3433,7 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 		goto err_copy;
 	}
 
-	err = i915_gem_do_execbuffer(dev, file, args, exec2_list, in_fence,
+	err = i915_gem_do_execbuffer(dev, file, args, exec2_list, -1, in_fence,
 				     exec_fence, out_fence_p);
 
 	/*
-- 
2.28.0

