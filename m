Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7061D1C84B9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 10:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290426E0E0;
	Thu,  7 May 2020 08:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E2C66E0E0
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 08:24:13 +0000 (UTC)
IronPort-SDR: 9s8rGSFV9nxlaMiPv6naeyR8kohsLEg8AjRvtkJtV9xPIkckaeScoc5i05UakergE40vSCmQsb
 bRpF+41pa6aA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 01:24:12 -0700
IronPort-SDR: DQG2NWxnlFnvy/M2aWmo6gNINwV+/AyYszmiSKmh73cZ6pl94dm32cx9bSiBl7Xgd3lYPeziel
 NbuVytw9jBcg==
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="435197560"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 01:24:11 -0700
Date: Thu, 7 May 2020 11:23:31 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200507082331.GA15324@ideak-desk.fi.intel.com>
References: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
 <20200311155422.3043-2-ville.syrjala@linux.intel.com>
 <20200506151528.GA8813@ideak-desk.fi.intel.com>
 <20200507065649.GY6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507065649.GY6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915: Turn
 intel_digital_port_connected() in a vfunc
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

On Thu, May 07, 2020 at 09:56:49AM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, May 06, 2020 at 06:15:28PM +0300, Imre Deak wrote:
> > On Wed, Mar 11, 2020 at 05:54:20PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > Let's get rid of the platform if ladders in
> > > intel_digital_port_connected() and make it a vfunc. Now the if
> > > ladders are at the encoder initialization which makes them a bit
> > > less convoluted.
> > > =

> > > v2: Add forward decl for intel_encoder in intel_tc.h
> > > v3: Duplicate stuff to avoid exposing platform specific
> > >     functions across files (Jani)
> > > =

> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Nice to see the CPU and PCH handlers in their own vfunc:
> > Reviewed-by: Imre Deak <imre.deak@intel.com>
> > =

> > nit: Looks like you could've also added mcc_digital_port_connected() for
> > PHY_C.
> =

> I suppose. IIRC I originally wrote this before the MCC special
> case was added, and then didn't pay too much attention during the
> rebase. It's all going away in the end though so not sure it's
> worth the hassle to redo this.

Ok, didn't notice that you remove it in patch 3.

> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c      | 109 +++++++++++++
> > >  .../drm/i915/display/intel_display_types.h    |   1 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c       | 147 +++-------------=
--
> > >  drivers/gpu/drm/i915/display/intel_tc.c       |   3 +-
> > >  drivers/gpu/drm/i915/display/intel_tc.h       |   3 +-
> > >  5 files changed, 135 insertions(+), 128 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/d=
rm/i915/display/intel_ddi.c
> > > index 73d0f4648c06..c8ceb08f8d05 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -4343,6 +4343,96 @@ intel_ddi_hotplug(struct intel_encoder *encode=
r,
> > >  	return state;
> > >  }
> > >  =

