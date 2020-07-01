Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0A32113A1
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 21:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D606E108;
	Wed,  1 Jul 2020 19:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ECEF6E108
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 19:34:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21680573-1500050 for multiple; Wed, 01 Jul 2020 20:34:06 +0100
MIME-Version: 1.0
In-Reply-To: <20200701183626.2450-1-lucas.demarchi@intel.com>
References: <20200701183626.2450-1-lucas.demarchi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 01 Jul 2020 20:34:07 +0100
Message-ID: <159363204755.23379.12166844013630420536@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not read swizzle info if
 unavailable
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2020-07-01 19:36:26)
> Since gen8 we don't use swizzle anymore. Don't dump registers related to
> it: registers may or may not be there.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 8594a8ef08ce..d9e56eee0453 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -1138,13 +1138,17 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
>         struct intel_uncore *uncore = &dev_priv->uncore;
>         intel_wakeref_t wakeref;
>  
> -       wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> -
>         seq_printf(m, "bit6 swizzle for X-tiling = %s\n",
>                    swizzle_string(dev_priv->ggtt.bit_6_swizzle_x));
>         seq_printf(m, "bit6 swizzle for Y-tiling = %s\n",
>                    swizzle_string(dev_priv->ggtt.bit_6_swizzle_y));

I'm really tempted to say kill this, it's past the point of usefulness.
There's one user in igt, who can just use the information provided via
the get_tiling_ioctl.

However, if you pull the

        if (dev_priv->quirks & QUIRK_PIN_SWIZZLED_PAGES)
                seq_puts(m, "L-shaped memory detected\n");

here to before the register read out as well (as that is also plain
driver state), you have a deal.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
