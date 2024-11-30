Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 365B89DEF9D
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2024 10:38:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2FF310E395;
	Sat, 30 Nov 2024 09:38:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="tA08bMJL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 051A110E397
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 09:38:10 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id
 2adb3069b0e04-53dde5262fdso2927423e87.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 01:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1732959488; x=1733564288; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=rXbDCCZyHLHcmMdbmbUACkYa+PAWDK6pAgsVmGxmS7E=;
 b=tA08bMJLIcHaSOH3/BnLTry7PkgZCPtO4wTqyx4xbT995gUVHSx7IUrZSyOvsaFnir
 JezdWhk5rnijvzffjnxMTtXU5t6taapPgh7NIaOm7vyLnMnjubx227O27Jkfm0+fAf4i
 JTCa8DRz5N/R0wp7PDaJPA5yuNGfVU6Fk+UsLXkIYZuiSjD4djEBIV4P6TIkMdOguZNB
 eLHjhoN9EiXI5rKF0RYkFJZX+lJt1l8zWYIomd9l1hDQ0ScpbxQGDKakg9Rj8KvghXdo
 zmPa59FnZyzoquKvxqtjwHXr3IX1CXtcF3tLa1gc0HEs8NnDTXDMkc+wqvBQREGkH9op
 qz7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732959488; x=1733564288;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rXbDCCZyHLHcmMdbmbUACkYa+PAWDK6pAgsVmGxmS7E=;
 b=pqXriuRY/UOE8bvQafn3bu7QGwEPQCOBAFVTBheEPz3hkt3JoqE819eafsKCjQWU6U
 SvVb+2zJaGW4Y9DJmb1SORj9oAdUFFM4ivUCKFjaiFb9Nd9LIkGcHPQme3yqq9uqp1iU
 alHtgeN1LmtUxjJH9UevwoskLCD1xKZpKLpv6eAqTyeOG1iAJjqVx4QILWsV5OarnzFJ
 hB3j59FScTRPsCiDZN9TXYzNc218rFLo3bFKGKBlYPOOXJHt0u0SqwXge1FPOwknss6N
 2h4WBrqC+kLniQIPQgvbfGOWbaq6s2IRfPyUy9Pbgz4KqZNFimNc5IxpO57q1G5LDgtb
 fW9Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCX78WZY/yYrAP17kKbwWHOyDqbQQvyJSjE+4Bux/fiFRRdek3fPFAa80+TfgTIrFBn+A3813wy3PHI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwZIod1GswmDIOad0wEgvtnMLtzOsp4phqctPRROfZz9/lnJM4M
 VU+VFO0ssAOxf7GeQYMbW77bT/6iftFCHfom0NffMqQhC+gN7SUiK6rV6b6MEB8=
X-Gm-Gg: ASbGncv8Y+3IjEYD7eaRn9uChW3XtaU8dbvpPgy3tnnZpuFdlo6NAbTq/Z3GIrJsjkp
 0cz/pOweYQ09k5EqkiLCwNB8fqGHxKu6DOjvLGWzxc9zedap6hxjSCRnK6a6K5j3S1/TZyu7PLe
 f051+M+PURjloDnbdCYqSoAvX6fGZsqlXNKAIiyhNHDNhEq75ZcSZDbBQtdsBr7zXUjWuUvvpEC
 2YdoEFzFnuOkjFyKeHPTulahJbk+l9xqa6cZqMcwYx/CClUfnb2Tj6NgvsU/BB+uf4CJHN44N0C
 md4JXQSdSF5tle0fnWoBXpNB+MaGxw==
X-Google-Smtp-Source: AGHT+IEwCyy0WLYAusUAieyWyy7Z2W/Lw9UaoxPrndoadcpQX8tCHP7mp6kBuNlB8fMn/6H2hs0LBA==
X-Received: by 2002:a05:6512:3f1f:b0:53d:d3ff:77f6 with SMTP id
 2adb3069b0e04-53df010900cmr9843422e87.46.1732959488071; 
 Sat, 30 Nov 2024 01:38:08 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53df6443199sm721008e87.98.2024.11.30.01.38.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2024 01:38:06 -0800 (PST)
Date: Sat, 30 Nov 2024 11:38:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Uma Shankar <uma.shankar@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 harry.wentland@amd.com, 
 pekka.paalanen@haloniitty.fi, sebastian.wick@redhat.com, jadahl@redhat.com,
 mwen@igalia.com, contact@emersion.fr, naveen1.kumar@intel.com, 
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: Re: [v2 02/25] drm: Add support for 3x3 CTM
Message-ID: <yalwndln5a7apkfj27txgbvwxjgfhdut27wlor6wm6pn2slx7m@jjm6rwfjbfdc>
References: <20241126132730.1192571-1-uma.shankar@intel.com>
 <20241126132730.1192571-3-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126132730.1192571-3-uma.shankar@intel.com>
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

