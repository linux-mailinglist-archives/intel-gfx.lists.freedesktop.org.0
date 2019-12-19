Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BE7126F12
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 21:44:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D03296EB85;
	Thu, 19 Dec 2019 20:44:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1EBF6EB85
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 20:44:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19639102-1500050 for multiple; Thu, 19 Dec 2019 20:44:02 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
 <20191219180019.25562-3-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191219180019.25562-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <157678823997.6469.3187491361664776890@skylake-alporthouse-com>
Date: Thu, 19 Dec 2019 20:43:59 +0000
Subject: Re: [Intel-gfx] [RFC 2/8] drm/i915: Reference count struct
 drm_i915_file_private
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

Quoting Tvrtko Ursulin (2019-12-19 18:00:13)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> In the following patches we will develope a need to peek into the client
> owned data from any potential leftover contexts.
> 
> To facilitate this add reference counting to file_priv.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c |  2 +-
>  drivers/gpu/drm/i915/i915_drv.c             |  4 ----
>  drivers/gpu/drm/i915/i915_drv.h             |  4 +++-
>  drivers/gpu/drm/i915/i915_gem.c             | 14 +++++++++++++-
>  4 files changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index e5a7c6f02a47..b482b2e5f31f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -853,7 +853,7 @@ int i915_gem_context_open(struct drm_i915_private *i915,
>  void i915_gem_context_close(struct drm_file *file)
>  {
>         struct drm_i915_file_private *file_priv = file->driver_priv;
> -       struct drm_i915_private *i915 = file_priv->dev_priv;
> +       struct drm_i915_private *i915 = file_priv->i915;
>         struct i915_gem_context *ctx;
>         unsigned long idx;
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 8b08cfe30151..0c9c93418068 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1633,13 +1633,9 @@ static void i915_driver_lastclose(struct drm_device *dev)
>  
>  static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
>  {
> -       struct drm_i915_file_private *file_priv = file->driver_priv;
> -
>         i915_gem_context_close(file);
>         i915_gem_release(dev, file);
>  
> -       kfree_rcu(file_priv, rcu);

As you are moving the kfree_rcu() into the i915_gem_release (via a put),
I think it also makes sense to move the call for i915_gem_context_close
on this file. Possibly renaming it to i915_gem_file_close() and
s/drm_i915_file_private/i915_gem_file/ or i915_gem_client (with
corresponding name changes) in the process.

For the basic mechanics of this patch though,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

(Though I still suggest a bit of playing with i915_gem_context_close,
i915_gem_release to tie them together to the notion of the file better.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
