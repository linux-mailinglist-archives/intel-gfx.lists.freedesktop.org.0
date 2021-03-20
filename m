Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12556342B43
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Mar 2021 08:15:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D88326EB39;
	Sat, 20 Mar 2021 07:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0BC96EB39
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Mar 2021 07:15:44 +0000 (UTC)
IronPort-SDR: Q276XXDv2TvpgElNsjCH09eYcDhPfs0+52bfR9LdQNEZhxXpqCd0LvgRDxM/BrYab5bgyfCWb8
 sOdI8XSlPtQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="275090492"
X-IronPort-AV: E=Sophos;i="5.81,264,1610438400"; d="scan'208";a="275090492"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2021 00:15:43 -0700
IronPort-SDR: sZ+mIUm+mfb5wW4v3ETusRMfN9ANQPBh08f57tjl0SpyqcCNk/SfCJ+deVSB7IXSTCh22QcWgx
 IFDGJdvHGUCw==
X-IronPort-AV: E=Sophos;i="5.81,264,1610438400"; d="scan'208";a="512726529"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2021 00:15:41 -0700
Date: Sat, 20 Mar 2021 09:15:38 +0200
From: Imre Deak <imre.deak@intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20210320071538.GA361797@ideak-desk.fi.intel.com>
References: <20210317184901.4029798-2-imre.deak@intel.com>
 <YFOO4FOmOB8yp3me@intel.com>
 <20210318174907.GE4128033@ideak-desk.fi.intel.com>
 <20210318180645.GG4128033@ideak-desk.fi.intel.com>
 <e1e9f9ea76071af914b37352fc201d09f378a55b.camel@intel.com>
 <20210318231749.GA23036@ideak-desk.fi.intel.com>
 <ce79f22e1f7f7e6bf4424e5f9d2d657d8215480d.camel@redhat.com>
 <20210319172941.GI94006@ideak-desk.fi.intel.com>
 <b5d3fce1421f152db70a775241739df7d7dd364f.camel@redhat.com>
 <20210319210715.GP94006@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319210715.GP94006@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/ilk-glk: Fix link training
 on links with LTTPRs
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
Cc: "mail@bodograumann.de" <mail@bodograumann.de>,
 "santiago.zarate@suse.com" <santiago.zarate@suse.com>,
 "tiwai@suse.de" <tiwai@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 19, 2021 at 11:07:21PM +0200, Imre Deak wrote:
> On Fri, Mar 19, 2021 at 04:44:26PM -0400, Lyude Paul wrote:
> > > > > [...]
> > > > > I think it would work if we can make the retries configurable and=
 set it
> > > > > to
> > > > > =A0=A0=A0=A0=A0=A0=A0=A0retries =3D total_timeout / platform_spec=
ific_timeout_per_retry
> > > > > =

> > > > > where total_timeout would be something reasonable like 1 sec.
> > > > =

> > > > I actually think I'm more open to the idea of configurable retries =
after
> > > > learning that apparently this is a thing that the i2c subsystem doe=
s - so
> > > > there's more precedence for it in the rest of the kernel than I ori=
ginally
> > > > thought.
> > > > =

> > > > I'm still curious if we need these extra retries in here though - t=
here seems
> > > > to
> > > > be one set of retries that is actually platform specific, and then =
just a
> > > > random
> > > > set of 5 retries that don't seem to have anything to do with platfo=
rm specific
> > > > behavior - so I think it'd still be worth giving a shot at getting =
rid of that
> > > =

> > > The platform specific part of the timeout is the one desctibed in the
> > > maximum timeout values comments.
> > =

> > You mean the
> > =

