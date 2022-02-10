Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB62B4B0D62
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 13:17:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A011310E851;
	Thu, 10 Feb 2022 12:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D522A10E858;
 Thu, 10 Feb 2022 12:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644495415; x=1676031415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cjCJVuuCkoU3zNRpy+3l4jsvcwd2Oxu68MhMnc3Ph9s=;
 b=HHII/6s+1h0WAos267zAaI4KUYnZSvSqlIRDQYhDA6aFHAXkF6UYM/wV
 l1EN0ak6TC/0Fz0Fmr8N33c6HuUm+vq08uw8JZ4AsRnLmMytxC+JyCLWJ
 JIQVvpPGN7sgid+1drkqDiOINvOzkMuHb7VA/m88BB5V2rUM6mWphLZMt
 LnwmBELJxtpLzB/7wu7dbH78ulIA9XwqwfH8sZpFPV0LPBajQ9sDNmmRB
 38/ESFndn5q8xSaaTQzSer3l5QRyDZJfEoaHgKL/PgHzE75N9Z8dD22/x
 PC+QPs+rnR5FccEBYOkmrpwHQHoTu+wopZFAh3FgGo96SfVWIc9vOImg+ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="247060987"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="247060987"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="485664996"
Received: from paulbarr-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.11.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:54 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:13:12 +0000
Message-Id: <20220210121313.701004-15-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210121313.701004-1-matthew.auld@intel.com>
References: <20220210121313.701004-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/15] drm/i915/uapi: forbid ALLOC_GPU_ONLY
 for error capture
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On platforms where there might be non-mappable LMEM, force userspace to
mark the buffers with the correct hint. When dumping the BO contents
during capture we need CPU access. Note this only applies to buffers
that can be placed in LMEM, and also doesn't impact DG1.

v2(Reported-by: kernel test robot <lkp@intel.com>):
  - Also update the function signature on !CONFIG_DRM_I915_CAPTURE_ERROR
    builds.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 498b458fd784..017f928cbcaf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1965,7 +1965,7 @@ eb_find_first_request_added(struct i915_execbuffer *eb)
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
 /* Stage with GFP_KERNEL allocations before we enter the signaling critical path */
-static void eb_capture_stage(struct i915_execbuffer *eb)
+static int eb_capture_stage(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
 	unsigned int i = count, j;
@@ -1978,6 +1978,9 @@ static void eb_capture_stage(struct i915_execbuffer *eb)
 		if (!(flags & EXEC_OBJECT_CAPTURE))
 			continue;
 
+		if (vma->obj->flags & I915_BO_ALLOC_GPU_ONLY)
+			return -EINVAL;
+
 		for_each_batch_create_order(eb, j) {
 			struct i915_capture_list *capture;
 
@@ -1990,6 +1993,8 @@ static void eb_capture_stage(struct i915_execbuffer *eb)
 			eb->capture_lists[j] = capture;
 		}
 	}
+
+	return 0;
 }
 
 /* Commit once we're in the critical path */
@@ -2031,7 +2036,7 @@ static void eb_capture_list_clear(struct i915_execbuffer *eb)
 
 #else
 
-static void eb_capture_stage(struct i915_execbuffer *eb)
+static int eb_capture_stage(struct i915_execbuffer *eb)
 {
 }
 
@@ -3418,7 +3423,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	}
 
 	ww_acquire_done(&eb.ww.ctx);
-	eb_capture_stage(&eb);
+	err = eb_capture_stage(&eb);
+	if (err)
+		goto err_vma;
 
 	out_fence = eb_requests_create(&eb, in_fence, out_fence_fd);
 	if (IS_ERR(out_fence)) {
-- 
2.34.1