> > > +static bool lpt_digital_port_connected(struct intel_encoder *encoder)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > +	u32 bit;
> > > +
> > > +	switch (encoder->hpd_pin) {
> > > +	case HPD_PORT_B:
> > > +		bit =3D SDE_PORTB_HOTPLUG_CPT;
> > > +		break;
> > > +	case HPD_PORT_C:
> > > +		bit =3D SDE_PORTC_HOTPLUG_CPT;
> > > +		break;
> > > +	case HPD_PORT_D:
> > > +		bit =3D SDE_PORTD_HOTPLUG_CPT;
> > > +		break;
> > > +	default:
> > > +		MISSING_CASE(encoder->hpd_pin);
> > > +		return false;
> > > +	}
> > > +
> > > +	return intel_de_read(dev_priv, SDEISR) & bit;
> > > +}
> > > +
> > > +static bool spt_digital_port_connected(struct intel_encoder *encoder)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > +	u32 bit;
> > > +
> > > +	switch (encoder->hpd_pin) {
> > > +	case HPD_PORT_A:
> > > +		bit =3D SDE_PORTA_HOTPLUG_SPT;
> > > +		break;
> > > +	case HPD_PORT_E:
> > > +		bit =3D SDE_PORTE_HOTPLUG_SPT;
> > > +		break;
> > > +	default:
> > > +		return lpt_digital_port_connected(encoder);
> > > +	}
> > > +
> > > +	return intel_de_read(dev_priv, SDEISR) & bit;
> > > +}
> > > +
> > > +static bool hsw_digital_port_connected(struct intel_encoder *encoder)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > +
> > > +	return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG_IVB;
> > > +}
> > > +
> > > +static bool bdw_digital_port_connected(struct intel_encoder *encoder)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > +
> > > +	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & GEN8_PORT_DP_A_H=
OTPLUG;
> > > +}
> > > +
> > > +static bool bxt_digital_port_connected(struct intel_encoder *encoder)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > +	u32 bit;
> > > +
> > > +	switch (encoder->hpd_pin) {
> > > +	case HPD_PORT_A:
> > > +		bit =3D BXT_DE_PORT_HP_DDIA;
> > > +		break;
> > > +	case HPD_PORT_B:
> > > +		bit =3D BXT_DE_PORT_HP_DDIB;
> > > +		break;
> > > +	case HPD_PORT_C:
> > > +		bit =3D BXT_DE_PORT_HP_DDIC;
> > > +		break;
> > > +	default:
> > > +		MISSING_CASE(encoder->hpd_pin);
> > > +		return false;
> > > +	}
> > > +
> > > +	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;
> > > +}
> > > +
> > > +static bool icp_digital_port_connected(struct intel_encoder *encoder)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> > > +
> > > +	if (HAS_PCH_MCC(dev_priv) && phy =3D=3D PHY_C)
> > > +		return intel_de_read(dev_priv, SDEISR) & SDE_TC_HOTPLUG_ICP(PORT_T=
C1);
> > > +
> > > +	return intel_de_read(dev_priv, SDEISR) & SDE_DDI_HOTPLUG_ICP(phy);
> > > +}
> > > +
> > >  static struct intel_connector *
> > >  intel_ddi_init_hdmi_connector(struct intel_digital_port *intel_dig_p=
ort)
> > >  {
> > > @@ -4534,6 +4624,25 @@ void intel_ddi_init(struct drm_i915_private *d=
ev_priv, enum port port)
> > >  				port_name(port));
> > >  	}
> > >  =

> > > +	if (INTEL_GEN(dev_priv) >=3D 11) {
> > > +		if (intel_phy_is_tc(dev_priv, phy))
> > > +			intel_dig_port->connected =3D intel_tc_port_connected;
> > > +		else
> > > +			intel_dig_port->connected =3D icp_digital_port_connected;
> > > +	} else if (IS_GEN9_LP(dev_priv)) {
> > > +		intel_dig_port->connected =3D bxt_digital_port_connected;
> > > +	} else if (port =3D=3D PORT_A) {
> > > +		if (INTEL_GEN(dev_priv) >=3D 8)
> > > +			intel_dig_port->connected =3D bdw_digital_port_connected;
> > > +		else
> > > +			intel_dig_port->connected =3D hsw_digital_port_connected;
> > > +	} else {
> > > +		if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
> > > +			intel_dig_port->connected =3D spt_digital_port_connected;
> > > +		else
> > > +			intel_dig_port->connected =3D lpt_digital_port_connected;
> > > +	}
> > > +
> > >  	intel_infoframe_init(intel_dig_port);
> > >  =

> > >  	return;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/dri=
vers/gpu/drm/i915/display/intel_display_types.h
> > > index 5e00e611f077..3aab12f69ff8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1401,6 +1401,7 @@ struct intel_digital_port {
> > >  			       const struct drm_connector_state *conn_state);
> > >  	u32 (*infoframes_enabled)(struct intel_encoder *encoder,
> > >  				  const struct intel_crtc_state *pipe_config);
> > > +	bool (*connected)(struct intel_encoder *encoder);
> > >  };
> > >  =

> > >  struct intel_dp_mst_encoder {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index 0a417cd2af2b..cff14f52c391 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -5447,25 +5447,6 @@ static bool cpt_digital_port_connected(struct =
intel_encoder *encoder)
> > >  	return intel_de_read(dev_priv, SDEISR) & bit;
> > >  }
> > >  =

