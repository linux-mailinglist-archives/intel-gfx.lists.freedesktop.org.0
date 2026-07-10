Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s/L2CiVDUWruBQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C70A473D91E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=mbakxcOC;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE09410F960;
	Fri, 10 Jul 2026 19:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4546F10F95A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 19:08:06 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id
 ffacd0b85a97d-47defd0c1c5so895886f8f.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 12:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783710485; x=1784315285; darn=lists.freedesktop.org;
 h=content-transfer-encoding:reply-to:content-type:mime-version
 :references:in-reply-to:message-id:date:subject:to:from:from:to:cc
 :subject:date:message-id:reply-to:content-type;
 bh=yBVaMK4L9gyjT+EoEO4978A5AdaqzcXPIfWDlt2pVck=;
 b=mbakxcOCk7i2neame4DhEP3io9L9dO0btd1e8r1DoUds3+rsUqWopP5TanobREO250
 m2N7mngPAFoXJTDtFVdRRwEkrtjpY3cSg/GmqMeUYkH42t4Topf3JKlYTa1DA5AlAh6B
 iAy1aCKwNz2nGPMAibkHDjapsfMyvg/NGS8SLUG5tN9jFWIBArJUgLQyBA/XLTiuMRir
 pm8un0V4ae+EhSKKnANVqiG7h8aNXW4iHmphiurG6rVhwUocgHr9AveudRx9k2Xg2xEQ
 kB799CEmW1viN+M9lGTtHOz5IGm1PqVWY26P33Cqz4F/7YNattuhN7nfmw+MfOyGm3pq
 L6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783710485; x=1784315285;
 h=content-transfer-encoding:reply-to:content-type:mime-version
 :references:in-reply-to:message-id:date:subject:to:from:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=yBVaMK4L9gyjT+EoEO4978A5AdaqzcXPIfWDlt2pVck=;
 b=bjvVHFr9s4dfoNssf2mYE3I95NzI0P45tj+qeTgdKJTzA0DnthpyC33Yd7d7R6P7v2
 ahu69DB8XovKYxV8Z8s52mgdUUTqGlFuCpYZKQtay54t8CxBAKkb7bxSQ2CxTfitLis5
 Mjd/pSej6g/24hPwVjgFhiKTG4X56LEDnxmi3atumaweo48Naz0R/pZBkxgzcOfGhn+l
 n7GkDDQ6QE0L7avz24dhut6uTe53k8iY3YclPd+SHZSWNwrg0SuHAueI+VgZHHL/1sJG
 w0w2AmO2OUcMLKCq1dzKhJ+/Y0Rswf10BCNmbFAUoAmZofIGkFOKbpII1GAqDVMzAY63
 KGXA==
X-Forwarded-Encrypted: i=1;
 AHgh+RpHLr7WOy+OTvv96t8ZGdRsa6n1ciichZjZD+2My8/ijUzsJW6DqJM07hukRfiX8LwWdsqOMYOm268=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx913jWKFSOReNooYAfUqu5AR77uN1ZLSC7KDQ8fk2BI5HdPiCe
 l7R1lgqRuCKXVqZ9l4oTIjw+A6/NrmgFVTcMdqpGceuo575XFsz+ITKt
X-Gm-Gg: AfdE7ckhzIK3HtsRp+MJVH5uGLpvgwPHfLHbIr5FifTHbmIHzIhOwDdFiuiRNKxjPgp
 UGIkRti3ib8tcPM44DWiJqUU2hNOkxLLq3ZWnIx/yJC7T67Tvh25Ih6/bvyR/y8D2UTm0hjIiK0
 l8neiSjpLJjMNO54t1SUcLJsdRhOu7wHAW587UpF0NbkanzMr3tbcB7uoalkl6yeoVDC3C9hXic
 Tk7x7isp+gVD6ED8WhqAf/zbzV3yGFeSbSiCH3grZ/EeElpFF1QsfmvbKSnP4dCiu5/KDe4F8VB
 u/2iBLvwjrvFDb3mzYNCvT94mx8Q655f3JujZiKNn6DRLYWft8pj57bk8fvV5lODxiwJf2Lf0F2
 TE/3rfy8FZJsGLT8oV+a3ceJT1sI/GnCPlQ6nUeVxsWo+hR5dAwxaOh9J2SZ7qoR8Ef+5YV4qnA
 dDr2927GNKwI2s4SdcdQ0FoDF29sFvpONlUAbi