> > 		/* Must try at least 3 times according to DP spec */
> > 		for (try =3D 0; try < 5; try++) {
> > =

> > bit? I thought that wasn't related to platform specific retries at all,=
 since
> > the code in that loop seems to only reference parts of the DP spec, and=
 that the
> > =

> > 	while ((aux_clock_divider =3D intel_dp->get_aux_clock_divider(intel_dp=
, clock++))) {
> > =

> > Loop was the portion that was platform specific, since it prompts the d=
river to
> > retry the transaction with different aux clock divider rates depending =
on the
> > platform in use. Feel free to correct me if I'm wrong though.
> =

> Nope. I meant every HW transaction will have a platform specific
> timeout. For instance it's 1.6ms on SKL, but 4ms on ICL. So now since
> the overall retry count is 32 * 5 =3D 160, on SKL we'll retry for ~2.6
> seconds, on ICL we'll retry for ~6.4 seconds (disregarding now the extra
> 400usec delay inserted by drm_dp_dpcd_access(), which adds a fixed
> ~1.3ms delay).

Err, looks like I missed some coffee. Max total timeouts atm, which we
would need to make the same on all platforms:

	g4x-glk: 5 * 32 * 1.6ms + 32 * 400us =3D 268.8ms
	cnl    : 5 * 32 * 3.2ms + 32 * 400us =3D 524.8ms
	icl+   : 5 * 32 * 4ms   + 32 * 400us =3D 652.8ms

> This is what I think should be normalized, so that we have the same
> amount of overall maximum timeout period on all platforms.
> =

> > Also - with the timeouts we're seeing, does the LTTPR return NAKs at al=
l? That's
> > still another thing I had suggested alternate workarounds for so that w=
e could
> > terminate transactions immediately on NAKs, so I wonder if that could s=
ave time
> > here as well.
> =

> There's not much LTTPR specific in that wrt. what sinks would do
> normally (no NAKs for read, only for writes) except LTTPRs may rewrite
> NAKs to ACKs to account for buggy monitors returning NAKs when reading
> the 0xf0000 -> range. But I'd suggest not dealing with this aspect now,
> just sanitize the above retry thing, as you suggested, remove the i915
> retry loop and make the drm retry loop configurable.
> =

> (In any case I also had the idea to stop transactions early when HPD
>  gets deasserted, but not sure if that's completely robust.)
> =

> > > > > > Thanks
> > > > > > Khaled
> > > > > > =

> > > > > > > =

> > > > > > > > > Anyways, this seems about the only thing we can do given =
the
> > > > > > > > > limited
> > > > > > > > > hw capabilities.
> > > > > > > > > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel=
.com>
> > > > > > > > > =

> > > > > > > > > > Accordingly disable LTTPR detection until GLK, where the
> > > > > > > > > > maximum timeout
> > > > > > > > > > we can set is only 1.6ms.
> > > > > > > > > > =

> > > > > > > > > > Link training in the non-transparent mode is known to f=
ail at
> > > > > > > > > > least on
> > > > > > > > > > some SKL systems with a WD19 dock on the link, which ex=
poses an
> > > > > > > > > > LTTPR
> > > > > > > > > > (see the References below). While this could have diffe=
rent
> > > > > > > > > > reasons
> > > > > > > > > > besides the too short AUX timeout used, not detecting L=
TTPRs
> > > > > > > > > > (and so not
> > > > > > > > > > using the non-transparent LT mode) fixes link training =
on these
> > > > > > > > > > systems.
> > > > > > > > > > =

> > > > > > > > > > While at it add a code comment about the platform speci=
fic
> > > > > > > > > > maximum
> > > > > > > > > > timeout values.
> > > > > > > > > > =

> > > > > > > > > > v2: Add a comment about the g4x maximum timeout as well.
> > > > > > > > > > (Ville)
> > > > > > > > > > =

> > > > > > > > > > Reported-by: Takashi Iwai <tiwai@suse.de>
> > > > > > > > > > Reported-and-tested-by: Santiago Zarate <
> > > > > > > > > > santiago.zarate@suse.com>
> > > > > > > > > > Reported-and-tested-by: Bodo Graumann <mail@bodograuman=
n.de>
> > > > > > > > > > References:
> > > > > > > > > > https://gitlab.freedesktop.org/drm/intel/-/issues/3166
> > > > > > > > > > Fixes: b30edfd8d0b4 ("drm/i915: Switch to LTTPR non-tra=
nsparent
> > > > > > > > > > mode link training")
> > > > > > > > > > Cc: <stable@vger.kernel.org> # v5.11
> > > > > > > > > > Cc: Takashi Iwai <tiwai@suse.de>
> > > > > > > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > > > > > > ---
> > > > > > > > > > =A0drivers/gpu/drm/i915/display/intel_dp_aux.c=A0=A0=A0=
=A0=A0=A0 |=A0 7 +++++++
> > > > > > > > > > =A0.../gpu/drm/i915/display/intel_dp_link_training.c | =
15
> > > > > > > > > > ++++++++++++---
> > > > > > > > > > =A02 files changed, 19 insertions(+), 3 deletions(-)
> > > > > > > > > > =

> > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > > > > > > > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > > > > > > > index eaebf123310a..10fe17b7280d 100644
> > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > > > > > > > @@ -133,6 +133,7 @@ static u32 g4x_get_aux_send_ctl(str=
uct
> > > > > > > > > > intel_dp *intel_dp,
> > > > > > > > > > =A0else
> > > > > > > > > > =A0precharge =3D 5;
> > > > > > > > > > =

> > > > > > > > > > +/* Max timeout value on G4x-BDW: 1.6ms */
> > > > > > > > > > =A0if (IS_BROADWELL(dev_priv))
> > > > > > > > > > =A0timeout =3D DP_AUX_CH_CTL_TIME_OUT_600us;
> > > > > > > > > > =A0else
> > > > > > > > > > @@ -159,6 +160,12 @@ static u32 skl_get_aux_send_ctl(st=
ruct
> > > > > > > > > > intel_dp *intel_dp,
> > > > > > > > > > =A0enum phy phy =3D intel_port_to_phy(i915, dig_port-
> > > > > > > > > > > base.port);
> > > > > > > > > > =A0u32 ret;
> > > > > > > > > > =

> > > > > > > > > > +/*
> > > > > > > > > > + * Max timeout values:
> > > > > > > > > > + * SKL-GLK: 1.6ms
> > > > > > > > > > + * CNL: 3.2ms
> > > > > > > > > > + * ICL+: 4ms
> > > > > > > > > > + */
> > > > > > > > > > =A0ret =3D DP_AUX_CH_CTL_SEND_BUSY |
> > > > > > > > > > =A0=A0=A0=A0=A0=A0 DP_AUX_CH_CTL_DONE |
> > > > > > > > > > =A0=A0=A0=A0=A0=A0 DP_AUX_CH_CTL_INTERRUPT |
> > > > > > > > > > diff --git
> > > > > > > > > > a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > > > > > > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > > > > > > > index 19ba7c7cbaab..c0e25c75c105 100644
> > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_traini=
ng.c
> > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_traini=
ng.c
> > > > > > > > > > @@ -82,6 +82,18 @@ static void
> > > > > > > > > > intel_dp_read_lttpr_phy_caps(struct intel_dp *intel_dp,
> > > > > > > > > > =

> > > > > > > > > > =A0static bool intel_dp_read_lttpr_common_caps(struct i=
ntel_dp
> > > > > > > > > > *intel_dp)
> > > > > > > > > > =A0{
> > > > > > > > > > +struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > > > > > > > > +
> > > > > > > > > > +if (intel_dp_is_edp(intel_dp))
> > > > > > > > > > +return false;
> > > > > > > > > > +
> > > > > > > > > > +/*
> > > > > > > > > > + * Detecting LTTPRs must be avoided on platforms with
> > > > > > > > > > an AUX timeout
> > > > > > > > > > + * period < 3.2ms. (see DP Standard v2.0, 2.11.2,
> > > > > > > > > > 3.6.6.1).
> > > > > > > > > > + */
> > > > > > > > > > +if (INTEL_GEN(i915) < 10)
> > > > > > > > > > +return false;
> > > > > > > > > > +
> > > > > > > > > > =A0if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
> > > > > > > > > > =A0=A0 intel_dp-
> > > > > > > > > > > lttpr_common_caps) < 0) {
> > > > > > > > > > =A0memset(intel_dp->lttpr_common_caps, 0,
> > > > > > > > > > @@ -127,9 +139,6 @@ int intel_dp_lttpr_init(struct inte=
l_dp
> > > > > > > > > > *intel_dp)
> > > > > > > > > > =A0bool ret;
> > > > > > > > > > =A0int i;
> > > > > > > > > > =

> > > > > > > > > > -if (intel_dp_is_edp(intel_dp))
> > > > > > > > > > -return 0;
> > > > > > > > > > -
> > > > > > > > > > =A0ret =3D intel_dp_read_lttpr_common_caps(intel_dp);
> > > > > > > > > > =A0if (!ret)
> > > > > > > > > > =A0return 0;
> > > > > > > > > > --
> > > > > > > > > > 2.25.1
> > > > > > > > > =

> > > > > > > > > --
> > > > > > > > > Ville Syrj=E4l=E4
> > > > > > > > > Intel
> > > > > =

> > > > =

> > > > -- =

> > > > Sincerely,
> > > > =A0=A0 Lyude Paul (she/her)
> > > > =A0=A0 Software Engineer at Red Hat
> > > > =A0=A0 =

> > > > Note: I deal with a lot of emails and have a lot of bugs on my plat=
e. If
> > > > you've
> > > > asked me a question, are waiting for a review/merge on a patch, etc=
. and I
> > > > haven't responded in a while, please feel free to send me another e=
mail to
> > > > check
> > > > on my status. I don't bite!
> > > > =

> > > =

> > =

> > -- =

> > Sincerely,
> >    Lyude Paul (she/her)
> >    Software Engineer at Red Hat
> >    =

> > Note: I deal with a lot of emails and have a lot of bugs on my plate. I=
f you've
> > asked me a question, are waiting for a review/merge on a patch, etc. an=
d I
> > haven't responded in a while, please feel free to send me another email=
 to check
> > on my status. I don't bite!
> > =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
