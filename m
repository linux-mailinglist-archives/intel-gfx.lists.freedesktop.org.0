Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 346B49E211E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 16:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1972F10EA54;
	Tue,  3 Dec 2024 15:07:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="uAxWGJQU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8433D10E22B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 15:07:44 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2ffa97d99d6so59976891fa.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2024 07:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733238462; x=1733843262; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=lWbH3zMSdms9NO7AAsx3IbTvYjORoi36HukYDYRA/nA=;
 b=uAxWGJQUciy6cZjY0bOcEkK5SdjTko45UyxFNhdKcUBjwdKsbtLW1ilfgmrK7WK53X
 HHFpF+VRKPWvVTjUBZWDzKE6rqAmDsD42/0Z8dW8TZ7G0/S8j3qlkAujxlTnn6gXa0nA
 7iWgBBMOnDrs0N5ZrBZB3JXmxuGGIoOFlTRpx2vwz+HqQxAVzUqL8K7AJiT6rnTNS1cd
 r938nqCeLR2kzoh2jwECHif1T35s0oYPoql/pcjm23Unw6RPRo1aUBY3LDHJuPIAVHKq
 7BkZ/EW7/WAEnFE0KtPHzazV5rBktU7lk+Wkx94HIruQ0RTHWFrQKAgbfCiDKPLs5IzJ
 pqhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733238462; x=1733843262;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lWbH3zMSdms9NO7AAsx3IbTvYjORoi36HukYDYRA/nA=;
 b=IU3QnLT6RM9SG+RWVGqXE+sXD4P9tZFtxbQUIXK7BhNp5utSygXEZhdBnHrXhV2ZFt
 KOxOqpS4zFW9IAWeCsmK+NRVKIQUa7Mr1ipl2789w1GSV5iy/1H5d7ebmLUW0gEEqz96
 LdW2ycbXqihmDkpRI486qRw+D1X7kICIZUvIE8eaBnYjMrfDH+5xB+UWQMO6l7xjP/qP
 atounFexUU8JuUBgY1oW/0cI0csVocSDZEeyjApIlgooeHCVwEYOWx8LOzWFB4Vmw1hW
 g3+eHA1hZsoLrTWPjoqxHqJZ49TScp/YeVbEjJylsksqzNeIx5gVZ/ITm3oylIKN4yaO
 8pTg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV0je9YVRck7xq6Yk6Tw4XnmYcHZ53oJY0EwakUCyf3zRmpwk/Jow2rpjzk9z3E7sqln0y8LGeFWZw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzHRVgQwFuw6hsawLRfO69pAV9I5T6EHKn8dloTb2Md5FkxVOoW
 XpkhHp/u3Q2Kkl5lW9eTB+Sdlllo6f80V1Yo+BVhe7EVQXLq7fA9jsXpBWQXKBg=
X-Gm-Gg: ASbGncsumHq+0mnoYQoTqHRi8x/aQmAe19v9/dlTdnb3P4fPNoa+9gR478u9InUpZ1s
 7k5nreT7wO2JPF7GWsKdF9gbBs3Y9q7wa/Xv8+0tgpHcML1Vb6UikGo2+wcXn07Wgydhsn0GCrr
 gcWrWX0gaxSRHkX61v2RppzwOtSManrhkx8j/pUDAARJB0sjvmOtUe+X7NBxbTbbdG+A0ExQhAV
 YlJhDhXhSuin9dXzAqWtedI+Ln/T5Ql/e1hg3HzkIVAroK+oXEa2ig3sJVkxqwjcIwQLQ/AQjkW
 LVideRm+8teHbtULqrL8HyxmR75tzQ==
X-Google-Smtp-Source: AGHT+IE4op0fBfSMViWwf+uR6hh75A1LB20yneF2jOu95urNsdHGrHXCDhe9Wzm0x5CGD2AF/fabrw==
X-Received: by 2002:ac2:521c:0:b0:53e:1ba2:ee19 with SMTP id
 2adb3069b0e04-53e1ba2efc6mr211770e87.20.1733238462177; 
 Tue, 03 Dec 2024 07:07:42 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53df647020dsm1845829e87.132.2024.12.03.07.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2024 07:07:40 -0800 (PST)