> > > -static bool spt_digital_port_connected(struct intel_encoder *encoder)
> > > -{
> > > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > -	u32 bit;
> > > -
> > > -	switch (encoder->hpd_pin) {
> > > -	case HPD_PORT_A:
> > > -		bit =3D SDE_PORTA_HOTPLUG_SPT;
> > > -		break;
> > > -	case HPD_PORT_E:
> > > -		bit =3D SDE_PORTE_HOTPLUG_SPT;
> > > -		break;
> > > -	default:
> > > -		return cpt_digital_port_connected(encoder);
> > > -	}
> > > -
> > > -	return intel_de_read(dev_priv, SDEISR) & bit;
> > > -}
> > > -
> > >  static bool g4x_digital_port_connected(struct intel_encoder *encoder)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > @@ -5516,88 +5497,14 @@ static bool ilk_digital_port_connected(struct=
 intel_encoder *encoder)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > >  =

> > > -	if (encoder->hpd_pin =3D=3D HPD_PORT_A)
> > > -		return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG;
> > > -	else
> > > -		return ibx_digital_port_connected(encoder);
> > > -}
> > > -
> > > -static bool snb_digital_port_connected(struct intel_encoder *encoder)
> > > -{
> > > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > -
> > > -	if (encoder->hpd_pin =3D=3D HPD_PORT_A)
> > > -		return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG;
> > > -	else
> > > -		return cpt_digital_port_connected(encoder);
> > > +	return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG;
> > >  }
> > >  =

> > >  static bool ivb_digital_port_connected(struct intel_encoder *encoder)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > >  =

> > > -	if (encoder->hpd_pin =3D=3D HPD_PORT_A)
> > > -		return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG_IVB;
> > > -	else
> > > -		return cpt_digital_port_connected(encoder);
> > > -}
> > > -
> > > -static bool bdw_digital_port_connected(struct intel_encoder *encoder)
> > > -{
> > > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > -
> > > -	if (encoder->hpd_pin =3D=3D HPD_PORT_A)
> > > -		return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & GEN8_PORT_DP_A_=
HOTPLUG;
> > > -	else
> > > -		return cpt_digital_port_connected(encoder);
> > > -}
> > > -
> > > -static bool bxt_digital_port_connected(struct intel_encoder *encoder)
> > > -{
> > > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > -	u32 bit;
> > > -
> > > -	switch (encoder->hpd_pin) {
> > > -	case HPD_PORT_A:
> > > -		bit =3D BXT_DE_PORT_HP_DDIA;
> > > -		break;
> > > -	case HPD_PORT_B:
> > > -		bit =3D BXT_DE_PORT_HP_DDIB;
> > > -		break;
> > > -	case HPD_PORT_C:
> > > -		bit =3D BXT_DE_PORT_HP_DDIC;
> > > -		break;
> > > -	default:
> > > -		MISSING_CASE(encoder->hpd_pin);
> > > -		return false;
> > > -	}
> > > -
> > > -	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;
> > > -}
> > > -
> > > -static bool intel_combo_phy_connected(struct drm_i915_private *dev_p=
riv,
> > > -				      enum phy phy)
> > > -{
> > > -	if (HAS_PCH_MCC(dev_priv) && phy =3D=3D PHY_C)
> > > -		return intel_de_read(dev_priv, SDEISR) & SDE_TC_HOTPLUG_ICP(PORT_T=
C1);
> > > -
> > > -	return intel_de_read(dev_priv, SDEISR) & SDE_DDI_HOTPLUG_ICP(phy);
> > > -}
> > > -
> > > -static bool icp_digital_port_connected(struct intel_encoder *encoder)
> > > -{
> > > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > -	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > > -	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> > > -
> > > -	if (intel_phy_is_combo(dev_priv, phy))
> > > -		return intel_combo_phy_connected(dev_priv, phy);
> > > -	else if (intel_phy_is_tc(dev_priv, phy))
> > > -		return intel_tc_port_connected(dig_port);
> > > -	else
> > > -		MISSING_CASE(encoder->hpd_pin);
> > > -
> > > -	return false;
> > > +	return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG_IVB;
> > >  }
> > >  =

