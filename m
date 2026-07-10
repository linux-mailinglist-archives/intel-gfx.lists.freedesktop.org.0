Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x6x9HhpDUWrXBQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CBA73D8CB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=G7Wwir5K;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 429DE10F93F;
	Fri, 10 Jul 2026 19:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E3210E22A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 19:07:59 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-493e497643fso7991245e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 12:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783710478; x=1784315278; darn=lists.freedesktop.org;
 h=content-transfer-encoding:reply-to:content-type:mime-version
 :references:in-reply-to:message-id:date:subject:to:from:from:to:cc
 :subject:date:message-id:reply-to:content-type;
 bh=uHZls/c3u18t+teDeH8BRqkPKNSdAEF6EYbxY9YBzrs=;
 b=G7Wwir5K0N+MwHr2Mt4qLhOMGZKDZCupRdpjvqFaMca2H1+IbYgVC2PGLUEjxs3I2m
 Vh9Unvl8NveBXuQR+ubmquu+AP1gRPAElHFCYtk3wKG6loPf2Cc0+x07UVcL4cx/bXpJ
 n01HLBxWkuOsxQjIRT8sudb/mqf1uPrg6hsccY7Dyellvqrgo9Bsmbkj5ZLrdkN9vk3J
 QQuoVYFz21bgp4Ej9Qqv+EL07adThKtjHooGbCA8kf8ZcMkcWz/YmUv5xGjcZkrWjoxG
 2y8bzHu23dVU3BqGhbRdS7HB0FolbUBjTwkQf1k3go3Roruxo/LqhVl6m3YjNNJ0whfI
 eohw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783710478; x=1784315278;
 h=content-transfer-encoding:reply-to:content-type:mime-version
 :references:in-reply-to:message-id:date:subject:to:from:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=uHZls/c3u18t+teDeH8BRqkPKNSdAEF6EYbxY9YBzrs=;
 b=XkIHl+GRGeJDwYzyICJFqBGbxP8GLwzk4O2yAS2c90W4d/jyQOjdxtB7X7S+Kj2MWq
 7huIQDnLZ63kKRkFo2MSAglPEAMjr9L4LKenJ1phYz54viQYKG2yOqIo/QJFEP9UXg+C
 jpWluQ3+v6pRKIl1fMhNZ1YpIvbzsgQNfwcXVBcr8I3JYcgdC31u83mXjI7ReAGFYpXP
 8jV9dcuPRnxePJMqvEpjUtP/OplfssfV3PG8YVL98c4zeJMJg9Sidz3Jv8l+Zl0hrlP7
 XLLa07KRMIiYxSOSDY/kFXP/rqFnq7Rw0kvTE3wx8ZPH4iLXKw6mfnFOZZiVyqZk0gY8
 cYpA==
X-Forwarded-Encrypted: i=1;
 AHgh+RqY5n1D6F0wh0h8JOUrtGepCNlmijl8dnlvuq5liPPSy6hBF7zz5sq6UIh1tLfIeQiBcddhxl16Lhg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzgPmAT8plg77vEfo/ARMSgVrXXv0lz6c6p/MxDTDKuHFdgiPym
 mALL+HruHTE0sicrSMb7kGLDuxf5nVvY12l22GieebFqAXQH/GxWN9Ie
X-Gm-Gg: AfdE7cnsnTUZVJdYpOklgtoGa3sr1ThZlDwgRxT3O2DL5GnsJSLtAczQ1ZnhvQR04rf
 mV/xMRfcst4eAenT/lWdHV4gMPpY9pLvtNG1husuXv6bZX91jl/XvJl6lGSdE9LSuT9st785foP
 b0pYH8yNeJFYy1KLRad8De9KM2QayqIE15p6T0++EqE0AhNgHnYAqnoIpJedgFVns0cSwclvcxH
 h45Cu5jin/9Ar6YdCqB/62MFAw+jEM06x6uz5rB+xVirGLBprEjK4TozVbNybtUqrq/VxiB+UpV
 Pa0yVWBN78am1fANAvubUC2MKJTvdYgPiMmMv15vSa5SKY9q3vWsZfEzdLllveudWB8JZGMJIAG
 qsbMLQ3M+BkviWw00jUIDy4qCs8vXju8HVZmy6md+XPlMmwh9J9YfxYfhq+zRnBuMepujtPC2Zm
 4nEmoUkXfJFsOp0/hGOa4GruVbAw==
