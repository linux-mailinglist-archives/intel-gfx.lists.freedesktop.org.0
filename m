Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB9D1923BD
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 10:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBADA6E7D3;
	Wed, 25 Mar 2020 09:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7044A6E7D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 09:10:26 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id u10so1886624wro.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 02:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8noF1vh3ZS5Dy+5mjPjbqz54c93TNGQasF4ZB3hwySc=;
 b=Jf6FcP61UfBJ2RJYMbCqr07pjGKucN2ePt2aqOHFivbuBD4gbt/Bo23PMSIVwj6p+5
 8BUQ8CuFYKsn370Eoa2TC+clGhRNqKCqXx2Fcz4H70Il6QDGPcns8QWSdGElkLRr70VG
 kpixrfd+Fw0nkTwtvnNTfGQrmcuruHzbHBjS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8noF1vh3ZS5Dy+5mjPjbqz54c93TNGQasF4ZB3hwySc=;
 b=FRGtDyQU+bxCDanTJzpDXiZua5XCyyJcT49HMiQ6F3GCl8HqyeEMbUbQBSnXuCulbz
 kV79ghgsPGQbU4okAH1tWGJL1hnyfjmhqpU2B5bNGZMvEv93RRojyTyxL7FHtciKiyBI
 YQDs+7MGTR/zRmYgMKf9ejdSJTuCKxNfzqEwPR+1vFIqTGzOYfkjmaHxx2pzONAG1zla
 T3GS04aEsGL1Dv7UCWKonYFoH9dcU+GYftooZ8N0l7SiFo8HnUBNRv3OYKo0eb3mgQT8
 ROSNsTS8gfwI7+YUSWrTu134Te7bfdA4XAuUfhl35xwyxiVZOmlRdMNTeMrc605yTv5K
 wFiw==
X-Gm-Message-State: ANhLgQ2WgqJo3SmNpLV/3pEnWEkNd2BcaVuCxptEACpXWyfIP4IS11sX
 wkuknz+48DY6Xr75Z+RuKaNz7KCwCcI8Gi7n
X-Google-Smtp-Source: ADFU+vuOvFPcs4p/NRLDtmgnxZWpwHgk+qmjWWNf0jCLwEXh3Eee2j5+wrzhaY4+EtSFDKpKY0BsGA==
X-Received: by 2002:adf:dd8f:: with SMTP id x15mr2429406wrl.201.1585127425076; 
 Wed, 25 Mar 2020 02:10:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w11sm33030305wrv.86.2020.03.25.02.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 02:10:24 -0700 (PDT)
