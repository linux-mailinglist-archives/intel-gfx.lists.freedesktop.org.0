Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53957274762
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 19:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 205A76E8CB;
	Tue, 22 Sep 2020 17:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04C56E8CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 17:25:46 +0000 (UTC)
IronPort-SDR: FIdrOkFotNwwTJIvntJSiTtgD++XgJ47nRZlQx3VjsOaQydb9X0AwF9ZoGjGEdGrgwJbcrqzvg
 QVFT4qaXxQkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="140144980"
X-IronPort-AV: E=Sophos;i="5.77,291,1596524400"; d="scan'208";a="140144980"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 10:25:46 -0700
IronPort-SDR: ahhXf2OpPQ//a9hIna/o4jug5TnfbwoprI3hognPS9fwExrgd4mQ4AqZ5+XhdScTtK0fwBg2/i
 Vz5ucxZAR8uA==
X-IronPort-AV: E=Sophos;i="5.77,291,1596524400"; d="scan'208";a="486042997"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 10:25:45 -0700
Date: Tue, 22 Sep 2020 20:25:35 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200922172535.GJ23028@ideak-desk.fi.intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
 <20200922125106.30540-4-imre.deak@intel.com>
 <20200922132705.GS6112@intel.com>
 <20200922153035.GF23028@ideak-desk.fi.intel.com>
 <20200922164917.GT6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922164917.GT6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Simplify the link training
 functions
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 22, 2020 at 07:49:17PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Sep 22, 2020 at 06:30:35PM +0300, Imre Deak wrote:
> > On Tue, Sep 22, 2020 at 04:27:05PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Tue, Sep 22, 2020 at 03:51:02PM +0300, Imre Deak wrote:
> > > > Split the prepare, link training, fallback-handling steps into thei=
r own
> > > > functions for clarity and as a preparation for the upcoming LTTPR c=
hanges.
> > > > =

> > > > While at it also add some documentation to exported functions.
> > > > =

> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  .../drm/i915/display/intel_dp_link_training.c | 80 ++++++++++++++-=
----
> > > >  1 file changed, 62 insertions(+), 18 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c =
b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > index 6d13d00db5e6..0c3809891bd2 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > @@ -162,14 +162,13 @@ static bool intel_dp_link_max_vswing_reached(=
struct intel_dp *intel_dp)
> > > >  	return true;
> > > >  }
> > > >  =

> > > > -/* Enable corresponding port and start training pattern 1 */
> > > > -static bool
> > > > -intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
> > > > +/*
> > > > + * Prepare link training by configuring the link parameters and en=
abling the
> > > > + * corresponding port.
> > > > + */
> > > > +static void intel_dp_prepare_link_train(struct intel_dp *intel_dp)
> > > >  {
> > > >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > > -	u8 voltage;
> > > > -	int voltage_tries, cr_tries, max_cr_tries;
> > > > -	bool max_vswing_reached =3D false;
> > > >  	u8 link_config[2];
> > > >  	u8 link_bw, rate_select;
> > > >  =

> > > > @@ -203,6 +202,16 @@ intel_dp_link_training_clock_recovery(struct i=
ntel_dp *intel_dp)
> > > >  	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config=
, 2);
> > > >  =

> > > >  	intel_dp->DP |=3D DP_PORT_EN;
> > > =

> > > I guess we no longer actually enable the port here? The comment ^ sti=
ll says
> > > we do.
> > > =

> > > Hmm. Seems we do enable the port on ddi platforms, but not on older
> > > platforms. I guess the docs could still use a tweak to reflect
> > > reality a bit better.
> > =

> > Yes, missed the old platform part, will update the comment.
> > =

> > > =

> > > > +}
> > > > +
> > > > +/* Perform the link training clock recovery phase using training p=
attern 1. */
> > > > +static bool
> > > > +intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
> > > > +{
> > > > +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > > +	u8 voltage;
> > > > +	int voltage_tries, cr_tries, max_cr_tries;
> > > > +	bool max_vswing_reached =3D false;
> > > >  =

> > > >  	/* clock recovery */
> > > >  	if (!intel_dp_reset_link_train(intel_dp,
> > > > @@ -325,6 +334,10 @@ static u32 intel_dp_training_pattern(struct in=
tel_dp *intel_dp)
> > > >  	return DP_TRAINING_PATTERN_2;
> > > >  }
> > > >  =

> > > > +/*
> > > > + * Perform the link training channel equalization phase using one =
of training
> > > > + * pattern 2, 3 or 4 depending on the the source and sink capabili=
ties.
> > > > + */
> > > >  static bool
> > > >  intel_dp_link_training_channel_equalization(struct intel_dp *intel=
_dp)
> > > >  {
> > > > @@ -395,6 +408,15 @@ intel_dp_link_training_channel_equalization(st=
ruct intel_dp *intel_dp)
> > > >  =

> > > >  }
> > > >  =

> > > > +/**
> > > > + * intel_dp_stop_link_train - stop link training
> > > > + * @intel_dp: DP struct
> > > > + *
> > > > + * Stop the link training of the @intel_dp port, programming the p=
ort to
> > > > + * output an idle pattern =

> > > =

> > > I don't think we use the idle pattern on all platforms.
> > =

> > Yes, just DDI, this also needs a doc update.
> > =

> > > BTW intel_dp_set_idle_link_train() looks pretty pointless. Could just
> > > inline it into its only caller, or at least move it into
> > > intel_dp_link_training.c.
> > =

> > Ok, can unexport/inline it. Btw, this part made me wonder what's the
> > exact reason for keeping the idle pattern output and corresponding DPCD
> > programming separate, that is why can't we disable the training pattern
> > in DPCD after intel_dp_set_idle_link_train()? That would make things
> > more uniform on all platforms.
> =

> Hmm. I guess we're violating the DP spec a bit with the current
> sequence:
> "The Source device shall start sending the idle pattern after it has
>  cleared the Training_Pattern byte in the DPCD"

Yep, that order sounds correct. In v2.0 3.6.6.6.10 End of Link Training
suggests the current sequence though, but the sink should be able to
handle the idle pattern after the sink reported symbol lock .

> Currently we start sending the idle pattern way earlier. And even
> on platform where we don't send the idle pattern [1] we are disabling
> the training pattern before we do the corresponding DPCD write.
> =

> So we may want to change the order to follow the spec.
> =

> [1] I guess the hw must send a few idle patterns automagically
>     since IIRC the spec requires it?

Yes, the spec seems to require it (5.1.2). AFAICS (on g4x for instance)
we have the pipe disabled when disabling training pattern generation, so
I suppose the port would send idle patterns until enabling the pipe?

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
