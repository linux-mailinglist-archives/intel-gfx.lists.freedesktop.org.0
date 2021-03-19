Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 790B034235F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 18:29:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A10226E098;
	Fri, 19 Mar 2021 17:29:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944F06EA5E
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 17:29:48 +0000 (UTC)
IronPort-SDR: ftAlX7oE7vhz0OjLt/kDyYzJUW71pxz+7ZqZQN17Y/9vabisLKWeqVlw+HIzcQHhax10WLNCfY
 CQCxpMdRmTnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="209967614"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="209967614"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:29:47 -0700
IronPort-SDR: Wty3SGUNGDMA6yjUa+Fid+JrPHvHcy1EPG4CcFyZ6LEY3YRs9UqscAsa3BHKOegqegKT6ONgwe
 7aA+uGasc7Vw==
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="413593939"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:29:45 -0700
Date: Fri, 19 Mar 2021 19:29:41 +0200
From: Imre Deak <imre.deak@intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20210319172941.GI94006@ideak-desk.fi.intel.com>
References: <20210317184901.4029798-1-imre.deak@intel.com>
 <20210317184901.4029798-2-imre.deak@intel.com>
 <YFOO4FOmOB8yp3me@intel.com>
 <20210318174907.GE4128033@ideak-desk.fi.intel.com>
 <20210318180645.GG4128033@ideak-desk.fi.intel.com>
 <e1e9f9ea76071af914b37352fc201d09f378a55b.camel@intel.com>
 <20210318231749.GA23036@ideak-desk.fi.intel.com>
 <ce79f22e1f7f7e6bf4424e5f9d2d657d8215480d.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce79f22e1f7f7e6bf4424e5f9d2d657d8215480d.camel@redhat.com>
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

On Fri, Mar 19, 2021 at 01:25:08PM -0400, Lyude Paul wrote:
> On Fri, 2021-03-19 at 01:17 +0200, Imre Deak wrote:
> > On Fri, Mar 19, 2021 at 12:04:54AM +0200, Almahallawy, Khaled wrote:
> > > On Thu, 2021-03-18 at 20:06 +0200, Imre Deak wrote:
> > > > On Thu, Mar 18, 2021 at 07:49:13PM +0200, Imre Deak wrote:
> > > > > On Thu, Mar 18, 2021 at 07:33:20PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > > > On Wed, Mar 17, 2021 at 08:48:59PM +0200, Imre Deak wrote:
> > > > > > > The spec requires to use at least 3.2ms for the AUX timeout
> > > > > > > period if
> > > > > > > there are LT-tunable PHY Repeaters on the link (2.11.2). An
> > > > > > > upcoming
> > > > > > > spec update makes this more specific, by requiring a 3.2ms
> > > > > > > minimum
> > > > > > > timeout period for the LTTPR detection reading the 0xF0000-
> > > > > > > 0xF0007
> > > > > > > range (3.6.5.1).
> > > > > > =

> > > > > > I'm pondering if we could reduce the timeout after having
> > > > > > determined
> > > > > > wherther LTTPRs are present or not? But maybe that wouldn't
> > > > > > really speed
> > > > > > up anything since we can't reduce the timeout until after
> > > > > > detecting
> > > > > > *something*. And once there is something there we shouldn't
> > > > > > really get
> > > > > > any more timeouts I guess. So probably a totally stupid idea.
> > > > > =

> > > > > Right, if something is connected it would take anyway as much time
> > > > > as it
> > > > > takes for the sink to reply whether or not we decreased the
> > > > > timeout.
> > > > > =

> > > > > However if nothing is connected, we have the excessive timeout
> > > > > Khaled
> > > > > already noticed (160 * 4ms =3D 6.4 sec on ICL+). I think to impro=
ve
> > > > > that
> > > > > we could scale the total number of retries by making it
> > > > > total_timeout/platform_specific_timeout (letting total_timeout=3D=
2sec
> > > > > for
> > > > > instance) or just changing the drm retry logic to be time based
> > > > > instead
> > > > > of the number of retries we use atm.
> > > > =

