Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 401E3184514
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 11:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F2686EBBC;
	Fri, 13 Mar 2020 10:42:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D63B6EBBC
 for <Intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 10:42:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20547085-1500050 for multiple; Fri, 13 Mar 2020 10:41:27 +0000
MIME-Version: 1.0
In-Reply-To: <20200311182618.21513-3-tvrtko.ursulin@linux.intel.com>
References: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
 <20200311182618.21513-3-tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158409608712.10732.8477749939465578645@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 13 Mar 2020 10:41:27 +0000
Subject: Re: [Intel-gfx] [RFC 02/10] drm/i915: Update client name on context
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

Quoting Tvrtko Ursulin (2020-03-11 18:26:10)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index cb6b6be48978..2c3fd9748d39 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -74,6 +74,7 @@
>  #include "gt/intel_engine_user.h"
>  #include "gt/intel_ring.h"
>  
> +#include "i915_drm_client.h"
>  #include "i915_gem_context.h"
>  #include "i915_globals.h"
>  #include "i915_trace.h"
> @@ -2294,6 +2295,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
>  {
>         struct drm_i915_private *i915 = to_i915(dev);
>         struct drm_i915_gem_context_create_ext *args = data;
> +       struct drm_i915_file_private *file_priv = file->driver_priv;
>         struct create_ext ext_data;

ext_data.fpriv is on the stack already and you don't use file_priv
before ext_data.

> @@ -127,8 +140,8 @@ __i915_drm_client_unregister(struct i915_drm_client *client)
>  {
>         __client_unregister_sysfs(client);
>  
> -       put_pid(fetch_and_zero(&client->pid));
> -       kfree(fetch_and_zero(&client->name));
> +       put_pid(rcu_replace_pointer(client->pid, NULL, true));
> +       kfree(rcu_replace_pointer(client->name, NULL, true));
>  }

Ok, we should be past the point of last concurrent access.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
