Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A02BA4E7052
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 10:54:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08FBC10E190;
	Fri, 25 Mar 2022 09:53:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BADE10E140
 for <Intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 09:53:57 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id u16so10120640wru.4
 for <Intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 02:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zxLG5SFa52Xp/yDsbFXLnir1Dj2dhVdcPQMSPh6G+XU=;
 b=aoDNIkoUR4nU8u87U2LHkn/nYAmF6p9FBWTmueS9E80LV3X3oU1xojQCoTuIWk0Da3
 aCi2J46Z/SM6oeWN/w84eNiEZNu2zuNmOXgSkwXki3ECupDYRg2ibQ7NEIw1RP9zxgiQ
 pg5YarSYemPw3CJVo6wQUq/ur0++nvqwWpsd4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zxLG5SFa52Xp/yDsbFXLnir1Dj2dhVdcPQMSPh6G+XU=;
 b=iJdW0VisI+dMM/fJD8BtdiQlcdgWk+3kBnf8HHTUk39/WjE5Xu4seaWYpe9JmgaR1u
 JspB9le+ALPaImJX3zhwJTDAuS1o6RGRCsJBbrUxPoCBVBG3gBAQLXxS2dNCWE6IZdCh
 NzFLVFKd8boG8OBZDnTVSoUmjvxj2c5lR323Gme+p8EQze4URhJvIu2LNidNfMAScLl7
 RFPXEhB71g+ba/9XnJZyPFU5CuHp+nAdcBABuR63wBt3asHAl1SVg+3QLXsFFXUEUw/+
 k1HN7VvNPkb/3F5XYQ8JI8bPJ7mpYyY+15ElDBX/TfsFJiXyxjqTVDtRSmt6b2kKoDGp
 cTng==
X-Gm-Message-State: AOAM5321f05sqPsTiHODM2o+Na6DNrDWhgLEsIfnN1fVC8Wrjq9nUT52
 gZQvBJfRYEANVWrpE+0N9N6Njw==
X-Google-Smtp-Source: ABdhPJxNuFYxyXViMdEVWK7p6UVP6AS5m6JbEfv0VhfnnTLuzBUTiTvR6XkuaCNu8/kEtHh7l1u8rQ==
X-Received: by 2002:a05:6000:ca:b0:203:dbf3:8f8a with SMTP id
 q10-20020a05600000ca00b00203dbf38f8amr8442082wrx.10.1648202035811; 
 Fri, 25 Mar 2022 02:53:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 s6-20020adfc546000000b00203f3de84d7sm4848203wrf.23.2022.03.25.02.53.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 02:53:55 -0700 (PDT)
Date: Fri, 25 Mar 2022 10:53:53 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Yj2RMTTkQxC/vzre@phenom.ffwll.local>
References: <20220325094916.2186367-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220325094916.2186367-1-tvrtko.ursulin@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uapi: Document
 DRM_I915_QUERY_HWCONFIG_BLOB
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 25, 2022 at 09:49:16AM +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> UAPI with absolutely no documentation should not have been added -
> clarify blob format and content will be described externally.
> 
> Fixes: 78e1fb3112c0 ("drm/i915/uapi: Add query for hwconfig blob")
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Co-developed-by: Jordan Justen <jordan.l.justen@intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: John Harrison <john.c.harrison@intel.com>
> Cc: Jon Ewins <jon.ewins@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  include/uapi/drm/i915_drm.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 071ffd9d51f1..8d0719bee8fc 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2683,6 +2683,9 @@ struct drm_i915_perf_oa_config {
>   *
>   * The behaviour is determined by the @query_id. Note that exactly what
>   * @data_ptr is also depends on the specific @query_id.
> + *
> + * For specific queries see:
> + *  * `GuC HWCONFIG blob uAPI`_

I'd put this into the @query_id section, and then make it an item list
with the #define as the label, so that it becomes tidy and can neatly
iterate them all.

Anyway we can bikeshed this all more in a follow-up.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>   */
>  struct drm_i915_query_item {
>  	/** @query_id: The id for this query */
> @@ -3135,6 +3138,16 @@ struct drm_i915_query_memory_regions {
>  	struct drm_i915_memory_region_info regions[];
>  };
>  
> +/**
> + * DOC: GuC HWCONFIG blob uAPI
> + *
> + * The GuC produces a blob with information about the current device.
> + * i915 reads this blob from GuC and makes it available via this uAPI.
> + *
> + * The format and meading of the blob content are documented in the
> + * Programmer's Reference Manual.
> + */
> +
>  /**
>   * struct drm_i915_gem_create_ext - Existing gem_create behaviour, with added
>   * extension support using struct i915_user_extension.
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
