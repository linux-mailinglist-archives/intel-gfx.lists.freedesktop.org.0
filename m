Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43023A12BEA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 20:44:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6995010E0B8;
	Wed, 15 Jan 2025 19:44:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="f79HtBaa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECDF010E0B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 19:44:28 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-54024aa9febso210806e87.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 11:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736970267; x=1737575067; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=tMaT1v2t6mauZDNp/D8NOcA+CuNvanJECIK8yrof2Lw=;
 b=f79HtBaa+7AJnsDPY0SM8EIz+utpHSOh7zdmjOk0b84IcPQPJHttp3TpClMSmh3Dqr
 oBUofU8bJvNP9qdcjlGX1weSWhctPh71sGEd0J8ANgy/glAB8WDKB2D8SqjIEwf23T5Z
 psr9qwx7v2G5SRMbXLFX9FfQ7vXQnMzmK7YwYRPprbf3Qy6z4i6iaIoOKvuI1OidMma5
 MltQ1sH4A7vXENW5356isod2A0YBxbHTM5GxPQ3Qs76Zt72ZcWZldeby2S7c2qIHv8Pe
 9qhWd4xayBG09Uyd/S3HzP3IKgObh9kN9JaW5GRrRUvA9ayBdQye7DqYBAfY4+mETI/R
 bJVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736970267; x=1737575067;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tMaT1v2t6mauZDNp/D8NOcA+CuNvanJECIK8yrof2Lw=;
 b=T6OWbE3eYpaI+wu0Y6xNwzuRNP9q/+FNHYjeV4lntX9qvPhewKt7SwERwHh33XoVSZ
 NGZP6zucQD1xVOSgI64Inpfr+Zx4ORJc30ARkVcdkfKsY4gKB60FKw4mvH4UJrgAd8dK
 O/HNEck1lTtQr70UIH6OnKHVzvW1DN7TDSC4L63rnp084gyYiKChhx5CEJheUIUTupJ6
 1uMFXqlWYPX577BcGcH3OKgvDuxy9FhmgAKa6d7QlJC5Re3s0vkXA0iDhklNXlFxKE1G
 Q6ecwovlpUHjngB5xd2OeN0U6fKf3T/uW09cKmv5En0Dj/1Sq0xPP7Emw+XY7Vv+OeDf
 iWmA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWkTyg1i976tFPoxphuPN91vmUsMjEkMCsTmMqPU2Fm6rEqCQ68RySdba7QgcN96JVFWLoVI3WxE6M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzd6Of9trRnH6JQorq/za6royaVMFS8wGgEnYnG1dqJfMRK2pNn
 VOFdAa0QsWfAa5RkwTfKgT5WZk2oyyadFU8p9+8/5Ef25qb4OQ5vM0JxSfCbsYs=
X-Gm-Gg: ASbGncv71TQglaQJXfEdL5qyNoQMX5el9QzMoSGGvBBIpZ+HJUB9QJLXRFF4rfXZLrk
 xT/u3shidVz2KAfbr/l9v2y+ieMaPdasX8WdCN333heyqjOWlrW20/EyKQ9ZFQa0H0iltydFIQS
 ZpGcE8JJsXxDNPuaC5IgNOVTLn+komuK4fsi1WOniVwvcCGWd/BJMb8xPTyOGGinlN9GsizJJtO
 0EVTTxslvcNTlW+LsoSrmO4oOTf3RTJTR/wA1ZYt6jw5NQJbk4Q5mEabNrSnJzI2yiNwOaKuEFh
 PdvUJvr40J4966oKKaL2BqhLpdq/4yUVwZU5
X-Google-Smtp-Source: AGHT+IH6YoD7+bbj5kTu7/QU0bK73SQM/497T9d2x3PxWxybGWqzpDw5OeEwrHJFcoMgINsxJEuYOg==
X-Received: by 2002:a05:6512:10d2:b0:542:2990:6e99 with SMTP id
 2adb3069b0e04-542845ae19bmr7857940e87.2.1736970267134; 
 Wed, 15 Jan 2025 11:44:27 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5428bea6b6dsm2077095e87.124.2025.01.15.11.44.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2025 11:44:26 -0800 (PST)
Date: Wed, 15 Jan 2025 21:44:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com, uma.shankar@intel.com,
 Importedfromf20241218-dpst-v7-0-81bfe7d08c2d@intel.com,
 20240705091333.328322-1-mohammed.thasleem@intel.com
