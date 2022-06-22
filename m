Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE13556DD2
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 23:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F82710F99F;
	Wed, 22 Jun 2022 21:28:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4126410F93A;
 Wed, 22 Jun 2022 21:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655933305; x=1687469305;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=PryXGFzCs6nptRAYc3yBw0B78326Gl2BKkqLjH4mqy8=;
 b=DIRO2KTwh5TwRuirPD5WZ5cnd9OAd7JVSN7Rl+SQYRUyFoed1RKsYcxS
 eBgMrFOiLjf22wbhpudKCnSWT703tx3weDHF8UVHS1rb/6XMWAwE/FSv2
 ndr6bhmNev1e9wjaP0z9/xFXzaUtbIvy36Kj+42fOY7bxsaYYsC+f8er+
 5F8XVGfklevx1Iy2BYwRu/SXZUu2vkWATfegJEJEvmpUi4nH/iqFThCBr
 p7d7cWpf2OjJsMQ79iWFTnMrI7jE734iNL0ebC8OhrAoyJcieSN+nqLa9
 /QB2fYtvSzyp9CF1LBkJH1sTeNAwKT+VqWryNKsIWIZBBXmTZNegGAJi6 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="306008609"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="306008609"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 14:28:24 -0700
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="730549146"
Received: from adixit-mobl1.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.53.110])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 14:28:24 -0700
Date: Wed, 22 Jun 2022 14:28:22 -0700
Message-ID: <87h74cxua1.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <c7849ab9-2d41-5172-5fe7-0d8726a11b81@intel.com>
References: <20220515060506.22084-1-vinay.belgaumkar@intel.com>	<87pmj11r2i.wl-ashutosh.dixit@intel.com>	<c7849ab9-2d41-5172-5fe7-0d8726a11b81@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc/slpc: Use non-blocking H2G for
 waitboost
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 22 Jun 2022 13:30:23 -0700, Belgaumkar, Vinay wrote:
> On 6/21/2022 5:26 PM, Dixit, Ashutosh wrote:
> > On Sat, 14 May 2022 23:05:06 -0700, Vinay Belgaumkar wrote:
> > The issue I have is what happens when we de-boost (restore min freq to its
> > previous value in intel_guc_slpc_dec_waiters()). It would seem that that
> > call is fairly important to get the min freq down when there are no pending
> > requests. Therefore what do we do in that case?
> >
> > This is the function:
> >
> > void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc)
> > {
> >          mutex_lock(&slpc->lock);
> >          if (atomic_dec_and_test(&slpc->num_waiters))
> >                  slpc_force_min_freq(slpc, slpc->min_freq_softlimit);
> >          mutex_unlock(&slpc->lock);
> > }
> >
> >
> > 1. First it would seem that at the minimum we need a similar drm_notice()
> >     in intel_guc_slpc_dec_waiters(). That would mean we need to put the
> >     drm_notice() back in slpc_force_min_freq() (replacing
> >     i915_probe_error()) rather than in slpc_boost_work() above?
> Sure.
> >
> > 2. Further, if de-boosting is important then maybe as was being discussed
> >     in v1 of this patch (see the bottom of
> >     https://patchwork.freedesktop.org/patch/485004/?series=103598&rev=1) do
> >     we need to use intel_guc_send_busy_loop() in the
> >     intel_guc_slpc_dec_waiters() code path?
>
> Using a busy_loop here would essentially be the same as blocking, right?

Well blocking waits for a response from GuC (so all previous requests need
to be processed by GuC) whereas busy_loop() just waits for space to be
available at the back of the queue (so just a few, or maybe just one,
request have to be processed by GuC).

> And it could still fail/timeout with blocking as well (which is the problem
> we are trying to solve here).

intel_guc_send_busy_loop() has an infinite wait without a drm_err()!! :)

> De-boosting is important, but in the worst case scenario, lets say this
> request was not processed by GuC. This would happen only if the system
> were really busy, which would mean there is a high likelihood we would
> boost/de-boost again anyways and it would probably go through at that
> point.

Not sure of this. The system was busy but now might have gone idle which is
why we are trying to de-boost. But GuC queue might still be full so we may
drop the de-boost request. Or if the system has gone really idle there will
be space in the GuC queue.

Also the problem with intel_guc_send_busy_loop() is that it just has a
sleep in it, so others might be adding requests in the GuC queue while
busy_loop() was sleeping (to avoid such situations we'd need a SW queue in
front of the real GuC queue).

So I am ok if we don't want to add intel_guc_send_busy_loop() for now and
"wait and watch". Unless John suggests otherwise since I don't have any
idea how likely is this to happen. If we change drm_notice to drm_err the
CI will quick tell us if this happening.

Anyway, so at least let's move drm_notice (or drm_err) into
slpc_force_min_freq() and I can ok the patch. Thanks.

> > At least we need to do 1. But for 2. we might as well just put
> > intel_guc_send_busy_loop() in guc_action_slpc_set_param_nb()? In both cases
> > (boost and de-boost) intel_guc_send_busy_loop() would be called from a work
> > item so looks doable (the way we were previously doing the blocking call
> > from the two places). Thoughts?
> >
> > Thanks.
> > --
> > Ashutosh