X-Received: by 2002:a05:600c:564b:b0:493:e79e:da98 with SMTP id
 5b1f17b1804b1-493f8837fdbmr510375e9.39.1783710484544; 
 Fri, 10 Jul 2026 12:08:04 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:154f:ec00:aa08:de24:db33:4496])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493f567eadfsm55000755e9.6.2026.07.10.12.08.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jul 2026 12:08:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com, dakr@kernel.org, ecourtney@nvidia.com,
 simona@ffwll.ch, matthew.brost@intel.com, nat@pixelcluster.dev,
 airlied@gmail.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH 10/12] drm/exec: add drm_exec_lock_resv function
Date: Fri, 10 Jul 2026 20:52:50 +0200
Message-ID: <20260710190752.2355-11-christian.koenig@amd.com>
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
X-Rspamd-Queue-Id: C70A473D91E

Restructure the drm_exec object to work with dma_resv references instead
of GEM object references.

Add the new function dma_exec_lock_resv() to lock individual dma_resv
objects and so allow higher level implementations to handle contention
purely on dma_resv objects.

WIP! Don't commit like that!

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/drm_exec.c | 75 ++++++++++++++++++++++----------------
 drivers/gpu/drm/drm_gem.c  |  2 +
 include/drm/drm_exec.h     |  9 +++--
 3 files changed, 50 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/drm_exec.c b/drivers/gpu/drm/drm_exec.c
index fa923852fae45..382bf7bcd5ff3 100644
--- a/drivers/gpu/drm/drm_exec.c
+++ b/drivers/gpu/drm/drm_exec.c
@@ -58,8 +58,11 @@ static void drm_exec_unlock_all(struct drm_exec *exec)
 		drm_gem_object_put(obj);
 	}
 
-	drm_gem_object_put(exec->prelocked);
-	exec->prelocked = NULL;
+	if (exec->prelocked) {
+		dma_resv_unlock(exec->prelocked);
+		dma_resv_put(exec->prelocked);
+		exec->prelocked = NULL;
+	}
 }
 
 /**
@@ -101,7 +104,7 @@ void drm_exec_fini(struct drm_exec *exec)
 	drm_exec_unlock_all(exec);
 	kvfree(exec->objects);
 	if (exec->contended != DRM_EXEC_DUMMY) {
-		drm_gem_object_put(exec->contended);
+		dma_resv_put(exec->contended);
 		ww_acquire_fini(&exec->ticket);
 	}
 }
@@ -158,50 +161,41 @@ static int drm_exec_obj_locked(struct drm_exec *exec,
 /* Make sure the contended object is locked first */
 static int drm_exec_lock_contended(struct drm_exec *exec)
 {
-	struct drm_gem_object *obj = exec->contended;
+	struct dma_resv *resv = exec->contended;
 	int ret;
 
-	if (likely(!obj))
+	if (likely(!resv))
 		return 0;
 
 	/* Always cleanup the contention so that error handling can kick in */
 	exec->contended = NULL;
 	if (exec->flags & DRM_EXEC_INTERRUPTIBLE_WAIT) {
-		ret = dma_resv_lock_slow_interruptible(obj->resv,
-						       &exec->ticket);
+		ret = dma_resv_lock_slow_interruptible(resv, &exec->ticket);
 		if (unlikely(ret))
 			goto error_dropref;
 	} else {
-		dma_resv_lock_slow(obj->resv, &exec->ticket);
+		dma_resv_lock_slow(resv, &exec->ticket);
 	}
 
-	ret = drm_exec_obj_locked(exec, obj);
-	if (unlikely(ret))
-		goto error_unlock;
-
-	exec->prelocked = obj;
+	exec->prelocked = resv;
 	return 0;
 
-error_unlock:
-	dma_resv_unlock(obj->resv);
-
 error_dropref:
-	drm_gem_object_put(obj);
+	dma_resv_put(resv);
 	return ret;
 }
 
 /**
- * drm_exec_lock_obj - lock a GEM object for use
+ * drm_exec_lock_resv - lock a dma_resv object
  * @exec: the drm_exec object with the state
- * @obj: the GEM object to lock
+ * @resv: the dma_resv object to lock
  *
- * Lock a GEM object for use and grab a reference to it.
+ * Lock a dma_resv object for use or grab a reference to it on contention.
  *
  * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
- * already locked (can be suppressed by setting the DRM_EXEC_IGNORE_DUPLICATES
- * flag), -ENOMEM when memory allocation failed and zero for success.
+ * already locked, -ENOMEM when memory allocation failed and zero for success.
  */
