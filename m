Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E564812844D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 23:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD61E6E179;
	Fri, 20 Dec 2019 22:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0786E179
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 22:11:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19651697-1500050 for multiple; Fri, 20 Dec 2019 22:11:18 +0000
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191220220650.16349-1-lucas.demarchi@intel.com>
References: <20191220220650.16349-1-lucas.demarchi@intel.com>
Message-ID: <157687987582.18690.3380544218828835709@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 20 Dec 2019 22:11:15 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: nuke skl workaround for
 pre-production hw
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

Quoting Lucas De Marchi (2019-12-20 22:06:50)
> According to intel_detect_preproduction_hw(), the SKL steeping D0 is
> still pre-preproduction so we can nuke the additional workaround.
> 
> While at it, nuke dangling new line.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Ville and Jani are more likely to know if the pre-production comment is
telling porkies.
-Chris

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e6702b9b9117..4aa7dfa88c7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16018,14 +16018,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>                 if (intel_ddi_crt_present(dev_priv))
>                         intel_crt_init(dev_priv);
>  
> -               /*
> -                * Haswell uses DDI functions to detect digital outputs.
> -                * On SKL pre-D0 the strap isn't connected, so we assume
> -                * it's there.
> -                */
>                 found = I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
> -               /* WaIgnoreDDIAStrap: skl */
> -               if (found || IS_GEN9_BC(dev_priv))
> +               if (found)
>                         intel_ddi_init(dev_priv, PORT_A);
>  
>                 /* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
> @@ -16046,7 +16040,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>                 if (IS_GEN9_BC(dev_priv) &&
>                     intel_bios_is_port_present(dev_priv, PORT_E))
>                         intel_ddi_init(dev_priv, PORT_E);
> -
>         } else if (HAS_PCH_SPLIT(dev_priv)) {
>                 int found;
>  
> -- 
> 2.24.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
