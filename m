Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 756D21591BF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 15:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C026EA7B;
	Tue, 11 Feb 2020 14:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D22E6EA7B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 14:22:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 06:22:13 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226516748"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 06:22:11 -0800
Date: Tue, 11 Feb 2020 16:21:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200211142148.GA29904@ideak-desk.fi.intel.com>
References: <20200211114038.21035-1-stanislav.lisovskiy@intel.com>
 <87zhdpz35z.fsf@intel.com>
 <713d424e3ab55716b9f475ee0453dc3e4848e226.camel@intel.com>
 <87r1z1z0ri.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r1z1z0ri.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Call intel_edp_init_connector
 only for eDP.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 03:55:45PM +0200, Jani Nikula wrote:
> On Tue, 11 Feb 2020, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
> > On Tue, 2020-02-11 at 15:03 +0200, Jani Nikula wrote:
> >> On Tue, 11 Feb 2020, Stanislav Lisovskiy <
> >> stanislav.lisovskiy@intel.com> wrote:
> >> > I guess it would still be nice to make the code less confusing
> >> > and do not call eDP specific function, for non-eDP connectors
> >> > just to immediately return true(success) value as a hack.
> >> > 
> >> > So simply extracted that check out from this function,
> >> > that we simply don't call it for non-eDP connectors. Bingo.
> >> 
> >> Fair enough, I guess...
> >> 
> >> Though I could be persuaded to take a patch for the reverse, because
> >> generally we prefer localized knowledge in the callee than in a
> >> potentially irrelevant place in the caller.
> >> 
> >> Consider the intel_dp_mst_encoder_init() call in the context of this
> >> patch. We call it, and the function itself decides whether MST init
> >> is
> >> relevant or not. But I presume you wouldn't suggest pulling in all
> >> the
> >> conditions from there one level higher?
> >> 
> >> Would your opinion on intel_edp_init_connector() be different if the
> >> conditions were more than just the single intel_dp_is_edp()? Or if we
> >> moved all of eDP support to a separate file?
> >
> > Well, to me at least intel_edp_init_connector means that we are going
> > to init an eDP connector, which already assumes that, we already should
> > know that this is an eDP connector :) 
> > Otherwise it should have somewhat different name, not saying that this
> > is the best philosophy, but generally I would prefer the functions to
> > be solely responsible for a single thing so that that init function is
> > supposed to do only init, but not also some detection/checking or any 
> > other side effects.
> >
> > So that there is a clear visibility what we are doing, if it's an init
> > then we really do only init or if we supposed to detect something
> > first, let it be a separate thing..
> >
> > Also this uses a return value in confusing way, i.e returning "Success"
> > status for non-eDP from intel_edp_init_connector seems kind of
> > confusing.
> 
> Again, how is this different from intel_dp_mst_encoder_init()?
> 
> With the *exactly* same rationale you'd end up with this:
> 
>         if (HAS_DP_MST(i915) && !intel_dp_is_edp(intel_dp)) &&
>             !(INTEL_GEN(i915) < 12 && port == PORT_A) &&
>             !(INTEL_GEN(i915) <	11 && port == PORT_E))
>                 intel_dp_mst_encoder_init(intel_dig_port,
>                                           intel_connector->base.base.id);
> 
> Surely the information is better localized in a SPOT in the MST code?

I find it also clearer to bring the intel_dp_is_edp() check out from
intel_edp_init_connector(): we init the connector to be either an eDP or
DP connector. Atm it's not clear after intel_edp_init_connector() returns
success if the connector is eDP or DP type at that point. Stan's change
would improve that.

> 
> 
> BR,
> Jani.
> 
> >
> > Stan
> >
> >> 
> >> BR,
> >> Jani.
> >> 
> >> 
> >> > 
> >> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++-------
> >> >  1 file changed, 6 insertions(+), 7 deletions(-)
> >> > 
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > index f4dede6253f8..9bd36197a43d 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > @@ -7370,9 +7370,6 @@ static bool intel_edp_init_connector(struct
> >> > intel_dp *intel_dp,
> >> >  	intel_wakeref_t wakeref;
> >> >  	struct edid *edid;
> >> >  
> >> > -	if (!intel_dp_is_edp(intel_dp))
> >> > -		return true;
> >> > -
> >> >  	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work,
> >> > edp_panel_vdd_work);
> >> >  
> >> >  	/*
> >> > @@ -7590,10 +7587,12 @@ intel_dp_init_connector(struct
> >> > intel_digital_port *intel_dig_port,
> >> >  	intel_dp_mst_encoder_init(intel_dig_port,
> >> >  				  intel_connector->base.base.id);
> >> >  
> >> > -	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
> >> > -		intel_dp_aux_fini(intel_dp);
> >> > -		intel_dp_mst_encoder_cleanup(intel_dig_port);
> >> > -		goto fail;
> >> > +	if (intel_dp_is_edp(intel_dp)) {
> >> > +		if (!intel_edp_init_connector(intel_dp,
> >> > intel_connector)) {
> >> > +			intel_dp_aux_fini(intel_dp);
> >> > +			intel_dp_mst_encoder_cleanup(intel_dig_port);
> >> > +			goto fail;
> >> > +		}
> >> >  	}
> >> >  
> >> >  	intel_dp_add_properties(intel_dp, connector);
> >> 
> >> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
