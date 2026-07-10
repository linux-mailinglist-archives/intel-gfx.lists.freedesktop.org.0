Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id utDKACFDUWrmBQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA2073D8F7
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Iw65ymGZ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1730010F955;
	Fri, 10 Jul 2026 19:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C6AC10F951
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 19:08:03 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-493f75f7172so4152565e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 12:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783710482; x=1784315282; darn=lists.freedesktop.org;
 h=content-transfer-encoding:reply-to:content-type:mime-version
 :references:in-reply-to:message-id:date:subject:to:from:from:to:cc
 :subject:date:message-id:reply-to:content-type;
 bh=HPmD3vMJoHO8CFqL7S7C4nD2ho35ackVcxiEqNgTWIk=;
 b=Iw65ymGZ0nr4pjqYS+zQ0QSKjdX9OvxcyT6J9Pk4s1d1AYVv+2+/vrthASVGHbisP8
 wzJksvPWoweX91B2ssMA96sFTDY0O0TjrRuU5wWMncboMm1eu8T/DIwkpMSHrpwV+tNV
 1X6yFQMHPhCg6juuO5gfyPKSzqI6u5LOubxIOnQ4lTglajsbkZSAMYdhj7AvrowM4T54
 6fncH3Omkb0oa6BBhHYkFV0PgLQyx8i9OD5Vj9BmuV2NteKKxnio9RqMreD1wOyV8YN5
 uarnclsjgpMzCJCU+IlMtzwlkpG+u6lz3D2nU9JuvFDeYONHAblipEmZbdIvS6Wfl08k
 p3FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783710482; x=1784315282;
 h=content-transfer-encoding:reply-to:content-type:mime-version
 :references:in-reply-to:message-id:date:subject:to:from:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=HPmD3vMJoHO8CFqL7S7C4nD2ho35ackVcxiEqNgTWIk=;
 b=j3oCJD6yUVK0LhgXIi13xY2B2pRr8gsY50YdkkMcg9B+5smBT800Zr7Zj5AEVFjrdn
 7HPL5d4JcgzsVHv+iYxaC8bP6InBuhyuNEWVFBDJjhY78HhuNGxu5djRyStcSEBz7yKl
 xEIqOccXDVM5vjAYVtak/eJLWHsRyL5uaTLHGvK6KuyCnHtftc6xdIJ+V5uBuJ69WIqr
 brw1f4JvAz6/n1xeWT/iTox2UNkWol7NVW2UqMU0t6TbndCnLe7rZqaIMU3xK72YXnZz
 Pzw3PYvnIA8tFx+3A8LuzEaM3iKrrpulRZ1LGiWgASWsf8kfve403+fsz/tlmJmR/pVh
 iyhw==
X-Forwarded-Encrypted: i=1;
 AHgh+RqpFzfcyWQ48sIQJ3pzTVowHvF5arsWefGi8c5H6On6vS/fXnTJW8GwRH1iae2ENB6PlGIi/5XBcFs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzl3PwTegCbTMwemdxMjv6bbsC2TLH8w+GUs/VUwUFYqLVRxt1I
 EAQFR2APMyePA190LjzFcV9xAatnZeExxhzBJzgPA1cmfi8eqUQ72PwY
X-Gm-Gg: AfdE7clAvfVdhLgK2FWALwyXZJo+v5dZaCrtWGh+KBhsvY8aSd1RvrcAxIFh6Vr2uQB
 yfCryqu+qEg/zMJaGnBzFB6yiuoCK/fgnILnXZx/AA8g55szZRiEIV5lOMya4lieMmXEYAdwKbX
 +3SHpzr1rvHiMSk5kjiv48UyBnvBsHXfYQOPHB/gs+86naINF2f2P2DFZMi4U98GNweXkVDa+My
 nD4xTdNxCrbt/sMwg+4/+HbZWtBakzKslUYCZxjwm7Bgk8rPtmGNM4WGt4JJze1ylvczFbssCvh
 +DV43qSCYVgib37tjsUyRWTXpUJV2baJrkFxCFRPirAArd7F385f1ZYwMyXBS4bWyShyG0BVXTq
 wX4jm9Cjwx4d4bWG45cycVOz6czxNFWkLmQsZRH13CCwPQfuo2igWM1dmc2jgig7gIRyOgSWbre
 gjMc1ebY2a1wvGPvrpXB7WUXHyDKCMsDVsg6XB
X-Received: by 2002:a05:600c:1f91:b0:493:e79e:daa6 with SMTP id
 5b1f17b1804b1-493f8826e69mr975965e9.33.1783710481767; 
 Fri, 10 Jul 2026 12:08:01 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:154f:ec00:aa08:de24:db33:4496])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493f567eadfsm55000755e9.6.2026.07.10.12.08.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jul 2026 12:08:01 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com, dakr@kernel.org, ecourtney@nvidia.com,
 simona@ffwll.ch, matthew.brost@intel.com, nat@pixelcluster.dev,
 airlied@gmail.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH 07/12] drm/ttm: use ttm_bo_lru_for_each_reserved_guarded in
 evict_all
