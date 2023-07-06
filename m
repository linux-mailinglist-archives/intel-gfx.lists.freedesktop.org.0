Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9104C74978B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:34:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987DC10E47C;
	Thu,  6 Jul 2023 08:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5B7210E47C
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688632438; x=1720168438;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yB+O5kT9/YDdWNVQxMxFaZ5KxSnZ1MH7HtXnJrJfsu8=;
 b=MJAgZF23gw7gzIrnulkW3HwTTkVtdR230fOJDfEI/e9ysT3xrNnUby67
 XZlCnEGL92+fjev3+WKdmOdYNo+JsEoVusBTOik/FJQ7zjKdg0Znwq4PC
 wZIy9aHuHNriX4oHYv7nYrG9q+LRq+zE61AJw0MfGblZq2+xfI05sodSM
 vn2tUYNTahjkSf1uqJNdaSUG89ef1hdo46crnVdPzpohw6hiPXTJmb+gm
 MZNTxbr4rN7GAHuCpA6v12LDFtJf9hxR9uXQ/SMJzKnqbhOJ3ajKclTPc
 2yCFlignpeWD+uApAelc01ua28wPa31ovFLZn5zt/Yh2OP+S9YyW3wlpq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="343874813"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="343874813"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:33:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="843592684"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="843592684"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:33:56 -0700
Date: Thu, 6 Jul 2023 11:33:52 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZKZ8cHFpY1/i6ZyW@intel.com>
References: <20230525101036.21564-1-stanislav.lisovskiy@intel.com>
 <ZKWNI2NEboNZAd+K@ideak-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZKWNI2NEboNZAd+K@ideak-desk>
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

On Wed, Jul 05, 2023 at 06:32:51PM +0300, Imre Deak wrote:
> On Thu, May 25, 2023 at 01:10:36PM +0300, Stanislav Lisovskiy wrote:
> > According to BSpec 49190, when enabling crtcs, we first setup
> > slave and then master crtc, however for disabling it should go
> > vice versa, i.e first master, then slave, however current code
> > does disabling in a same way as enabling. Fix this, by skipping
> > non-master crtcs, instead of non-slaves.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 0490c6412ab5..68958ba0ef49 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6662,7 +6662,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> >  		 */
> >  		if (!is_trans_port_sync_slave(old_crtc_state) &&
> >  		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
> > -		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
> > +		    !intel_crtc_is_bigjoiner_master(old_crtc_state))
> 
> I don't see what does this fix. The sequence is correct at the moment
> and this change would break it, leaving the encoder PLL enabled
> incorrectly when the encoder->post_pll_disable() hook is called. Hence
> it's NAK from side.

Citing BSpec:

Follow the steps to disable Planes, Pipe, and Transcoder for pipe B and transcoder B(master)
Follow the steps to Disable Planes and Pipe for pipe C(slave)
Disable port associated with Transcoder B

however because of !intel_crtc_is_bigjoiner_slave(old_crtc_state), we are skipping masters
and do disabling for the slave crtc first.

If fixing that going to break something - that is another story(anyway doesn't mean we shouldn't fix)

Stan

> 
> >  			continue;
> >  
> >  		intel_old_crtc_state_disables(state, old_crtc_state,
> > -- 
> > 2.37.3
> > 
