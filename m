Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F803E53D4
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 08:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB96689E06;
	Tue, 10 Aug 2021 06:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6BEA89E06
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 06:47:14 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id h14so24754407wrx.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 23:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9cM2FsliLZhmUyhD6mDKd+PJ3BBulXOrKuiEd0BqO3U=;
 b=OUUI5nsammoksDcBYb+U38OVrv42TkfDX8gwB7Xcy0ySegMkPh3wy94+9VNQxqqi2o
 20KUP1JAinRpPW7S+Y012s7XlhM74pVwpqJ4HtzZanUzR6H7okscq0VVMckx7Fs4qahM
 byrPjuQ+g/GqdIfKJ5x2frwU1PVF4kLylU10o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9cM2FsliLZhmUyhD6mDKd+PJ3BBulXOrKuiEd0BqO3U=;
 b=mXMR/ySeT4enETxvi2uUrXlL/qq70Ezh9f2yeQ3NGo1yP5f6mLpdII8zG96cYJC03i
 dz5uLscvRQfB6digEXo5B4HwvUxe0a7WCCKwCXZPSY3x7noEgnDFcAKdxTJOdjd4qd9e
 UuJtnvWDGZxqQi8JGhV1vkmz2uKd3bq9/JKGUHt20QaGYAfNuiMxMINRQ4Hmgkk3Opum
 idEatJR7HXjEND8lMFDMfbkbCsg7nJJVyHoqzv82ixbmOPncw0yWzqqHmmdYiUjbR8/w
 KztngN70qPpdgtxoQeuVKMB1ooohNhdxPtU+ycAi5Cq2CHl0g7GrA8f7je248qzmRLBC
 /asQ==
X-Gm-Message-State: AOAM5334SfH1K5ck8THkMIX08I4qzEEdNLSK+/iz/3XAeFa1pDegpqvq
 wLpI/LPdZ1XQsYKapBtJCudG2Q==
X-Google-Smtp-Source: ABdhPJxZJbZnVfxBu99xr5JsGUfLv32rRDB1oyxhYxX0/Tv0IMJD7lHKLrJTe33e2vx4G4BcT+VzyQ==
X-Received: by 2002:adf:f288:: with SMTP id k8mr29128481wro.350.1628578033384; 
 Mon, 09 Aug 2021 23:47:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r129sm19658590wmr.7.2021.08.09.23.47.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 23:47:12 -0700 (PDT)
Date: Tue, 10 Aug 2021 08:47:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Message-ID: <YRIg7nkYE5/tjxx7@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-12-matthew.brost@intel.com>
 <YRE7NTxl0RIY7EbG@phenom.ffwll.local>
 <20210809182051.GA123521@DUT151-ICLU.fm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210809182051.GA123521@DUT151-ICLU.fm.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 11/46] drm/i915/guc: Don't call
 switch_to_kernel_context with GuC submission
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

On Mon, Aug 09, 2021 at 06:20:51PM +0000, Matthew Brost wrote:
> On Mon, Aug 09, 2021 at 04:27:01PM +0200, Daniel Vetter wrote:
> > On Tue, Aug 03, 2021 at 03:29:08PM -0700, Matthew Brost wrote:
> > > Calling switch_to_kernel_context isn't needed if the engine PM reference
> > > is taken while all contexts are pinned. By not calling
> > > switch_to_kernel_context we save on issuing a request to the engine.
> > > 
> > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_engine_pm.c | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > > index 1f07ac4e0672..58099de6bf07 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > > @@ -162,6 +162,10 @@ static bool switch_to_kernel_context(struct intel_engine_cs *engine)
> > >  	unsigned long flags;
> > >  	bool result = true;
> > >  
> > > +	/* No need to switch_to_kernel_context if GuC submission */
> > 
> > Maybe whack a big FIXME on here that we should unravel this properly.
> 
> Sure, can add a FIXME here.
> 
> > Currently the execlist backend assumptions are leaked all over the place,
> > leading to stuff like this. Which means extremely fragile code.
> >
> 
> Yes, this something required for execlists implemented in what should be
> generic code. 
> 
> > I currently don't have a great idea on how exactly we should do that, but
> > oh well.
> 
> Me either, it will be a process.
> 
> > 
> > btw just in case we ever want to make guc lrc properly evictable (which as
> > the og use-case for this function, way, way back), would we need to fully
> 
> Can you explain what you mean by fully evictable? Not getting what you
> mean in this context.
> 
> > unregister them from guc? At least I'm assuming there's no other trick
> 
> If scheduling is disabled on the context (currently done on unpin) you are
> free move anything around as the GuC is guaranteed not to touch the
> context state. If on re-pin something has moved (e.g. the LRC vaddr is
> different), you need to unregister and re-register the context with the
> GuC.

So at that point GuC also guarantees that it's not left in the hw engine?
Execlist has this barrier request to fully unload the ctx from the hw, and
that's also why I cam on the topic of OA.

> > like the below one.
> > 
> > Another aside: How does the perf/OA patching work on GuC?
> >
> 
> Not my area of expertise but perf somewhat a WIP. The plan is for the
> GuC to write out some stats to HWSP I think? John Harrison is working to
> get this fully implemented.
> 
> OA is working afaik, with Umesh Nerlige Ramappa being the expert here.

I think it's OA that I'm thinking of here: We have code in i915_perf.c to
patch all the ctx currently in the system, so that they have a consistent
OA config. That's also relying on this barrier stuff, and I was wondering
how that will work with GuC.
-Daniel

> 
> Matt
> 
> > Anyway, patch looks legit:
> > 
> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > 
> > 
> > > +	if (intel_engine_uses_guc(engine))
> > > +		return true;
> > > +
> > >  	/* GPU is pointing to the void, as good as in the kernel context. */
> > >  	if (intel_gt_is_wedged(engine->gt))
> > >  		return true;
> > > -- 
> > > 2.28.0
> > > 
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
