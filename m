Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 563A81DB46D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 15:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B7F6E830;
	Wed, 20 May 2020 13:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A76CB6E160
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 13:00:46 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 15:00:17 +0200
Message-Id: <20200520130030.1014994-10-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520130030.1014994-1-maarten.lankhorst@linux.intel.com>
References: <20200520130030.1014994-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/23] drm/i915: Nuke arguments to eb_pin_engine
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
index f6c087a20221..8a524f504d7d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2680,11 +2680,10 @@ static void eb_unpin_engine(struct i915_execbuffer *eb)
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
@@ -2699,7 +2698,7 @@ eb_select_legacy_ring(struct i915_execbuffer *eb,
 		unsigned int bsd_idx = args->flags & I915_EXEC_BSD_MASK;
 
 		if (bsd_idx == I915_EXEC_BSD_DEFAULT) {
-			bsd_idx = gen8_dispatch_bsd_engine(i915, file);
+			bsd_idx = gen8_dispatch_bsd_engine(i915, eb->file);
 		} else if (bsd_idx >= I915_EXEC_BSD_RING1 &&
 			   bsd_idx <= I915_EXEC_BSD_RING2) {
 			bsd_idx >>= I915_EXEC_BSD_SHIFT;
@@ -2724,18 +2723,16 @@ eb_select_legacy_ring(struct i915_execbuffer *eb,
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
@@ -3001,7 +2998,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_destroy;
 
-	err = eb_pin_engine(&eb, file, args);
+	err = eb_pin_engine(&eb);
 	if (unlikely(err))
 		goto err_context;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
