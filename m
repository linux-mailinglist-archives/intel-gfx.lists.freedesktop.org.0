Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C86315915B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 15:03:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A21D96EA8A;
	Tue, 11 Feb 2020 14:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34CFC6EA86
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 14:03:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 06:03:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="313072261"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by orsmga001.jf.intel.com with ESMTP; 11 Feb 2020 06:03:38 -0800
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 11 Feb 2020 14:03:38 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 11 Feb 2020 14:03:37 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Tue, 11 Feb 2020 14:03:37 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [PATCH v1] drm/i915: Call intel_edp_init_connector only for eDP.
Thread-Index: AQHV4NCr6ZnEndN/Hkex5zsAYfOKi6gV9ckAgAAHaQCAAAcWgIAAAUoA
Date: Tue, 11 Feb 2020 14:03:37 +0000
Message-ID: <7137346ae4f624b263d85ce79ea62fea70de5037.camel@intel.com>
References: <20200211114038.21035-1-stanislav.lisovskiy@intel.com>
 <87zhdpz35z.fsf@intel.com>
 <713d424e3ab55716b9f475ee0453dc3e4848e226.camel@intel.com>
 <87r1z1z0ri.fsf@intel.com>
In-Reply-To: <87r1z1z0ri.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.163]
Content-ID: <A5D4676F6608C14DA57CB600027B1185@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-02-11 at 15:55 +0200, Jani Nikula wrote:
> On Tue, 11 Feb 2020, "Lisovskiy, Stanislav" <
> stanislav.lisovskiy@intel.com> wrote:
> > On Tue, 2020-02-11 at 15:03 +0200, Jani Nikula wrote:
> > > On Tue, 11 Feb 2020, Stanislav Lisovskiy <
> > > stanislav.lisovskiy@intel.com> wrote:
> > > > I guess it would still be nice to make the code less confusing
> > > > and do not call eDP specific function, for non-eDP connectors
> > > > just to immediately return true(success) value as a hack.
> > > > 
> > > > So simply extracted that check out from this function,
> > > > that we simply don't call it for non-eDP connectors. Bingo.
> > > 
> > > Fair enough, I guess...
> > > 
> > > Though I could be persuaded to take a patch for the reverse,
> > > because
> > > generally we prefer localized knowledge in the callee than in a
> > > potentially irrelevant place in the caller.
> > > 
> > > Consider the intel_dp_mst_encoder_init() call in the context of
> > > this
> > > patch. We call it, and the function itself decides whether MST
> > > init
> > > is
> > > relevant or not. But I presume you wouldn't suggest pulling in
> > > all
> > > the
> > > conditions from there one level higher?
> > > 
> > > Would your opinion on intel_edp_init_connector() be different if
> > > the
> > > conditions were more than just the single intel_dp_is_edp()? Or
> > > if we
> > > moved all of eDP support to a separate file?
> > 
> > Well, to me at least intel_edp_init_connector means that we are
> > going
> > to init an eDP connector, which already assumes that, we already
> > should
> > know that this is an eDP connector :) 
> > Otherwise it should have somewhat different name, not saying that
> > this
> > is the best philosophy, but generally I would prefer the functions
> > to
> > be solely responsible for a single thing so that that init function
> > is
> > supposed to do only init, but not also some detection/checking or
> > any 
> > other side effects.
> > 
> > So that there is a clear visibility what we are doing, if it's an
> > init
> > then we really do only init or if we supposed to detect something
> > first, let it be a separate thing..
> > 
> > Also this uses a return value in confusing way, i.e returning
> > "Success"
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
>                                           intel_connector-
> >base.base.id);
> 
> Surely the information is better localized in a SPOT in the MST code?

Well, you can just take all those checks and put them into separate
function. Something like:

bool intel_dp_supports_mst(intel_dp) {
	if (HAS_DP_MST(i915) && !intel_dp_is_edp(intel_dp)) &&
             !(INTEL_GEN(i915) < 12 && port == PORT_A) &&
             !(INTEL_GEN(i915) <	11 && port == PORT_E))
			return true;
	return false;
}

so, then you would have it nicely looking and understandable:

if (intel_dp_supports_mst(intel_dp))
	intel_dp_mst_encoder_init(intel_dig_port,
                                  intel_connector->base.base.id);

Anyway, I'm _not_ stating that this is _always_ the best way, but 
I don't see at least any reasons currently why it couldn't be done so.

Stan

> 
> 
> BR,
> Jani.
> 
> > 
> > Stan
> > 
> > > 
> > > BR,
> > > Jani.
> > > 
> > > 
> > > > 
> > > > Signed-off-by: Stanislav Lisovskiy <
> > > > stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++-------
> > > >  1 file changed, 6 insertions(+), 7 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index f4dede6253f8..9bd36197a43d 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -7370,9 +7370,6 @@ static bool
> > > > intel_edp_init_connector(struct
> > > > intel_dp *intel_dp,
> > > >  	intel_wakeref_t wakeref;
> > > >  	struct edid *edid;
> > > >  
> > > > -	if (!intel_dp_is_edp(intel_dp))
> > > > -		return true;
> > > > -
> > > >  	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work,
> > > > edp_panel_vdd_work);
> > > >  
> > > >  	/*
> > > > @@ -7590,10 +7587,12 @@ intel_dp_init_connector(struct
> > > > intel_digital_port *intel_dig_port,
> > > >  	intel_dp_mst_encoder_init(intel_dig_port,
> > > >  				  intel_connector-
> > > > >base.base.id);
> > > >  
> > > > -	if (!intel_edp_init_connector(intel_dp,
> > > > intel_connector)) {
> > > > -		intel_dp_aux_fini(intel_dp);
> > > > -		intel_dp_mst_encoder_cleanup(intel_dig_port);
> > > > -		goto fail;
> > > > +	if (intel_dp_is_edp(intel_dp)) {
> > > > +		if (!intel_edp_init_connector(intel_dp,
> > > > intel_connector)) {
> > > > +			intel_dp_aux_fini(intel_dp);
> > > > +			intel_dp_mst_encoder_cleanup(intel_dig_
> > > > port);
> > > > +			goto fail;
> > > > +		}
> > > >  	}
> > > >  
> > > >  	intel_dp_add_properties(intel_dp, connector);
> > > 
> > > 
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
