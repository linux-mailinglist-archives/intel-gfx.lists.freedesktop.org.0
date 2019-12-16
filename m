Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FD3120472
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 12:55:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D4B66E4DE;
	Mon, 16 Dec 2019 11:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C646E4DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 11:55:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 03:55:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="212195946"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 16 Dec 2019 03:55:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Dec 2019 13:55:36 +0200
Date: Mon, 16 Dec 2019 13:55:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191216115536.GL1208@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
 <20191211184526.142413-6-jose.souza@intel.com>
 <20191212155249.GQ1208@intel.com>
 <20191214001455.quhvzgedzsl5oenq@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191214001455.quhvzgedzsl5oenq@ldmartin-desk1>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 rebased 06/11] drm/i915/display: Share
 intel_connector_needs_modeset()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 13, 2019 at 04:14:55PM -0800, Lucas De Marchi wrote:
> On Thu, Dec 12, 2019 at 05:52:49PM +0200, Ville Syrj=E4l=E4 wrote:
> >On Wed, Dec 11, 2019 at 10:45:21AM -0800, Jos=E9 Roberto de Souza wrote:
> >> intel_connector_needs_modeset() will be used outside of
> >> intel_display.c in a future patch so it would only be necessary to
> >> remove the state and add the prototype to the header file.
> >>
> >> But while at it, I simplified the arguments and changed to intel
> >> types and moved it to a better place intel_atomic.c.
> >>
> >> That allowed us to convert the whole
> >> intel_encoders_update_prepare/complete to intel type too.
> >>
> >> No behavior changes intended here.
> >>
> >> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_atomic.c  | 32 ++++++++++++
> >>  drivers/gpu/drm/i915/display/intel_atomic.h  |  3 ++
> >>  drivers/gpu/drm/i915/display/intel_display.c | 53 ++++++--------------
> >>  3 files changed, 51 insertions(+), 37 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu=
/drm/i915/display/intel_atomic.c
> >> index fd0026fc3618..6e93a39a6fec 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> >> @@ -174,6 +174,38 @@ intel_digital_connector_duplicate_state(struct dr=
m_connector *connector)
> >>  	return &state->base;
> >>  }
> >>
> >> +/**
> >> + * intel_digital_connector_needs_modeset - check if connector needs a=
 modeset
> >> + */
> >> +bool
> >> +intel_digital_connector_needs_modeset(struct intel_atomic_state *stat=
e,
> >
> >Why "digital"? Oh because intel_atomic_get_old_connector_state() return
> >a ditgital_connector_state. A bit surprising.
> >
> >I suggest using just drm_connector_state here to keep this function
> >totally generic.
> >
> >> +				      struct intel_connector *connector)
> >> +{
> >> +	struct intel_digital_connector_state *old_connector_state, *new_conn=
ector_state;
> >> +	struct intel_crtc *old_crtc, *new_crtc;
> >> +	struct intel_crtc_state *new_crtc_state;
> >> +
> >> +	old_connector_state =3D intel_atomic_get_old_connector_state(state,
> >> +								   connector);
> >
> >Could be done when declaring the variable. Dunno which is prettier
> >though.
> >
> >> +	if (old_connector_state->base.crtc)
> >> +		old_crtc =3D to_intel_crtc(old_connector_state->base.crtc);
> >> +	else
> >> +		old_crtc =3D NULL;
> >
> >Simple
> >old_crtc =3D to_intel_crtc(old_connector_state->base.crtc);
> >will do. Can be done when declaring the variable as well.
> >
> >> +
> >> +	new_connector_state =3D intel_atomic_get_new_connector_state(state,
> >> +								   connector);
> >> +	if (new_connector_state->base.crtc) {
> >> +		new_crtc =3D to_intel_crtc(new_connector_state->base.crtc);
> >
> >ditto.
> >
> >> +		new_crtc_state =3D intel_atomic_get_new_crtc_state(state, new_crtc);
> >
> >Then this just becomes
> >if (new_crtc)
> >	new_crtc_state =3D ...;
> >
> >Or maybe
> >new_crtc_state =3D new_crtc ? get : NULL;
> >but that could be a bit ugly.
> >
> >
> >> +	} else {
> >> +		new_crtc_state =3D NULL;
> >> +		new_crtc =3D NULL;
> >> +	}
> >> +
> >> +	return new_crtc !=3D old_crtc ||
> >> +	       (new_crtc && drm_atomic_crtc_needs_modeset(&new_crtc_state->u=
api));
> >
> >Hmm. In fact this function could be one of those special cases where we
> >might even want to use all drm_ types internally since we don't actually
> >need anything else.
> =

> so... do you mean to bring intel_connector_needs_modeset() as is?

Maybe... Yeah, looks more useful as is.

> >> -static bool
> >> -intel_connector_needs_modeset(struct intel_atomic_state *state,
> >> -			      const struct drm_connector_state *old_conn_state,
> >> -			      const struct drm_connector_state *new_conn_state)
> >> -{
> >> -	struct intel_crtc *old_crtc =3D old_conn_state->crtc ?
> >> -				      to_intel_crtc(old_conn_state->crtc) : NULL;
> >> -	struct intel_crtc *new_crtc =3D new_conn_state->crtc ?
> >> -				      to_intel_crtc(new_conn_state->crtc) : NULL;

You could toss out those ternary operators while at it. They're not needed.

> >> -
> >> -	return new_crtc !=3D old_crtc ||
> >> -	       (new_crtc &&
> >> -		needs_modeset(intel_atomic_get_new_crtc_state(state, new_crtc)));
> >> -}
> >> -

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