Date: Fri, 10 Jul 2026 20:52:47 +0200
Message-ID: <20260710190752.2355-8-christian.koenig@amd.com>
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
X-Rspamd-Queue-Id: 9DA2073D8F7

Use the for_each loop to evict all BOs of an resource manager as well.

Greately simplifying the handling and finally allows us to
remove ttm_bo_evict_first().

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/ttm/ttm_bo.c       | 51 +-----------------------------
 drivers/gpu/drm/ttm/ttm_resource.c | 22 +++++++++----
 include/drm/ttm/ttm_bo.h           |  1 +
 3 files changed, 17 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index e28e11c06ef48..6af247dba53e5 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -355,8 +355,7 @@ static int ttm_bo_bounce_temp_buffer(struct ttm_buffer_object *bo,
 	return 0;
 }
 
-static int ttm_bo_evict(struct ttm_buffer_object *bo,
-			struct ttm_operation_ctx *ctx)
+int ttm_bo_evict(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx)
 {
 	struct ttm_resource *evict_mem;
 	struct ttm_placement placement;
@@ -441,54 +440,6 @@ bool ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
 }
 EXPORT_SYMBOL(ttm_bo_eviction_valuable);
 
-/**
- * ttm_bo_evict_first() - Evict the first bo on the manager's LRU list.
- * @bdev: The ttm device.
- * @man: The manager whose bo to evict.
- * @ctx: The TTM operation ctx governing the eviction.
- *
- * Return: 0 if successful or the resource disappeared. Negative error code on error.
- */
-int ttm_bo_evict_first(struct ttm_device *bdev, struct ttm_resource_manager *man,
-		       struct ttm_operation_ctx *ctx)
-{
-	struct ttm_resource_cursor cursor;
-	struct ttm_buffer_object *bo;
-	struct ttm_resource *res;
-	unsigned int mem_type;
-	int ret = 0;
-
-	spin_lock(&bdev->lru_lock);
-	ttm_resource_cursor_init(&cursor, man);
-	res = ttm_resource_manager_first(&cursor);
-	ttm_resource_cursor_fini(&cursor);
-	if (!res) {
-		ret = -ENOENT;
-		goto out_no_ref;
-	}
-	bo = res->bo;
-	if (!ttm_bo_get_unless_zero(bo))
-		goto out_no_ref;
-	mem_type = res->mem_type;
-	spin_unlock(&bdev->lru_lock);
-	ret = ttm_bo_reserve(bo, ctx->interruptible, ctx->no_wait_gpu, NULL);
-	if (ret)
-		goto out_no_lock;
-	if (!bo->resource || bo->resource->mem_type != mem_type)
-		goto out_bo_moved;
-
-	ret = ttm_bo_evict(bo, ctx);
-out_bo_moved:
-	dma_resv_unlock(bo->base.resv);
-out_no_lock:
-	ttm_bo_put(bo);
-	return ret;
-
-out_no_ref:
-	spin_unlock(&bdev->lru_lock);
-	return ret;
-}
-
 /**
  * struct ttm_bo_evict_walk - Parameters for the evict walk.
  */
diff --git a/drivers/gpu/drm/ttm/ttm_resource.c b/drivers/gpu/drm/ttm/ttm_resource.c
index 4a765b25472c3..e686fc2849d99 100644
--- a/drivers/gpu/drm/ttm/ttm_resource.c
+++ b/drivers/gpu/drm/ttm/ttm_resource.c
@@ -561,17 +561,25 @@ EXPORT_SYMBOL(ttm_resource_manager_init);
 int ttm_resource_manager_evict_all(struct ttm_device *bdev,
 				   struct ttm_resource_manager *man)
 {
-	struct ttm_operation_ctx ctx = { };
+	struct ttm_bo_lru_cursor cursor;
+	struct ttm_operation_ctx ctx = {
+		.interruptible = false,
+		.no_wait_gpu = false,
+	};
+	struct ttm_lru_walk_arg arg = {
+		.ctx = &ctx,
+		.trylock_only = true
+	};
+	struct ttm_buffer_object *bo;
 	struct dma_fence *fence;
 	int ret, i;
 
-	do {
-		ret = ttm_bo_evict_first(bdev, man, &ctx);
+	ttm_bo_lru_for_each_reserved_guarded(&cursor, man, &arg, bo) {
+		ret = ttm_bo_evict(bo, &ctx);
+		if (ret)
+			return ret;
 		cond_resched();
-	} while (!ret);
-
-	if (ret && ret != -ENOENT)
-		return ret;
+	}
 
 	ret = 0;
 
diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
index 33dfa61ba882a..026ab044b0202 100644
--- a/include/drm/ttm/ttm_bo.h
+++ b/include/drm/ttm/ttm_bo.h
@@ -404,6 +404,7 @@ int ttm_bo_validate(struct ttm_buffer_object *bo,
 void ttm_bo_fini(struct ttm_buffer_object *bo);
 void ttm_bo_set_bulk_move(struct ttm_buffer_object *bo,
 			  struct ttm_lru_bulk_move *bulk);
+int ttm_bo_evict(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx);
 bool ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
 			      const struct ttm_place *place);
 int ttm_bo_init_reserved(struct ttm_device *bdev, struct ttm_buffer_object *bo,
-- 
2.43.0

