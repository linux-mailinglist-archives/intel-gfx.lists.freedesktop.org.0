Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A59BD361BB5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 10:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C12256E1EC;
	Fri, 16 Apr 2021 08:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CF46E1EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 08:49:48 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id a4so25919521wrr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 01:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uRoTxFF1OXVjG6/o0fiqDR8JlnjHW21SFX6N1jpeew0=;
 b=HB12Sn3GcS28ZdaK2je7hzLN6yuB26rPFK2GBWA+gp6xPXpvTh4miQAmQDXC77oQJi
 37bqEkVsYf8Lx3yHty83ut3Zkj8AWJSGkryeCo9XDt2okm5IJV4dMv1Qc1vHCkVxyrk5
 YQG878C3A4kfPRcwBAKX1z0uJpeKaB911u7PE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uRoTxFF1OXVjG6/o0fiqDR8JlnjHW21SFX6N1jpeew0=;
 b=lmY9oHUtGtEKAj9EcxXJ86z1bHvWKlCL9GQdpl7uUFVQ7LATwVqm9gcIsCROO6jsbt
 J8+ENsF/7svPvaSHXVT88uMFENJMvdGWmSx2DQMiSI553nKSTGaZ46LMq5GSrs53pmWi
 v6gflwXUa04BkbE4aODVAeCvT9XGQdRjGaYvy56VG0/4am/D73rT9XLWDCZaWERX/biK
 8W3x1U8YfZF40Ebt1Nqgvt2RL1IjnE9a+TljXGBozxCDlTqZLu1jn9TYdFfQaN3NEhfj
 9rkmcrh5I+XiVX0ntlNB08ycvfuWBtoc5HbZJYCLjWeDmwT5G9seA473OrveKQjtAifU
 PG/w==
X-Gm-Message-State: AOAM532gFXY/i5978AKzLn+A/CzSPRbBxeVDhslYTsE0Etf+4KSK/rwL
 4YGB96ba/6whZT6yQIeMsguJ/A==
X-Google-Smtp-Source: ABdhPJwFbH3HsEBvSQl+03qrhVW7mwxuoTpi0+a+UEefTsyragQVuxZZRYgwHVERoYfHOzB+hHp1Mg==
X-Received: by 2002:a5d:4533:: with SMTP id j19mr8118133wra.111.1618562986888; 
 Fri, 16 Apr 2021 01:49:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b15sm2324810wmj.46.2021.04.16.01.49.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Apr 2021 01:49:46 -0700 (PDT)
Date: Fri, 16 Apr 2021 10:49:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YHlPqPi6Mhn6dDW7@phenom.ffwll.local>
References: <20210415155958.391624-1-matthew.auld@intel.com>
 <20210415155958.391624-3-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210415155958.391624-3-matthew.auld@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/uapi: convert i915_query
 and friend to kernel doc
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Kenneth Graunke <kenneth@whitecape.org>, mesa-dev@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 15, 2021 at 04:59:57PM +0100, Matthew Auld wrote:
> Add a note about the two-step process.
> 
> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Jordan Justen <jordan.l.justen@intel.com>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Kenneth Graunke <kenneth@whitecape.org>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Dave Airlie <airlied@gmail.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: mesa-dev@lists.freedesktop.org
> ---
>  include/uapi/drm/i915_drm.h | 57 ++++++++++++++++++++++++++++++-------
>  1 file changed, 46 insertions(+), 11 deletions(-)
> 
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index d9c954a5a456..ef36f1a0adde 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2210,14 +2210,23 @@ struct drm_i915_perf_oa_config {
>  	__u64 flex_regs_ptr;
>  };
>  
> +/**
> + * struct drm_i915_query_item - An individual query for the kernel to process.
> + *
> + * The behaviour is determined by the @query_id. Note that exactly what
> + * @data_ptr is also depends on the specific @query_id.
> + */
>  struct drm_i915_query_item {
> +	/** @query_id: The id for this query */
>  	__u64 query_id;
>  #define DRM_I915_QUERY_TOPOLOGY_INFO    1
>  #define DRM_I915_QUERY_ENGINE_INFO	2
>  #define DRM_I915_QUERY_PERF_CONFIG      3
>  /* Must be kept compact -- no holes and well documented */
>  
> -	/*
> +	/**
> +	 * @length:
> +	 *
>  	 * When set to zero by userspace, this is filled with the size of the
>  	 * data to be written at the data_ptr pointer. The kernel sets this
>  	 * value to a negative value to signal an error on a particular query
> @@ -2225,21 +2234,26 @@ struct drm_i915_query_item {
>  	 */
>  	__s32 length;
>  
> -	/*
> +	/**
> +	 * @flags:
> +	 *
>  	 * When query_id == DRM_I915_QUERY_TOPOLOGY_INFO, must be 0.
>  	 *
>  	 * When query_id == DRM_I915_QUERY_PERF_CONFIG, must be one of the
> -	 * following :
> -	 *         - DRM_I915_QUERY_PERF_CONFIG_LIST
> -	 *         - DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID
> -	 *         - DRM_I915_QUERY_PERF_CONFIG_FOR_UUID
> +	 * following:
> +	 *
> +	 *	- DRM_I915_QUERY_PERF_CONFIG_LIST
> +	 *      - DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID
> +	 *      - DRM_I915_QUERY_PERF_CONFIG_FOR_UUID
>  	 */
>  	__u32 flags;
>  #define DRM_I915_QUERY_PERF_CONFIG_LIST          1
>  #define DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID 2
>  #define DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_ID   3
>  
> -	/*
> +	/**
> +	 * @data_ptr:
> +	 *
>  	 * Data will be written at the location pointed by data_ptr when the
>  	 * value of length matches the length of the data to be written by the
>  	 * kernel.
> @@ -2247,16 +2261,37 @@ struct drm_i915_query_item {
>  	__u64 data_ptr;
>  };
>  
> +/**
> + * struct drm_i915_query - Supply an array of drm_i915_query_item for the kernel
> + * to fill out.
> + *
> + * Note that this is generally a two step process for each drm_i915_query_item
> + * in the array:
> + *
> + *	1.) Call the DRM_IOCTL_I915_QUERY, giving it our array of

I'm not sure this results in pretty rendering in htmldocs output. Please
check this.

This also made me realize that we're not pulling any of this into the drm
documents at all. I'll revise my review on patch 1.

Docs here look good:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>


> + *	drm_i915_query_item, with drm_i915_query_item.size set to zero. The
> + *	kernel will then fill in the size, in bytes, which tells userspace how
> + *	memory it needs to allocate for the blob(say for an array of
> + *	properties).
> + *
> + *	2.) Next we call DRM_IOCTL_I915_QUERY again, this time with the
> + *	drm_i915_query_item.data_ptr equal to our newly allocated blob. Note
> + *	that the i915_query_item.size should still be the same as what the
> + *	kernel previously set. At this point the kernel can fill in the blob.
> + *
> + */
>  struct drm_i915_query {
> +	/** @num_items: The number of elements in the @items_ptr array */
>  	__u32 num_items;
>  
> -	/*
> -	 * Unused for now. Must be cleared to zero.
> +	/**
> +	 * @flags: Unused for now. Must be cleared to zero.
>  	 */
>  	__u32 flags;
>  
> -	/*
> -	 * This points to an array of num_items drm_i915_query_item structures.
> +	/**
> +	 * @items_ptr: This points to an array of num_items drm_i915_query_item
> +	 * structures.
>  	 */
>  	__u64 items_ptr;
>  };
> -- 
> 2.26.3
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
