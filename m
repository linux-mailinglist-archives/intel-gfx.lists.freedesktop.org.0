Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8507A1CDD34
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 16:30:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E53E6E48C;
	Mon, 11 May 2020 14:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF1BD6E49A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 14:29:49 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 16:29:38 +0200
Message-Id: <20200511142938.1041006-23-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511142938.1041006-1-maarten.lankhorst@linux.intel.com>
References: <20200511142938.1041006-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/23] drm/i915: Ensure we hold the pin mutex
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
index e35e17810ac8..2f8bb8c44f90 100644
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
index 164e23e0fc11..837706d28cc5 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -869,6 +869,8 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 #ifdef CONFIG_PROVE_LOCKING
 	if (debug_locks && lockdep_is_held(&vma->vm->i915->drm.struct_mutex))
 		WARN_ON(!ww);
+	if (debug_locks && ww && vma->resv)
+		assert_vma_held(vma);
 #endif
 
 	BUILD_BUG_ON(PIN_GLOBAL != I915_VMA_GLOBAL_BIND);
@@ -1009,8 +1011,13 @@ int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 
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
index 2e3779a8a437..d937ce950481 100644
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
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
