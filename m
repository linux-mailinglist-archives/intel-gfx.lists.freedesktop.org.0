Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 683A68CD7CA
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 17:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C5F10E96B;
	Thu, 23 May 2024 15:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JV1sU23f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597B510E566
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 15:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716479676; x=1748015676;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+4d1/99T/WcPgxeDgxEe7sdXE2Hs8UtW6OH8fIQ428c=;
 b=JV1sU23fbgMWOYHsAzixehRDOSJmomWXXJS0WfJ+M5+RhlTnx+2mq5iz
 iZqNCLMSje6so+JVJW+HMB8Be8b8dHgK85JbRA56sBqrKnLLwk7QE3GIu
 2r/RxJhCE2deSVu9cA8SKHYZvGpZ8oZpB0ztVibu7bJsu5VsiA/MNkzwp
 r0uoQnTGRG2n0jscfGyyA9OtAhqRGhCIBRd7jn66MQ9EaNv/WY706QKCs
 tZm/HJVJC901AkAfKzNF/FPTvA7tnWRuluPa7jj1A4yCy8n2koObS3xNl
 KNbU5fxf8LnJas6AF429jyU/AgNDP+uhYvC788+ndVwTeWAvZTjXloAVe A==;
X-CSE-ConnectionGUID: zP2aeGhTQDS+jDyMeP+yvw==
X-CSE-MsgGUID: /qJjtqfKQkuKnCYlebPxww==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16596213"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="16596213"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 08:54:36 -0700
X-CSE-ConnectionGUID: +dbuv2TlRa+ZVWfFk1gYLg==
X-CSE-MsgGUID: F+yuC5rwQyCbqYy9816tSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="38108024"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 08:54:34 -0700
Date: Thu, 23 May 2024 18:54:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 12/21] drm/i915/dp: Use check link state work in the
 detect handler
Message-ID: <Zk9mvu9p/rP/kBWh@ideak-desk.fi.intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-13-imre.deak@intel.com>
 <Zk9b-BnIn9QzljpT@intel.com>
 <Zk9g0TXrbZCGuT7a@ideak-desk.fi.intel.com>
 <Zk9kLPgoIMynXwz0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zk9kLPgoIMynXwz0@intel.com>
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

On Thu, May 23, 2024 at 06:43:40PM +0300, Ville Syrjälä wrote:
> On Thu, May 23, 2024 at 06:29:21PM +0300, Imre Deak wrote:
> > On Thu, May 23, 2024 at 06:08:40PM +0300, Ville Syrjälä wrote:
> > > On Mon, May 20, 2024 at 09:58:10PM +0300, Imre Deak wrote:
> > > > Simplify things by retraining a DP link if a bad link is detected in the
> > > > connector detect handler from the encoder's check link state work,
> > > > similarly to how this is done after a modeset link training failure.
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++-----
> > > >  1 file changed, 2 insertions(+), 5 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index ff4ed6bb520d8..70b00e5ae7ad7 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -5863,11 +5863,8 @@ intel_dp_detect(struct drm_connector *connector,
> > > >  	 * Some external monitors do not signal loss of link synchronization
> > > >  	 * with an IRQ_HPD, so force a link status check.
> > > >  	 */
> > > > -	if (!intel_dp_is_edp(intel_dp)) {
> > > > -		ret = intel_dp_retrain_link(encoder, ctx);
> > > > -		if (ret)
> > > > -			return ret;
> > > > -	}
> > > > +	if (!intel_dp_is_edp(intel_dp))
> > > > +		intel_dp_check_link_state(intel_dp);
> > > 
> > > I would like to see this hack nuked entirely. But that
> > > could be a followup.
> > 
> > Okay. This tries to keep the current behavior, but can add a note that
> > the above workaround can be removed after the link state is checked
> > after modesets.
> > 
> > I also wondered about the link state check in the hotplug handler. If
> > that's only a way to defer doing this from the HPD IRQ handler - which
> > is now changed by patch 13 - that could be also removed eventually?
> 
> Not sure which one you want to removed exactly. I presume there
> are still at least these cases we need to handle:
> - long HDP dropped and came back without any userspace
>   initiated modeset in between
>   -> kick off a retrain from the long HPD handler

I meant this one, but didn't think of the case where the link can be
actually retrained after a long HPD. I guess with a full modeset it
works, so should continue doing that.

> - short HPD indicated some link badness
>   -> kick off a retrain from the short HDP handler
> - link dropped on its own soon after modeset without
>   any HPD for some reason
>   -> kick off a retrain from the post modeset link check
> 
> And the one we should remove:
> - something weird happened to the link and no one noticed,
>   and for some random reason userspace just happens to do
>   a getconnector() which ends up randomly fixing things

Yes, this is clear.

> Did I miss anything else?
> 
> -- 
> Ville Syrjälä
> Intel