X-Received: by 2002:a05:600c:4f8a:b0:493:f7c8:eae2 with SMTP id
 5b1f17b1804b1-493f87e6e9cmr1274015e9.15.1783710478048; 
 Fri, 10 Jul 2026 12:07:58 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:154f:ec00:aa08:de24:db33:4496])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493f567eadfsm55000755e9.6.2026.07.10.12.07.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jul 2026 12:07:57 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com, dakr@kernel.org, ecourtney@nvidia.com,
 simona@ffwll.ch, matthew.brost@intel.com, nat@pixelcluster.dev,
 airlied@gmail.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH 03/12] drm/gem: Add helper for drm_gem_object resv assignment
Date: Fri, 10 Jul 2026 20:52:43 +0200
Message-ID: <20260710190752.2355-4-christian.koenig@amd.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:replyto,amd.com:mid,amd.com:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21CBA73D8CB

Introduce drm_gem_object_set_resv() to safely assign reservation objects
to GEM objects with proper reference counting. This helper replaces all
direct assignments to drm_gem_object.resv throughout the DRM subsystem.

The function:
- Acquires a reference to the new resv via dma_resv_get()
- Assigns it to obj->resv
- Releases the old resv reference via dma_resv_put()

This ensures proper reference counting when sharing reservation objects
between GEM objects or when importing dma-bufs, preventing reference
leaks and use-after-free bugs.

Update all drivers to use the new helper:
- drm_prime: dma-buf import path
- drm_gem_shmem_helper: shmem prime import
- i915: dmabuf import
- msm: MSM_BO_NO_SHARE case
- panthor: exclusive_vm case
- virtio: dma-buf import
- xe: dummy object creation
- ttm: external resv assignment
- ttm/tests: test cases

