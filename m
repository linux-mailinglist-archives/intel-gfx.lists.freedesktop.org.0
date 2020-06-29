Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3DF20CE04
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 12:51:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F4FB89F07;
	Mon, 29 Jun 2020 10:51:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7546189F07
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 10:51:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21648103-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 11:50:57 +0100
MIME-Version: 1.0
In-Reply-To: <20200629101256.13039-1-chris@chris-wilson.co.uk>
References: <20200629101256.13039-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
Cc: 
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2020 11:50:57 +0100
Message-ID: <159342785711.14343.17694396689978084998@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/gem: Move obj->lut_list under
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

Quoting Chris Wilson (2020-06-29 11:12:51)
> @@ -108,7 +109,7 @@ void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *file)
>         struct i915_lut_handle *lut, *ln;
>         LIST_HEAD(close);
>  
> -       i915_gem_object_lock(obj);
> +       spin_lock(&obj->lut_lock);
>         list_for_each_entry_safe(lut, ln, &obj->lut_list, obj_link) {
>                 struct i915_gem_context *ctx = lut->ctx;
>  
> @@ -118,7 +119,7 @@ void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *file)
>                 i915_gem_context_get(ctx);
>                 list_move(&lut->obj_link, &close);
>         }
> -       i915_gem_object_unlock(obj);
> +       spin_unlock(&obj->lut_lock);

This is only real worry, iterating under the spinlock.

If we worry, we can do something like

+       struct i915_lut_handle bookmark = {};
        LIST_HEAD(close);

        spin_lock(&obj->lut_lock);
        list_for_each_entry_safe(lut, ln, &obj->lut_list, obj_link) {
                struct i915_gem_context *ctx = lut->ctx;

-               if (ctx->file_priv != fpriv)
-                       continue;
+               if (ctx && ctx->file_priv == fpriv) {
+                       i915_gem_context_get(ctx);
+                       list_move(&lut->obj_link, &close);
+               }

-               i915_gem_context_get(ctx);
-               list_move(&lut->obj_link, &close);
+               if (ln != &obj->lut_list) {
+                       list_add(&bookmark->obj_link, &ln->obj_link);
+                       if (cond_resched_lock(&obj->lut_lock))
+                               list_safe_reset_next(&bookmark, ln, obj_link);
+                       list_del_entry(&bookmark->obj_link);
+               }
        }

Might as well worry.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
