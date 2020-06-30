Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C13020FC7D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 21:11:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92CCB6E16F;
	Tue, 30 Jun 2020 19:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E823C6E16F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 19:11:19 +0000 (UTC)
IronPort-SDR: tELxtxOYesPfP9woEb8kMp4s6+ottEV0S+r7jr4YqGuD7NsI6of6S8Z42KgEi728cnsZYDGCjR
 Tn4w5C9NbO8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="125989176"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="125989176"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 12:11:19 -0700
IronPort-SDR: 9Syg2a3p4CjtUUrCzBQLHHJx/2vaw5iTjYq7dd7ms10bb+gGmrUnMhmRFhOaXg27a8Xt+oIMpv
 rYHdNRhiQpeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="321015380"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Jun 2020 12:11:18 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 30 Jun 2020 12:11:18 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 30 Jun 2020 12:11:18 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.193]) by
 FMSMSX114.amr.corp.intel.com ([10.18.116.8]) with mapi id 14.03.0439.000;
 Tue, 30 Jun 2020 12:11:17 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/gem: Move obj->lut_list under
 its own lock
Thread-Index: AQHWTgmZ7Cfnq3YFyUS6kC0fhs8cFKjxhmXQ
Date: Tue, 30 Jun 2020 19:11:16 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663011D9A4FBB@FMSMSX108.amr.corp.intel.com>
References: <20200629101256.13039-1-chris@chris-wilson.co.uk>
 <20200629113616.10618-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200629113616.10618-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Move obj->lut_list under
 its own lock
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

>-----Original Message-----
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
>Wilson
>Sent: Monday, June 29, 2020 7:36 AM
>To: intel-gfx@lists.freedesktop.org
>Cc: Chris Wilson <chris@chris-wilson.co.uk>
>Subject: [Intel-gfx] [PATCH v2] drm/i915/gem: Move obj->lut_list under its
>own lock
>
>The obj->lut_list is traversed when the object is closed as the file
>table is destroyed during process termination. As this occurs before we
>kill any outstanding context if, due to some bug or another, the closure
>is blocked, then we fail to shootdown any inflight operations
>potentially leaving the GPU spinning forever. As we only need to guard
>the list against concurrent closures and insertions, the hold is short
>and merits being treated as a simple spinlock.

The comment:

/* Break long locks, and carefully continue on from this spot */

seems to be contrary to your "the hold is short" comment.  Is calling out
this apparent worst case scenario (i.e. how it could happen), worth
documenting?

>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>---
> drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 ++----
> .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  4 ++--
> drivers/gpu/drm/i915/gem/i915_gem_object.c    | 21 +++++++++++++------
> .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
> 4 files changed, 20 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>index 5c13809dc3c8..6675447a47b9 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>@@ -112,8 +112,7 @@ static void lut_close(struct i915_gem_context *ctx)
> 		if (!kref_get_unless_zero(&obj->base.refcount))
> 			continue;
>
>-		rcu_read_unlock();
>-		i915_gem_object_lock(obj);
>+		spin_lock(&obj->lut_lock);
> 		list_for_each_entry(lut, &obj->lut_list, obj_link) {
> 			if (lut->ctx != ctx)
> 				continue;
>@@ -124,8 +123,7 @@ static void lut_close(struct i915_gem_context *ctx)
> 			list_del(&lut->obj_link);
> 			break;
> 		}
>-		i915_gem_object_unlock(obj);
>-		rcu_read_lock();
>+		spin_unlock(&obj->lut_lock);
>
> 		if (&lut->obj_link != &obj->lut_list) {
> 			i915_lut_handle_free(lut);
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>index c38ab51e82f0..b4862afaaf28 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>@@ -789,14 +789,14 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
> 		if (err == 0) { /* And nor has this handle */
> 			struct drm_i915_gem_object *obj = vma->obj;
>
>-			i915_gem_object_lock(obj);
>+			spin_lock(&obj->lut_lock);
> 			if (idr_find(&eb->file->object_idr, handle) == obj) {
> 				list_add(&lut->obj_link, &obj->lut_list);
> 			} else {
> 				radix_tree_delete(&ctx->handles_vma,
>handle);
> 				err = -ENOENT;
> 			}
>-			i915_gem_object_unlock(obj);
>+			spin_unlock(&obj->lut_lock);
> 		}
> 		mutex_unlock(&ctx->mutex);
> 	}
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>index b6ec5b50d93b..6b69191c5543 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>@@ -61,6 +61,7 @@ void i915_gem_object_init(struct drm_i915_gem_object
>*obj,
> 	INIT_LIST_HEAD(&obj->mm.link);
>
> 	INIT_LIST_HEAD(&obj->lut_list);
>+	spin_lock_init(&obj->lut_lock);
>
> 	spin_lock_init(&obj->mmo.lock);
> 	obj->mmo.offsets = RB_ROOT;
>@@ -104,21 +105,29 @@ void i915_gem_close_object(struct
>drm_gem_object *gem, struct drm_file *file)
> {
> 	struct drm_i915_gem_object *obj = to_intel_bo(gem);
> 	struct drm_i915_file_private *fpriv = file->driver_priv;
>+	struct i915_lut_handle bookmark = {};
> 	struct i915_mmap_offset *mmo, *mn;
> 	struct i915_lut_handle *lut, *ln;
> 	LIST_HEAD(close);
>
>-	i915_gem_object_lock(obj);
>+	spin_lock(&obj->lut_lock);
> 	list_for_each_entry_safe(lut, ln, &obj->lut_list, obj_link) {
> 		struct i915_gem_context *ctx = lut->ctx;
>
>-		if (ctx->file_priv != fpriv)
>-			continue;
>+		if (ctx && ctx->file_priv == fpriv) {

Null checking ctx was not done before.  I think this changed with the possible cond_resched?

Or is this just being extra cautious?

Thanks,

Mike

>+			i915_gem_context_get(ctx);
>+			list_move(&lut->obj_link, &close);
>+		}
>
>-		i915_gem_context_get(ctx);
>-		list_move(&lut->obj_link, &close);
>+		/* Break long locks, and carefully continue on from this spot */
>+		if (&ln->obj_link != &obj->lut_list) {
>+			list_add_tail(&bookmark.obj_link, &ln->obj_link);
>+			if (cond_resched_lock(&obj->lut_lock))
>+				list_safe_reset_next(&bookmark, ln,
>obj_link);
>+			__list_del_entry(&bookmark.obj_link);
>+		}
> 	}
>-	i915_gem_object_unlock(obj);
>+	spin_unlock(&obj->lut_lock);
>
> 	spin_lock(&obj->mmo.lock);
> 	rbtree_postorder_for_each_entry_safe(mmo, mn, &obj-
>>mmo.offsets, offset)
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>index b1f82a11aef2..5335f799b548 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>@@ -121,6 +121,7 @@ struct drm_i915_gem_object {
> 	 * this translation from object to context->handles_vma.
> 	 */
> 	struct list_head lut_list;
>+	spinlock_t lut_lock; /* guards lut_list */
>
> 	/** Stolen memory for this object, instead of being backed by
>shmem. */
> 	struct drm_mm_node *stolen;
>--
>2.20.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
