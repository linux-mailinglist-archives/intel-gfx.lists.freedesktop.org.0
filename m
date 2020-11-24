Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CAE2C30AF
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 20:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB4766E51D;
	Tue, 24 Nov 2020 19:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 675B56E51D
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 19:23:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23096123-1500050 for multiple; Tue, 24 Nov 2020 19:23:22 +0000
MIME-Version: 1.0
In-Reply-To: <20201124191316.1660749-2-lucas.demarchi@intel.com>
References: <20201124191316.1660749-1-lucas.demarchi@intel.com>
 <20201124191316.1660749-2-lucas.demarchi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 19:23:20 +0000
Message-ID: <160624580090.28476.4783613674700141588@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: stop registering if
 drm_dev_register() fails
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

Quoting Lucas De Marchi (2020-11-24 19:13:14)
> If drm_dev_register() fails there is no reason to continue registering
> the driver and initializing.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 320856b665a1..c3fad01ce26f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -669,17 +669,19 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>         intel_vgpu_register(dev_priv);
>  
>         /* Reveal our presence to userspace */
> -       if (drm_dev_register(dev, 0) == 0) {
> -               i915_debugfs_register(dev_priv);
> -               if (HAS_DISPLAY(dev_priv))
> -                       intel_display_debugfs_register(dev_priv);
> -               i915_setup_sysfs(dev_priv);
> -
> -               /* Depends on sysfs having been initialized */
> -               i915_perf_register(dev_priv);
> -       } else
> +       if (drm_dev_register(dev, 0) != 0) {
>                 drm_err(&dev_priv->drm,
>                         "Failed to register driver for userspace access!\n");
> +               return;
> +       }

s/!= 0//

Ok, we keep the driver loaded to do powersaving if not registered, so
there is some advantage in the face of failure. And there is little
point in trying to register some auxiliary interfaces if the primary
inodes are not exposed.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
