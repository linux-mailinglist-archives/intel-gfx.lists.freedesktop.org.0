Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B67120677
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 13:57:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3014A6E513;
	Mon, 16 Dec 2019 12:57:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532FC6E513
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 12:57:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19595108-1500050 for multiple; Mon, 16 Dec 2019 12:57:14 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <20191216120704.958-4-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191216120704.958-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <157650103330.2428.3298175573227609640@skylake-alporthouse-com>
Date: Mon, 16 Dec 2019 12:57:13 +0000
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Update client name on context
 create
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

Quoting Tvrtko Ursulin (2019-12-16 12:07:02)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 46b4d1d643f8..cd4ba6486f35 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -2178,7 +2178,9 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
>  {
>         struct drm_i915_private *i915 = to_i915(dev);
>         struct drm_i915_gem_context_create_ext *args = data;
> +       struct drm_i915_file_private *file_priv = file->driver_priv;
>         struct create_ext ext_data;
> +       struct pid *pid;
>         int ret;
>  
>         if (!DRIVER_CAPS(i915)->has_logical_contexts)
> @@ -2191,14 +2193,30 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
>         if (ret)
>                 return ret;
>  
> -       ext_data.fpriv = file->driver_priv;
> +       ext_data.fpriv = file_priv;
> +       pid = get_task_pid(current, PIDTYPE_PID);
>         if (client_is_banned(ext_data.fpriv)) {
>                 DRM_DEBUG("client %s[%d] banned from creating ctx\n",
> -                         current->comm,
> -                         pid_nr(get_task_pid(current, PIDTYPE_PID)));
> +                         current->comm, pid_nr(pid));
> +               put_pid(pid);
>                 return -EIO;
>         }
>  
> +       /*
> +        * Borrow the context idr_lock to protect the client remove-add cycle.
> +        */
> +       if (mutex_lock_interruptible(&file_priv->context_idr_lock))

put_pid(pid); /* I'm helping! */

> +               return -EINTR;

> +       if (pid_nr(file_priv->client.pid) != pid_nr(pid)) {
> +               i915_gem_remove_client(file_priv);
> +               ret = i915_gem_add_client(i915, file_priv, current,
> +                                         file_priv->client.id);
> +       }
> +       mutex_unlock(&file_priv->context_idr_lock);
> +       put_pid(pid);
> +       if (ret)
> +               return ret;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
