Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8F674998A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 12:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1577A10E4CD;
	Thu,  6 Jul 2023 10:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A48710E4CD
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 10:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688639549; x=1720175549;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=r+9WmmLj1lORzum/0/HEt5SOXbc69+HgxCmkUd2MpRo=;
 b=CRxpyHbZ5k4M9du1GrP0dq4BIEJVNT2BmZbKrFegVvNeYrnvZIXoOEgD
 gDjSWebg0wscom7JT8hITS2ae/dwnFBOpnAhedQ5UEw8AaXzZtHB4ds48
 rlziZLZUDdxDSP+RMR3sFrjEHInz03BjKjJLY4zJJlsLTUBuszKyvxwlz
 N1mElWY9YufkjHwqz3JgLCCzbDOGc7iTcBwXng22dxmHqLiJgywEpcFzG
 E38iXT8EoiCYDOiYWY81TegUxSbOsg//5oJcJf1kNwYoerj87QrbaWRbZ
 swErkzCbO0ajYyIIopM29hwhEgkKETXUucsvSn8LoTGopcLqeGQ83tI7a w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="394321948"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="394321948"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 03:32:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="696805593"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="696805593"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 03:32:26 -0700
Date: Thu, 6 Jul 2023 13:32:17 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZKaYMXeALQnEvYie@intel.com>
References: <20230525101036.21564-1-stanislav.lisovskiy@intel.com>
 <ZKWNI2NEboNZAd+K@ideak-desk> <ZKZ6NaLVTk0RYwhm@intel.com>
 <ZKZ/ng6qj5cTrqaf@ideak-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZKZ/ng6qj5cTrqaf@ideak-desk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the disabling sequence for
 Bigjoiner
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 06, 2023 at 11:47:26AM +0300, Imre Deak wrote:
> On Thu, Jul 06, 2023 at 11:24:21AM +0300, Lisovskiy, Stanislav wrote:
> > On Wed, Jul 05, 2023 at 06:32:51PM +0300, Imre Deak wrote:
> > > On Thu, May 25, 2023 at 01:10:36PM +0300, Stanislav Lisovskiy wrote:
> > > > According to BSpec 49190, when enabling crtcs, we first setup
> > > > slave and then master crtc, however for disabling it should go
> > > > vice versa, i.e first master, then slave, however current code
> > > > does disabling in a same way as enabling. Fix this, by skipping
> > > > non-master crtcs, instead of non-slaves.
> > > > 
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index 0490c6412ab5..68958ba0ef49 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -6662,7 +6662,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> > > >  		 */
> > > >  		if (!is_trans_port_sync_slave(old_crtc_state) &&
> > > >  		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
> > > > -		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
> > > > +		    !intel_crtc_is_bigjoiner_master(old_crtc_state))
> > > 
> > > I don't see what does this fix. The sequence is correct at the moment
> > > and this change would break it, leaving the encoder PLL enabled
> > > incorrectly when the encoder->post_pll_disable() hook is called. Hence
> > > it's NAK from side.
> > 
> > Well, as I pointed out the BSpec 49190 instructs us to disable master
> > first, then slave. Current code skips all non-slaves in first cycle,
> > i.e it disables first slaves and then masters. Which is _wrong_.
> 
> This is correct at the moment, followed in the encoder's disable hook
> which is only assigned to the master CRTC.

Yep, I see now why it was implemented this way.
We basically handle everything in a single hook, taking care of the correct
sequence. As I understood otherwise we are going to have problems with the pll
subsystem, i.e we can't disable pll for master before the slaves(basically means
our pll subsystem contradicts what the crtc/pipe/encoder sequence requires).

I still think this is bery counterintuitive implementation, i.e when there is a single
hook for master taking care of everything, while slaves are just noop. 
This makes the whole thing very prone for screwing things up.
Ideally we should still have fully functional hooks for all slaves. 
If the pll stuff requires special treatment, that probably should be dealt somehow
separately(don't have any solution for that yet), but definitely we shouldn't live
further like that. Things might get even more complicated in future.

Stan

> 
> > Anything else in particular, where do you need clarifications?
> > 
> > Stan
> > 
> > > 
> > > >  			continue;
> > > >  
> > > >  		intel_old_crtc_state_disables(state, old_crtc_state,
> > > > -- 
> > > > 2.37.3
> > > > 
