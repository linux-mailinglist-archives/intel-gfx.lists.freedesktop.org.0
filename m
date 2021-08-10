Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C653E56BB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 11:23:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C54E89F8E;
	Tue, 10 Aug 2021 09:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3D0C89F85
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 09:23:42 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id k4so12531644wms.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 02:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gUfjlxf0wPQA0BuAzVqKDfY7baVVrAtjzk8QNmdFJvE=;
 b=N86UnAdELsN/OoNepPXLfnZpz5d+itv/7Zjym4xm4+3WMtfXrSHD7vZQ1PnFvTOI9w
 +hCBmBpNKKbLVV/DC9Q2315ZLi3+APklVQiR5iEixn5ifDLWBKU4HGKU6C7Xw4s0xiWV
 fbdtSbaYm/W5q4K+nH7BCvJbRrx1SaMmWTnUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gUfjlxf0wPQA0BuAzVqKDfY7baVVrAtjzk8QNmdFJvE=;
 b=WkDsaH7E1Dyy4irXAlvqU4coHnngQ4O34PG9bc3XJXyfKJUPH8d3K74HhGRLrTreCX
 K2DU+hdh5Wa+EaL/L23T8s64Z+Itg/tn3AQ9x2DcYk+BotbTbp48Q/sndT/VTkpksbib
 BUBqsAdcPgnkPvyo+r+ilqDy3QIkjrDK5ry32sS/NYqB0Qtf2qPhbHb8bzIMOHESZkz7
 hGplzLkqby7DFzT9IRFZNF/fQw3m6sccKCVF38yOqx9rGMkmMggNjPl68n/fcZgH3w5A
 nRPf/QcZKl+Fpoxq/byPhTu7eJS+w8GXIFP8V8GEBQLL/1s0AwRT4Cn4DFJ2nvgsQVBR
 99Ag==
X-Gm-Message-State: AOAM533mltw+F4KOGQOKNIgmrhojfgeALebT8gLwqX7DUecLcDMxCXIc
 Ox9U2FdDy617TYb/SoB+kFkf0A==
X-Google-Smtp-Source: ABdhPJyyRbyNkgPR4hoQufKwEA5a1uq9PnTZmZLF2ExO/jl2PceZQDrgYj63R2hXnERMDFrlZdvfxQ==
X-Received: by 2002:a1c:a50c:: with SMTP id o12mr2424582wme.4.1628587421321;
 Tue, 10 Aug 2021 02:23:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm1161262wrp.30.2021.08.10.02.23.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 02:23:40 -0700 (PDT)
Date: Tue, 10 Aug 2021 11:23:39 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Message-ID: <YRJFmw4BTJi/UIWf@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-26-matthew.brost@intel.com>
 <YRFZnGNvmHPr6DTL@phenom.ffwll.local>
 <20210809191311.GA123935@DUT151-ICLU.fm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210809191311.GA123935@DUT151-ICLU.fm.intel.com>
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