-int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
+int drm_exec_lock_resv(struct drm_exec *exec, struct dma_resv *resv)
 {
 	int ret;
 
@@ -209,22 +203,39 @@ int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
 	if (unlikely(ret))
 		return ret;
 
-	if (exec->prelocked == obj) {
-		drm_gem_object_put(exec->prelocked);
+	if (exec->prelocked == resv) {
+		dma_resv_put(exec->prelocked);
 		exec->prelocked = NULL;
 		return 0;
 	}
 
 	if (exec->flags & DRM_EXEC_INTERRUPTIBLE_WAIT)
-		ret = dma_resv_lock_interruptible(obj->resv, &exec->ticket);
+		ret = dma_resv_lock_interruptible(resv, &exec->ticket);
 	else
-		ret = dma_resv_lock(obj->resv, &exec->ticket);
+		ret = dma_resv_lock(resv, &exec->ticket);
 
-	if (unlikely(ret == -EDEADLK)) {
-		drm_gem_object_get(obj);
-		exec->contended = obj;
-		return -EDEADLK;
-	}
+	if (unlikely(ret == -EDEADLK))
+		exec->contended = dma_resv_get(resv);
+	return ret;
+}
+EXPORT_SYMBOL(drm_exec_lock_resv);
+
+/**
+ * drm_exec_lock_obj - lock a GEM object for use
+ * @exec: the drm_exec object with the state
+ * @obj: the GEM object to lock
+ *
+ * Lock a GEM object for use and grab a reference to it.
+ *
+ * Returns: -EDEADLK if a contention is detected, -EALREADY when object is
+ * already locked (can be suppressed by setting the DRM_EXEC_IGNORE_DUPLICATES
+ * flag), -ENOMEM when memory allocation failed and zero for success.
+ */
+int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj)
+{
+	int ret;
+
+	ret = drm_exec_lock_resv(exec, obj->resv);
 
 	if (unlikely(ret == -EALREADY) &&
 	    exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index bbcbd25f014f0..f5cf9ad596a67 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -229,6 +229,8 @@ void drm_gem_private_object_init(struct drm_device *dev,
 	obj->size = size;
 	mutex_init(&obj->gpuva.lock);
 	dma_resv_init(&obj->_resv);
+
+	/* TODO: This needs to go away for drm_exec to work correctly!!! */
 	if (!obj->resv)
 		obj->resv = dma_resv_get(&obj->_resv);
 
diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
index 8725ba92ff916..9daedb676d7b1 100644
--- a/include/drm/drm_exec.h
+++ b/include/drm/drm_exec.h
@@ -47,14 +47,14 @@ struct drm_exec {
 	struct drm_gem_object	**objects;
 
 	/**
-	 * @contended: contended GEM object we backed off for
+	 * @contended: contended dma_resv object we backed off for
 	 */
-	struct drm_gem_object	*contended;
+	struct dma_resv		*contended;
 
 	/**
-	 * @prelocked: already locked GEM object due to contention
+	 * @prelocked: already locked dma_resv object due to contention
 	 */
-	struct drm_gem_object *prelocked;
+	struct dma_resv		*prelocked;
 };
 
 /**
@@ -175,6 +175,7 @@ static inline struct ww_acquire_ctx *drm_exec_ticket(struct drm_exec *exec)
 void drm_exec_init(struct drm_exec *exec, u32 flags, unsigned nr);
 void drm_exec_fini(struct drm_exec *exec);
 bool drm_exec_cleanup(struct drm_exec *exec);
+int drm_exec_lock_resv(struct drm_exec *exec, struct dma_resv *resv);
 int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object *obj);
 void drm_exec_unlock_obj(struct drm_exec *exec, struct drm_gem_object *obj);
 int drm_exec_prepare_obj(struct drm_exec *exec, struct drm_gem_object *obj,
-- 
2.43.0

