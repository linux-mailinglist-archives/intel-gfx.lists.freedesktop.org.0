Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fERpByhDUWrzBQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B880873D930
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=pxtzov0Z;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5878110F96B;
	Fri, 10 Jul 2026 19:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6623D10F95A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 19:08:05 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id
 5b1f17b1804b1-493f60208a5so7599875e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 12:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783710484; x=1784315284; darn=lists.freedesktop.org;
 h=content-transfer-encoding:reply-to:content-type:mime-version
 :references:in-reply-to:message-id:date:subject:to:from:from:to:cc
 :subject:date:message-id:reply-to:content-type;
 bh=rWRVx5cqynIKqmvSejZ3eRuOAy78R+hQWWjbI7ofHbI=;
 b=pxtzov0Zpmh3MW/OtE4uFg0kRwq9pVFVnQBJFFcFHJkISwaQ1hHIxaGHTy2tk/DFLK
 HXEv2k/Zw1yXra88viX0dl45gUBT4qWt9B9fIWZ9Y0IABuT1mgM+wWSn5Wi+yc7EZgdj
 L86UdHtpJOkVO4U3KhK2L1y6oaXtQMMaK6z+JbRtsXJyVZ97Msw97P9uaHsEEaKvy/0y
 UKdD0gL3BTD4GaZY5BJOV9O73U2Yc//fc+jsNZbSLsVBhFF0i9O8lJlP1UcQabKz83jX
 djpfkgp7nTp/JJORmRwgXdSjrtPxYnLQkbGdaXGOopOcA26bqMCdDwmMij79I6mh6EvP
 JWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783710484; x=1784315284;
 h=content-transfer-encoding:reply-to:content-type:mime-version
 :references:in-reply-to:message-id:date:subject:to:from:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=rWRVx5cqynIKqmvSejZ3eRuOAy78R+hQWWjbI7ofHbI=;
 b=gqOvWBe1+9mY3xzpCrKI9PT19C9uIq8fwKu6RJcjR0ydw+TJ39z+kUSQPyhZ0BuE37
 WMTs7M9FVSFJ8IaAHQQfcWRxdwZTIxyHvPDznK3gwxs4Mt8pDlCeqRjwoIPuiSvwZI+l
 ZIgIjGTTK6mRUz7wrXQHkIPW8Wef2oNk5OBUnKZf4nqP3qe7MnrT3LIx+EzYz5uEP2iv
 7RJZs4vcB2DeppfNLq/hrN5qO/Gf9AdIxEjX7S+geA5ozLEa4hozFWRPkEFun3hlGSL8
 qi6iDbJF1/EU7IfMmC3sGfs41Ko/S6dP3dI/93Ct1u0mSC4duejSYGpu++gAF25aVpSr
 LeHw==
X-Forwarded-Encrypted: i=1;
 AHgh+RocI82Oval7Lh2HL4dg61/TUe7+Zvp0sTSVV7oQnRHXqRPuzi/pWA6BomaqBkkc79SbLU0af/KLkYw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxStgExhRouAnilTjjlnuiLwq7UU4Gc4NH2K4GuEKXumCmuaQ+7
 AJaXMIg7AkQnPVh35X1tWyY+KYXJ/HSP2xOiMwLAlNRs06FrWn2Dtd7a
X-Gm-Gg: AfdE7ckY9d3iQjjcwvSSOq0JbZAv9+RVZfph7nXt3SnYuznt7dXrz87jC9zZbaTbvWA
 Ca1rTk15o+EYywjAQKtJNAwY1ohuy8ybQ131WnWa2zbpxmcTR6jUQvIR8/v8eOhvMQbx75lL/AZ
 wetErvEKMVD/cFsIbDcO/6BSZRmuzwTtTKaWm6MN8eBW0UqvD0JZO3NxhRvvmqsn+n4kKgMlV1/
 t8+ulbOqatTbPL59GBtfr3vPg0w6ScBf/SXXgq2jF/buEylRdYS1I378DDgJV0YDn7tTQqHoXtr
 MN53vFt+h3UrOjPn8uskTUjxLcJOLCkXfHrAftazjfeZjO99AzRSSHffYQ6s5bN5AxqYt4h+R4o
 VdIRvio3YUf4HnK581C9qXFQkzC4MIXkf+YEMvERYEqDsebgh9/Fr9HW/LUsnIYVsSkFEXn6Aee
 8ZP6xKtv4XsSDgjfa5BizovFeBn8thJxCNhmab
