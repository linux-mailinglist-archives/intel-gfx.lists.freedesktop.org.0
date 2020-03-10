Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7C118063E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 19:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 899D36E8C3;
	Tue, 10 Mar 2020 18:28:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ABDB6E8C3
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 18:28:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20513407-1500050 for multiple; Tue, 10 Mar 2020 18:28:14 +0000
MIME-Version: 1.0
In-Reply-To: <20200309183129.2296-7-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-7-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158386489428.28297.13319308260258077262@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 18:28:14 +0000
Subject: Re: [Intel-gfx] [RFC 06/12] drm/i915: Track runtime spent in closed
 GEM contexts
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

Quoting Tvrtko Ursulin (2020-03-09 18:31:23)
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
> index 7825df32798d..10752107e8c7 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.h
> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
> @@ -16,6 +16,8 @@
>  #include <linux/sched.h>
>  #include <linux/xarray.h>
>  
> +#include "gt/intel_engine_types.h"
> +
>  struct i915_drm_clients {
>         struct mutex lock;
>         struct xarray xarray;
> @@ -43,6 +45,11 @@ struct i915_drm_client {
>                 struct device_attribute pid;
>                 struct device_attribute name;
>         } attr;
> +
> +       /**
> +        * @past_runtime: Accumulation of pphwsp runtimes from closed contexts.
> +        */
> +       atomic64_t past_runtime[MAX_ENGINE_CLASS + 1];

Just to plant a seed: i915_drm_client_stats.[ch] ?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