On Mon, Aug 09, 2021 at 07:13:11PM +0000, Matthew Brost wrote:
> On Mon, Aug 09, 2021 at 06:36:44PM +0200, Daniel Vetter wrote:
> > On Tue, Aug 03, 2021 at 03:29:22PM -0700, Matthew Brost wrote:
> > > Display the workqueue status in debugfs for GuC contexts that are in
> > > parent-child relationship.
> > > 
> > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > ---
> > >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 56 +++++++++++++------
> > >  1 file changed, 39 insertions(+), 17 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > index 30df1c8db491..44a7582c9aed 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > @@ -4527,31 +4527,53 @@ void intel_guc_submission_print_info(struct intel_guc *guc,
> > >  		gse_log_submission_info(guc->gse[i], p, i);
> > >  }
> > >  
> > > +static inline void guc_log_context(struct drm_printer *p,
> > > +				   struct intel_context *ce)
> > > +{
> > > +	drm_printf(p, "GuC lrc descriptor %u:\n", ce->guc_id);
> > > +	drm_printf(p, "\tHW Context Desc: 0x%08x\n", ce->lrc.lrca);
> > > +	drm_printf(p, "\t\tLRC Head: Internal %u, Memory %u\n",
> > > +		   ce->ring->head,
> > > +		   ce->lrc_reg_state[CTX_RING_HEAD]);
> > > +	drm_printf(p, "\t\tLRC Tail: Internal %u, Memory %u\n",
> > > +		   ce->ring->tail,
> > > +		   ce->lrc_reg_state[CTX_RING_TAIL]);
> > > +	drm_printf(p, "\t\tContext Pin Count: %u\n",
> > > +		   atomic_read(&ce->pin_count));
> > > +	drm_printf(p, "\t\tGuC ID Ref Count: %u\n",
> > > +		   atomic_read(&ce->guc_id_ref));
> > > +	drm_printf(p, "\t\tNumber Requests Not Ready: %u\n",
> > > +		   atomic_read(&ce->guc_num_rq_not_ready));
> > > +	drm_printf(p, "\t\tSchedule State: 0x%x, 0x%x\n\n",
> > > +		   ce->guc_state.sched_state,
> > > +		   atomic_read(&ce->guc_sched_state_no_lock));
> > 
> > It's all debugfs, but I think proper locking even there is good. It at
> > least reduces the confusion when the locking scheme is largely
> > undocumented. Also given how much we have rcu for everything would be good
> > to double-check all pointer dererences are properly protected.
> >
> 
> Not sure if I 100% follow this but I don't think any of the pointers
> dref here are RCU protected. Certainly none of the GuC ones are.
> 
> Will double before the next respin though.
> 
> > > +}
> > > +
> > >  void intel_guc_submission_print_context_info(struct intel_guc *guc,
> > >  					     struct drm_printer *p)
> > >  {
> > >  	struct intel_context *ce;
> > >  	unsigned long index;
> > >  	xa_for_each(&guc->context_lookup, index, ce) {
> > 
> > xa_for_each doesn't provide any guarantees, so doesn't protect against
> > concurrent removeal or anything like that. We need to do better than that.
> 
> https://elixir.bootlin.com/linux/latest/source/include/linux/xarray.h#L498
> 'It is safe to modify the array during the iteration.'

The xarray. Not the thing you're dereferencing, because the xarray only
stores pointers, not your data structure. So yeah correct statement is
that it doesn't provide you any guarantees beyond "the iterator wont be
confused if the xarray itself is modified during iteration". Which isn't
what you need here, you need a lot more.
-Daniel

> 
> Matt
> 
> > -Daniel
> > 
> > > -		drm_printf(p, "GuC lrc descriptor %u:\n", ce->guc_id);
> > > -		drm_printf(p, "\tHW Context Desc: 0x%08x\n", ce->lrc.lrca);
> > > -		drm_printf(p, "\t\tLRC Head: Internal %u, Memory %u\n",
> > > -			   ce->ring->head,
> > > -			   ce->lrc_reg_state[CTX_RING_HEAD]);
> > > -		drm_printf(p, "\t\tLRC Tail: Internal %u, Memory %u\n",
> > > -			   ce->ring->tail,
> > > -			   ce->lrc_reg_state[CTX_RING_TAIL]);
> > > -		drm_printf(p, "\t\tContext Pin Count: %u\n",
> > > -			   atomic_read(&ce->pin_count));
> > > -		drm_printf(p, "\t\tGuC ID Ref Count: %u\n",
> > > -			   atomic_read(&ce->guc_id_ref));
> > > -		drm_printf(p, "\t\tNumber Requests Not Ready: %u\n",
> > > -			   atomic_read(&ce->guc_num_rq_not_ready));
> > > -		drm_printf(p, "\t\tSchedule State: 0x%x, 0x%x\n\n",
> > > -			   ce->guc_state.sched_state,
> > > -			   atomic_read(&ce->guc_sched_state_no_lock));
> > > +		GEM_BUG_ON(intel_context_is_child(ce));
> > >  
> > > +		guc_log_context(p, ce);
> > >  		guc_log_context_priority(p, ce);
> > > +
> > > +		if (intel_context_is_parent(ce)) {
> > > +			struct guc_process_desc *desc = __get_process_desc(ce);
> > > +			struct intel_context *child;
> > > +
> > > +			drm_printf(p, "\t\tWQI Head: %u\n",
> > > +				   READ_ONCE(desc->head));
> > > +			drm_printf(p, "\t\tWQI Tail: %u\n",
> > > +				   READ_ONCE(desc->tail));
> > > +			drm_printf(p, "\t\tWQI Status: %u\n\n",
> > > +				   READ_ONCE(desc->wq_status));
> > > +
> > > +			for_each_child(ce, child)
> > > +				guc_log_context(p, child);
> > > +		}
> > >  	}
> > >  }
> > >  
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