X-Received: by 2002:a05:600c:3489:b0:490:d38c:7836 with SMTP id
 5b1f17b1804b1-493f87d66a1mr1327995e9.3.1783710483628; 
 Fri, 10 Jul 2026 12:08:03 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:154f:ec00:aa08:de24:db33:4496])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493f567eadfsm55000755e9.6.2026.07.10.12.08.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jul 2026 12:08:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com, dakr@kernel.org, ecourtney@nvidia.com,
 simona@ffwll.ch, matthew.brost@intel.com, nat@pixelcluster.dev,
 airlied@gmail.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH 09/12] drm/ttm: nuke buffer refcounting
Date: Fri, 10 Jul 2026 20:52:49 +0200
Message-ID: <20260710190752.2355-10-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260710190752.2355-1-christian.koenig@amd.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Reply-To: christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:thomas.hellstrom@linux.intel.com,m:dakr@kernel.org,m:ecourtney@nvidia.com,m:simona@ffwll.ch,m:matthew.brost@intel.com,m:nat@pixelcluster.dev,m:airlied@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,nvidia.com,ffwll.ch,intel.com,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[christian.koenig@amd.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:replyto,amd.com:mid,amd.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B880873D930

TTMs buffer reference is finally useles.

WIP, add more commit message

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c |   2 +-
 drivers/gpu/drm/ttm/ttm_bo.c            | 122 ++++++++++--------------
 drivers/gpu/drm/ttm/ttm_bo_internal.h   |  60 ------------
 drivers/gpu/drm/ttm/ttm_bo_util.c       |  11 +--
 drivers/gpu/drm/ttm/ttm_device.c        |   1 -
 drivers/gpu/drm/xe/xe_bo.c              |   2 +-
 include/drm/ttm/ttm_bo.h                |  22 +++--
 7 files changed, 69 insertions(+), 151 deletions(-)
 delete mode 100644 drivers/gpu/drm/ttm/ttm_bo_internal.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index df3fcc2b1248e..caccac6c7bce7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj)
 	 * Don't manipulate the TTM LRUs while in TTM bo destruction.
 	 * We're called through i915_ttm_delete_mem_notify().
 	 */
-	if (!kref_read(&bo->kref))
+	if (ttm_bo_is_deleted(bo))
 		return;
 
 	/*
diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 6af247dba53e5..3dac10f199322 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -50,7 +50,6 @@
 #include <linux/dma-resv.h>
 
 #include "ttm_module.h"
-#include "ttm_bo_internal.h"
 
 static void ttm_bo_mem_space_debug(struct ttm_buffer_object *bo,
 					struct ttm_placement *placement)
@@ -243,92 +242,76 @@ static void ttm_bo_delayed_delete(struct work_struct *work)
 	dma_resv_lock(bo->base.resv, NULL);
 	ttm_bo_cleanup_memtype_use(bo);
 	dma_resv_unlock(bo->base.resv);
-	ttm_bo_put(bo);
+
+	atomic_dec(&ttm_glob.bo_count);
+	bo->destroy(bo);
 }
 
-static void ttm_bo_release(struct kref *kref)
+void ttm_bo_fini(struct ttm_buffer_object *bo)
 {
-	struct ttm_buffer_object *bo =
-	    container_of(kref, struct ttm_buffer_object, kref);
 	struct ttm_device *bdev = bo->bdev;
 	int ret;
 
 	WARN_ON_ONCE(bo->pin_count);
 	WARN_ON_ONCE(bo->bulk_move);
 
-	if (!bo->deleted) {
-		ret = ttm_bo_individualize_resv(bo);
-		if (ret) {
-			/* Last resort, if we fail to allocate memory for the
-			 * fences block for the BO to become idle
-			 */
-			dma_resv_wait_timeout(bo->base.resv,
-					      DMA_RESV_USAGE_BOOKKEEP, false,
-					      30 * HZ);
-		}
-
-		if (bdev->funcs->release_notify)
-			bdev->funcs->release_notify(bo);
+	ret = ttm_bo_individualize_resv(bo);
+	if (ret) {
+		/* Last resort, if we fail to allocate memory for the
+		 * fences block for the BO to become idle
+		 */
+		dma_resv_wait_timeout(bo->base.resv,
+				      DMA_RESV_USAGE_BOOKKEEP, false,
+				      30 * HZ);
+	}
 
-		drm_vma_offset_remove(bdev->vma_manager, &bo->base.vma_node);
-		ttm_mem_io_free(bdev, bo->resource);
+	if (bdev->funcs->release_notify)
+		bdev->funcs->release_notify(bo);
 