> > >  /*
> > > @@ -5611,44 +5518,15 @@ static bool icp_digital_port_connected(struct=
 intel_encoder *encoder)
> > >   *
> > >   * Return %true if port is connected, %false otherwise.
> > >   */
> > > -static bool __intel_digital_port_connected(struct intel_encoder *enc=
oder)
> > > -{
> > > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > -
> > > -	if (HAS_GMCH(dev_priv)) {
> > > -		if (IS_GM45(dev_priv))
> > > -			return gm45_digital_port_connected(encoder);
> > > -		else
> > > -			return g4x_digital_port_connected(encoder);
> > > -	}
> > > -
> > > -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> > > -		return icp_digital_port_connected(encoder);
> > > -	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
> > > -		return spt_digital_port_connected(encoder);
> > > -	else if (IS_GEN9_LP(dev_priv))
> > > -		return bxt_digital_port_connected(encoder);
> > > -	else if (IS_GEN(dev_priv, 8))
> > > -		return bdw_digital_port_connected(encoder);
> > > -	else if (IS_GEN(dev_priv, 7))
> > > -		return ivb_digital_port_connected(encoder);
> > > -	else if (IS_GEN(dev_priv, 6))
> > > -		return snb_digital_port_connected(encoder);
> > > -	else if (IS_GEN(dev_priv, 5))
> > > -		return ilk_digital_port_connected(encoder);
> > > -
> > > -	MISSING_CASE(INTEL_GEN(dev_priv));
> > > -	return false;
> > > -}
> > > -
> > >  bool intel_digital_port_connected(struct intel_encoder *encoder)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > >  	bool is_connected =3D false;
> > >  	intel_wakeref_t wakeref;
> > >  =

> > >  	with_intel_display_power(dev_priv, POWER_DOMAIN_DISPLAY_CORE, waker=
ef)
> > > -		is_connected =3D __intel_digital_port_connected(encoder);
> > > +		is_connected =3D dig_port->connected(encoder);
> > >  =

> > >  	return is_connected;
> > >  }
> > > @@ -7852,6 +7730,23 @@ bool intel_dp_init(struct drm_i915_private *de=
v_priv,
> > >  =

> > >  	intel_dig_port->hpd_pulse =3D intel_dp_hpd_pulse;
> > >  =

> > > +	if (HAS_GMCH(dev_priv)) {
> > > +		if (IS_GM45(dev_priv))
> > > +			intel_dig_port->connected =3D gm45_digital_port_connected;
> > > +		else
> > > +			intel_dig_port->connected =3D g4x_digital_port_connected;
> > > +	} else if (port =3D=3D PORT_A) {
> > > +		if (IS_IVYBRIDGE(dev_priv))
> > > +			intel_dig_port->connected =3D ivb_digital_port_connected;
> > > +		else
> > > +			intel_dig_port->connected =3D ilk_digital_port_connected;
> > > +	} else {
> > > +		if (HAS_PCH_CPT(dev_priv))
> > > +			intel_dig_port->connected =3D cpt_digital_port_connected;
> > > +		else
> > > +			intel_dig_port->connected =3D ibx_digital_port_connected;
> > > +	}
> > > +
> > >  	if (port !=3D PORT_A)
> > >  		intel_infoframe_init(intel_dig_port);
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/dr=
m/i915/display/intel_tc.c
> > > index 9b850c11aa78..1e64b4c92eec 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > > @@ -484,8 +484,9 @@ static bool intel_tc_port_needs_reset(struct inte=
l_digital_port *dig_port)
> > >   * connected ports are usable, and avoids exposing to the users obje=
cts they
> > >   * can't really use.
> > >   */
> > > -bool intel_tc_port_connected(struct intel_digital_port *dig_port)
> > > +bool intel_tc_port_connected(struct intel_encoder *encoder)
> > >  {
> > > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > >  	bool is_connected;
> > >  =

> > >  	intel_tc_port_lock(dig_port);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/dr=
m/i915/display/intel_tc.h
> > > index 463f1b3c836f..b619e4736f85 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_tc.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> > > @@ -10,8 +10,9 @@
> > >  #include <linux/types.h>
> > >  =

> > >  struct intel_digital_port;
> > > +struct intel_encoder;
> > >  =

> > > -bool intel_tc_port_connected(struct intel_digital_port *dig_port);
> > > +bool intel_tc_port_connected(struct intel_encoder *encoder);
> > >  u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port);
> > >  u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port =
*dig_port);
> > >  int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_=
port);
> > > -- =

> > > 2.24.1
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
