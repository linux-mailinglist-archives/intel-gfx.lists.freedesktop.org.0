Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F85A303C79
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 13:06:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0D836E427;
	Tue, 26 Jan 2021 12:06:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95856E427
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 12:06:35 +0000 (UTC)
IronPort-SDR: zyGUeKJcOCSivIfOikT5kn84c1YWQrd/lUfwoDAHXw/AQDQy+RIMFcUDDLFxRZdD098j0/G0Z5
 OcopFTuK9GTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="177321961"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="177321961"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 04:06:33 -0800
IronPort-SDR: tkx9J5Nub0X5N4gYhzx5v27QIXy/CVA7m3Bk33vJW6Bp+5eH0+SFQJD3HlauPjACCETC+Mq94y
 MzqTwmRIuFcw==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387802205"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 04:06:31 -0800
Date: Tue, 26 Jan 2021 14:06:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20210126120628.GA1763532@ideak-desk.fi.intel.com>
References: <20210125173636.1733812-1-imre.deak@intel.com>
 <20210125173636.1733812-2-imre.deak@intel.com>
 <2be72160accef04bf2ed7341b3619befc2121330.camel@redhat.com>
 <20210125210434.GA1756222@ideak-desk.fi.intel.com>
 <f036f8aff9079d97c2997929478621d3be34a69d.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f036f8aff9079d97c2997929478621d3be34a69d.camel@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix the MST PBN divider
 calculation
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
Cc: intel-gfx@lists.freedesktop.org, Ville Syrjala <ville.syrjala@intel.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 25, 2021 at 05:55:03PM -0500, Lyude Paul wrote:
> On Mon, 2021-01-25 at 23:04 +0200, Imre Deak wrote:
> > On Mon, Jan 25, 2021 at 02:24:58PM -0500, Lyude Paul wrote:
> > > On Mon, 2021-01-25 at 19:36 +0200, Imre Deak wrote:
> > > > Atm the driver will calculate a wrong MST timeslots/MTP (aka time u=
nit)
> > > > value for MST streams if the link parameters (link rate or lane cou=
nt)
> > > > are limited in a way independent of the sink capabilities (reported=
 by
> > > > DPCD).
> > > > =

> > > > One example of such a limitation is when a MUX between the sink and
> > > > source connects only a limited number of lanes to the display and
> > > > connects the rest of the lanes to other peripherals (USB).
> > > > =

> > > > Another issue is that atm MST core calculates the divider based on =
the
> > > > backwards compatible DPCD (at address 0x0000) vs. the extended
> > > > capability info (at address 0x2200). This can result in leaving some
> > > > part of the MST BW unused (For instance in case of the WD19TB dock).
> > > > =

> > > > Fix the above two issues by calculating the PBN divider value based=
 on
> > > > the rate and lane count link parameters that the driver uses for all
> > > > other computation.
> > > > =

> > > > Bugzilla: https://gitlab.freedesktop.org/drm/intel/-/issues/2977
> > > > Cc: Lyude Paul <lyude@redhat.com>
> > > > Cc: Ville Syrjala <ville.syrjala@intel.com>
> > > > Cc: <stable@vger.kernel.org>
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > > =A0drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 +++-
> > > > =A01 file changed, 3 insertions(+), 1 deletion(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > index d6a1b961a0e8..b4621ed0127e 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > @@ -68,7 +68,9 @@ static int intel_dp_mst_compute_link_config(struct
> > > > intel_encoder *encoder,
> > > > =A0
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0slots =3D drm_dp_at=
omic_find_vcpi_slots(state, &intel_dp-
> > > > > mst_mgr,
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 connector->port,
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 crtc_state->pbn, 0);
> > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 crtc_state->pbn,
> > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0
> > > > drm_dp_get_vc_payload_bw(crtc_state->port_clock,
> > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
> > > =

> > > This patch looks fine, however you should take care to also update the
> > > documentation for drm_dp_atomic_find_vcpi_slots() so that it mentione=
s that
> > > pbn_div should be DSC aware but also is not exclusive to systems supp=
orting
> > > DSC
> > > over MST (see the docs for the @pbn_div parameter)
> > =

> > I thought (as a follow-up work) that drm_dp_atomic_find_vcpi_slots() and
> > drm_dp_mst_allocate_vcpi() could be made more generic, requiring the
> > drivers to always pass in pbn_div. By that we could remove
> > mst_mgr::pbn_div, keeping only one copy of this value (the one passed to
> > the above functions).
> =

> I'm fine with that! The only thing I ask is (even though it's taken forev=
er) we
> are eventually planning on making it so that we'll have MST helpers that =
can
> suggest changing the PBN divisor in order to implement link fallback retr=
aining.
> As long as we're still able to make that work in the future, I'm totally =
fine
> with this.

I don't see a problem wrt. link retraining, pbn_div passed to the above
functions should just reflect the actual rate and lane count the link
was trained with.

> > > Thank you for doing this! I've been meaning to fix the WD19 issues fo=
r a
> > > while
> > > now but have been too bogged down by other stuff to spend any time on=
 MST
> > > recently.
> > > =

> > > > =A0=A0=A0=A0=A0=A0=A0 crtc_state->lane_count));
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (slots =3D=3D -E=
DEADLK)
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0return slots;
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (slots >=3D 0)
> > > =

> > > -- =

> > > Sincerely,
> > > =A0=A0 Lyude Paul (she/her)
> > > =A0=A0 Software Engineer at Red Hat
> > > =A0=A0 =

> > > Note: I deal with a lot of emails and have a lot of bugs on my plate.=
 If
> > > you've
> > > asked me a question, are waiting for a review/merge on a patch, etc. =
and I
> > > haven't responded in a while, please feel free to send me another ema=
il to
> > > check
> > > on my status. I don't bite!
> > > =

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
