Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7BF7497AF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B023810E48E;
	Thu,  6 Jul 2023 08:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B5810E48E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688633445; x=1720169445;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XPcAvI/K8XDManK2imAQushr8KDJPMXUIwrijBh0tYo=;
 b=f/9eFMQAfOOsUbhD4a91zVNhmWLErFZ+nmocwcsBXoYwd15RB8Xo8t0w
 dXdvk0/n4xGO5300yMYncPZllefJel3X+DhbzxfbwNMzWcTycndIv06y9
 E3Az+/Hvm1FNMDZYwQ3/ErwkHEsP/ih4dtWC8jxhg/2LYd6C55O8LsRLA
 SSm6y/6HTCEqpfWqXFb7TXLxRTMudv/QHdrYD0XP8+ux6pBeurVXU8AcT
 0fmPFt4T5/K5ZVFCsoIoztCu9lHq8PL+SJ7pxDYpAk99inlrurA78N8Ru
 JlkrDY2o88/UNioDhhekur0Q3WyDfskydmH6xc+0aBsOdncsdklkcXPrl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353382190"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="353382190"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="696779207"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="696779207"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:50:42 -0700
Date: Thu, 6 Jul 2023 11:50:33 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZKaAWbMH7onjBEy+@intel.com>
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

Hmmm... I will check it.

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
