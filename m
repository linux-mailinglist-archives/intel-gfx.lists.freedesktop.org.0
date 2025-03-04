Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 102CDA4EDF9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 20:59:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 355FC10E00B;
	Tue,  4 Mar 2025 19:59:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PnwWzECQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF9710E00B;
 Tue,  4 Mar 2025 19:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741118384; x=1772654384;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=5wBAOd/YLAdG2ic9IAdeokUwXnC0lCdvgWT6ct8W3D4=;
 b=PnwWzECQfzEH/X3CkgcjJRVHJYGnacgtMxQWN5jMY7CmqpTnbHn8X0ci
 ZENjum3jR+K7H5bDbySuxAPm7frHCN8MJH0CFHfqWXNSi3i8H5feyYOMP
 tXsNTr/lhX2kcSdAYF3KhnVzqRwWrXq7W2BS4+wK9YJy6fWDiz2vPec4u
 D07xNAqyAvCSlYLth2UfyVhikfEcGLJLyRSih3Dk+MG1LUUS1pZV+hnEQ
 L8vJW6AtvGortLgSGATyhx/p6daXJqEK1x032nmThgafCd35vUdlgpb34
 61sQdpNiCu5wVo6sRIg/terC6q7IbPocJ5ES6ed+HpA1WzGWJ4UFz1w4Y w==;
X-CSE-ConnectionGUID: izLokPbjQBGf67Q/3WPGMA==
X-CSE-MsgGUID: Qf3k8SINRV2wxXvT4q9vRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="53043964"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="53043964"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 11:59:44 -0800
X-CSE-ConnectionGUID: YvNS7mUfTA+WcLvLvirvSg==
X-CSE-MsgGUID: wKg/+rjzRUGw0cvb6dbgcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="118478228"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 11:59:42 -0800
Date: Tue, 4 Mar 2025 21:59:39 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5 5/6] drm/i915/dp: Queue a link check after link
 training is complete
Message-ID: <Z8dbq6Sk4Ku6efM2@ideak-desk.fi.intel.com>
References: <20250304152917.3407080-1-imre.deak@intel.com>
 <20250304152917.3407080-6-imre.deak@intel.com>
 <87sensy90z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87sensy90z.fsf@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 04, 2025 at 07:56:28PM +0200, Jani Nikula wrote:
> On Tue, 04 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> > After link training - both in case of a passing and failing LT result -
> > a work is scheduled to check the link state. This check should take
> > place after the link training is completed by disabling the link
> > training pattern and setting intel_dp::link_trained=true. Atm, the work
> > is scheduled before these steps, which may result in checking the link
> > state too early (and thus not retraining the link as expected).
> >
> > Fix the above by scheduling the link check work after link training is
> > complete.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_dp_link_training.c   | 13 +++++++++----
> >  1 file changed, 9 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 3906c11acc968..c1be073b9fc48 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1110,6 +1110,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
> >  void intel_dp_stop_link_train(struct intel_dp *intel_dp,
> >  			      const struct intel_crtc_state *crtc_state)
> >  {
> > +	struct intel_display *display = to_intel_display(intel_dp);
> >  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> >  
> >  	intel_dp->link_trained = true;
> 
> Side note, it's a bit misleading that we set this even if link training
> failed... but we probably depend on it.

Yes, it's used in the sense that the link is active. I guess it could
be renamed to link_active accordingly (can follow up with that).

> 
> > @@ -1124,6 +1125,13 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
> >  	}
> >  
> >  	intel_hpd_unblock(encoder);
> > +
> > +	if (!display->hotplug.ignore_long_hpd &&
> 
> We already poke at this directly elsewhere in the file, but I'm not a
> fan of doing so. We should have a function and use that.

Agreed, can follow up with this separately.

> The fact that we can do anything doesn't mean we should.
> 
> I guess that's for another patch, another time.
> 
> > +	    intel_dp->link.seq_train_failures < 2) {
> 
> It's not great that the magic 2 is duplicated. It was fine in one place.

Ok, will add a macro for it.

> Regardless,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > +		int delay_ms = intel_dp->link.seq_train_failures ? 0 : 2000;
> > +
> > +		intel_encoder_link_check_queue_work(encoder, delay_ms);
> > +	}
> >  }
> >  
> >  static bool
> > @@ -1628,7 +1636,6 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
> >  		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
> >  	} else if (passed) {
> >  		intel_dp->link.seq_train_failures = 0;
> > -		intel_encoder_link_check_queue_work(encoder, 2000);
> >  		return;
> >  	}
> >  
> > @@ -1651,10 +1658,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
> >  		return;
> >  	}
> >  
> > -	if (intel_dp->link.seq_train_failures < 2) {
> > -		intel_encoder_link_check_queue_work(encoder, 0);
> > +	if (intel_dp->link.seq_train_failures < 2)
> >  		return;
> > -	}
> >  
> >  	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
> 
> 
> 
> >  		return;
> 
> -- 
> Jani Nikula, Intel