Signed-off-by: Christian König <christian.koenig@amd.com>
Assisted-by: Claude:Sonnet 4
---
 drivers/gpu/drm/drm_gem.c                     | 31 ++++++++++++++++++-
 drivers/gpu/drm/drm_gem_shmem_helper.c        |  2 +-
 drivers/gpu/drm/drm_prime.c                   |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  2 +-
 drivers/gpu/drm/msm/msm_gem.c                 |  2 +-
 drivers/gpu/drm/panthor/panthor_gem.c         |  2 +-
 drivers/gpu/drm/ttm/tests/ttm_bo_test.c       |  2 +-
 drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c |  2 +-
 drivers/gpu/drm/ttm/ttm_bo.c                  |  7 ++---
 drivers/gpu/drm/virtio/virtgpu_prime.c        |  2 +-
 drivers/gpu/drm/xe/xe_dma_buf.c               |  2 +-
 include/drm/drm_gem.h                         |  2 ++
 12 files changed, 43 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 48176a11d5520..bbcbd25f014f0 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -230,7 +230,7 @@ void drm_gem_private_object_init(struct drm_device *dev,
 	mutex_init(&obj->gpuva.lock);
 	dma_resv_init(&obj->_resv);
 	if (!obj->resv)
-		obj->resv = &obj->_resv;
+		obj->resv = dma_resv_get(&obj->_resv);
 
 	drm_gem_gpuva_init(obj);
 
@@ -249,11 +249,40 @@ void drm_gem_private_object_fini(struct drm_gem_object *obj)
 {
 	WARN_ON(obj->dma_buf);
 
+	dma_resv_put(obj->resv);
 	dma_resv_put(&obj->_resv);
 	mutex_destroy(&obj->gpuva.lock);
 }
 EXPORT_SYMBOL(drm_gem_private_object_fini);
 
+/**
+ * drm_gem_object_set_resv - Set the reservation object for a GEM object
+ * @obj: GEM object
+ * @resv: reservation object to assign
+ *
+ * This function safely assigns a new reservation object to a GEM object.
+ * It releases the old reservation object reference (if any) and acquires
+ * a reference to the new one.
+ *
+ * This should be used when changing the reservation object of an already
+ * initialized GEM object, for example when importing a dma-buf or sharing
+ * a reservation object with another object.
+ *
+ * Returns:
+ * The new reservation object pointer for convenience.
+ */
+struct dma_resv *drm_gem_object_set_resv(struct drm_gem_object *obj,
+					  struct dma_resv *resv)
+{
+	struct dma_resv *old_resv = obj->resv;
+
+	obj->resv = dma_resv_get(resv);
+	dma_resv_put(old_resv);
+
+	return obj->resv;
+}
+EXPORT_SYMBOL(drm_gem_object_set_resv);
+
 static void drm_gem_object_handle_get(struct drm_gem_object *obj)
 {
 	struct drm_device *dev = obj->dev;
diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 22ec52e2ffb87..76a8d7f252e00 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -977,7 +977,7 @@ struct drm_gem_object *drm_gem_shmem_prime_import_no_map(struct drm_device *dev,
 	drm_dbg_prime(dev, "size = %zu\n", size);
 
 	shmem->base.import_attach = attach;
-	shmem->base.resv = dma_buf->resv;
+	drm_gem_object_set_resv(&shmem->base, dma_buf->resv);
 
 	return &shmem->base;
 
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 9b44c78cd77fc..6cfeca347faff 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -1006,7 +1006,7 @@ struct drm_gem_object *drm_gem_prime_import_dev(struct drm_device *dev,
 	}
 
 	obj->import_attach = attach;
-	obj->resv = dma_buf->resv;
+	drm_gem_object_set_resv(obj, dma_buf->resv);
 
 	return obj;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index b43d34c7d6419..c824606497d2e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -320,7 +320,7 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
 	i915_gem_object_init(obj, &i915_gem_object_dmabuf_ops, &lock_class,
 			     I915_BO_ALLOC_USER);
 	obj->base.import_attach = attach;
-	obj->base.resv = dma_buf->resv;
+	drm_gem_object_set_resv(&obj->base, dma_buf->resv);
 
 	/* We use GTT as shorthand for a coherent domain, one that is
 	 * neither in the GPU cache nor in the CPU cache, where all
diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
index efd3d3c9a4490..81ebb1e1094c3 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -1151,7 +1151,7 @@ int msm_gem_new_handle(struct drm_device *dev, struct drm_file *file,
 
 		drm_gem_object_get(r_obj);
 
-		obj->resv = r_obj->resv;
+		drm_gem_object_set_resv(obj, r_obj->resv);
 	}
 
 	ret = drm_gem_handle_create(file, obj, handle);
diff --git a/drivers/gpu/drm/panthor/panthor_gem.c b/drivers/gpu/drm/panthor/panthor_gem.c
index 9855df7381947..2de24f1b60184 100644
--- a/drivers/gpu/drm/panthor/panthor_gem.c
+++ b/drivers/gpu/drm/panthor/panthor_gem.c
@@ -1024,7 +1024,7 @@ panthor_gem_create(struct drm_device *dev, size_t size, uint32_t flags,
 	if (exclusive_vm) {
 		bo->exclusive_vm_root_gem = panthor_vm_root_gem(exclusive_vm);
 		drm_gem_object_get(bo->exclusive_vm_root_gem);
-		bo->base.resv = bo->exclusive_vm_root_gem->resv;
+		drm_gem_object_set_resv(&bo->base, bo->exclusive_vm_root_gem->resv);
 	}
 
 	panthor_gem_debugfs_set_usage_flags(bo, usage_flags);
diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_test.c b/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
index 49b0b48c6c2ac..3aff1c427cd1f 100644
--- a/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
+++ b/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
@@ -461,7 +461,7 @@ static void ttm_bo_fini_shared_resv(struct kunit *test)
 
 	bo = ttm_bo_kunit_init(test, test->priv, BO_SIZE, NULL);
 	bo->type = ttm_bo_type_device;
-	bo->base.resv = external_resv;
+	drm_gem_object_set_resv(&bo->base, external_resv);
 
 	ttm_bo_fini(bo);
 }
diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
index 5cfe8f3f80d75..1146cc9ae5224 100644
--- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
+++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
@@ -181,7 +181,7 @@ struct ttm_buffer_object *ttm_bo_kunit_init(struct kunit *test,
 	bo->base = gem_obj;
 
 	if (obj)
-		bo->base.resv = obj;
+		drm_gem_object_set_resv(&bo->base, obj);
 
 	err = drm_gem_object_init(devs->drm, &bo->base, size);
 	KUNIT_ASSERT_EQ(test, err, 0);
diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 3980f376e3ba4..8cf266da2bc61 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -209,7 +209,7 @@ static int ttm_bo_individualize_resv(struct ttm_buffer_object *bo)
 		 * the resv object while holding the lru_lock.
 		 */
 		spin_lock(&bo->bdev->lru_lock);
-		bo->base.resv = &bo->base._resv;
+		drm_gem_object_set_resv(&bo->base, &bo->base._resv);
 		spin_unlock(&bo->bdev->lru_lock);
 	}
 
@@ -942,10 +942,7 @@ int ttm_bo_init_reserved(struct ttm_device *bdev, struct ttm_buffer_object *bo,
 	bo->pin_count = 0;
 	bo->sg = sg;
 	bo->bulk_move = NULL;
-	if (resv)
-		bo->base.resv = resv;
-	else
-		bo->base.resv = &bo->base._resv;
+	drm_gem_object_set_resv(&bo->base, resv ?: &bo->base._resv);
 	atomic_inc(&ttm_glob.bo_count);
 
 	/*
diff --git a/drivers/gpu/drm/virtio/virtgpu_prime.c b/drivers/gpu/drm/virtio/virtgpu_prime.c
index 216c77cd0d21b..79964b4362439 100644
--- a/drivers/gpu/drm/virtio/virtgpu_prime.c
+++ b/drivers/gpu/drm/virtio/virtgpu_prime.c
@@ -361,7 +361,7 @@ struct drm_gem_object *virtgpu_gem_prime_import(struct drm_device *dev,
 	INIT_LIST_HEAD(&bo->restore_node);
 
 	obj = &bo->base.base;
-	obj->resv = buf->resv;
+	drm_gem_object_set_resv(obj, buf->resv);
 	obj->funcs = &virtgpu_gem_dma_buf_funcs;
 	drm_gem_private_object_init(dev, obj, buf->size);
 
diff --git a/drivers/gpu/drm/xe/xe_dma_buf.c b/drivers/gpu/drm/xe/xe_dma_buf.c
index 8a920e58245cd..33bebf85ac622 100644
--- a/drivers/gpu/drm/xe/xe_dma_buf.c
+++ b/drivers/gpu/drm/xe/xe_dma_buf.c
@@ -293,7 +293,7 @@ xe_dma_buf_create_obj(struct drm_device *dev, struct dma_buf *dma_buf)
 	if (!dummy_obj)
 		return ERR_PTR(-ENOMEM);
 
-	dummy_obj->resv = resv;
+	drm_gem_object_set_resv(dummy_obj, resv);
 	xe_validation_guard(&ctx, &xe->val, &exec, (struct xe_val_flags) {}, ret) {
 		ret = drm_exec_lock_obj(&exec, dummy_obj);
 		drm_exec_retry_on_contention(&exec);
diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
index 885244e375d32..09f5ec28218a0 100644
--- a/include/drm/drm_gem.h
+++ b/include/drm/drm_gem.h
@@ -529,6 +529,8 @@ int drm_gem_object_init(struct drm_device *dev,
 void drm_gem_private_object_init(struct drm_device *dev,
 				 struct drm_gem_object *obj, size_t size);
 void drm_gem_private_object_fini(struct drm_gem_object *obj);
+struct dma_resv *drm_gem_object_set_resv(struct drm_gem_object *obj,
+					  struct dma_resv *resv);
 void drm_gem_vm_open(struct vm_area_struct *vma);
 void drm_gem_vm_close(struct vm_area_struct *vma);
 int drm_gem_mmap_obj(struct drm_gem_object *obj, unsigned long obj_size,
-- 
2.43.0