Date: Wed, 25 Mar 2020 10:10:22 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325091022.GY2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <017d9bdc171481da13ba9492492625fc6878844d.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <017d9bdc171481da13ba9492492625fc6878844d.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/wopcm: convert to drm device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 04:36:38PM +0200, Jani Nikula wrote:
> Prefer drm_dbg() over DRM_DEV_DEBUG_DRIVER() and drm_err() over
> dev_err().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_wopcm.c | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_wopcm.c b/drivers/gpu/drm/i915/intel_wopcm.c
> index 2bb9f9f9a50a..2186386a45c8 100644
> --- a/drivers/gpu/drm/i915/intel_wopcm.c
> +++ b/drivers/gpu/drm/i915/intel_wopcm.c
> @@ -86,7 +86,7 @@ void intel_wopcm_init_early(struct intel_wopcm *wopcm)
>  	else
>  		wopcm->size = GEN9_WOPCM_SIZE;
>  
> -	DRM_DEV_DEBUG_DRIVER(i915->drm.dev, "WOPCM: %uK\n", wopcm->size / 1024);
> +	drm_dbg(&i915->drm, "WOPCM: %uK\n", wopcm->size / 1024);
>  }
>  
>  static inline u32 context_reserved_size(struct drm_i915_private *i915)
> @@ -112,7 +112,7 @@ static inline bool gen9_check_dword_gap(struct drm_i915_private *i915,
>  	offset = guc_wopcm_base + GEN9_GUC_WOPCM_OFFSET;
>  	if (offset > guc_wopcm_size ||
>  	    (guc_wopcm_size - offset) < sizeof(u32)) {
> -		dev_err(i915->drm.dev,
> +		drm_err(&i915->drm,
>  			"WOPCM: invalid GuC region size: %uK < %uK\n",
>  			guc_wopcm_size / SZ_1K,
>  			(u32)(offset + sizeof(u32)) / SZ_1K);
> @@ -131,7 +131,7 @@ static inline bool gen9_check_huc_fw_fits(struct drm_i915_private *i915,
>  	 * firmware uploading would fail.
>  	 */
>  	if (huc_fw_size > guc_wopcm_size - GUC_WOPCM_RESERVED) {
> -		dev_err(i915->drm.dev, "WOPCM: no space for %s: %uK < %uK\n",
> +		drm_err(&i915->drm, "WOPCM: no space for %s: %uK < %uK\n",
>  			intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_HUC),
>  			(guc_wopcm_size - GUC_WOPCM_RESERVED) / SZ_1K,
>  			huc_fw_size / 1024);
> @@ -166,7 +166,7 @@ static inline bool __check_layout(struct drm_i915_private *i915, u32 wopcm_size,
>  
>  	size = wopcm_size - ctx_rsvd;
>  	if (unlikely(range_overflows(guc_wopcm_base, guc_wopcm_size, size))) {
> -		dev_err(i915->drm.dev,
> +		drm_err(&i915->drm,
>  			"WOPCM: invalid GuC region layout: %uK + %uK > %uK\n",
>  			guc_wopcm_base / SZ_1K, guc_wopcm_size / SZ_1K,
>  			size / SZ_1K);
> @@ -175,7 +175,7 @@ static inline bool __check_layout(struct drm_i915_private *i915, u32 wopcm_size,
>  
>  	size = guc_fw_size + GUC_WOPCM_RESERVED + GUC_WOPCM_STACK_RESERVED;
>  	if (unlikely(guc_wopcm_size < size)) {
> -		dev_err(i915->drm.dev, "WOPCM: no space for %s: %uK < %uK\n",
> +		drm_err(&i915->drm, "WOPCM: no space for %s: %uK < %uK\n",
>  			intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_GUC),
>  			guc_wopcm_size / SZ_1K, size / SZ_1K);
>  		return false;
> @@ -183,7 +183,7 @@ static inline bool __check_layout(struct drm_i915_private *i915, u32 wopcm_size,
>  
>  	size = huc_fw_size + WOPCM_RESERVED_SIZE;
>  	if (unlikely(guc_wopcm_base < size)) {
> -		dev_err(i915->drm.dev, "WOPCM: no space for %s: %uK < %uK\n",
> +		drm_err(&i915->drm, "WOPCM: no space for %s: %uK < %uK\n",
>  			intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_HUC),
>  			guc_wopcm_base / SZ_1K, size / SZ_1K);
>  		return false;
> @@ -242,10 +242,8 @@ void intel_wopcm_init(struct intel_wopcm *wopcm)
>  		return;
>  
>  	if (__wopcm_regs_locked(gt->uncore, &guc_wopcm_base, &guc_wopcm_size)) {
> -		DRM_DEV_DEBUG_DRIVER(i915->drm.dev,
> -				     "GuC WOPCM is already locked [%uK, %uK)\n",
> -				     guc_wopcm_base / SZ_1K,
> -				     guc_wopcm_size / SZ_1K);
> +		drm_dbg(&i915->drm, "GuC WOPCM is already locked [%uK, %uK)\n",
> +			guc_wopcm_base / SZ_1K, guc_wopcm_size / SZ_1K);
>  		goto check;
>  	}
>  
> @@ -266,8 +264,8 @@ void intel_wopcm_init(struct intel_wopcm *wopcm)
>  	guc_wopcm_size = wopcm->size - ctx_rsvd - guc_wopcm_base;
>  	guc_wopcm_size &= GUC_WOPCM_SIZE_MASK;
>  
> -	DRM_DEV_DEBUG_DRIVER(i915->drm.dev, "Calculated GuC WOPCM [%uK, %uK)\n",
> -			     guc_wopcm_base / SZ_1K, guc_wopcm_size / SZ_1K);
> +	drm_dbg(&i915->drm, "Calculated GuC WOPCM [%uK, %uK)\n",
> +		guc_wopcm_base / SZ_1K, guc_wopcm_size / SZ_1K);
>  
>  check:
>  	if (__check_layout(i915, wopcm->size, guc_wopcm_base, guc_wopcm_size,
> -- 
> 2.20.1

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
