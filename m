Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8C79DEFA4
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2024 10:43:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E557410E397;
	Sat, 30 Nov 2024 09:43:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="hsaOwrPO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 935D410E398
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 09:43:20 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id
 38308e7fff4ca-2ffd796ba0aso25896401fa.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 01:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1732959799; x=1733564599; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CTGBtqe5NJuPcDpf6dQX3m2vAT1n9KYqpgUQSwBGip8=;
 b=hsaOwrPO2QYnU3VwkfOjKiO+K9OrsbJc4CbFutO87xFOwngpBOZov4sRtd2U7HQgzU
 1BXgYpu10dHr+tJYFzjkNhVW+ZKWJWry2n6yhG/a/wP0BDCLKKA7c9faia5BAw8ml6ko
 giEMYnYc15l50RQ4nJLI/gG+Jszh3kHSo44O122eRJAAoa541AIfWtdkEZmqCryapqSn
 lSBTlO1FmBypfxcqOHNl37Zv1H+UUu2mC9j5hBHuVMAs8Wl/VSCVbV7tdu7e/bSE+pm6
 9EfJ+4hnIGxNEbKHBz4FphYw93m1hwnP5M6LogTZ9UWr6ajAKFB5tfz65RAlZdXV1qh8
 6ZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732959799; x=1733564599;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CTGBtqe5NJuPcDpf6dQX3m2vAT1n9KYqpgUQSwBGip8=;
 b=A97tTvWfEU/cf5uRqQAaEzbm6zOhRuYufb9sr67VopL19uk2tmV1kQhWWAacc/Mdwt
 xyLlgW7aFBQkrr005f7SOllWJBpIsKzf8BwodPUWs8hOQxmKDXL59jAMlpOJF2OvL3XK
 5RIbyqEMg6Xcy5Vn4HBuRcPWhIc75Bk+YMy9WadjBsSflkXFfP8gEK9jHtzbfhCucpWA
 bUlK5iwiMZVDBxfteqKc6Kj86jycqkv7LVThK9K+9H331W6TqL2DtnwVmtmcsq8I7f/k
 rylxNEfu4m3IBkwAKzfEsjOn5cGoGEF2q5kmoXTPKk7AChGyo3qM76rCUI/ADmZf8bRm
 cIBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV2GAY2EDK+RBU8A9Z+Q6J4jUvo3LxZALBX34O2dzjjAwogDGfuOz47B+dLA/di1/IJw2PWa7H8cMs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzryloSqOrMdg3Ptw7dPNAUPsh+lZkKPo1WlauB/LRyhfzTXu3g
 PEP6TcvN/pck3rU9EaavxnUlpIYIsKYv15zkOoPouwSn1bq5S95uYeJUEGlYEqk=
X-Gm-Gg: ASbGncurhtHhYJw63GnwX0U09mZRQ3t/N4Lp85trIVVwocHBCyVg2jb62YoIuZZ0oVi
 GJ6ieh3AywhnRj/ZXbofyaRWZtywbSYIh+J+6PeZqeARR7W3b+8BKx6CGfVFMg0rFxMk8jyFkMN
 GEgq+XGkNGnfXJTszKcZ0iPS9PqyN17PQR60lZv892yPK+BJFahrdl999FZ4MR3eBA73wORsWnY
 KmmaXoWbv3fwuSLMjrOYyCqb/aoT1D8cRrvL8VyWYlk0aTLxExrgYXDjCsjmFeo8klczASr0eWJ
 yXym6PTMFn5EYTsodY5eb1N6uhQuWw==
X-Google-Smtp-Source: AGHT+IFuDWo+AA1UbdMQRc9r+KwOao8NefSFqqyTX0pSLZcVq04GBJO7eJY6YG6HIoN0U/cABkUg0A==
X-Received: by 2002:a05:6512:291:b0:53d:f09e:99b0 with SMTP id
 2adb3069b0e04-53df09e99f6mr6738623e87.0.1732959798660; 
 Sat, 30 Nov 2024 01:43:18 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53df64a0742sm725518e87.261.2024.11.30.01.43.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2024 01:43:17 -0800 (PST)
Date: Sat, 30 Nov 2024 11:43:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Uma Shankar <uma.shankar@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 harry.wentland@amd.com, 
 pekka.paalanen@haloniitty.fi, sebastian.wick@redhat.com, jadahl@redhat.com,
 mwen@igalia.com, contact@emersion.fr, naveen1.kumar@intel.com
Subject: Re: [v2 05/25] drm: Add Color ops capability property
Message-ID: <5jv337lffqqkebsy4ttn62peqnb5a7d4igqe5fvgrzi2kkzjfk@vub74vxn2nqk>
References: <20241126132730.1192571-1-uma.shankar@intel.com>
 <20241126132730.1192571-6-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126132730.1192571-6-uma.shankar@intel.com>
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

On Tue, Nov 26, 2024 at 06:57:10PM +0530, Uma Shankar wrote:
> Add capability property which a colorop can expose it's
> hardware's abilities. It's a blob property that can be
> filled with respective data structures depending on the
> colorop. The user space is expected to read this property
> and program the colorop accordingly.

If it's a blob, where is its contents documented? Also please point out
the non-IGT userspace implementation that uses the property.

> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/drm_atomic_uapi.c |  3 +++
>  include/drm/drm_colorop.h         | 12 ++++++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index ba68358c0ffe..46cc7b0df6e8 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -780,6 +780,9 @@ drm_atomic_colorop_get_property(struct drm_colorop *colorop,
>  		*val = state->size;
>  	} else if (property == colorop->data_property) {
>  		*val = (state->data) ? state->data->base.id : 0;
> +	} else if (property == colorop->hw_caps_property) {
> +		*val = state->hw_caps ?
> +			state->hw_caps->base.id : 0;
>  	} else {
>  		return -EINVAL;
>  	}
> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
> index 56b51fafebdf..58e5b87c6d56 100644
> --- a/include/drm/drm_colorop.h
> +++ b/include/drm/drm_colorop.h
> @@ -146,6 +146,11 @@ struct drm_colorop_state {
>  	 * Number of entries of the custom LUT. This should be read-only.
>  	 */
>  	uint32_t size;
> +	/**
> +	 * @hw_caps:
> +	 *
> +	 */
> +	struct drm_property_blob *hw_caps;
>  
>  	/**
>  	 * @lut_3d_modes:
> @@ -297,6 +302,13 @@ struct drm_colorop {
>  	 */
>  	struct drm_property *curve_1d_type_property;
>  
> +	/**
> +	 * @hwlut_caps_property:
> +	 *
> +	 * Property to expose hardware lut capbilities.
> +	 */
> +	struct drm_property *hw_caps_property;
> +
>  	/**
>  	 * @multiplier_property:
>  	 *
> -- 
> 2.42.0
> 

-- 
With best wishes
Dmitry
