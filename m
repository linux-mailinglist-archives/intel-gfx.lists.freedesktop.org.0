Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 748D7281378
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DA966E975;
	Fri,  2 Oct 2020 12:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F596E95D
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:48 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:59:04 +0200
Message-Id: <20201002125939.50817-27-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 26/61] drm/i915: Make __engine_unpark()
 compatible with ww locking.
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

Take the ww lock around engine_unpark. Because of the
many many places where rpm is used, I chose the safest option
and used a trylock to opportunistically take this lock for
__engine_unpark.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index f7b2e07e2229..1ab9597a5c70 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -33,7 +33,8 @@ static int __engine_unpark(struct intel_wakeref *wf)
 		GEM_BUG_ON(test_bit(CONTEXT_VALID_BIT, &ce->flags));
 
 		/* First poison the image to verify we never fully trust it */
-		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) && ce->state) {
+		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) && ce->state &&
+		    i915_gem_object_trylock(ce->state->obj)) {
 			struct drm_i915_gem_object *obj = ce->state->obj;
 			int type = i915_coherent_map_type(engine->i915);
 			void *map;
@@ -44,6 +45,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
 				i915_gem_object_flush_map(obj);
 				i915_gem_object_unpin_map(obj);
 			}
+			i915_gem_object_unlock(obj);
 		}
 
 		ce->ops->reset(ce);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
