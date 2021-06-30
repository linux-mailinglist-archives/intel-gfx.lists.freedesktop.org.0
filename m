Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F973B80F4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 12:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4D56E98A;
	Wed, 30 Jun 2021 10:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE386E98A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 10:49:21 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id u6so3047574wrs.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 03:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5mIitfMlQQpHHTjr3OGL8ZSUUolAr2IVn00ANK/gKak=;
 b=ThrNEPX4+ZlXIX5hZEqgtmm5Z6lSJOl6xQenM1/PTtkFhZ1raXk8IC5cpeQO3VwKQq
 SIOzhaaJwg6x/rgMwTpqPTGkQmgMlQ58KsOVjtPMYRsVeTLGQonaHkhOUf2lu7b+EO5E
 mI8OSNA057PYBVw3iSATPHhKVhEQ/i1fnT0kM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5mIitfMlQQpHHTjr3OGL8ZSUUolAr2IVn00ANK/gKak=;
 b=RhqdLyVq4YdWpy5teCEuk8ETgBIbfz6xLS9Q8e4IqUEWgMjYt2+tAGBlsiscbeMGte
 ewHl6Xva0mPq7UT/IBp5Q/hwC2b2ESAhdmcWyug4Y/toZa7QUSbmrFdJkvoF2ZoAfb95
 nGIN+NJr/5DDoqh3Y2UX46o/YCH5efD2eBGEejsZQaOAmxoK8sdF5eYZmEWzxPQFy3MG
 fnhc7smhcfknqEIZjsLl1746mhHU1/cxOrqbgfJDSkKZj0h0gzNudVgSgNTVcAczY+FO
 bo+sTy1wqLqdsvAeCkMXy9+6YDpoBfI2Igjn69lAfdJohBuoJ60rH5Hn/xiUmgzoKyOW
 tqXA==
X-Gm-Message-State: AOAM532i2kdonqhbJoLxbwD0CAUV3aV0FdthLGPSW1YdzCg6E77lXgbN
 fKaFl8oI8UspvvfTqw2DO02xjQ==
X-Google-Smtp-Source: ABdhPJzHsVAUoLQ0NLiJHRokEj5NLXYhDZL3wMbmSVq8zIL5dcaJ7mKLmDmRKSk0D2C/BoTxuEfTWw==
X-Received: by 2002:adf:fb92:: with SMTP id a18mr38763555wrr.182.1625050160239; 
 Wed, 30 Jun 2021 03:49:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a11sm6207546wrt.71.2021.06.30.03.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Jun 2021 03:49:19 -0700 (PDT)
Date: Wed, 30 Jun 2021 12:49:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YNxMLb60vNDuTcdM@phenom.ffwll.local>
References: <20210630095228.6665-1-tzimmermann@suse.de>
 <20210630095228.6665-2-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210630095228.6665-2-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915: Use the correct IRQ during
 resume
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 30, 2021 at 11:52:27AM +0200, Thomas Zimmermann wrote:
> The code in xcs_resume() probably didn't work as intended. It uses
> struct drm_device.irq, which is allocated to 0, but never initialized
> by i915 to the device's interrupt number.
> 
> v3:
> 	* also use intel_synchronize_hardirq() at another callsite
> v2:
> 	* wrap irq code in intel_synchronize_hardirq() (Ville)
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Fixes: 536f77b1caa0 ("drm/i915/gt: Call stop_ring() from ring resume, again")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c       | 2 +-
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
>  drivers/gpu/drm/i915/i915_irq.c                 | 5 +++++
>  drivers/gpu/drm/i915/i915_irq.h                 | 1 +
>  4 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 88694822716a..5ca3d1664335 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1229,7 +1229,7 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
>  		return true;
>  
>  	/* Waiting to drain ELSP? */
> -	synchronize_hardirq(to_pci_dev(engine->i915->drm.dev)->irq);
> +	intel_synchronize_hardirq(engine->i915);
>  	intel_engine_flush_submission(engine);
>  
>  	/* ELSP is empty, but there are ready requests? E.g. after reset */
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 5d42a12ef3d6..1b5a22a83db6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -185,7 +185,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  		     ring->head, ring->tail);
>  
>  	/* Double check the ring is empty & disabled before we resume */
> -	synchronize_hardirq(engine->i915->drm.irq);
> +	intel_synchronize_hardirq(engine->i915);
>  	if (!stop_ring(engine))
>  		goto err;
>  
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 7d0ce8b9f8ed..2203dca19895 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -4575,3 +4575,8 @@ void intel_synchronize_irq(struct drm_i915_private *i915)
>  {
>  	synchronize_irq(to_pci_dev(i915->drm.dev)->irq);
>  }
> +
> +void intel_synchronize_hardirq(struct drm_i915_private *i915)
> +{
> +	synchronize_hardirq(to_pci_dev(i915->drm.dev)->irq);

I honestly think the hardirq here is about as much cargo-culted as using
the wrong irq number.

I'd just use intel_synchronize_irq in both places and see whether CI
complains, then go with that.
-Daniel

> +}
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
> index db34d5dbe402..e43b6734f21b 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -94,6 +94,7 @@ void intel_runtime_pm_disable_interrupts(struct drm_i915_private *dev_priv);
>  void intel_runtime_pm_enable_interrupts(struct drm_i915_private *dev_priv);
>  bool intel_irqs_enabled(struct drm_i915_private *dev_priv);
>  void intel_synchronize_irq(struct drm_i915_private *i915);
> +void intel_synchronize_hardirq(struct drm_i915_private *i915);
>  
>  int intel_get_crtc_scanline(struct intel_crtc *crtc);
>  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
