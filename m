Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFD841708D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 12:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9176EB66;
	Fri, 24 Sep 2021 10:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78CFE6EB66
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 10:59:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="223693175"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="223693175"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 03:59:40 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="515099984"
Received: from avanhout-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.153])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 03:59:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak\,
 Imre" <imre.deak@intel.com>
Cc: "ville.syrjala\@linux.intel.com" <ville.syrjala@linux.intel.com>
In-Reply-To: <02862d794f0ad9981b2750e8d4549193f72937bb.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-2-imre.deak@intel.com>
 <02862d794f0ad9981b2750e8d4549193f72937bb.camel@intel.com>
Date: Fri, 24 Sep 2021 13:59:35 +0300
Message-ID: <87tuia9r3c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915/tc: Fix TypeC port
 init/resume time sanitization
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 23 Sep 2021, "Souza, Jose" <jose.souza@intel.com> wrote:
> On Tue, 2021-09-21 at 03:23 +0300, Imre Deak wrote:
>> Atm during driver loading and system resume TypeC ports are accessed
>> before their HW/SW state is synced. Move the TypeC port sanitization to
>> the encoder's sync_state hook to fix this.
>>=20
>> Fixes: f9e76a6e68d3 ("drm/i915: Add an encoder hook to sanitize its stat=
e during init/resume")
>> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c     |  8 +++++++-
>>  drivers/gpu/drm/i915/display/intel_display.c | 20 +++++---------------
>>  2 files changed, 12 insertions(+), 16 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index bba0ab99836b1..c4ed4675f5791 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -3840,7 +3840,13 @@ void hsw_ddi_get_config(struct intel_encoder *enc=
oder,
>>  static void intel_ddi_sync_state(struct intel_encoder *encoder,
>>  				 const struct intel_crtc_state *crtc_state)
>>  {
>> -	if (intel_crtc_has_dp_encoder(crtc_state))
>> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>> +
>> +	if (intel_phy_is_tc(i915, phy))
>> +		intel_tc_port_sanitize(enc_to_dig_port(encoder));
>
> Okay at this point we will not have any mst encoder, so the check is not =
needed.
>
>> +
>> +	if (crtc_state && intel_crtc_has_dp_encoder(crtc_state))
>>  		intel_dp_sync_state(encoder, crtc_state);
>>  }
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index f6c0c595f6313..8547842935389 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -12194,18 +12194,16 @@ static void intel_modeset_readout_hw_state(str=
uct drm_device *dev)
>>  	readout_plane_state(dev_priv);
>>=20=20
>>  	for_each_intel_encoder(dev, encoder) {
>> +		struct intel_crtc_state *crtc_state =3D NULL;
>> +
>>  		pipe =3D 0;
>>=20=20
>>  		if (encoder->get_hw_state(encoder, &pipe)) {
>> -			struct intel_crtc_state *crtc_state;
>> -
>>  			crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
>>  			crtc_state =3D to_intel_crtc_state(crtc->base.state);
>>=20=20
>>  			encoder->base.crtc =3D &crtc->base;
>>  			intel_encoder_get_config(encoder, crtc_state);
>> -			if (encoder->sync_state)
>> -				encoder->sync_state(encoder, crtc_state);
>>=20=20
>>  			/* read out to slave crtc as well for bigjoiner */
>>  			if (crtc_state->bigjoiner) {
>> @@ -12220,6 +12218,9 @@ static void intel_modeset_readout_hw_state(struc=
t drm_device *dev)
>>  			encoder->base.crtc =3D NULL;
>>  		}
>>=20=20
>> +		if (encoder->sync_state)
>> +			encoder->sync_state(encoder, crtc_state);
>
> Call sync_state() with a null crtc_state will cause a crash in gen11_dsi_=
sync_state().
>
> gen11_dsi_sync_state() is the only user of crtc_state but it only wants t=
o know what is the pipe, maybe to be safer change the argument to enum pipe?

How would intel_ddi_sync_state() know when to call and not call
intel_dp_sync_state() then? If the encoder's disabled, you shouldn't do
that. That's the distinction NULL crtc_state gives (and obviously needs
to be taken into account).

BR,
Jani.


>
>> +
>>  		drm_dbg_kms(&dev_priv->drm,
>>  			    "[ENCODER:%d:%s] hw state readout: %s, pipe %c\n",
>>  			    encoder->base.base.id, encoder->base.name,
>> @@ -12502,17 +12503,6 @@ intel_modeset_setup_hw_state(struct drm_device =
*dev,
>>  	intel_modeset_readout_hw_state(dev);
>>=20=20
>>  	/* HW state is read out, now we need to sanitize this mess. */
>> -
>> -	/* Sanitize the TypeC port mode upfront, encoders depend on this */
>> -	for_each_intel_encoder(dev, encoder) {
>> -		enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>> -
>> -		/* We need to sanitize only the MST primary port. */
>> -		if (encoder->type !=3D INTEL_OUTPUT_DP_MST &&
>> -		    intel_phy_is_tc(dev_priv, phy))
>> -			intel_tc_port_sanitize(enc_to_dig_port(encoder));
>> -	}
>> -
>>  	get_encoder_power_domains(dev_priv);
>>=20=20
>>  	if (HAS_PCH_IBX(dev_priv))
>

--=20
Jani Nikula, Intel Open Source Graphics Center