Date: Tue, 3 Dec 2024 17:07:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 01/10] drm/crtc: Add histogram properties
Message-ID: <4vedftgyu3wp77uz4kjdnn5yxzahiftx3hallgez4mcol7tcdv@cbxeme2khujn>
References: <20241203055520.1704661-1-arun.r.murthy@intel.com>
 <20241203055520.1704661-2-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241203055520.1704661-2-arun.r.murthy@intel.com>
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

On Tue, Dec 03, 2024 at 11:25:11AM +0530, Arun R Murthy wrote:
> Add variables for histogram drm_property, its corrsponding crtc_state
> variables and define the structure pointed by the blob property.

Missing description of the data format. How can other drivers implememt
it if the format is not documented?

> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  include/drm/drm_crtc.h      | 48 +++++++++++++++++++++++++++++++++++++
>  include/uapi/drm/drm_mode.h | 11 +++++++++
>  2 files changed, 59 insertions(+)
> 
> diff --git a/include/drm/drm_crtc.h b/include/drm/drm_crtc.h
> index 8b48a1974da3..3984cfa00cbf 100644
> --- a/include/drm/drm_crtc.h
> +++ b/include/drm/drm_crtc.h
> @@ -274,6 +274,38 @@ struct drm_crtc_state {
>  	 */
>  	struct drm_property_blob *gamma_lut;
>  
> +	/**
> +	 * @histogram_enable:
> +	 *
> +	 * This will be set if histogram is enabled for the CRTC.
> +	 */
> +	bool histogram_enable;
> +
> +	/**
> +	 * @histogram_data:
> +	 *
> +	 * This will hold the pointer to the struct drm_histogram.
> +	 * The element data in drm_histogram will hold the pointer to the
> +	 * histogram data generated by the hardware.
> +	 */
> +	struct drm_property_blob *histogram_data;
> +
> +	/**
> +	 * @histogram_-iet:
> +	 *
> +	 * This will hold the pointer to the struct drm_histogram.
> +	 * The element data in drm_histogram will hold the pointer to the
> +	 * histogram image enhancement generated by the algorithm that is to
> +	 * be fed back to the hardware.
> +	 */
> +	struct drm_property_blob *histogram_iet;
> +	/**
> +	 * @histogram_iet_updates:
> +	 *
> +	 * Convey that the image enhanced data has been updated by the user
> +	 */
> +	bool histogram_iet_updated;
> +
>  	/**
>  	 * @target_vblank:
>  	 *
> @@ -1088,6 +1120,22 @@ struct drm_crtc {
>  	 */
>  	struct drm_property *scaling_filter_property;
>  
> +	/**
> +	 * @histogram_enable_property: Optional CRTC property for enabling or
> +	 * disabling global histogram.
> +	 */
> +	struct drm_property *histogram_enable_property;
> +	/**
> +	 * @histogram_data_proeprty: Optional CRTC property for getting the
> +	 * histogram blob data.
> +	 */
> +	struct drm_property *histogram_data_property;
> +	/**
> +	 * @histogram_iet_proeprty: Optional CRTC property for writing the
> +	 * image enhanced blob data
> +	 */
> +	struct drm_property *histogram_iet_property;
> +
>  	/**
>  	 * @state:
>  	 *
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index c082810c08a8..da4396f57ed1 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -1355,6 +1355,17 @@ struct drm_mode_closefb {
>  	__u32 pad;
>  };
>  
> +/**
> + * struct drm_histogram
> + * data_ptr: pointer to the array fo u32 data. This data can be histogram
> + * raw data or image enhanced data
> + * nr_elements: number of elements pointed by the data @data_ptr
> + */
> +struct drm_histogram {
> +	__u64 data_ptr;
> +	__u32 nr_elements;
> +};
> +
>  #if defined(__cplusplus)
>  }
>  #endif
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry
