Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3E13D5732
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 12:13:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07FDE6E8A6;
	Mon, 26 Jul 2021 10:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F026E8A6;
 Mon, 26 Jul 2021 10:13:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="212194901"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="212194901"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 03:13:12 -0700
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="516041839"
Received: from dechasso-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.212.115.115])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 03:13:11 -0700
Date: Mon, 26 Jul 2021 06:13:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YP6Ktiij08KY9wvt@intel.com>
References: <20210724001114.249295-1-lucas.demarchi@intel.com>
 <20210724001114.249295-31-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210724001114.249295-31-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 30/30] drm/i915: switch
 num_scalers/num_sprites to consider DISPLAY_VER
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 23, 2021 at 05:11:14PM -0700, Lucas De Marchi wrote:
> The numbers of scalers and sprites depend on the display version, so use
> it instead of GRAPHICS_VER. We were mixing both, which let me confused
> while removing CNL and GRAPHICS_VER == 10.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index ffe3b5d89a63..7023d36a9a28 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -265,10 +265,10 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
>  		for_each_pipe(dev_priv, pipe)
>  			runtime->num_scalers[pipe] = 0;
> -	else if (GRAPHICS_VER(dev_priv) >= 11) {
> +	else if (DISPLAY_VER(dev_priv) >= 11) {
>  		for_each_pipe(dev_priv, pipe)
>  			runtime->num_scalers[pipe] = 2;
> -	} else if (GRAPHICS_VER(dev_priv) == 9) {
> +	} else if (DISPLAY_VER(dev_priv) == 9) {
>  		runtime->num_scalers[PIPE_A] = 2;
>  		runtime->num_scalers[PIPE_B] = 2;
>  		runtime->num_scalers[PIPE_C] = 1;
> @@ -279,7 +279,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
>  		for_each_pipe(dev_priv, pipe)
>  			runtime->num_sprites[pipe] = 4;
> -	else if (GRAPHICS_VER(dev_priv) >= 11)
> +	else if (DISPLAY_VER(dev_priv) >= 11)
>  		for_each_pipe(dev_priv, pipe)
>  			runtime->num_sprites[pipe] = 6;
>  	else if (IS_GEMINILAKE(dev_priv))

while at it we could probably change this to DISPLAY_VER == 10?!

but anyway:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>



> @@ -301,7 +301,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>  		for_each_pipe(dev_priv, pipe)
>  			runtime->num_sprites[pipe] = 2;
> -	} else if (GRAPHICS_VER(dev_priv) >= 5 || IS_G4X(dev_priv)) {
> +	} else if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv)) {
>  		for_each_pipe(dev_priv, pipe)
>  			runtime->num_sprites[pipe] = 1;
>  	}
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
