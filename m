Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5295D3E8E00
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 12:04:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35AB66E104;
	Wed, 11 Aug 2021 10:04:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66ED36E104
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Aug 2021 10:04:08 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id f5so2190715wrm.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Aug 2021 03:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yu0wtGIIEp9gKPuqpsfJqgQhgQuxyjzfQLyNx4BTXT0=;
 b=CoB4N4EESEMURxz2AcylxC6RU2Igb9O+XKAiGYCIxftbB+TkPOpHEi8sWmlSb0oDnB
 xGUx01uFbifshRrWbr1mILDbm083BpdBXZINKTGZ0ZESmOk51Y3Chf2yJsQouvOCQTeY
 2S6/54lA6Blu5CZru51R4l4sVJVpABpWh/bWM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yu0wtGIIEp9gKPuqpsfJqgQhgQuxyjzfQLyNx4BTXT0=;
 b=nw7Bbi1cNHX4xwj3C1Oz4/aHrvIB4eyh31R8Dhv6hs/drXihKSV4/KeWerWeqRWd+W
 UYX2gDLVy2PBk7N5+X/wL29BC8ogB+gZ36mBOUq5NMaZhx8L4jEkE+6OOhO69DQRKnXU
 HY9/D6S98DY1sDZfBFi6uMeGRSDtxSp84byM1jCVElA8/cvqF/w2RZj4Bn9FEvpyO6IW
 1zLJJZCe92udLwKcE+Ch5w6aGsYB5v5bo8FUxuIra/N0L31oMhdoI7yQgr7LgHOhTxYu
 zO173lrKoQ4RyAOXQoETJ7BGDyLKpiOhchur6KF4HK5MXbmkKgiooeytpMN4LXf362fR
 YwWg==
X-Gm-Message-State: AOAM531AByKGr+Ae/xzBBGPGJz6fBTjI6qH0ZojJ5J0SPqHcGGNpmi/N
 zl+TserKzphhxZZ5xmYYtps32LRRY+r97g==
X-Google-Smtp-Source: ABdhPJyOTiXN03SYQcCQxtCb21VaGH1QMnQfLjdbrDyNzw5RN53crfkltuu1XV08Kd7I6fj66/F0Ag==
X-Received: by 2002:a05:6000:46:: with SMTP id
 k6mr2113497wrx.105.1628676246651; 
 Wed, 11 Aug 2021 03:04:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v5sm27430018wrd.74.2021.08.11.03.04.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Aug 2021 03:04:06 -0700 (PDT)
Date: Wed, 11 Aug 2021 12:04:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Message-ID: <YROglLOmWS2V4L4L@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-26-matthew.brost@intel.com>
 <YRFZnGNvmHPr6DTL@phenom.ffwll.local>
 <20210809191311.GA123935@DUT151-ICLU.fm.intel.com>
 <YRJFmw4BTJi/UIWf@phenom.ffwll.local>
 <YRJGg0iQidHxA41e@phenom.ffwll.local>
 <20210810172946.GA92078@DUT151-ICLU.fm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210810172946.GA92078@DUT151-ICLU.fm.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 25/46] drm/i915/guc: Update debugfs for GuC
 multi-lrc
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

