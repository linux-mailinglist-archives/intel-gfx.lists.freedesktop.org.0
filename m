Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C17392B86
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 12:13:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A886EE51;
	Thu, 27 May 2021 10:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A6616EE55
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 10:13:04 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id i13so184481edb.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 03:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IUcR0t9cXKfEd6s42hu1zEbwUF0gsLorB0wzIg+K/7s=;
 b=Q3tpRW/FUNdx2bKNaXjX02ZRC54qss3pYJCJqqEWsoCwkz3Il5mZNcW1VIc+P3E3Mn
 zSmr1rBOXFf0B3vpLUbE9V28z52SoZdCQdQ4gXwFa2zGZyYZBMabQx2LVAajZu4dIeLB
 QX10MZBXLXzF9Z8VEPHPpMNoy6RYdyPveDAkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IUcR0t9cXKfEd6s42hu1zEbwUF0gsLorB0wzIg+K/7s=;
 b=rAIGa1r9UKT2iQUH2MMybt4HxVfRYsjr8gxoB2NGCSM87j74Vu2rtqHdo94eUH0LJt
 xtklsvEcsnnQUkr5hXEAHCfNgcRpNWhqiTbu2nRJbfReiR7Y6EOn+EoUu4+dal+vq2/D
 LqkdX65bLfdVWr6EJgF/6ULRH/tHT9V5pLMyruCuIzseqn/2aVhHg8NOGufEWEaYF3km
 PXhsz+eJeOM48I5okeVs01dSTokHZEwWZGOXoYI5JNxTs53tiPWNBfm92qBzg+VAo3p7
 gn4AtktC+TyWxX2Bmy4iEPmAgLIPUHVHnnK+UHIl+Nfr27pLMgtIKzY5/GZ8+35DSZ2R
 wWhg==
X-Gm-Message-State: AOAM532AF3uv69fx1Zukpp7cYiXevM/Iz3654BOn9P/1ct0sUpYjXJm4
 skQ5mDcJKOYhWSocsidjlw9Ak/MJOKSaDA==
X-Google-Smtp-Source: ABdhPJxiI/edyj1MRxCzRbM92k1EIV8llrLlH3dvFFrWQuY/EBvObx2uFHAd87sb0EGrY3T/3wF7lw==
X-Received: by 2002:a05:6402:524d:: with SMTP id
 t13mr3260657edd.209.1622110383263; 
 Thu, 27 May 2021 03:13:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r17sm850826edt.33.2021.05.27.03.13.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 03:13:02 -0700 (PDT)
Date: Thu, 27 May 2021 12:13:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YK9wrCayUwSDzMWG@phenom.ffwll.local>
References: <20210525135508.244659-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20210525135508.244659-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <b9ae1daa-6add-1c67-58b4-16491f2e1431@linux.intel.com>
 <YK0OHJcSwWY1mm7v@phenom.ffwll.local>
 <8cf2c5f4-87a3-ce6b-150c-65fa054586a4@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8cf2c5f4-87a3-ce6b-150c-65fa054586a4@linux.intel.com>
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

On Wed, May 26, 2021 at 11:20:13AM +0100, Tvrtko Ursulin wrote:
> 
> On 25/05/2021 15:47, Daniel Vetter wrote:
> > On Tue, May 25, 2021 at 03:19:47PM +0100, Tvrtko Ursulin wrote:
> > > 
> > > + dri-devel as per process
> > > 
> > > On 25/05/2021 14:55, Tejas Upadhyay wrote:
> > > > v2: Only declare timeslicing if we can safely preempt userspace.
> > > 
> > > Commit message got butchered up somehow so you'll need to fix that at some
> > > point.
> > > 
> > > Regards,
> > > 
> > > Tvrtko
> > > 
> > > > Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
> > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > > Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > > ---
> > > >    drivers/gpu/drm/i915/gt/intel_engine_user.c | 1 +
> > > >    include/uapi/drm/i915_drm.h                 | 1 +
> > > >    2 files changed, 2 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> > > > index 3cca7ea2d6ea..12d165566ed2 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> > > > @@ -98,6 +98,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
> > > >    		MAP(HAS_PREEMPTION, PREEMPTION),
> > > >    		MAP(HAS_SEMAPHORES, SEMAPHORES),
> > > >    		MAP(SUPPORTS_STATS, ENGINE_BUSY_STATS),
> > > > +		MAP(TIMESLICE_BIT, TIMESLICING),
> > > >    #undef MAP
> > > >    	};
> > > >    	struct intel_engine_cs *engine;
> > > > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > > > index c2c7759b7d2e..af2212d6113c 100644
> > > > --- a/include/uapi/drm/i915_drm.h
> > > > +++ b/include/uapi/drm/i915_drm.h
> > > > @@ -572,6 +572,7 @@ typedef struct drm_i915_irq_wait {
> > > >    #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
> > > >    #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
> > > >    #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
> > > > +#define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)
> > 
> > Since this is uapi I think we should at least have some nice kerneldoc
> > that explains what exactly this is, what for (link to userspace) and all
> > that. Ideally also minimally filing in the gaps in our uapi docs for stuff
> > this references.
> 
> IIUC there is no userspace apart from IGT needing it not to fail scheduling
> tests on ADL.
> 
> Current tests use "has preemption + has semaphores" as a proxy to answer the
> "does the kernel support timeslicing" question. This stops working with the
> Guc backend because GuC decided not to support semaphores (for reasons yet
> unknown, see other thread), so explicit "has timeslicing" flag is needed in
> order for tests to know that GuC is supposed to support timeslicing, even if
> it doesn't use semaphores for inter-ring synchronisation.

Since this if for igt only: Cant we do just extend the check in igt with
an || GEN >= 12? I really hope that our future hw will continue to support
timeslicing ...

Also if it's not there yet, a shared helper to check for that (like we're
adding for relocations and stuff like that right now).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
