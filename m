Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 764C89DEFA6
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2024 10:44:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1638010E12A;
	Sat, 30 Nov 2024 09:44:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="KbP6iO5q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B4010E39B
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 09:44:28 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2ffbf4580cbso27757701fa.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 01:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1732959867; x=1733564667; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FbvaH9LKCnPT0pbZACKdx7vQLf3R9MTqB1SqayWa8ck=;
 b=KbP6iO5qE2U/7p+u6HgZl8bucWifXvjOOhUw2KAA6HYTbOL1ZM5ySGRG2XJwwI+eri
 T8mSOakWRqaMNFI/9M7plsljgyCz6Dpk5vaxIwvEDg79MKE4+51mn8qwbtTpGJaUzID0
 lDw8B+RA/kAOjNNVvSxm8pN/+C6jf0z83UiGSYrAH26iv8g1jtcbYUEZJux3UKppJ17L
 X2sn59cfOPJ70/u4IsBbag0hISITNK/4OBn1LQrrpX6ASOIawp1SDdu+v7OiOdiY+HLW
 ejfEYLAs76jpeHZXvrezWimkOwJmZizZoBKHKMdqxkUgaR+VnWVsazeot1yFol2UtmYs
 HbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732959867; x=1733564667;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FbvaH9LKCnPT0pbZACKdx7vQLf3R9MTqB1SqayWa8ck=;
 b=dRv3YEYoZADxIVNxKuPI4N9TE5DN1tHX7QfHt2aUZ7dH2fNi0ubY4OW7QQR5NzKsH2
 r6NDdON4IOdigxVmp5CyYIMC6fQtqPOhi69p6xkFJ/mtsfCJcLLt8f/q4AwgjnJr8miP
 LbI9bVyXJ3Gr6ul0vlZu6ZcloduG1sjSQkg5b7VaCt+tS9PJ2wXCDvNHH+HS4nJ/1fVW
 exfb1sSVQe4uKE8n031MwlOxwhsvs92EIQB0EjKpa2TQPUda5oEcozVZf4vxZjflnLyk
 iiq13WO0MSBZ662FR+4QT2ZdrfeBk3Il6sSfjA+SVHMwN75HfqL+ZXsLrWfW51Ef/55p
 5/Aw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX2HxKMoTUyCMKolk04+rRWKCFbpwpz+oP8KXoZZaZXIOv0v3fiw7llW9iByC20gTaI8pUGy3/0QuM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YymALHlXnGp3oC5KL1jHvW82zLLFIgP3II8Pwa7/rqcQ79X7S6l
 oUWTnU3Hb6SCKmgoly7o36ft9XubxhLAY6jM5iiFo3EtaZQKZVhY3hPx/cAoCXY=
X-Gm-Gg: ASbGncve5qHyl7drkNeDKSSnyN7evXhcxq6rlK9T2OlBOGnYCweGJzRIELPq6inNxMN
 HEm4aPpdOxM7p/xg4aCAtQiRsOh+ug1qo54K50RemqGEGfLDeegD2MAjCQ4lemwfo3MLCZsiAfT
 gxerri6XP3uwICY+VEEZOoI7Rn8q/U3Gv+0TO6EUBk4l4OOBpo2OuupO7xJ4gA9UEAy6LWanM+V
 Hqh3wS75/16fylFhEdU/2ZLWOVwCFqWz+9jOWPo6c4lCxiugwCKYRpVZr/szBk2XBf3cuOxqXPP
 /4sk5EFZ5rBzfpxwFnB0DRuPGEcn7Q==
X-Google-Smtp-Source: AGHT+IHN3SeiVY9d9SC6fNYYL0H9b7UBPVcL/sDLpopdHvVTNUVyuvrlWLxctDx0XOn2cw7ryWlWYQ==
X-Received: by 2002:a2e:a543:0:b0:2ff:dee8:1d18 with SMTP id
 38308e7fff4ca-2ffdee81d96mr63966471fa.34.1732959866933; 
 Sat, 30 Nov 2024 01:44:26 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-2ffdfca1c79sm6157271fa.101.2024.11.30.01.44.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2024 01:44:25 -0800 (PST)
Date: Sat, 30 Nov 2024 11:44:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Uma Shankar <uma.shankar@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 harry.wentland@amd.com, 
 pekka.paalanen@haloniitty.fi, sebastian.wick@redhat.com, jadahl@redhat.com,
 mwen@igalia.com, contact@emersion.fr, naveen1.kumar@intel.com, 
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: Re: [v2 07/25] drm: Add 1D LUT multi-segmented color op
Message-ID: <loqr5fyomwdp7ip4vjk5onxdsmtttgtwh3nctejzcguss5phav@6amw6gzksokr>
References: <20241126132730.1192571-1-uma.shankar@intel.com>
 <20241126132730.1192571-8-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126132730.1192571-8-uma.shankar@intel.com>
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

On Tue, Nov 26, 2024 at 06:57:12PM +0530, Uma Shankar wrote:
> From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> 
> Add support for color ops that can be programmed
> by 1 dimensional multi segmented Look Up Tables.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/drm_atomic.c      | 4 ++++
>  drivers/gpu/drm/drm_atomic_uapi.c | 3 +++
>  include/uapi/drm/drm_mode.h       | 8 ++++++++
>  3 files changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 8a75f4a0637a..f344d64d42ce 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -802,6 +802,10 @@ static void drm_atomic_colorop_print_state(struct drm_printer *p,
>  		drm_printf(p, "\tinterpolation=%s\n", drm_get_colorop_lut1d_interpolation_name(colorop->lut1d_interpolation));
>  		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
>  		break;
> +	case DRM_COLOROP_1D_LUT_MULTSEG:
> +		drm_printf(p, "\thw cap blob id=%d\n", state->hw_caps ? state->hw_caps->base.id : 0);
> +		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
> +		break;
>  	case DRM_COLOROP_CTM_3X3:
>  		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
>  		break;
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index 46cc7b0df6e8..326159bff91c 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -720,6 +720,9 @@ static int drm_atomic_color_set_data_property(struct drm_colorop *colorop,
>  		size = modes[index].lut_stride[0] * modes[index].lut_stride[1] * modes[index].lut_stride[2] *
>  		       sizeof(struct drm_color_lut);
>  		break;
> +	case DRM_COLOROP_1D_LUT_MULTSEG:
> +		elem_size = sizeof(struct drm_color_lut_32);
> +		break;
>  	default:
>  		/* should never get here */
>  		return -EINVAL;
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index 9ed8b1b1357a..d126a5410eea 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -923,6 +923,14 @@ enum drm_colorop_type {
>  	 */
>  	DRM_COLOROP_CTM_3X4,
>  
> +	/**
> +	 * @DRM_COLOROP_1D_LUT_MULTSEG:
> +	 *
> +	 * A 3x4 matrix. Its values are specified via the
> +	 * &drm_color_ctm_3x4 struct provided via the DATA property.

The comment is incorrect

> +	 */
> +	DRM_COLOROP_1D_LUT_MULTSEG,
> +
>  	/**
>  	 * @DRM_COLOROP_CTM_3X3:
>  	 *
> -- 
> 2.42.0
> 

-- 
With best wishes
Dmitry