Subject: Re: [PATCH v7 01/14] drm: Define histogram structures exposed to user
Message-ID: <kwklrd2zjovabsa537jwg3bpqilvhfmxxyr4exmqbi2b35uxej@mhequ6ttibsd>
References: <20250110-dpst-v7-0-605cb0271162@intel.com>
 <20250110-dpst-v7-1-605cb0271162@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250110-dpst-v7-1-605cb0271162@intel.com>
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

On Fri, Jan 10, 2025 at 01:15:29AM +0530, Arun R Murthy wrote:
> Display Histogram is an array of bins and can be generated in many ways
> referred to as modes.
> Ex: HSV max(RGB), Wighted RGB etc.
> 
> Understanding the histogram data format(Ex: HSV max(RGB))
> Histogram is just the pixel count.
> For a maximum resolution of 10k (10240 x 4320 = 44236800)
> 25 bits should be sufficient to represent this along with a buffer of 7
> bits(future use) u32 is being considered.
> max(RGB) can be 255 i.e 0xFF 8 bit, considering the most significant 5
> bits, hence 32 bins.
> Below mentioned algorithm illustrates the histogram generation in
> hardware.
> 
> hist[32] = {0};
> for (i = 0; i < resolution; i++) {
> 	bin = max(RGB[i]);
> 	bin = bin >> 3;	/* consider the most significant bits */
> 	hist[bin]++;
> }
> If the entire image is Red color then max(255,0,0) is 255 so the pixel
> count of each pixels will be placed in the last bin. Hence except
> hist[31] all other bins will have a value zero.
> Generated histogram in this case would be hist[32] = {0,0,....44236800}
> 
> Description of the structures, properties defined are documented in the
> header file include/uapi/drm/drm_mode.h
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  include/uapi/drm/drm_mode.h | 59 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index c082810c08a8b234ef2672ecf54fc8c05ddc2bd3..7a7039381142bb5dba269bdaec42c18be34e2d05 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -1355,6 +1355,65 @@ struct drm_mode_closefb {
>  	__u32 pad;
>  };
>  
> +/*
> + * Maximum resolution at present 10k, 10240x4320 = 44236800
> + * can be denoted in 25bits. With an additional 7 bits in buffer each bin
> + * can be a u32 value.
> + * Maximum value of max(RGB) is 255, so max 255 bins.

HDR planes have higher max value for a component.
Likewise even in an RGB24 case there are 256 possible values. It's not
clear why 0 gets excluded.

> + * If the most significant 5 bits are considered, then bins = 0xff >> 3
> + * will be 32 bins.

If 5 bits are considered, there will be 2^5 bins, no matter of 0xff >>
3.

> + * For illustration consider a full RED image of 10k resolution considering all
> + * 8 bits histogram would look like hist[255] = {0,0,....44236800}
> + */
> +#define DRM_MODE_HISTOGRAM_HSV_MAX_RGB			(1 << 0)

Why do you have a bitshift here?

> +
> +/**
> + * struct drm_histogram_caps
> + *
> + * @histogram_mode: histogram generation modes, defined in the above macros
> + * @bins_count: number of bins for a chosen histogram mode. For illustration
> + *		refer the above defined histogram mode.
> + */
> +struct drm_histogram_caps {
> +	u8 histogram_mode;
> +	u32 bins_count;
> +};
> +
> +/**
> + * struct drm_histogram_config
> + *
> + * @enable: flag to enable/disable histogram
> + * @hist_mode: histogram mode(HSV max(RGB), RGB, LUMA etc)
> + * @reserved1: Reserved for future use
> + * @reserved2: Reserved for future use
> + * @reserved3: Reserved for future use
> + * @reserved4: Reserved for future use
> + */
> +struct drm_histogram_config {
> +	bool enable;
> +	u8 hist_mode;
> +	u32 reserved1;
> +	u32 reserved2;
> +	u32 reserved3;
> +	u32 reserved4;

What for? Also this struct leaves a 3-byte hole, which might be not so
beneficial.

> +};
> +
> +/**
> + * struct drm_histogram
> + *
> + * @config: histogram configuration data pointed by struct drm_histogram_config
> + * @data_ptr: pointer to the array of histogram.
> + *	      Histogram is an array of bins. Data format for each bin depends
> + *	      on the histogram mode. Refer to the above histogram modes for
> + *	      more information.
> + * @nr_elements: number of bins in the histogram.
> + */
> +struct drm_histogram {
> +	struct drm_histogram_config config;
> +	__u64 data_ptr;
> +	__u32 nr_elements;
> +};
> +
>  #if defined(__cplusplus)
>  }
>  #endif
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry
