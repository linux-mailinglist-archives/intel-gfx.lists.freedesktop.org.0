Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B119616BFD0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 12:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F35DA6E8BF;
	Tue, 25 Feb 2020 11:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7229C6E8BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 11:46:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20344168-1500050 for multiple; Tue, 25 Feb 2020 11:46:06 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200225111509.21879-3-jani.nikula@intel.com>
References: <20200225111509.21879-1-jani.nikula@intel.com>
 <20200225111509.21879-3-jani.nikula@intel.com>
Message-ID: <158263116471.26598.16766291631054442050@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 25 Feb 2020 11:46:04 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/drv: use intel_uncore_write()
 for register access
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-02-25 11:15:09)
> The implicit "dev_priv" local variable use has been a long-standing pain
> point in the register access macros I915_READ(), I915_WRITE(),
> POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().
> 
> Replace the sole remaining I915_WRITE() in i915_drv.c with
> intel_uncore_write(), although it might be better to keep the entire
> file void of direct register access.
> 
> No functional changes.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 7f0e0ba918e9..57e2fc911dac 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -758,7 +758,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>          * when running inside a VM.
>          */
>         if (intel_vgpu_active(dev_priv))
> -               I915_WRITE(vgtif_reg(display_ready), VGT_DRV_DISPLAY_READY);
> +               intel_uncore_write(&dev_priv->uncore, vgtif_reg(display_ready),
> +                                  VGT_DRV_DISPLAY_READY);

Bonus patch for intel_vgpu_register() ?

Series is
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