On Tue, Aug 10, 2021 at 05:29:46PM +0000, Matthew Brost wrote:
> On Tue, Aug 10, 2021 at 11:27:31AM +0200, Daniel Vetter wrote:
> > On Tue, Aug 10, 2021 at 11:23:39AM +0200, Daniel Vetter wrote:
> > > On Mon, Aug 09, 2021 at 07:13:11PM +0000, Matthew Brost wrote:
> > > > On Mon, Aug 09, 2021 at 06:36:44PM +0200, Daniel Vetter wrote:
> > > > > On Tue, Aug 03, 2021 at 03:29:22PM -0700, Matthew Brost wrote:
> > > > > > Display the workqueue status in debugfs for GuC contexts that are in
> > > > > > parent-child relationship.
> > > > > > 
> > > > > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > > > > ---
> > > > > >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 56 +++++++++++++------
> > > > > >  1 file changed, 39 insertions(+), 17 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > > index 30df1c8db491..44a7582c9aed 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > > @@ -4527,31 +4527,53 @@ void intel_guc_submission_print_info(struct intel_guc *guc,
> > > > > >  		gse_log_submission_info(guc->gse[i], p, i);
> > > > > >  }
> > > > > >  
> > > > > > +static inline void guc_log_context(struct drm_printer *p,
> > > > > > +				   struct intel_context *ce)
> > > > > > +{
> > > > > > +	drm_printf(p, "GuC lrc descriptor %u:\n", ce->guc_id);
> > > > > > +	drm_printf(p, "\tHW Context Desc: 0x%08x\n", ce->lrc.lrca);
> > > > > > +	drm_printf(p, "\t\tLRC Head: Internal %u, Memory %u\n",
> > > > > > +		   ce->ring->head,
> > > > > > +		   ce->lrc_reg_state[CTX_RING_HEAD]);
> > > > > > +	drm_printf(p, "\t\tLRC Tail: Internal %u, Memory %u\n",
> > > > > > +		   ce->ring->tail,
> > > > > > +		   ce->lrc_reg_state[CTX_RING_TAIL]);
> > > > > > +	drm_printf(p, "\t\tContext Pin Count: %u\n",
> > > > > > +		   atomic_read(&ce->pin_count));
> > > > > > +	drm_printf(p, "\t\tGuC ID Ref Count: %u\n",
> > > > > > +		   atomic_read(&ce->guc_id_ref));
> > > > > > +	drm_printf(p, "\t\tNumber Requests Not Ready: %u\n",
> > > > > > +		   atomic_read(&ce->guc_num_rq_not_ready));
> > > > > > +	drm_printf(p, "\t\tSchedule State: 0x%x, 0x%x\n\n",
> > > > > > +		   ce->guc_state.sched_state,
> > > > > > +		   atomic_read(&ce->guc_sched_state_no_lock));
> > > > > 
> > > > > It's all debugfs, but I think proper locking even there is good. It at
> > > > > least reduces the confusion when the locking scheme is largely
> > > > > undocumented. Also given how much we have rcu for everything would be good
> > > > > to double-check all pointer dererences are properly protected.
> > > > >
> > > > 
> > > > Not sure if I 100% follow this but I don't think any of the pointers
> > > > dref here are RCU protected. Certainly none of the GuC ones are.
> > > > 
> > > > Will double before the next respin though.
> > > > 
> > > > > > +}
> > > > > > +
> > > > > >  void intel_guc_submission_print_context_info(struct intel_guc *guc,
> > > > > >  					     struct drm_printer *p)
> > > > > >  {
> > > > > >  	struct intel_context *ce;
> > > > > >  	unsigned long index;
> > > > > >  	xa_for_each(&guc->context_lookup, index, ce) {
> > > > > 
> > > > > xa_for_each doesn't provide any guarantees, so doesn't protect against
> > > > > concurrent removeal or anything like that. We need to do better than that.
> > > > 
> > > > https://elixir.bootlin.com/linux/latest/source/include/linux/xarray.h#L498
> > > > 'It is safe to modify the array during the iteration.'
> > > 
> > > The xarray. Not the thing you're dereferencing, because the xarray only
> > > stores pointers, not your data structure. So yeah correct statement is
> > > that it doesn't provide you any guarantees beyond "the iterator wont be
> > > confused if the xarray itself is modified during iteration". Which isn't
> > > what you need here, you need a lot more.
> > 
> > Or spelled out: The pointer you get could become immediately meaningless,
> > before you can look at it, due to a concurrent removal/release. All the
> > xa_for_each guarantees you is that on the next round you get the next
> > pointer, until you got them all (plus/minus concurrent changes). But that
> > next pointer could have become meaningless right away too.
> > 
> > So you need your own locking to make use of these pointers you got and
> > make sure they're not immediately meaningless before your loop body even
> > started.
> > 
> 
> Ok, I think I see your point. Likely whenever we do a xa_for_each over
> &guc->context_lookup we should just grab its lock as if it is in the
> xarray we have reference to object looked up. Also everytime we use
> xa_for_each on &guc->context_lookup it is a corner case we it is ok to
> block anyone else from using this (e.g. during a reset, checking
> debugfs, etc...). Does that sound correct?

Yup, generally the simplest is to just hold the lock for the
list/xarray/whatever to keep the object alive. Next up in complexity is to
grab a temporary reference. This is usually required if the next step is
taking a mutex, and your lookup lock is a spinlock. Or if you have some
other locking inversion.

And yes anywhere in debugfs, or anywhere else where performance doesn't
matter just use proper locking, no tricks with rcu or lockless or
whatever.

Finally a word on gpu reset: It is currently not annotated, but gpu reset
is a dma_fence signalling critical section (if we fail to get through gpu
reset dma_fence are potentially stuck). That means any lock you take in
gpu reset is very encumbered, so needs an audit to make sure you're not
creating an inversion anywhere. While I bring this up, I noticed you're
using i915_sw_fence instead of dma_fence directly in a bunch of places in
GuC code. We're kinda aiming to get rid of i915_sw_fence (and maybe move
the remaining useful bits into drivers/dma-buf/), so using less of the
i915-NIH-isms would be really good in general. There's unfortunately way
too much of that too.
-Daniel

> 
> Matt
> 
> > One of the reasons why I think this is so important is that debugfs files
> > nest a lot of loops fairly often, so are good cheat-sheet for the locking
> > if it happens to be undocumented (which also shouldn't be the case). Ofc
> > if there's no locking in debugfs, no cheat-sheet :-)
> > 
> > Cheers, Daniel
> > 
> > > -Daniel
> > > 
> > > > 
> > > > Matt
> > > > 
> > > > > -Daniel
> > > > > 
> > > > > > -		drm_printf(p, "GuC lrc descriptor %u:\n", ce->guc_id);
> > > > > > -		drm_printf(p, "\tHW Context Desc: 0x%08x\n", ce->lrc.lrca);
> > > > > > -		drm_printf(p, "\t\tLRC Head: Internal %u, Memory %u\n",
> > > > > > -			   ce->ring->head,
> > > > > > -			   ce->lrc_reg_state[CTX_RING_HEAD]);
> > > > > > -		drm_printf(p, "\t\tLRC Tail: Internal %u, Memory %u\n",
> > > > > > -			   ce->ring->tail,
> > > > > > -			   ce->lrc_reg_state[CTX_RING_TAIL]);
> > > > > > -		drm_printf(p, "\t\tContext Pin Count: %u\n",
> > > > > > -			   atomic_read(&ce->pin_count));
> > > > > > -		drm_printf(p, "\t\tGuC ID Ref Count: %u\n",
> > > > > > -			   atomic_read(&ce->guc_id_ref));
> > > > > > -		drm_printf(p, "\t\tNumber Requests Not Ready: %u\n",
> > > > > > -			   atomic_read(&ce->guc_num_rq_not_ready));
> > > > > > -		drm_printf(p, "\t\tSchedule State: 0x%x, 0x%x\n\n",
> > > > > > -			   ce->guc_state.sched_state,
> > > > > > -			   atomic_read(&ce->guc_sched_state_no_lock));
> > > > > > +		GEM_BUG_ON(intel_context_is_child(ce));
> > > > > >  
> > > > > > +		guc_log_context(p, ce);
> > > > > >  		guc_log_context_priority(p, ce);
> > > > > > +
> > > > > > +		if (intel_context_is_parent(ce)) {
> > > > > > +			struct guc_process_desc *desc = __get_process_desc(ce);
> > > > > > +			struct intel_context *child;
> > > > > > +
> > > > > > +			drm_printf(p, "\t\tWQI Head: %u\n",
> > > > > > +				   READ_ONCE(desc->head));
> > > > > > +			drm_printf(p, "\t\tWQI Tail: %u\n",
> > > > > > +				   READ_ONCE(desc->tail));
> > > > > > +			drm_printf(p, "\t\tWQI Status: %u\n\n",
> > > > > > +				   READ_ONCE(desc->wq_status));
> > > > > > +
> > > > > > +			for_each_child(ce, child)
> > > > > > +				guc_log_context(p, child);
> > > > > > +		}
> > > > > >  	}
> > > > > >  }
> > > > > >  
> > > > > > -- 
> > > > > > 2.28.0
> > > > > > 
> > > > > 
> > > > > -- 
> > > > > Daniel Vetter
> > > > > Software Engineer, Intel Corporation
> > > > > http://blog.ffwll.ch
> > > 
> > > -- 
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > http://blog.ffwll.ch
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
