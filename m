Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DC88993BE
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 05:24:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDB241137FC;
	Fri,  5 Apr 2024 03:24:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="KWddfEKX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D431137FD
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 03:24:05 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id
 2adb3069b0e04-516d2600569so827075e87.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Apr 2024 20:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1712287443; x=1712892243; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=djoX0jMYV8yyXli2/egywXNwRqExDcF+IAyDdSCliAI=;
 b=KWddfEKXhVR/Tq1L95in2fvK2cewe8rK+GYAmD0VBh7ii71knKkhAum83x4joUSVqI
 3F8WwmjBkov46Cs3t5+FtOwfPAzA2BHStqN4MddRBxC2m/7txtIzxD4c9cnsUFb4GrOB
 cKF45diD7bpOZMtDrE3L9D4ohsrI7p3A8xWP4A9pSsDX0w9b4TUgX33+gES/+RZNCqus
 uWYL0SbDbQ7C7EWoK2XF/oFx6Ro/TUHaTfZv11qbJ99TtryBdLzlTQFL1v1Hv4OdhFsi
 JXQ2btFKeLHPOQ+YSFgs+Y9pXpFwqIk6Z/pBTs6vOUHynYNJKBT+xTuNxb0s9Zki5GO1
 kVVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712287443; x=1712892243;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=djoX0jMYV8yyXli2/egywXNwRqExDcF+IAyDdSCliAI=;
 b=dDWj/pvjrL3/1NYwKKL8v5tUx5C/tXfWptJa9wplLFXLimady/+GeRqtIgVDj5K6QU
 +x3pCQYjMn+djhtPOG+UQhFv8I99wM8tezx1iyeFWkY/wPy9tOgGtxyxHvLfprcjCLmj
 QcFbzNPIe7tLd+8QsgHassBbgMI3c+Snnx5YYOZY631uFKkG9f9CXQjxjZ2oHIg25wgv
 bws+LsI7qiN75SvabkRM/JisB2r0Ackix7sA9lRT+NL+S6gTQAVrTPC3T5SCjOhhNgbD
 m3jcBOLkhIevupj/DhnfoY90zjYvOLmMcoM3NTKw7QhF3QIUjH+MKRok3bRbjqO5I3qY
 pT2w==
X-Forwarded-Encrypted: i=1;
 AJvYcCU70EaND0ExFaYD5gMlfbVo7NGtZIEdQYtonUB3zdN40KgePkHCEktmM4sVAs+junuR+E6XdmotZ6iestbXff+Lq+ILm9rr/96JZV1GnGKP
X-Gm-Message-State: AOJu0YzhT2hgBTj1syHAuwlR+VarGrhX4lvIFSjpD4j7TiUBFFbg6PRi
 RGdA+/unJdHTTqmhmvUOwT/jOCOBz4fbbfQF5qW/F8518u4i7l0vNTYh8xscTKo=
X-Google-Smtp-Source: AGHT+IEIYG99dBzN4VueKpfW7+dyTWa53Fr9LTF5gytJHu7FYsHu+6uYU2u16oTmwD5X3RZ8TFDawQ==
X-Received: by 2002:a05:6512:3e17:b0:516:cc31:dbf0 with SMTP id
 i23-20020a0565123e1700b00516cc31dbf0mr191938lfv.17.1712287443372; 
 Thu, 04 Apr 2024 20:24:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
 by smtp.gmail.com with ESMTPSA id
 c5-20020ac24145000000b00516c8826719sm70778lfi.197.2024.04.04.20.24.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Apr 2024 20:24:02 -0700 (PDT)
Date: Fri, 5 Apr 2024 06:24:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 stable@vger.kernel.org
Subject: Re: [PATCH 01/12] drm/client: Fully protect modes[] with
 dev->mode_config.mutex
Message-ID: <jeg4se3nkphfpgovaidzu5bspjhyasafplmyktjo6pwzlvpj5s@cmjtomlj4had>
References: <20240404203336.10454-1-ville.syrjala@linux.intel.com>
 <20240404203336.10454-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240404203336.10454-2-ville.syrjala@linux.intel.com>
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

On Thu, Apr 04, 2024 at 11:33:25PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The modes[] array contains pointers to modes on the connectors'
> mode lists, which are protected by dev->mode_config.mutex.
> Thus we need to extend modes[] the same protection or by the
> time we use it the elements may already be pointing to
> freed/reused memory.
> 
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10583
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

I tried looking for the proper Fixes tag, but it looks like it might be
something like 386516744ba4 ("drm/fb: fix fbdev object model + cleanup properly.")


> ---
>  drivers/gpu/drm/drm_client_modeset.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
> index 871e4e2129d6..0683a129b362 100644
> --- a/drivers/gpu/drm/drm_client_modeset.c
> +++ b/drivers/gpu/drm/drm_client_modeset.c
> @@ -777,6 +777,7 @@ int drm_client_modeset_probe(struct drm_client_dev *client, unsigned int width,
>  	unsigned int total_modes_count = 0;
>  	struct drm_client_offset *offsets;
>  	unsigned int connector_count = 0;
> +	/* points to modes protected by mode_config.mutex */
>  	struct drm_display_mode **modes;
>  	struct drm_crtc **crtcs;
>  	int i, ret = 0;
> @@ -845,7 +846,6 @@ int drm_client_modeset_probe(struct drm_client_dev *client, unsigned int width,
>  		drm_client_pick_crtcs(client, connectors, connector_count,
>  				      crtcs, modes, 0, width, height);
>  	}
> -	mutex_unlock(&dev->mode_config.mutex);
>  
>  	drm_client_modeset_release(client);
>  
> @@ -875,6 +875,7 @@ int drm_client_modeset_probe(struct drm_client_dev *client, unsigned int width,
>  			modeset->y = offset->y;
>  		}
>  	}
> +	mutex_unlock(&dev->mode_config.mutex);
>  
>  	mutex_unlock(&client->modeset_mutex);
>  out:
> -- 
> 2.43.2
> 

-- 
With best wishes
Dmitry