On Tue, Nov 26, 2024 at 06:57:07PM +0530, Uma Shankar wrote:
> From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> 
> Add support for 3x3 Color Transformation Matrices in Color Pipeline.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/drm_atomic.c      |  3 +++
>  drivers/gpu/drm/drm_atomic_uapi.c |  3 +++
>  drivers/gpu/drm/drm_colorop.c     | 29 +++++++++++++++++++++++++++++
>  include/drm/drm_colorop.h         |  2 ++
>  include/uapi/drm/drm_mode.h       |  8 ++++++++
>  5 files changed, 45 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 3161e2ab4efc..8a75f4a0637a 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -802,6 +802,9 @@ static void drm_atomic_colorop_print_state(struct drm_printer *p,
>  		drm_printf(p, "\tinterpolation=%s\n", drm_get_colorop_lut1d_interpolation_name(colorop->lut1d_interpolation));
>  		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
>  		break;
> +	case DRM_COLOROP_CTM_3X3:
> +		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
> +		break;
>  	case DRM_COLOROP_CTM_3X4:
>  		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
>  		break;
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index d6c71135f290..ba68358c0ffe 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -708,6 +708,9 @@ static int drm_atomic_color_set_data_property(struct drm_colorop *colorop,
>  	case DRM_COLOROP_CTM_3X4:
>  		size = sizeof(struct drm_color_ctm_3x4);
>  		break;
> +	case DRM_COLOROP_CTM_3X3:
> +		size = sizeof(struct drm_color_ctm);
> +		break;
>  	case DRM_COLOROP_3D_LUT:
>  		index = state->lut_3d_mode_index;
>  		if (index >= (state->lut_3d_modes->length / sizeof(struct drm_mode_3dlut_mode)))
> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
> index fd1cd934df48..a427cfc5bbbc 100644
> --- a/drivers/gpu/drm/drm_colorop.c
> +++ b/drivers/gpu/drm/drm_colorop.c
> @@ -315,6 +315,35 @@ int drm_colorop_ctm_3x4_init(struct drm_device *dev, struct drm_colorop *colorop
>  }
>  EXPORT_SYMBOL(drm_colorop_ctm_3x4_init);
>  
> +/**
> + * drm_colorop_ctm_3x3 - Initialize a DRM_COLOROP_CTM_3X3

Please build with W=1 to trigger kerneldoc warnings. Here the prototype
in the doc comment doesn't match the actual function name.

> + *
> + * @dev: DRM device
> + * @colorop: The drm_colorop object to initialize
> + * @plane: The associated drm_plane
> + * @allow_bypass: true if BYPASS property should be created, false if bypass of
> + *                this colorop is not possible
> + * @return zero on success, -E value on failure
> + */
> +int drm_colorop_ctm_3x3_init(struct drm_device *dev, struct drm_colorop *colorop,
> +			     struct drm_plane *plane, bool allow_bypass)
> +{
> +	int ret;
> +
> +	ret = drm_colorop_init(dev, colorop, plane, DRM_COLOROP_CTM_3X3, allow_bypass);
> +	if (ret)
> +		return ret;
> +
> +	ret = drm_colorop_create_data_prop(dev, colorop);
> +	if (ret)
> +		return ret;
> +
> +	drm_colorop_reset(colorop);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_colorop_ctm_3x3_init);
> +
>  /**
>   * drm_colorop_mult_init - Initialize a DRM_COLOROP_MULTIPLIER
>   *
> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
> index bf5117f30c80..56b51fafebdf 100644
> --- a/include/drm/drm_colorop.h
> +++ b/include/drm/drm_colorop.h
> @@ -377,6 +377,8 @@ int drm_colorop_curve_1d_lut_init(struct drm_device *dev, struct drm_colorop *co
>  				  struct drm_plane *plane, uint32_t lut_size,
>  				  enum drm_colorop_lut1d_interpolation_type lut1d_interpolation,
>  				  bool allow_bypass);
> +int drm_colorop_ctm_3x3_init(struct drm_device *dev, struct drm_colorop *colorop,
> +			     struct drm_plane *plane, bool allow_bypass);
>  int drm_colorop_ctm_3x4_init(struct drm_device *dev, struct drm_colorop *colorop,
>  			     struct drm_plane *plane, bool allow_bypass);
>  int drm_colorop_mult_init(struct drm_device *dev, struct drm_colorop *colorop,
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index 290c2e32f692..a4a7ab689631 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -905,6 +905,14 @@ enum drm_colorop_type {
>  	 */
>  	DRM_COLOROP_CTM_3X4,
>  
> +	/**
> +	 * @DRM_COLOROP_CTM_3X3:
> +	 *
> +	 * A 3x3 matrix. Its values are specified via the
> +	 * &drm_color_ctm struct provided via the DATA property.
> +	 */
> +	DRM_COLOROP_CTM_3X3,
> +
>  	/**
>  	 * @DRM_COLOROP_MULTIPLIER:
>  	 *
> -- 
> 2.42.0
> 

-- 
With best wishes
Dmitry
