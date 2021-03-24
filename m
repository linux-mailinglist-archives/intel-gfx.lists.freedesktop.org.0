Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C4234789A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 13:37:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15896E9F9;
	Wed, 24 Mar 2021 12:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95CEC6E9F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 12:37:06 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 a132-20020a1c668a0000b029010f141fe7c2so1118741wmc.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 05:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=gtq/hThFqXcsyIC2/ThJJk45FOLKg8QZTLf9lOLcPkU=;
 b=HrC6LVjFRUoDuhAQnYI7M0B94dvl1ie9/FwimTF2ulTatkAUv8t4I9Mhr1HlXm2ZdN
 wCwcxyWF3i3OTryi9lPF7Nw5LSzvid0XV3SkLTp/d9w54AqpeFnoJ8XZrQ2EJ1ksKNku
 NrX/s4OHq7yLjY8RWf5ItSShzD8i8spzXNHDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=gtq/hThFqXcsyIC2/ThJJk45FOLKg8QZTLf9lOLcPkU=;
 b=cpccbFVXnW6Aav59ZD59d45RWi7uGnwJkvyr/37WQcS0oBQ/pmBNWKCLtQ6Us0KX7A
 fqfsYaI3GK8A8vpT42ohX3AKGyGhJBbGh/devR9oGNNfqtspSgg03cvRlvnV6ApwmMgR
 rn+oUALDtH04i7gnoIYdAzBLn0JDxWdiLFrhtUZ+kv5ViPPnGTbs2OEqYnzMbpn+zoGC
 nH12Qut7/++e6WQThM35Mak9/SIFSwZ3G1JkA4DeLT0Sx9ySFfrtHgSE2vhr0C6yJdke
 PehGVtfFI3kJ4+ugyTIXfYFnk+VuBixGL2+zZvz9WO7HV4FcqbC37US5bMAEMKQWOUNz
 3owg==
X-Gm-Message-State: AOAM530URNMj25i2HTmmSMiDooBzsETZuEVS1cks9arreYEfLqbe1mJT
 FvYBHWNCsvjIN6u48gj3vNlneg==
X-Google-Smtp-Source: ABdhPJxnHXbxOKNptGd/5/qPRTRhN6NB2PVSlFb+xT7fk/8G2NrZDZLsBNWBw20vv+asDhB8TalDYw==
X-Received: by 2002:a05:600c:d1:: with SMTP id
 u17mr2785451wmm.64.1616589425368; 
 Wed, 24 Mar 2021 05:37:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i17sm2991897wrp.77.2021.03.24.05.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 05:37:04 -0700 (PDT)
Date: Wed, 24 Mar 2021 13:37:02 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YFsybn94Z8Rj94s4@phenom.ffwll.local>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
 <20210323155059.628690-28-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323155059.628690-28-maarten.lankhorst@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v9 27/70] drm/i915: Make __engine_unpark()
 compatible with ww locking.
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

On Tue, Mar 23, 2021 at 04:50:16PM +0100, Maarten Lankhorst wrote:
> Take the ww lock around engine_unpark. Because of the
> many many places where rpm is used, I chose the safest option
> and used a trylock to opportunistically take this lock for
> __engine_unpark.

Correct choice, runtime pm resume is on the critical path for dma-fence
(we might need to wake up the device for e.g. atomic modeset commits), so
definitely can't have a dma_resv_lock in here.
-Daniel

> =

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Reviewed-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/=
i915/gt/intel_engine_pm.c
> index 27d9d17b35cb..bddc5c98fb04 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -27,12 +27,16 @@ static void dbg_poison_ce(struct intel_context *ce)
>  		int type =3D i915_coherent_map_type(ce->engine->i915);
>  		void *map;
>  =

> +		if (!i915_gem_object_trylock(obj))
> +			return;
> +
>  		map =3D i915_gem_object_pin_map(obj, type);
>  		if (!IS_ERR(map)) {
>  			memset(map, CONTEXT_REDZONE, obj->base.size);
>  			i915_gem_object_flush_map(obj);
>  			i915_gem_object_unpin_map(obj);
>  		}
> +		i915_gem_object_unlock(obj);
>  	}
>  }
>  =

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
