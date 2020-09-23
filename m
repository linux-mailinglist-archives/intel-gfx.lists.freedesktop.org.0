Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 793FC2753E9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 10:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B65A26E43C;
	Wed, 23 Sep 2020 08:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32AB6E43C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 08:58:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22510066-1500050 for multiple; Wed, 23 Sep 2020 09:58:12 +0100
MIME-Version: 1.0
In-Reply-To: <20200923044054.5653-1-steven.t.hampson@intel.com>
References: <20200923044054.5653-1-steven.t.hampson@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Steve Hampson <steven.t.hampson@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 23 Sep 2020 09:58:12 +0100
Message-ID: <160085149249.27151.12750028761264321987@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] Fix NULL pointer found by static analysis
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

Quoting Steve Hampson (2020-09-23 05:40:54)
> A static analysis tool has reveiled a NULL pointer error in
> __i915_gem_object_lock.  This appears to be correct as many calls
> pass a NULL into the ww parameter.
> 
> Signed-off-by: Steve Hampson <steven.t.hampson@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index d46db8d8f38e..9b18ead42991 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -126,7 +126,7 @@ static inline int __i915_gem_object_lock(struct drm_i915_gem_object *obj,
>         if (ret == -EALREADY)
>                 ret = 0;
>  
> -       if (ret == -EDEADLK)
> +       if (ret == -EDEADLK && ww)

EDEADLK is predicated by ww already.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
