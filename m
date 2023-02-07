Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEAE68CCE0
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 03:53:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C679310E0EF;
	Tue,  7 Feb 2023 02:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 455 seconds by postgrey-1.36 at gabe;
 Tue, 07 Feb 2023 02:53:20 UTC
Received: from hellomouse.net (hellomouse.net [91.92.144.105])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D97110E1BF
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 02:53:19 +0000 (UTC)
Received: (Haraka outbound); Tue, 07 Feb 2023 02:45:42 +0000
Message-ID: <c9247d6d-db79-1e6c-c9d7-cdc4f2592140@hellomouse.net>
Date: Mon, 6 Feb 2023 21:45:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20230206163512.2841513-1-imre.deak@intel.com>
 <20230206163512.2841513-3-imre.deak@intel.com>
From: iczero <iczero@hellomouse.net>
In-Reply-To: <20230206163512.2841513-3-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
DKIM-Signature: v=1; a=rsa-sha256;
 bh=qy7L6FDpuofWsUc7Z1z4gMtNCngo5IzRzMIlJDBwn5k=; c=relaxed/simple;
 d=hellomouse.net; h=from:subject:date:message-id:to:mime-version; s=nov2018;
 b=AlsVHiqbTz2ouGZ918jUC6JC1WNzFOt9+RnmbL4BvKHZXtJDi8QTYEPn4UjchaKREC0L8xPvi2zQTtJ3WfaZhOOuQ6VvMh9jZ/LBPAhskKDFr+Jqf+Pl1FTHwOVHIlnc9TCNyobaiRALgYa6om0PVTcUWN4j5ANMe9Xa4VcvAtN+EqSDZZ7k7qmc6B6UVtSPrPN/BLsRAHwhxgcO5uo+4+Ophn7erKawhfnom/uVBxCXTd12tE3ZUtwx8tjsL03SW/8PUuWuqfPq7Qt22gfu0Z4vPvk+kOdmbgAGzuWRFOOSABHJoJUYmbs7FL/pHK4lilhadap+7Abo3pHg8khXgw==
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Factor out a function
 disabling fused-off display
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/6/23 11:35, Imre Deak wrote:
> Factor out a function used both on older and new platforms to disable
> the display functionality if the display is fused-off.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/intel_device_info.c | 34 +++++++++++++-----------
>   1 file changed, 18 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 044ac552c9280..9d6d1fad9f1d9 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -369,6 +369,21 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
>   	intel_device_info_subplatform_init(i915);
>   }
>   
> +static void disable_fused_off_display(struct drm_i915_private *i915)
> +{
> +	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
> +
> +	drm_info(&i915->drm, "Display fused off, disabling\n");
> +
> +	runtime->pipe_mask = 0;
> +	runtime->cpu_transcoder_mask = 0;
> +	runtime->fbc_mask = 0;
> +	runtime->has_hdcp = 0;
> +	runtime->fbc_mask = 0;
> +	runtime->has_dmc = 0;
> +	runtime->has_dsc = 0;
> +}
> +
>   /**
>    * intel_device_info_runtime_init - initialize runtime info
>    * @dev_priv: the i915 device
> @@ -454,11 +469,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>   		    sfuse_strap & SFUSE_STRAP_DISPLAY_DISABLED ||
>   		    (HAS_PCH_CPT(dev_priv) &&
>   		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
> -			drm_info(&dev_priv->drm,
> -				 "Display fused off, disabling\n");
> -			runtime->pipe_mask = 0;
> -			runtime->cpu_transcoder_mask = 0;
> -			runtime->fbc_mask = 0;
> +			disable_fused_off_display(dev_priv);
>   		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
>   			drm_info(&dev_priv->drm, "PipeC fused off\n");
>   			runtime->pipe_mask &= ~BIT(PIPE_C);
> @@ -502,17 +513,8 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>   	}
>   
>   	if ((IS_DGFX(dev_priv) || DISPLAY_VER(dev_priv) >= 14) &&
> -	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT)) {
> -		drm_info(&dev_priv->drm, "Display fused off, disabling\n");
> -
> -		runtime->pipe_mask = 0;
> -		runtime->cpu_transcoder_mask = 0;
> -		runtime->fbc_mask = 0;
> -		runtime->has_hdcp = 0;
> -		runtime->fbc_mask = 0;
> -		runtime->has_dmc = 0;
> -		runtime->has_dsc = 0;
> -	}
> +	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT))
> +		disable_fused_off_display(dev_priv);
>   
>   	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
>   		drm_info(&dev_priv->drm,
>
Tested on Intel Arc A370M. Thank you for the fix.

Tested-by: iczero <iczero@hellomouse.net>

