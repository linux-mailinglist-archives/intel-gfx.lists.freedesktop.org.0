Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE8C390449
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 16:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 570006E3AC;
	Tue, 25 May 2021 14:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7EC6E122
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 14:48:00 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id i17so32538323wrq.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 07:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qVfkQfbmmDuKAHyZ9b8/gZcN6+vhg09qkquadOBNNLo=;
 b=RYi9jAZHRr0m8VTwR1tI3snNlLBW3rugTeznV5FV2YhtYl0bG7iswl2vilcjo208Me
 KJpupKqrDqtcmrOZR5r/rxeRwLpMpdL+injF3Vqj7uLYpWcbYn6g8tFKPmHLLB175AUT
 YEsdTtsMBSZk6ZGcvfH6Xknkx6LV75QzcXoig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qVfkQfbmmDuKAHyZ9b8/gZcN6+vhg09qkquadOBNNLo=;
 b=Fh8QJ3H3ONwUv1GbyR6FwdORklhbfrKv3HhdeC1chY9A5gu0Oy4d6viD+hG9+83lCO
 ryskZfYyFyvkQ/E66vxhQtS93NSsrgvnirVSiV5ZmqpUZYV6r1L6PtIzfTlfQIteNo2+
 iLQxT/C1dtr+oPJsaQHjYfkvHHm3oZkvLsUGXKhzgkfJwpPRptu23yx5CV6G2Utttnx1
 5Gds5R8TDC3+5pXOHjZa9uEduYTGk9NVgTyCzDa7w15Z6nitlhh9NRkVx3jOW5+YE8lf
 yVni1UWS9M5wCGlmVvjHEkFJvPg+HO/xgiM7VvVKaKRchrxLoZ0o8PJX0q/ikNzbI0UT
 61gw==
X-Gm-Message-State: AOAM531G7gym5wKqLEEUGyytP+2alv6mHUzXVvNombND6hZs7hlgAMTf
 d7M7OfVy1ZVbJ9ixhCFiIngtkA==
X-Google-Smtp-Source: ABdhPJwICGt4DhrVBY0A+8jU7ZSJ0108cc+4/JMwKDnmpMO9WDTE/6VuatH8fmYp78zuVSov9msD5Q==
X-Received: by 2002:a05:6000:12cc:: with SMTP id
 l12mr27482278wrx.91.1621954079213; 
 Tue, 25 May 2021 07:47:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f18sm9873243wmc.40.2021.05.25.07.47.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 07:47:57 -0700 (PDT)
Date: Tue, 25 May 2021 16:47:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YK0OHJcSwWY1mm7v@phenom.ffwll.local>
References: <20210525135508.244659-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20210525135508.244659-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <b9ae1daa-6add-1c67-58b4-16491f2e1431@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9ae1daa-6add-1c67-58b4-16491f2e1431@linux.intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 1/1] Let userspace know if they can trust
 timeslicing by including it as part of the
 I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING
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
Cc: intel-gfx@lists.freedesktop.org,
 DRI Development <dri-devel@lists.freedesktop.org>, mahesh.meena@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 25, 2021 at 03:19:47PM +0100, Tvrtko Ursulin wrote:
> 
> + dri-devel as per process
> 
> On 25/05/2021 14:55, Tejas Upadhyay wrote:
> > v2: Only declare timeslicing if we can safely preempt userspace.
> 
> Commit message got butchered up somehow so you'll need to fix that at some
> point.
> 
> Regards,
> 
> Tvrtko
> 
> > Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine_user.c | 1 +
> >   include/uapi/drm/i915_drm.h                 | 1 +
> >   2 files changed, 2 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> > index 3cca7ea2d6ea..12d165566ed2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> > @@ -98,6 +98,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
> >   		MAP(HAS_PREEMPTION, PREEMPTION),
> >   		MAP(HAS_SEMAPHORES, SEMAPHORES),
> >   		MAP(SUPPORTS_STATS, ENGINE_BUSY_STATS),
> > +		MAP(TIMESLICE_BIT, TIMESLICING),
> >   #undef MAP
> >   	};
> >   	struct intel_engine_cs *engine;
> > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > index c2c7759b7d2e..af2212d6113c 100644
> > --- a/include/uapi/drm/i915_drm.h
> > +++ b/include/uapi/drm/i915_drm.h
> > @@ -572,6 +572,7 @@ typedef struct drm_i915_irq_wait {
> >   #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
> >   #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
> >   #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
> > +#define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)

Since this is uapi I think we should at least have some nice kerneldoc
that explains what exactly this is, what for (link to userspace) and all
that. Ideally also minimally filing in the gaps in our uapi docs for stuff
this references.
-Daniel

> >   #define I915_PARAM_HUC_STATUS		 42
> > 
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
