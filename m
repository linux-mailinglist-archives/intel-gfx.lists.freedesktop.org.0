Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D20D4184505
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 11:36:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5846EBAE;
	Fri, 13 Mar 2020 10:36:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 225A16EBAE
 for <Intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 10:36:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20547040-1500050 for multiple; Fri, 13 Mar 2020 10:36:41 +0000
MIME-Version: 1.0
In-Reply-To: <20200311182618.21513-2-tvrtko.ursulin@linux.intel.com>
References: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
 <20200311182618.21513-2-tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158409580158.10732.8029943441757504994@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 13 Mar 2020 10:36:41 +0000
Subject: Re: [Intel-gfx] [RFC 01/10] drm/i915: Expose list of clients in
 sysfs
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

Quoting Tvrtko Ursulin (2020-03-11 18:26:09)
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index ca5420012a22..7def0930684b 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1218,12 +1218,14 @@ static void i915_gem_init__mm(struct drm_i915_private *i915)
>         i915_gem_init__objects(i915);
>  }
>  
> -void i915_gem_init_early(struct drm_i915_private *dev_priv)
> +void i915_gem_init_early(struct drm_i915_private *i915)
>  {
> -       i915_gem_init__mm(dev_priv);
> -       i915_gem_init__contexts(dev_priv);
> +       i915_gem_init__mm(i915);
> +       i915_gem_init__contexts(i915);
>  
> -       spin_lock_init(&dev_priv->fb_tracking.lock);
> +       spin_lock_init(&i915->fb_tracking.lock);
> +
> +       i915_drm_clients_init(&i915->clients);

Not from inside GEM, since this is separate bookkeeping. (i915->clients
not i915->gem.clients!)

Other than that grumble,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
