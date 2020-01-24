Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4625D148523
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 13:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3156FA51;
	Fri, 24 Jan 2020 12:28:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A446FA4A;
 Fri, 24 Jan 2020 12:28:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 04:28:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="251274676"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.10.247])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jan 2020 04:28:37 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 24 Jan 2020 12:28:33 +0000
Message-Id: <20200124122833.26392-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124121759.22308-1-tvrtko.ursulin@linux.intel.com>
References: <20200124121759.22308-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 1/2] lib/i915: Add helper for copying
 engine maps from one context to another
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

We also need to support copying across file descriptors.

v2:
 * Copy over even if src is unset. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
---
 lib/i915/gem_context.c | 30 ++++++++++++++++++++++++++++++
 lib/i915/gem_context.h |  2 ++
 2 files changed, 32 insertions(+)

diff --git a/lib/i915/gem_context.c b/lib/i915/gem_context.c
index 0b6a554dfe27..50dfee3d1030 100644
--- a/lib/i915/gem_context.c
+++ b/lib/i915/gem_context.c
@@ -462,3 +462,33 @@ bool gem_context_has_engine(int fd, uint32_t ctx, uint64_t engine)
 
 	return __gem_execbuf(fd, &execbuf) == -ENOENT;
 }
+
+/**
+ * gem_context_copy_engines:
+ * @src_fd: open i915 drm file descriptor where @src context belongs to
+ * @src: source engine map context id
+ * @dst_fd: open i915 drm file descriptor where @dst context belongs to
+ * @dst: destination engine map context id
+ *
+ * Special purpose helper for copying engine map from one context to another.
+ *
+ * In can be called regardless of whether the kernel supports context engine
+ * maps and is a no-op if not supported.
+ */
+void
+gem_context_copy_engines(int src_fd, uint32_t src, int dst_fd, uint32_t dst)
+{
+	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, I915_EXEC_RING_MASK + 1);
+	struct drm_i915_gem_context_param param = {
+		.param = I915_CONTEXT_PARAM_ENGINES,
+		.ctx_id = src,
+		.size = sizeof(engines),
+		.value = to_user_pointer(&engines),
+	};
+
+	if (__gem_context_get_param(src_fd, &param))
+		return;
+
+	param.ctx_id = dst;
+	gem_context_set_param(dst_fd, &param);
+}
diff --git a/lib/i915/gem_context.h b/lib/i915/gem_context.h
index cf2ba33fee8f..15e5db281b79 100644
--- a/lib/i915/gem_context.h
+++ b/lib/i915/gem_context.h
@@ -42,6 +42,8 @@ uint32_t gem_context_clone(int i915,
 			   uint32_t src, unsigned int share,
 			   unsigned int flags);
 uint32_t gem_context_clone_with_engines(int i915, uint32_t src);
+void gem_context_copy_engines(int src_fd, uint32_t src,
+			      int dst_fd, uint32_t dst);
 
 uint32_t gem_queue_create(int i915);
 uint32_t gem_queue_clone_with_engines(int i915, uint32_t src);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