-		if (!dma_resv_test_signaled(&bo->base._resv,
-					    DMA_RESV_USAGE_BOOKKEEP) ||
-		    (want_init_on_free() && (bo->ttm != NULL)) ||
-		    bo->type == ttm_bo_type_sg ||
-		    !dma_resv_trylock(bo->base.resv)) {
-			/* The BO is not idle, resurrect it for delayed destroy */
-			ttm_bo_flush_all_fences(bo);
-			bo->deleted = true;
+	drm_vma_offset_remove(bdev->vma_manager, &bo->base.vma_node);
+	ttm_mem_io_free(bdev, bo->resource);
 
-			spin_lock(&bdev->lru_lock);
+	if (!dma_resv_test_signaled(&bo->base._resv,
+				    DMA_RESV_USAGE_BOOKKEEP) ||
+	    (want_init_on_free() && (bo->ttm != NULL)) ||
+	    bo->type == ttm_bo_type_sg ||
+	    !dma_resv_trylock(bo->base.resv)) {
 
-			/*
-			 * Make pinned bos immediately available to
-			 * shrinkers, now that they are queued for
-			 * destruction.
-			 *
-			 * FIXME: QXL is triggering this. Can be removed when the
-			 * driver is fixed.
-			 */
-			if (bo->pin_count) {
-				bo->pin_count = 0;
-				ttm_resource_move_to_lru_tail(bo->resource);
-			}
+		/* The BO is not idle, queue it for delayed destroy */
+		ttm_bo_flush_all_fences(bo);
 
-			kref_init(&bo->kref);
+		/*
+		 * Make pinned bos immediately available to
+		 * shrinkers, now that they are queued for
+		 * destruction.
+		 *
+		 * FIXME: QXL is triggering this. Can be removed when the
+		 * driver is fixed.
+		 */
+		if (bo->pin_count) {
+			spin_lock(&bdev->lru_lock);
+			bo->pin_count = 0;
+			ttm_resource_move_to_lru_tail(bo->resource);
 			spin_unlock(&bdev->lru_lock);
-
-			INIT_WORK(&bo->delayed_delete, ttm_bo_delayed_delete);
-
-			/* Schedule the worker on the closest NUMA node. This
-			 * improves performance since system memory might be
-			 * cleared on free and that is best done on a CPU core
-			 * close to it.
-			 */
-			queue_work_node(bdev->pool.nid, bdev->wq, &bo->delayed_delete);
-			return;
 		}
 
-		ttm_bo_cleanup_memtype_use(bo);
-		dma_resv_unlock(bo->base.resv);
+		INIT_WORK(&bo->delayed_delete, ttm_bo_delayed_delete);
+
+		/* Schedule the worker on the closest NUMA node. This
+		 * improves performance since system memory might be
+		 * cleared on free and that is best done on a CPU core
+		 * close to it.
+		 */
+		queue_work_node(bdev->pool.nid, bdev->wq, &bo->delayed_delete);
+		return;
 	}
 
+	ttm_bo_cleanup_memtype_use(bo);
+	dma_resv_unlock(bo->base.resv);
+
 	atomic_dec(&ttm_glob.bo_count);
 	bo->destroy(bo);
 }
