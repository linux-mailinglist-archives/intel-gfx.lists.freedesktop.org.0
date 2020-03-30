Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9035197DF3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC556E3BB;
	Mon, 30 Mar 2020 14:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FDEA6E3B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 14:09:32 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 16:09:25 +0200
Message-Id: <20200330140925.3972034-22-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200330140925.3972034-1-maarten.lankhorst@linux.intel.com>
References: <20200330140925.3972034-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/22] drm/i915: Ensure we hold the pin mutex
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_renderstate.c | 2 +-
 drivers/gpu/drm/i915/i915_vma.c             | 9 ++++++++-
 drivers/gpu/drm/i915/i915_vma.h             | 1 +
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index c39d73142950..df42ba06711a 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -207,7 +207,7 @@ int intel_renderstate_init(struct intel_renderstate *so,
 	if (err)
 		goto err_context;
 
-	err = i915_vma_pin(so->vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
+	err = i915_vma_pin_ww(so->vma, &so->ww, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
 		goto err_context;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index e3d82be503dc..e22f287ba382 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -892,6 +892,8 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 #ifdef CONFIG_PROVE_LOCKING
 	if (debug_locks && lockdep_is_held(&vma->vm->i915->drm.struct_mutex))
 		WARN_ON(!ww);
+	if (debug_locks && ww && vma->resv)
+		assert_vma_held(vma);
 #endif
 
 	BUILD_BUG_ON(PIN_GLOBAL != I915_VMA_GLOBAL_BIND);
@@ -1032,8 +1034,13 @@ int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 
 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 
+	WARN_ON(!ww && vma->resv && dma_resv_held(vma->resv));
+
 	do {
-		err = i915_vma_pin_ww(vma, ww, 0, align, flags | PIN_GLOBAL);
+		if (ww)
+			err = i915_vma_pin_ww(vma, ww, 0, align, flags | PIN_GLOBAL);
+		else
+			err = i915_vma_pin(vma, 0, align, flags | PIN_GLOBAL);
 		if (err != -ENOSPC) {
 			if (!err) {
 				err = i915_vma_wait_for_bind(vma);
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index da577729931f..b730f86e54f4 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -242,6 +242,7 @@ i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 static inline int __must_check
 i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 {
+	WARN_ON_ONCE(vma->resv && dma_resv_held(vma->resv));
 	return i915_vma_pin_ww(vma, NULL, size, alignment, flags);
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
