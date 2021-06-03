Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3AE39ACFB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 23:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E946E7E2;
	Thu,  3 Jun 2021 21:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A492F6E7E2
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 21:35:32 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id m18so4239339wmq.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 14:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ETqk+TS+RhJcGSGeygoPcx5WaohgRdr/W/jh7AJxL0c=;
 b=Yjz6dv5/LJyOYFQM1VdxTjhe9G4AyHdwQ4XsrmF0be1Pzcc6bj8r/HimUM9qx9yIiT
 AZndik360Kko6Ot4nEwvZ+I64hrSXV02rcnBzqbyweRvhjpFk+nJx+OjA7IkhADNnisL
 7knIPuFpwLr9PZ+0qKowmou7GjeDcoFOAg+LM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ETqk+TS+RhJcGSGeygoPcx5WaohgRdr/W/jh7AJxL0c=;
 b=I2uNtLNytuSxVZYMsxW+ayvytaLhgc9/bGxc8NsRpl9CIHBbSIZOGne8VeIS1SxgoY
 YNeyu4LCaWIZQKaGKp5g7rlVcq6cnvtg4BmJdGo37LMRuOjfv7UfhkpMtQAI+uLVOeG4
 oNytQUmw5XHxSfQh3UVAp4bg7bqZqnYDuL+ydU+IEK5p/QzWaoXzBHPPUKbLuSbwEgcn
 Zec6RAnUlettxvBMXSJmZFH7HImVA33Mtcm0JvkXUVJpuwh81s1BfcBNnThZ3QDKIk3v
 m92aiWlEYgLf73Hws9F7iJAGRvs9R+JUg/92ksdCVTcYRGVcLQH0Nl1B4mnIGzQIBS3T
 1Qaw==
X-Gm-Message-State: AOAM533zt0Aw3Cm2Ih6EYLAb+jj8N4NiJqvkcwPhKqYg8RrMrCRABDA7
 elF/5D3tPLkx4lMDmMdmdgJVzfXt+XlLyQ==
X-Google-Smtp-Source: ABdhPJwUo+nmPZJLdnDfsC1fRh2HZobqdZb08FJt2u5Ckz2AEylyZhFewVorxqgWQ3tIFl7wRGfBcg==
X-Received: by 2002:a7b:c189:: with SMTP id y9mr440596wmi.106.1622756131346;
 Thu, 03 Jun 2021 14:35:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c12sm5229999wrr.90.2021.06.03.14.35.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Jun 2021 14:35:30 -0700 (PDT)
Date: Thu, 3 Jun 2021 23:35:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YLlLIG9sBjouIJE2@phenom.ffwll.local>
References: <20210603051630.2635-1-matthew.brost@intel.com>
 <20210603051630.2635-9-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210603051630.2635-9-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 08/20] drm/i915: Promote ptrdiff() to
 i915_utils.h
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 02, 2021 at 10:16:18PM -0700, Matthew Brost wrote:
> From: Michal Wajdeczko <michal.wajdeczko@intel.com>
> 
> Generic helpers should be placed in i915_utils.h.

Random rant, but we're _way_ too happy to just stuff random things into
i915_utils.h without trying to properly upstream it.

For thinks like this the general dumping ground would be kernel.h, there's
a few pointer helpers there already. Follow up patch maybe nice.
-Daniel

> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_utils.h | 5 +++++
>  drivers/gpu/drm/i915/i915_vma.h   | 5 -----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index f02f52ab5070..5259edacde38 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -201,6 +201,11 @@ __check_struct_size(size_t base, size_t arr, size_t count, size_t *size)
>  	__T;								\
>  })
>  
> +static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
> +{
> +	return a - b;
> +}
> +
>  /*
>   * container_of_user: Extract the superclass from a pointer to a member.
>   *
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index dc6926d89626..eca452a9851f 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -151,11 +151,6 @@ static inline void i915_vma_put(struct i915_vma *vma)
>  	i915_gem_object_put(vma->obj);
>  }
>  
> -static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
> -{
> -	return a - b;
> -}
> -
>  static inline long
>  i915_vma_compare(struct i915_vma *vma,
>  		 struct i915_address_space *vm,
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