> > > > Doh, reducing simply the HW timeouts would be enough to fix this.
> > > =

> > > What about Lyude's suggestion (
> > > https://patchwork.freedesktop.org/patch/420369/#comment_756572)
> > > to drop the retries in intel_dp_aux_xfer()
> > > /* Must try at least 3 times according to DP spec */
> > > for (try =3D 0; try < 5; try++) {
> > > =

> > > And use only the retries in drm_dpcd_access?
> > =

> > I think it would work if we can make the retries configurable and set it
> > to
> > =A0=A0=A0=A0=A0=A0=A0=A0retries =3D total_timeout / platform_specific_t=
imeout_per_retry
> > =

> > where total_timeout would be something reasonable like 1 sec.
> =

> I actually think I'm more open to the idea of configurable retries after
> learning that apparently this is a thing that the i2c subsystem does - so
> there's more precedence for it in the rest of the kernel than I originally
> thought.
> =

> I'm still curious if we need these extra retries in here though - there s=
eems to
> be one set of retries that is actually platform specific, and then just a=
 random
> set of 5 retries that don't seem to have anything to do with platform spe=
cific
> behavior - so I think it'd still be worth giving a shot at getting rid of=
 that

The platform specific part of the timeout is the one desctibed in the
maximum timeout values comments.

> > > Thanks
> > > Khaled
> > > =

> > > > =

> > > > > > Anyways, this seems about the only thing we can do given the
> > > > > > limited
> > > > > > hw capabilities.
> > > > > > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > =

> > > > > > > Accordingly disable LTTPR detection until GLK, where the
> > > > > > > maximum timeout
> > > > > > > we can set is only 1.6ms.
> > > > > > > =

> > > > > > > Link training in the non-transparent mode is known to fail at
> > > > > > > least on
> > > > > > > some SKL systems with a WD19 dock on the link, which exposes =
an
> > > > > > > LTTPR
> > > > > > > (see the References below). While this could have different
> > > > > > > reasons
> > > > > > > besides the too short AUX timeout used, not detecting LTTPRs
> > > > > > > (and so not
> > > > > > > using the non-transparent LT mode) fixes link training on the=
se
> > > > > > > systems.
> > > > > > > =

> > > > > > > While at it add a code comment about the platform specific
> > > > > > > maximum
> > > > > > > timeout values.
> > > > > > > =

> > > > > > > v2: Add a comment about the g4x maximum timeout as well.
> > > > > > > (Ville)
> > > > > > > =

> > > > > > > Reported-by: Takashi Iwai <tiwai@suse.de>
> > > > > > > Reported-and-tested-by: Santiago Zarate <
> > > > > > > santiago.zarate@suse.com>
> > > > > > > Reported-and-tested-by: Bodo Graumann <mail@bodograumann.de>
> > > > > > > References:
> > > > > > > https://gitlab.freedesktop.org/drm/intel/-/issues/3166
> > > > > > > Fixes: b30edfd8d0b4 ("drm/i915: Switch to LTTPR non-transpare=
nt
> > > > > > > mode link training")
> > > > > > > Cc: <stable@vger.kernel.org> # v5.11
> > > > > > > Cc: Takashi Iwai <tiwai@suse.de>
> > > > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > > > ---
> > > > > > > =A0drivers/gpu/drm/i915/display/intel_dp_aux.c=A0=A0=A0=A0=A0=
=A0 |=A0 7 +++++++
> > > > > > > =A0.../gpu/drm/i915/display/intel_dp_link_training.c | 15
> > > > > > > ++++++++++++---
> > > > > > > =A02 files changed, 19 insertions(+), 3 deletions(-)
> > > > > > > =

> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > > > > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > > > > index eaebf123310a..10fe17b7280d 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > > > > > @@ -133,6 +133,7 @@ static u32 g4x_get_aux_send_ctl(struct
> > > > > > > intel_dp *intel_dp,
> > > > > > > =A0else
> > > > > > > =A0precharge =3D 5;
> > > > > > > =

> > > > > > > +/* Max timeout value on G4x-BDW: 1.6ms */
> > > > > > > =A0if (IS_BROADWELL(dev_priv))
> > > > > > > =A0timeout =3D DP_AUX_CH_CTL_TIME_OUT_600us;
> > > > > > > =A0else
> > > > > > > @@ -159,6 +160,12 @@ static u32 skl_get_aux_send_ctl(struct
> > > > > > > intel_dp *intel_dp,
> > > > > > > =A0enum phy phy =3D intel_port_to_phy(i915, dig_port-
> > > > > > > > base.port);
> > > > > > > =A0u32 ret;
> > > > > > > =

> > > > > > > +/*
> > > > > > > + * Max timeout values:
> > > > > > > + * SKL-GLK: 1.6ms
> > > > > > > + * CNL: 3.2ms
> > > > > > > + * ICL+: 4ms
> > > > > > > + */
> > > > > > > =A0ret =3D DP_AUX_CH_CTL_SEND_BUSY |
> > > > > > > =A0=A0=A0=A0=A0=A0 DP_AUX_CH_CTL_DONE |
> > > > > > > =A0=A0=A0=A0=A0=A0 DP_AUX_CH_CTL_INTERRUPT |
> > > > > > > diff --git
> > > > > > > a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > > > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > > > > index 19ba7c7cbaab..c0e25c75c105 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > > > > @@ -82,6 +82,18 @@ static void
> > > > > > > intel_dp_read_lttpr_phy_caps(struct intel_dp *intel_dp,
> > > > > > > =

> > > > > > > =A0static bool intel_dp_read_lttpr_common_caps(struct intel_dp
> > > > > > > *intel_dp)
> > > > > > > =A0{
> > > > > > > +struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > > > > > +
> > > > > > > +if (intel_dp_is_edp(intel_dp))
> > > > > > > +return false;
> > > > > > > +
> > > > > > > +/*
> > > > > > > + * Detecting LTTPRs must be avoided on platforms with
> > > > > > > an AUX timeout
> > > > > > > + * period < 3.2ms. (see DP Standard v2.0, 2.11.2,
> > > > > > > 3.6.6.1).
> > > > > > > + */
> > > > > > > +if (INTEL_GEN(i915) < 10)
> > > > > > > +return false;
> > > > > > > +
> > > > > > > =A0if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
> > > > > > > =A0=A0 intel_dp-
> > > > > > > > lttpr_common_caps) < 0) {
> > > > > > > =A0memset(intel_dp->lttpr_common_caps, 0,
> > > > > > > @@ -127,9 +139,6 @@ int intel_dp_lttpr_init(struct intel_dp
> > > > > > > *intel_dp)
> > > > > > > =A0bool ret;
> > > > > > > =A0int i;
> > > > > > > =

> > > > > > > -if (intel_dp_is_edp(intel_dp))
> > > > > > > -return 0;
> > > > > > > -
> > > > > > > =A0ret =3D intel_dp_read_lttpr_common_caps(intel_dp);
> > > > > > > =A0if (!ret)
> > > > > > > =A0return 0;
> > > > > > > --
> > > > > > > 2.25.1
> > > > > > =

> > > > > > --
> > > > > > Ville Syrj=E4l=E4
> > > > > > Intel
> > =

> =

> -- =

> Sincerely,
>    Lyude Paul (she/her)
>    Software Engineer at Red Hat
>    =

> Note: I deal with a lot of emails and have a lot of bugs on my plate. If =
you've
> asked me a question, are waiting for a review/merge on a patch, etc. and I
> haven't responded in a while, please feel free to send me another email t=
o check
> on my status. I don't bite!
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
