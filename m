Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B8A347A5C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 15:12:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D45F6EB98;
	Wed, 24 Mar 2021 14:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D21BF6EB8F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 14:12:25 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so1270985wmy.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 07:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=TjDv7GVPX5g8pabX4QhVksC4wCTYctieyy1B2V9ZfTw=;
 b=JmsoA+aoAoJQnm0Tm7cEtW4jJnvWpcyU6upNGXLjA9VTkrr/g/QI1xEMgTiPgxYIXR
 MJ4PHH8ZOazk9vzw0b+sT1Wwra26IqFLB8bk4cBDI4RmeJ0XoyVg2IefA2JIHvHH7zGG
 lm8v1MyrkQZHggfpEkQu4CWPXYsoXgsaCdy5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=TjDv7GVPX5g8pabX4QhVksC4wCTYctieyy1B2V9ZfTw=;
 b=IAqG4h0x1mZn2efUVTarEDCtKMHRqJT18boMUZcyjV1W0jr7NLpworQJ36LhBQxaRu
 9Z/5c1zJ70l6c/tCCdekZMcXY0lefn2om7nyYrdxXvUSYOrbfCZXUhVyH2bcH1wFl91Z
 9Sdp6U0F/0p5/o6LlU+CPeHKsvds22ZWoXwOBxog9DfOkmtsKbUBW8fy0Hr25hSLhjgC
 r9ryHWgRTgb7c4oEjl/7nm2evZAJKkph/m94KnPGcGo46IqxZVLpFSDdM6y88uImX/tc
 HltCxPkCtMNJoPZTRQK+DyfDNWKQM9QqilDL/XRkuZ018fIWEqmOw/kMOZd0ecKG6vUV
 Q99w==
X-Gm-Message-State: AOAM533NBgp+f1s3KcwBru5HcwWC7tNkcXXKxgxFb4od2ZLV17zBeF1/
 J023xqBkNt8JBkfI7GylOXynuw==
X-Google-Smtp-Source: ABdhPJxu/haxnWy5b1QuVRUrIyRfSlMI0NkulEVC30meavipE111hapmfvdpm02L9Nbp1Q8MMi3wOg==
X-Received: by 2002:a7b:c096:: with SMTP id r22mr3191921wmh.102.1616595144387; 
 Wed, 24 Mar 2021 07:12:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u3sm3317218wrt.82.2021.03.24.07.12.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 07:12:23 -0700 (PDT)
Date: Wed, 24 Mar 2021 15:12:22 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YFtIxuO62yGw61DK@phenom.ffwll.local>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
 <20210323155059.628690-29-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323155059.628690-29-maarten.lankhorst@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v9 28/70] drm/i915: Take obj lock around
 set_domain ioctl
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 04:50:17PM +0100, Maarten Lankhorst wrote:
> We need to lock the object to move it to the correct domain,
> add the missing lock.
> =

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Reviewed-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>

This conflicted real bad with the in-flight -gt-next stuff that wasn't
reset yet, so I picked up the old version here:

https://lore.kernel.org/intel-gfx/20210128162612.927917-29-maarten.lankhors=
t@linux.intel.com/

That one looks a lot more reasonable.
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c | 41 ++++++++++------------
>  1 file changed, 19 insertions(+), 22 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm=
/i915/gem/i915_gem_domain.c
> index 41dae0d83dbb..e3537922183b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -456,13 +456,7 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, vo=
id *data,
>  		 * userptr validity
>  		 */
>  		err =3D i915_gem_object_userptr_validate(obj);
> -		if (!err)
> -			err =3D i915_gem_object_wait(obj,
> -						   I915_WAIT_INTERRUPTIBLE |
> -						   I915_WAIT_PRIORITY |
> -						   (write_domain ? I915_WAIT_ALL : 0),
> -						   MAX_SCHEDULE_TIMEOUT);
> -		goto out;
> +		goto out_wait;
>  	}
>  =

>  	/*
> @@ -476,6 +470,10 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, vo=
id *data,
>  		goto out;
>  	}
>  =

> +	err =3D i915_gem_object_lock_interruptible(obj, NULL);
> +	if (err)
> +		goto out;
> +
>  	/*
>  	 * Flush and acquire obj->pages so that we are coherent through
>  	 * direct access in memory with previous cached writes through
> @@ -487,7 +485,7 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, voi=
d *data,
>  	 */
>  	err =3D i915_gem_object_pin_pages(obj);
>  	if (err)
> -		goto out;
> +		goto out_unlock;
>  =

>  	/*
>  	 * Already in the desired write domain? Nothing for us to do!
> @@ -500,10 +498,6 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, vo=
id *data,
>  	 * without having to further check the requested write_domain.
>  	 */
>  	if (READ_ONCE(obj->write_domain) =3D=3D read_domains)
> -		goto out_wait;
> -
> -	err =3D i915_gem_object_lock_interruptible(obj, NULL);
> -	if (err)
>  		goto out_unpin;
>  =

>  	if (read_domains & I915_GEM_DOMAIN_WC)
> @@ -513,19 +507,22 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, v=
oid *data,
>  	else
>  		i915_gem_object_set_to_cpu_domain(obj, write_domain);
>  =

> -	i915_gem_object_unlock(obj);
> +out_unpin:
> +	i915_gem_object_unpin_pages(obj);
>  =

> +out_unlock:
> +	i915_gem_object_unlock(obj);
>  out_wait:
> -	err =3D i915_gem_object_wait(obj,
> -				   I915_WAIT_INTERRUPTIBLE |
> -				   I915_WAIT_PRIORITY |
> -				   (write_domain ? I915_WAIT_ALL : 0),
> -				   MAX_SCHEDULE_TIMEOUT);
> -	if (write_domain)
> -		i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
> +	if (!err) {
> +		err =3D i915_gem_object_wait(obj,
> +					  I915_WAIT_INTERRUPTIBLE |
> +					  I915_WAIT_PRIORITY |
> +					  (write_domain ? I915_WAIT_ALL : 0),
> +					  MAX_SCHEDULE_TIMEOUT);
> +		if (write_domain)
> +			i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
> +	}
>  =

> -out_unpin:
> -	i915_gem_object_unpin_pages(obj);
>  out:
>  	i915_gem_object_put(obj);
>  	return err;
> -- =

> 2.31.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
