Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A21436D2D1
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 09:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653D76E09A;
	Wed, 28 Apr 2021 07:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B942B6E09A
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 07:12:53 +0000 (UTC)
IronPort-SDR: GqOCUvC1vfR3j66YapVvfoXCvQbwiMB4WprPHqHffSNsqt6IOMGHT2bi7VEz2uEEBxQusx9PpG
 1Q+kvIWVQKkA==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="176157194"
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; d="scan'208";a="176157194"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 00:12:42 -0700
IronPort-SDR: tFZchLbVl02yEFCP4gMW4v67UylVKYHPzGA3AJuwEO+m4uE7LRduAjLA7UBqw0o6zlsqeliFxV
 qTMKRc6Pc1Lg==
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; d="scan'208";a="430162068"
Received: from ajalsove-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.39.247])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 00:12:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210427230756.2847495-4-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210427230756.2847495-1-lucas.demarchi@intel.com>
 <20210427230756.2847495-4-lucas.demarchi@intel.com>
Date: Wed, 28 Apr 2021 10:12:37 +0300
Message-ID: <87im4651cq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/display: remove strap
 checks from gen 9
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

On Tue, 27 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Direction on gen9+ was to stop reading the straps and only rely on the
> VBT for marking the port presence. This happened while dealing with
> WaIgnoreDDIAStrap and instead of using it as a WA, it should now be the
> normal flow. See commit 885d3e5b6f08 ("drm/i915/display: fix comment on
> skl straps").
>
> For gen 10 it's hard to say if this will work or not since I can't test
> it, so leave it with the same behavior as before.
>
> For PCH_TGP we should still rely on the VBT to make ports E and F not
> available.
>
> v2 (Ville):
>   - use display ver >= 9 to make it consistent with the rest of the
>     driver instead of checking for == 9
>   - also handle CNL and only initialize port F if it is
>     IS_CNL_WITH_PORT_F. Eventually CNL may be removed, but while it
>     isn't let's keep it consistent everywhere

I agree with this.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 38 +++++++-------------
>  1 file changed, 13 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 37fe35f6de2c..55f8f2ceada2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10883,34 +10883,27 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
>  		vlv_dsi_init(dev_priv);
> +	} else if (DISPLAY_VER(dev_priv) >= 9) {
> +		intel_ddi_init(dev_priv, PORT_A);
> +		intel_ddi_init(dev_priv, PORT_B);
> +		intel_ddi_init(dev_priv, PORT_C);
> +		intel_ddi_init(dev_priv, PORT_D);
> +		intel_ddi_init(dev_priv, PORT_E);
> +
> +		if (IS_CNL_WITH_PORT_F(dev_priv))
> +			intel_ddi_init(dev_priv, PORT_F);
>  	} else if (HAS_DDI(dev_priv)) {
> -		int found;
> +		u32 found;
>  
>  		if (intel_ddi_crt_present(dev_priv))
>  			intel_crt_init(dev_priv);
>  
> -		/*
> -		 * Haswell uses DDI functions to detect digital outputs.
> -		 * On SKL pre-D0 the strap isn't connected. Later SKUs may or
> -		 * may not have it - it was supposed to be fixed by the same
> -		 * time we stopped using straps. Assume it's there.
> -		 */
> +		/* Haswell uses DDI functions to detect digital outputs. */
>  		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
> -		/* WaIgnoreDDIAStrap: skl */
> -		if (found || DISPLAY_VER(dev_priv) == 9)
> +		if (found)
>  			intel_ddi_init(dev_priv, PORT_A);
>  
> -		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
> -		 * register */
> -		if (HAS_PCH_TGP(dev_priv)) {
> -			/* W/A due to lack of STRAP config on TGP PCH*/
> -			found = (SFUSE_STRAP_DDIB_DETECTED |
> -				 SFUSE_STRAP_DDIC_DETECTED |
> -				 SFUSE_STRAP_DDID_DETECTED);
> -		} else {
> -			found = intel_de_read(dev_priv, SFUSE_STRAP);
> -		}
> -
> +		found = intel_de_read(dev_priv, SFUSE_STRAP);
>  		if (found & SFUSE_STRAP_DDIB_DETECTED)
>  			intel_ddi_init(dev_priv, PORT_B);
>  		if (found & SFUSE_STRAP_DDIC_DETECTED)
> @@ -10919,11 +10912,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  			intel_ddi_init(dev_priv, PORT_D);
>  		if (found & SFUSE_STRAP_DDIF_DETECTED)
>  			intel_ddi_init(dev_priv, PORT_F);
> -		/*
> -		 * On SKL we don't have a way to detect DDI-E so we rely on VBT.
> -		 */
> -		if (DISPLAY_VER(dev_priv) == 9)
> -			intel_ddi_init(dev_priv, PORT_E);
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		int found;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
