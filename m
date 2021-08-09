Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A723E478C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 16:30:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A3FA89C33;
	Mon,  9 Aug 2021 14:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21033890DB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Aug 2021 14:30:10 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id n12so11688670wrr.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 07:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ulKLYDyDhZCFQFNpQX7bUUzH0fPJ1GCos/eb2Uikxqo=;
 b=anMpxrdzPu7JulpYqZKndQ0ROHUjhn3e3SKnRGv0S06cWtLDssVxX2hUR/1D6xbvs+
 bCGg0HvppSakoUjsF8oW3oM+VcoaIGB0HzMOuMFUTp2LIgzuhKM6hl7FkYzxrIwruHvj
 4x3Nc9rXmR6X0OPMP8mOrg8pjua8vbyVdJYRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ulKLYDyDhZCFQFNpQX7bUUzH0fPJ1GCos/eb2Uikxqo=;
 b=phztwLrhPCJFzbhmam/ryZHz9/UCrhxk0Wrcaty88Xbj8crnqM+0QvS8Guymi3Vx9i
 toz5YfHZzMG/hkNF/4WJC4+sOHp/8Ycsth2mOIBSYXN91vxhxy4DBdfXi3ypk+/NlIl0
 iHBpO1vSqDeV1/ZkldCEGeSti2FgpkmCI2gcNUZgghm+OHaWO5XBVxJsIGj175C+8guv
 U58KOf0HODh0NLJ22RK7cTrRwt2uiw39Utey86+2n0oi8bi1tXcnaa6EvJ2A6HauU/ny
 dsptoH6lto2+X8agHaaZ2edLGfnmJYZontU3+0H+Xuyx9OBethtQsB9em07Gz8iVJIFw
 Xrhw==
X-Gm-Message-State: AOAM532p1ymbY6KKICaDvrq1WjRKHzdhovQQIHjgvMb1qcjngctdiN6a
 YsHLykk7GkSAbV2AoeI2RsynbQ==
X-Google-Smtp-Source: ABdhPJz2SuOJYSVKTm8g29KDNo5o5bWCxddvY2MgGw+8Dg3HmBq/7cY6ZD6+Aduqz6hGE4KedbAvvg==
X-Received: by 2002:a5d:6386:: with SMTP id p6mr7945947wru.143.1628519408623; 
 Mon, 09 Aug 2021 07:30:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p2sm20215221wrr.21.2021.08.09.07.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 07:30:08 -0700 (PDT)
Date: Mon, 9 Aug 2021 16:30:06 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <YRE77nFgpGQUX/Sc@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-15-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210803222943.27686-15-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 14/46] drm/i915: Expose logical engine
 instance to user
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

On Tue, Aug 03, 2021 at 03:29:11PM -0700, Matthew Brost wrote:
> Expose logical engine instance to user via query engine info IOCTL. This
> is required for split-frame workloads as these needs to be placed on
> engines in a logically contiguous order. The logical mapping can change
> based on fusing. Rather than having user have knowledge of the fusing we
> simply just expose the logical mapping with the existing query engine
> info IOCTL.
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Uapi must have a link to the userspace MR/patch set using this, and to the
igt patch set validating it.

Ideally in each patch, since it's way too hard to unfortunately find the
cover letter late on.

Jason even went as far as making this a hard requirement because he wasted
a bit too much time trying to find the userspace for new uapi:

https://lore.kernel.org/dri-devel/20210804185704.624883-1-jason@jlekstrand.net/

Cheers, Daniel

>---
>  drivers/gpu/drm/i915/i915_query.c | 2 ++
>  include/uapi/drm/i915_drm.h       | 8 +++++++-
>  2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> index e49da36c62fb..8a72923fbdba 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -124,7 +124,9 @@ query_engine_info(struct drm_i915_private *i915,
>  	for_each_uabi_engine(engine, i915) {
>  		info.engine.engine_class = engine->uabi_class;
>  		info.engine.engine_instance = engine->uabi_instance;
> +		info.flags = I915_ENGINE_INFO_HAS_LOGICAL_INSTANCE;
>  		info.capabilities = engine->uabi_capabilities;
> +		info.logical_instance = ilog2(engine->logical_mask);
>  
>  		if (copy_to_user(info_ptr, &info, sizeof(info)))
>  			return -EFAULT;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 7f13d241417f..ef72e07fe08c 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2706,14 +2706,20 @@ struct drm_i915_engine_info {
>  
>  	/** @flags: Engine flags. */
>  	__u64 flags;
> +#define I915_ENGINE_INFO_HAS_LOGICAL_INSTANCE		(1 << 0)
>  
>  	/** @capabilities: Capabilities of this engine. */
>  	__u64 capabilities;
>  #define I915_VIDEO_CLASS_CAPABILITY_HEVC		(1 << 0)
>  #define I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC	(1 << 1)
>  
> +	/** @logical_instance: Logical instance of engine */
> +	__u16 logical_instance;
> +
>  	/** @rsvd1: Reserved fields. */
> -	__u64 rsvd1[4];
> +	__u16 rsvd1[3];
> +	/** @rsvd2: Reserved fields. */
> +	__u64 rsvd2[3];
>  };
>  
>  /**
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
