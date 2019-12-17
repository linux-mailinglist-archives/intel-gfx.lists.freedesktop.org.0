Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 626771233AE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 18:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1715C6E05C;
	Tue, 17 Dec 2019 17:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 373B66E05C
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 17:37:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 09:37:11 -0800
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="205548910"
Received: from unknown (HELO ldmartin-desk1) ([10.24.11.98])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 09:37:11 -0800
Date: Tue, 17 Dec 2019 09:37:03 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191217173703.egjq4an4ljzg4fai@ldmartin-desk1>
References: <20191216220742.34332-1-jose.souza@intel.com>
 <20191216220742.34332-6-jose.souza@intel.com>
 <20191216235230.p2emmitj7ocbj5ix@ldmartin-desk1>
 <e701db01809d3530dd7baa731e7f951680e638ea.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e701db01809d3530dd7baa731e7f951680e638ea.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 06/11] drm/i915/display: Share
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 17, 2019 at 08:39:15AM -0800, Jose Souza wrote:
>On Mon, 2019-12-16 at 15:52 -0800, Lucas De Marchi wrote:
>> On Mon, Dec 16, 2019 at 02:07:37PM -0800, Jose Souza wrote:
>> > intel_connector_needs_modeset() will be used outside of
>> > intel_display.c in a future patch so it would only be necessary to
>> > remove the state and add the prototype to the header file.
>> >
>> > But while at it, I simplified the arguments and moved it to a
>> > better
>> > place intel_atomic.c.
>> >
>> > That allowed us to convert the whole
>> > intel_encoders_update_prepare/complete to intel types too.
>> >
>> > No behavior changes intended here.
>> >
>> > v3:
>> > - removed digital from exported version of
>> > intel_connector_needs_modeset
>> > - rollback connector to drm type
>> >
>> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>> > ---
>> > drivers/gpu/drm/i915/display/intel_atomic.c  | 18 +++++++
>> > drivers/gpu/drm/i915/display/intel_atomic.h  |  2 +
>> > drivers/gpu/drm/i915/display/intel_display.c | 53 ++++++-----------
>> > ---
>> > 3 files changed, 36 insertions(+), 37 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
>> > b/drivers/gpu/drm/i915/display/intel_atomic.c
>> > index fd0026fc3618..b7dda18b6f29 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
>> > @@ -174,6 +174,24 @@ intel_digital_connector_duplicate_state(struct
>> > drm_connector *connector)
>> > 	return &state->base;
>> > }
>> >
>> > +/**
>> > + * intel_connector_needs_modeset - check if connector needs a
>> > modeset
>> > + */
>> > +bool
>> > +intel_connector_needs_modeset(struct intel_atomic_state *state,
>> > +			      struct drm_connector *connector)
>> > +{
>> > +	const struct drm_connector_state *old_conn_state,
>> > *new_conn_state;
>> > +
>> > +	old_conn_state =3D drm_atomic_get_old_connector_state(&state-
>> > >base, connector);
>> > +	new_conn_state =3D drm_atomic_get_new_connector_state(&state-
>> > >base, connector);
>> > +
>> > +	return old_conn_state->crtc !=3D new_conn_state->crtc ||
>> > +	       (new_conn_state->crtc &&
>> > +		drm_atomic_crtc_needs_modeset(drm_atomic_get_new_crtc_s
>> > tate(&state->base,
>> > +									=

>> >     new_conn_state->crtc)));
>> > +}
>> > +
>> > /**
>> >  * intel_crtc_duplicate_state - duplicate crtc state
>> >  * @crtc: drm crtc
>> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h
>> > b/drivers/gpu/drm/i915/display/intel_atomic.h
>> > index 7b49623419ba..a7d1a8576c48 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_atomic.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
>> > @@ -32,6 +32,8 @@ int intel_digital_connector_atomic_check(struct
>> > drm_connector *conn,
>> > 					 struct drm_atomic_state
>> > *state);
>> > struct drm_connector_state *
>> > intel_digital_connector_duplicate_state(struct drm_connector
>> > *connector);
>> > +bool intel_connector_needs_modeset(struct intel_atomic_state
>> > *state,
>> > +				   struct drm_connector *connector);
>> >
>> > struct drm_crtc_state *intel_crtc_duplicate_state(struct drm_crtc
>> > *crtc);
>> > void intel_crtc_destroy_state(struct drm_crtc *crtc,
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> > b/drivers/gpu/drm/i915/display/intel_display.c
>> > index 8e3e05cfcb27..0ee2e86a8826 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -6185,71 +6185,50 @@ intel_connector_primary_encoder(struct
>> > intel_connector *connector)
>> > 	return encoder;
>> > }
>> >
>> > -static bool
>> > -intel_connector_needs_modeset(struct intel_atomic_state *state,
>> > -			      const struct drm_connector_state
>> > *old_conn_state,
>> > -			      const struct drm_connector_state
>> > *new_conn_state)
>> > -{
>> > -	struct intel_crtc *old_crtc =3D old_conn_state->crtc ?
>> > -				      to_intel_crtc(old_conn_state-
>> > >crtc) : NULL;
>> > -	struct intel_crtc *new_crtc =3D new_conn_state->crtc ?
>> > -				      to_intel_crtc(new_conn_state-
>> > >crtc) : NULL;
>> > -
>> > -	return new_crtc !=3D old_crtc ||
>> > -	       (new_crtc &&
>> > -		needs_modeset(intel_atomic_get_new_crtc_state(state,
>> > new_crtc)));
>> > -}
>> > -
>> > static void intel_encoders_update_prepare(struct intel_atomic_state
>> > *state)
>> > {
>> > -	struct drm_connector_state *old_conn_state;
>> > -	struct drm_connector_state *new_conn_state;
>> > -	struct drm_connector *conn;
>> > +	struct intel_digital_connector_state *new_connector_state;
>>
>> what's up with this fight new_conn_state vs new_connector_state? It'
>> s
>> the first time in the driver we would actually drive such conversion.
>> I'd say to just keep the old name.
>
>Ville asked me to rename conn to connector in the new functions that
>I'm adding as this function was heavily modified I did the same here.
>I will rollback if agreed by you and Ville(the ones helping with TGL
>MST)

I think that was about conn -> connector, not *conn_state ->
*connector_state, wasn't it?

Lucas De Marchi

>
>>
>> I'm not sure I like the conversion to use the connector rather than
>> the
>> connector_state because we are likely to have the state around in the
>> caller. Anyway, I'm ok with it.
>>
>> Lucas De Marchi
>>
>> > +	struct intel_connector *connector;
>> > 	int i;
>> >
>> > -	for_each_oldnew_connector_in_state(&state->base, conn,
>> > -					   old_conn_state,
>> > new_conn_state, i) {
>> > +	for_each_new_intel_connector_in_state(state, connector,
>> > +					      new_connector_state, i) {
>> > 		struct intel_encoder *encoder;
>> > 		struct intel_crtc *crtc;
>> >
>> > -		if (!intel_connector_needs_modeset(state,
>> > -						   old_conn_state,
>> > -						   new_conn_state))
>> > +		if (!intel_connector_needs_modeset(state, &connector-
>> > >base))
>> > 			continue;
>> >
>> > -		encoder =3D
>> > intel_connector_primary_encoder(to_intel_connector(conn));
>> > +		encoder =3D intel_connector_primary_encoder(connector);
>> > 		if (!encoder->update_prepare)
>> > 			continue;
>> >
>> > -		crtc =3D new_conn_state->crtc ?
>> > -			to_intel_crtc(new_conn_state->crtc) : NULL;
>> > +		crtc =3D new_connector_state->base.crtc ?
>> > +			to_intel_crtc(new_connector_state->base.crtc) :
>> > NULL;
>> > 		encoder->update_prepare(state, encoder, crtc);
>> > 	}
>> > }
>> >
>> > static void intel_encoders_update_complete(struct
>> > intel_atomic_state *state)
>> > {
>> > -	struct drm_connector_state *old_conn_state;
>> > -	struct drm_connector_state *new_conn_state;
>> > -	struct drm_connector *conn;
>> > +	struct intel_digital_connector_state *new_connector_state;
>> > +	struct intel_connector *connector;
>> > 	int i;
>> >
>> > -	for_each_oldnew_connector_in_state(&state->base, conn,
>> > -					   old_conn_state,
>> > new_conn_state, i) {
>> > +	for_each_new_intel_connector_in_state(state, connector,
>> > +					      new_connector_state, i) {
>> > 		struct intel_encoder *encoder;
>> > 		struct intel_crtc *crtc;
>> >
>> > -		if (!intel_connector_needs_modeset(state,
>> > -						   old_conn_state,
>> > -						   new_conn_state))
>> > +		if (!intel_connector_needs_modeset(state, &connector-
>> > >base))
>> > 			continue;
>> >
>> > -		encoder =3D
>> > intel_connector_primary_encoder(to_intel_connector(conn));
>> > +		encoder =3D intel_connector_primary_encoder(connector);
>> > 		if (!encoder->update_complete)
>> > 			continue;
>> >
>> > -		crtc =3D new_conn_state->crtc ?
>> > -			to_intel_crtc(new_conn_state->crtc) : NULL;
>> > +		crtc =3D new_connector_state->base.crtc ?
>> > +			to_intel_crtc(new_connector_state->base.crtc) :
>> > NULL;
>> > 		encoder->update_complete(state, encoder, crtc);
>> > 	}
>> > }
>> > --
>> > 2.24.1
>> >
>> > _______________________________________________
>> > Intel-gfx mailing list
>> > Intel-gfx@lists.freedesktop.org
>> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