-
-/* TODO: remove! */
-void ttm_bo_put(struct ttm_buffer_object *bo)
-{
-	kref_put(&bo->kref, ttm_bo_release);
-}
-
-void ttm_bo_fini(struct ttm_buffer_object *bo)
-{
-	ttm_bo_put(bo);
-}
 EXPORT_SYMBOL(ttm_bo_fini);
 
 static int ttm_bo_bounce_temp_buffer(struct ttm_buffer_object *bo,
@@ -362,7 +345,7 @@ int ttm_bo_evict(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx)
 	struct ttm_place hop;
 	int ret = 0;
 
-	if (bo->deleted) {
+	if (ttm_bo_is_deleted(bo)) {
 		ret = ttm_bo_wait_ctx(bo, ctx);
 		if (!ret)
 			ttm_bo_cleanup_memtype_use(bo);
@@ -569,7 +552,6 @@ static int ttm_bo_evict_alloc(struct ttm_device *bdev,
 void ttm_bo_pin(struct ttm_buffer_object *bo)
 {
 	dma_resv_assert_held(bo->base.resv);
-	WARN_ON_ONCE(!kref_read(&bo->kref));
 	spin_lock(&bo->bdev->lru_lock);
 	if (bo->resource)
 		ttm_resource_del_bulk_move(bo->resource, bo);
@@ -588,7 +570,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
 void ttm_bo_unpin(struct ttm_buffer_object *bo)
 {
 	dma_resv_assert_held(bo->base.resv);
-	WARN_ON_ONCE(!kref_read(&bo->kref));
 	if (WARN_ON_ONCE(!bo->pin_count))
 		return;
 
@@ -879,7 +860,6 @@ int ttm_bo_init_reserved(struct ttm_device *bdev, struct ttm_buffer_object *bo,
 {
 	int ret;
 
-	kref_init(&bo->kref);
 	bo->bdev = bdev;
 	bo->type = type;
 	bo->page_alignment = alignment;
@@ -920,7 +900,7 @@ int ttm_bo_init_reserved(struct ttm_device *bdev, struct ttm_buffer_object *bo,
 		dma_resv_unlock(bo->base.resv);
 
 err_put:
-	ttm_bo_put(bo);
+	ttm_bo_fini(bo);
 	return ret;
 }
 EXPORT_SYMBOL(ttm_bo_init_reserved);
@@ -1066,7 +1046,7 @@ s64 ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
 		goto out;
 	}
 
-	if (bo->deleted) {
+	if (ttm_bo_is_deleted(bo)) {
 		pgoff_t num_pages = tt->num_pages;
 
 		ret = ttm_bo_wait_ctx(bo, ctx);
diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h b/drivers/gpu/drm/ttm/ttm_bo_internal.h
deleted file mode 100644
index e0d48eac74b03..0000000000000
--- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
+++ /dev/null
@@ -1,60 +0,0 @@
-/*
- * Copyright 2018 Advanced Micro Devices, Inc.
- *
- * Permission is hereby granted, free of charge, to any person obtaining a
- * copy of this software and associated documentation files (the "Software"),
- * to deal in the Software without restriction, including without limitation
- * the rights to use, copy, modify, merge, publish, distribute, sublicense,
- * and/or sell copies of the Software, and to permit persons to whom the
- * Software is furnished to do so, subject to the following conditions:
- *
- * The above copyright notice and this permission notice shall be included in
- * all copies or substantial portions of the Software.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
- * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
- * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, DAMAGES OR
- * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
- * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- * OTHER DEALINGS IN THE SOFTWARE.
- *
- *
- */
-
-#ifndef _TTM_BO_INTERNAL_H_
-#define _TTM_BO_INTERNAL_H_
-
-#include <drm/ttm/ttm_bo.h>
-
-/**
- * ttm_bo_get - reference a struct ttm_buffer_object
- *
- * @bo: The buffer object.
- */
-static inline void ttm_bo_get(struct ttm_buffer_object *bo)
-{
-	kref_get(&bo->kref);
-}
-
-/**
- * ttm_bo_get_unless_zero - reference a struct ttm_buffer_object unless
- * its refcount has already reached zero.
- * @bo: The buffer object.
- *
- * Used to reference a TTM buffer object in lookups where the object is removed
- * from the lookup structure during the destructor and for RCU lookups.
- *
- * Returns: @bo if the referencing was successful, NULL otherwise.
- */
-static inline __must_check struct ttm_buffer_object *
-ttm_bo_get_unless_zero(struct ttm_buffer_object *bo)
-{
-	if (!kref_get_unless_zero(&bo->kref))
-		return NULL;
-	return bo;
-}
-
-void ttm_bo_put(struct ttm_buffer_object *bo);
-
-#endif
diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
index 1f7361604b552..1bdd69643c313 100644
--- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -39,8 +39,6 @@
 
 #include <drm/drm_cache.h>
 
-#include "ttm_bo_internal.h"
-
 struct ttm_transfer_obj {
 	struct ttm_buffer_object base;
 	struct ttm_buffer_object *bo;
@@ -208,7 +206,7 @@ static void ttm_transfered_destroy(struct ttm_buffer_object *bo)
 
 	fbo = container_of(bo, struct ttm_transfer_obj, base);
 	dma_resv_put(&fbo->base.base._resv);
-	ttm_bo_put(fbo->bo);
+	drm_gem_object_put(&fbo->bo->base);
 	kfree(fbo);
 }
 
@@ -247,7 +245,6 @@ static int ttm_buffer_object_transfer(struct ttm_buffer_object *bo,
 	atomic_inc(&ttm_glob.bo_count);
 	drm_vma_node_reset(&fbo->base.base.vma_node);
 
-	kref_init(&fbo->base.kref);
 	fbo->base.destroy = &ttm_transfered_destroy;
 	fbo->base.pin_count = 0;
 	if (bo->type != ttm_bo_type_sg)
@@ -273,7 +270,7 @@ static int ttm_buffer_object_transfer(struct ttm_buffer_object *bo,
 		fbo->base.bulk_move = NULL;
 	}
 
-	ttm_bo_get(bo);
+	drm_gem_object_get(&bo->base);
 	fbo->bo = bo;
 
 	ttm_bo_move_to_lru_tail_unlocked(&fbo->base);
@@ -632,7 +629,7 @@ static int ttm_bo_move_to_ghost(struct ttm_buffer_object *bo,
 		bo->ttm = NULL;
 
 	dma_resv_unlock(&ghost_obj->base._resv);
-	ttm_bo_put(ghost_obj);
+	ttm_bo_fini(ghost_obj);
 	return 0;
 }
 
@@ -809,7 +806,7 @@ int ttm_bo_pipeline_gutting(struct ttm_buffer_object *bo)
 	}
 
 	dma_resv_unlock(&ghost->base._resv);
-	ttm_bo_put(ghost);
+	ttm_bo_fini(ghost);
 	bo->ttm = ttm;
 	return 0;
 
diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_device.c
index be6fc42772f9d..d0a0f414bed0c 100644
--- a/drivers/gpu/drm/ttm/ttm_device.c
+++ b/drivers/gpu/drm/ttm/ttm_device.c
@@ -38,7 +38,6 @@
 #include <drm/ttm/ttm_placement.h>
 
 #include "ttm_module.h"
-#include "ttm_bo_internal.h"
 
 /*
  * ttm_global_mutex - protecting the global state
diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index 85e6d9a0f575b..c62c7bd3b4605 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -1651,7 +1651,7 @@ static bool xe_ttm_bo_lock_in_destructor(struct ttm_buffer_object *ttm_bo)
 	struct xe_device *xe = ttm_to_xe_device(ttm_bo->bdev);
 	bool locked;
 
-	xe_assert(xe, !kref_read(&ttm_bo->kref));
+	xe_assert(xe, ttm_bo_is_deleted(ttm_bo));
 
 	/*
 	 * We can typically only race with TTM trylocking under the
diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
index 026ab044b0202..e1221e3be7bda 100644
--- a/include/drm/ttm/ttm_bo.h
+++ b/include/drm/ttm/ttm_bo.h
@@ -33,7 +33,6 @@
 
 #include <drm/drm_gem.h>
 
-#include <linux/kref.h>
 #include <linux/list.h>
 
 #include "ttm_device.h"
@@ -78,11 +77,8 @@ enum ttm_bo_type {
  * @type: The bo type.
  * @page_alignment: Page alignment.
  * @destroy: Destruction function. If NULL, kfree is used.
- * @kref: Reference count of this buffer object. When this refcount reaches
- * zero, the object is destroyed or put on the delayed delete list.
  * @resource: structure describing current placement.
  * @ttm: TTM structure holding system pages.
- * @deleted: True if the object is only a zombie and already deleted.
  * @bulk_move: The bulk move object.
  * @priority: Priority for LRU, BOs with lower priority are evicted first.
  * @pin_count: Pin count.
@@ -109,17 +105,11 @@ struct ttm_buffer_object {
 	uint32_t page_alignment;
 	void (*destroy) (struct ttm_buffer_object *);
 
-	/*
-	* Members not needing protection.
-	*/
-	struct kref kref;
-
 	/*
 	 * Members protected by the bo::resv::reserved lock.
 	 */
 	struct ttm_resource *resource;
 	struct ttm_tt *ttm;
-	bool deleted;
 	struct ttm_lru_bulk_move *bulk_move;
 	unsigned priority;
 	unsigned pin_count;
@@ -378,6 +368,18 @@ static inline void ttm_bo_unreserve(struct ttm_buffer_object *bo)
 	dma_resv_unlock(bo->base.resv);
 }
 
+/**
+ * ttm_bo_is_deleted - test if buffer is already deleted
+ * @bo: the struct ttm_buffer_object to test
+ *
+ * Returns true if the buffer is already deleted and only waiting for
+ * destruction.
+ */
+static inline bool ttm_bo_is_deleted(struct ttm_buffer_object *bo)
+{
+	return !kref_read(&bo->base.refcount);
+}
+
 /**
  * ttm_kmap_obj_virtual
  *
-- 
2.43.0

