Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D06147CD5
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 975087206C;
	Fri, 24 Jan 2020 09:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8A26FFFD
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:55:26 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 10:55:18 +0100
Message-Id: <20200124095521.2006632-11-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
References: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/13] drm/i915: Nuke arguments to eb_pin_engine
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Those arguments are already set as eb.file and eb.args, so kill off
the extra arguments. This will allow us to move eb_pin_engine() to
after we reserved all BO's.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 183125e7bbda..f8f1a84e2c00 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2394,11 +2394,10 @@ static void eb_unpin_engine(struct i915_execbuffer *eb)
 }
 
 static unsigned int
-eb_select_legacy_ring(struct i915_execbuffer *eb,
-		      struct drm_file *file,
-		      struct drm_i915_gem_execbuffer2 *args)
+eb_select_legacy_ring(struct i915_execbuffer *eb)
 {
 	struct drm_i915_private *i915 = eb->i915;
+	struct drm_i915_gem_execbuffer2 *args = eb->args;
 	unsigned int user_ring_id = args->flags & I915_EXEC_RING_MASK;
 
 	if (user_ring_id != I915_EXEC_BSD &&
@@ -2412,7 +2411,7 @@ eb_select_legacy_ring(struct i915_execbuffer *eb,
 		unsigned int bsd_idx = args->flags & I915_EXEC_BSD_MASK;
 
 		if (bsd_idx == I915_EXEC_BSD_DEFAULT) {
-			bsd_idx = gen8_dispatch_bsd_engine(i915, file);
+			bsd_idx = gen8_dispatch_bsd_engine(i915, eb->file);
 		} else if (bsd_idx >= I915_EXEC_BSD_RING1 &&
 			   bsd_idx <= I915_EXEC_BSD_RING2) {
 			bsd_idx >>= I915_EXEC_BSD_SHIFT;
@@ -2435,18 +2434,16 @@ eb_select_legacy_ring(struct i915_execbuffer *eb,
 }
 
 static int
-eb_pin_engine(struct i915_execbuffer *eb,
-	      struct drm_file *file,
-	      struct drm_i915_gem_execbuffer2 *args)
+eb_pin_engine(struct i915_execbuffer *eb)
 {
 	struct intel_context *ce;
 	unsigned int idx;
 	int err;
 
 	if (i915_gem_context_user_engines(eb->gem_context))
-		idx = args->flags & I915_EXEC_RING_MASK;
+		idx = eb->args->flags & I915_EXEC_RING_MASK;
 	else
-		idx = eb_select_legacy_ring(eb, file, args);
+		idx = eb_select_legacy_ring(eb);
 
 	ce = i915_gem_context_get_engine(eb->gem_context, idx);
 	if (IS_ERR(ce))
@@ -2679,7 +2676,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_destroy;
 
-	err = eb_pin_engine(&eb, file, args);
+	err = eb_pin_engine(&eb);
 	if (unlikely(err))
 		goto err_context;
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
