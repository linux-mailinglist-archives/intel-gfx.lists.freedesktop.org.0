Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC8B616D71
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 20:07:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17CD810E575;
	Wed,  2 Nov 2022 19:07:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65F010E575
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 19:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667416052; x=1698952052;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CRTyWetd3tyglzYYXr676BVkdCamrwbHcKTWksBlPhs=;
 b=SAzLHJ+c5bqUFbAOWKcOE6LIZ0TvIxrolcoktXjbGTcjDr33W23hvKZs
 b//E6bZjXezY73L6rZ+5J9j6O2g83YKuvE6HtLGg9oepBchbCuCcyPNT+
 9CGA4auPCEo16ZAwhmcpGUGXnoB/9gKgZ863mC4wJegbg3CP9Ps3I5htb
 k47JhBNwLDmjbIKOqU/6s7/Gy+7zHc0E79Rb4Az4QEHMivpGHWxmFLtrD
 MT2Sn+wBxq/p40kd2k6tDf9le64tBNRx/eFUhbB6gUg02ihAGvIjqQZT8
 fp/2nNgXCozN0A+6HZK8MYz/vKSxMyUwmTTvffrHEyBkRxmNlPHjm+dNx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="309497978"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="309497978"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 12:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="667694509"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="667694509"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 02 Nov 2022 12:07:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Nov 2022 21:07:19 +0200
Date: Wed, 2 Nov 2022 21:07:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Y2K/53fGXE5tc/8g@intel.com>
References: <20221102171530.3261282-1-imre.deak@intel.com>
 <20221102171530.3261282-4-imre.deak@intel.com>
 <Y2KqVW8G14juW1mN@intel.com>
 <Y2K4SNCDrChjZlzJ@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y2K4SNCDrChjZlzJ@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/tgl+: Enable display DC power
 states on all eDP ports
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 02, 2022 at 08:34:48PM +0200, Imre Deak wrote:
> On Wed, Nov 02, 2022 at 07:35:17PM +0200, Ville Syrj�l� wrote:
> > On Wed, Nov 02, 2022 at 07:15:26PM +0200, Imre Deak wrote:
> > > Starting with TGL eDP is supported on ports B+ (besides port A), so make
> > > sure DC states are not blocked on any such ports. For this add an
> > > AUX_IO_<port> power domain for each port with eDP support. These domains
> > > similarly to AUX_IO_A enable only the AUX_IO_<port> power well for an
> > > enabled port, whereas the existing AUX_<port> domains enable both the
> > > AUX_IO_<port> and the DC_OFF power wells as required by DP AUX transfers.
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c      |  8 ++-
> > >  .../drm/i915/display/intel_display_power.c    | 30 +++++++++++
> > >  .../drm/i915/display/intel_display_power.h    |  7 +++
> > >  .../i915/display/intel_display_power_map.c    | 53 +++++++++++++++++--
> > >  4 files changed, 91 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index e95bde5cf060e..00b577a5b9a76 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -848,6 +848,8 @@ bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
> > >  static enum intel_display_power_domain
> > >  intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
> > >  {
> > > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > > +
> > >  	/* ICL+ HW requires corresponding AUX IOs to be powered up for PSR with
> > >  	 * DC states enabled at the same time, while for driver initiated AUX
> > >  	 * transfers we need the same AUX IOs to be powered but with DC states
> > > @@ -860,8 +862,10 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
> > >  	 * Note that PSR is enabled only on Port A even though this function
> > >  	 * returns the correct domain for other ports too.
> > >  	 */
> > > -	return dig_port->aux_ch == AUX_CH_A ? POWER_DOMAIN_AUX_IO_A :
> > > -					      intel_aux_power_domain(dig_port);
> > > +	if (intel_dp_is_edp(&dig_port->dp))
> > > +		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
> > > +	else
> > > +		return intel_aux_power_domain(dig_port);
> > 
> > This seems to have two distinct changes in it:
> > 1) define more AUX_IO domains
> > 2) don't use AUX_IO for external DP and instead use the full AUX domain
> 
> By 2) you mean on port A full AUX is used for external DP, then yes.
> 
> > So seems like this needs to be split.
> 
> Ok, can add a patch with only a
> 
> 	if (is_edp(port) && port == A)
> 		return AUX_IO_A;
> 	else
> 		return AUX_A;
> 
> change followed by this one, if that's what you meant.
> 
> > Also why do we need 2)?
> 
> The DC5/6 states only make sense with PSR enabled. Even though we enable
> these atm for external outputs enabled on port A as well (for instance
> DG2), the firmware will not actually enter the DC power states in this
> case. Since for TypeC ports the AUX domain/power well also depends on
> the TBT vs. non-TBT mode, the easiest way to select between the AUX_IO
> vs. AUX domain was eDP vs. non-eDP (see also below).

OK, so you're saying for combo ports we don't actually need
it and the current code works fine. So from the pure hw pov
the sufficient thing would be more or less just this?

if (is_tc_port)
	return aux_domain;
else
	return aux_io_domain;

is_edp() I consider to be a software defined concept.
It doesn't really change how the hardware actually
works. Which is why I don't really like using it for
anything. I've noticed people have a bad habit of 
trying to use it incorrectly in places where eg. a
specific port is what we actually want to check.

> 
> > 
> > >  }
> > >  
> > >  static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index da0047359446e..ca453518e7fd7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -131,6 +131,16 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
> > >  		return "AUDIO_PLAYBACK";
> > >  	case POWER_DOMAIN_AUX_IO_A:
> > >  		return "AUX_IO_A";
> > > +	case POWER_DOMAIN_AUX_IO_B:
> > > +		return "AUX_IO_B";
> > > +	case POWER_DOMAIN_AUX_IO_C:
> > > +		return "AUX_IO_C";
> > > +	case POWER_DOMAIN_AUX_IO_D:
> > > +		return "AUX_IO_D";
> > > +	case POWER_DOMAIN_AUX_IO_E:
> > > +		return "AUX_IO_E";
> > > +	case POWER_DOMAIN_AUX_IO_F:
> > > +		return "AUX_IO_F";
> > >  	case POWER_DOMAIN_AUX_A:
> > >  		return "AUX_A";
> > >  	case POWER_DOMAIN_AUX_B:
> > > @@ -2332,6 +2342,7 @@ struct intel_ddi_port_domains {
> > >  
> > >  	enum intel_display_power_domain ddi_lanes;
> > >  	enum intel_display_power_domain ddi_io;
> > > +	enum intel_display_power_domain aux_io;
> > >  	enum intel_display_power_domain aux_legacy_usbc;
> > >  	enum intel_display_power_domain aux_tbt;
> > >  };
> > > @@ -2346,6 +2357,7 @@ i9xx_port_domains[] = {
> > >  
> > >  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
> > >  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
> > > +		.aux_io = POWER_DOMAIN_AUX_IO_A,
> > >  		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
> > >  		.aux_tbt = POWER_DOMAIN_INVALID,
> > >  	},
> > > @@ -2361,6 +2373,7 @@ d11_port_domains[] = {
> > >  
> > >  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
> > >  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
> > > +		.aux_io = POWER_DOMAIN_AUX_IO_A,
> > >  		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
> > >  		.aux_tbt = POWER_DOMAIN_INVALID,
> > >  	}, {
> > > @@ -2371,6 +2384,7 @@ d11_port_domains[] = {
> > >  
> > >  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_C,
> > >  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_C,
> > > +		.aux_io = POWER_DOMAIN_AUX_IO_C,
> > >  		.aux_legacy_usbc = POWER_DOMAIN_AUX_C,
> > >  		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
> > >  	},
> > > @@ -2386,6 +2400,7 @@ d12_port_domains[] = {
> > >  
> > >  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
> > >  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
> > > +		.aux_io = POWER_DOMAIN_AUX_IO_A,
> > >  		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
> > >  		.aux_tbt = POWER_DOMAIN_INVALID,
> > >  	}, {
> > > @@ -2396,6 +2411,7 @@ d12_port_domains[] = {
> > >  
> > >  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
> > >  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
> > > +		.aux_io = POWER_DOMAIN_INVALID,
> > >  		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
> > >  		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
> > >  	},
> > > @@ -2411,6 +2427,7 @@ d13_port_domains[] = {
> > >  
> > >  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
> > >  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
> > > +		.aux_io = POWER_DOMAIN_AUX_IO_A,
> > >  		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
> > >  		.aux_tbt = POWER_DOMAIN_INVALID,
> > >  	}, {
> > > @@ -2421,6 +2438,7 @@ d13_port_domains[] = {
> > >  
> > >  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
> > >  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
> > > +		.aux_io = POWER_DOMAIN_INVALID,
> > >  		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
> > >  		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
> > >  	}, {
> > > @@ -2431,6 +2449,7 @@ d13_port_domains[] = {
> > >  
> > >  		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_D,
> > >  		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_D,
> > > +		.aux_io = POWER_DOMAIN_AUX_IO_D,
> > >  		.aux_legacy_usbc = POWER_DOMAIN_AUX_D,
> > >  		.aux_tbt = POWER_DOMAIN_INVALID,
> > >  	},
> > > @@ -2508,6 +2527,17 @@ intel_port_domains_for_aux_ch(struct drm_i915_private *i915, enum aux_ch aux_ch)
> > >  	return NULL;
> > >  }
> > >  
> > > +enum intel_display_power_domain
> > > +intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
> > > +{
> > > +	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(i915, aux_ch);
> > > +
> > > +	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_io == POWER_DOMAIN_INVALID)
> > > +		return POWER_DOMAIN_AUX_IO_A;
> > 
> > The POWER_DOMAIN_INVALID things is for TC ports I guess? 
> 
> Yes.
> 
> > Shouldn't this return the full AUX domain for the specific port for those?
> 
> At this level it's not well-defined, as that depends on the TBT vs.
> non-TBT mode as well and as you point out they shouldn't be used.
> 
> > Not that you should ever have eDP on them I suppose, so given
> > what you had in that earlier function I guess this should never
> > happen.
> 
> Right.
> 
> I guess we could assume that the AUX_IO domain will be not required in
> TBT mode (vs. the full AUX domain) and also define/return from here new
> AUX_IO_USBC[1-6] domains which wouldn't explicitly disable DC states.
> Right now only non-TC ports support eDP, so these domains wouldn't be
> used, hence I opted for not defining them.

If this thing doesn't make sense for the type-c ports then
we should probably just not use it for those. So just extending
the WARN (assuming we want one) to cover that case is perhaps
as well want to do.

> 
> > > +
> > > +	return domains->aux_io + (int)(aux_ch - domains->aux_ch_start);
> > > +}
> > > +
> > >  enum intel_display_power_domain
> > >  intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
> > >  {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> > > index fd68d43bfe322..54737e0aec21e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > > @@ -78,6 +78,11 @@ enum intel_display_power_domain {
> > >  	POWER_DOMAIN_AUDIO_PLAYBACK,
> > >  
> > >  	POWER_DOMAIN_AUX_IO_A,
> > > +	POWER_DOMAIN_AUX_IO_B,
> > > +	POWER_DOMAIN_AUX_IO_C,
> > > +	POWER_DOMAIN_AUX_IO_D,
> > > +	POWER_DOMAIN_AUX_IO_E,
> > > +	POWER_DOMAIN_AUX_IO_F,
> > >  
> > >  	POWER_DOMAIN_AUX_A,
> > >  	POWER_DOMAIN_AUX_B,
> > > @@ -250,6 +255,8 @@ intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum port po
> > >  enum intel_display_power_domain
> > >  intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port);
> > >  enum intel_display_power_domain
> > > +intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
> > > +enum intel_display_power_domain
> > >  intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
> > >  enum intel_display_power_domain
> > >  intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > index 43454022e6a66..b82c0d0a80c5f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > @@ -170,6 +170,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_display,
> > >  	POWER_DOMAIN_VGA,
> > >  	POWER_DOMAIN_AUDIO_MMIO,
> > >  	POWER_DOMAIN_AUDIO_PLAYBACK,
> > > +	POWER_DOMAIN_AUX_IO_B,
> > > +	POWER_DOMAIN_AUX_IO_C,
> > >  	POWER_DOMAIN_AUX_B,
> > >  	POWER_DOMAIN_AUX_C,
> > >  	POWER_DOMAIN_GMBUS,
> > > @@ -179,6 +181,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_B,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_C,
> > >  	POWER_DOMAIN_PORT_CRT,
> > > +	POWER_DOMAIN_AUX_IO_B,
> > > +	POWER_DOMAIN_AUX_IO_C,
> > >  	POWER_DOMAIN_AUX_B,
> > >  	POWER_DOMAIN_AUX_C,
> > >  	POWER_DOMAIN_INIT);
> > > @@ -186,6 +190,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
> > >  I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_B,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_C,
> > > +	POWER_DOMAIN_AUX_IO_B,
> > > +	POWER_DOMAIN_AUX_IO_C,
> > >  	POWER_DOMAIN_AUX_B,
> > >  	POWER_DOMAIN_AUX_C,
> > >  	POWER_DOMAIN_INIT);
> > > @@ -243,6 +249,9 @@ I915_DECL_PW_DOMAINS(chv_pwdoms_display,
> > >  	POWER_DOMAIN_VGA,
> > >  	POWER_DOMAIN_AUDIO_MMIO,
> > >  	POWER_DOMAIN_AUDIO_PLAYBACK,
> > > +	POWER_DOMAIN_AUX_IO_B,
> > > +	POWER_DOMAIN_AUX_IO_C,
> > > +	POWER_DOMAIN_AUX_IO_D,
> > >  	POWER_DOMAIN_AUX_B,
> > >  	POWER_DOMAIN_AUX_C,
> > >  	POWER_DOMAIN_AUX_D,
> > > @@ -252,12 +261,15 @@ I915_DECL_PW_DOMAINS(chv_pwdoms_display,
> > >  I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_bc,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_B,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_C,
> > > +	POWER_DOMAIN_AUX_IO_B,
> > > +	POWER_DOMAIN_AUX_IO_C,
> > >  	POWER_DOMAIN_AUX_B,
> > >  	POWER_DOMAIN_AUX_C,
> > >  	POWER_DOMAIN_INIT);
> > >  
> > >  I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_D,
> > > +	POWER_DOMAIN_AUX_IO_D,
> > >  	POWER_DOMAIN_AUX_D,
> > >  	POWER_DOMAIN_INIT);
> > >  
> > > @@ -305,6 +317,9 @@ static const struct i915_power_well_desc_list chv_power_wells[] = {
> > >  	POWER_DOMAIN_VGA, \
> > >  	POWER_DOMAIN_AUDIO_MMIO, \
> > >  	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > > +	POWER_DOMAIN_AUX_IO_B, \
> > > +	POWER_DOMAIN_AUX_IO_C, \
> > > +	POWER_DOMAIN_AUX_IO_D, \
> > >  	POWER_DOMAIN_AUX_B, \
> > >  	POWER_DOMAIN_AUX_C, \
> > >  	POWER_DOMAIN_AUX_D
> > > @@ -407,6 +422,8 @@ static const struct i915_power_well_desc_list skl_power_wells[] = {
> > >  	POWER_DOMAIN_VGA, \
> > >  	POWER_DOMAIN_AUDIO_MMIO, \
> > >  	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > > +	POWER_DOMAIN_AUX_IO_B, \
> > > +	POWER_DOMAIN_AUX_IO_C, \
> > >  	POWER_DOMAIN_AUX_B, \
> > >  	POWER_DOMAIN_AUX_C
> > >  
> > > @@ -430,6 +447,8 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
> > >  I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_B,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_C,
> > > +	POWER_DOMAIN_AUX_IO_B,
> > > +	POWER_DOMAIN_AUX_IO_C,
> > >  	POWER_DOMAIN_AUX_B,
> > >  	POWER_DOMAIN_AUX_C,
> > >  	POWER_DOMAIN_INIT);
> > > @@ -483,6 +502,8 @@ static const struct i915_power_well_desc_list bxt_power_wells[] = {
> > >  	POWER_DOMAIN_VGA, \
> > >  	POWER_DOMAIN_AUDIO_MMIO, \
> > >  	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > > +	POWER_DOMAIN_AUX_IO_B, \
> > > +	POWER_DOMAIN_AUX_IO_C, \
> > >  	POWER_DOMAIN_AUX_B, \
> > >  	POWER_DOMAIN_AUX_C
> > >  
> > > @@ -509,11 +530,13 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_a,
> > >  
> > >  I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_b,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_B,
> > > +	POWER_DOMAIN_AUX_IO_B,
> > >  	POWER_DOMAIN_AUX_B,
> > >  	POWER_DOMAIN_INIT);
> > >  
> > >  I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_c,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_C,
> > > +	POWER_DOMAIN_AUX_IO_C,
> > >  	POWER_DOMAIN_AUX_C,
> > >  	POWER_DOMAIN_INIT);
> > >  
> > > @@ -523,10 +546,12 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_aux_a,
> > >  	POWER_DOMAIN_INIT);
> > >  
> > >  I915_DECL_PW_DOMAINS(glk_pwdoms_aux_b,
> > > +	POWER_DOMAIN_AUX_IO_B,
> > >  	POWER_DOMAIN_AUX_B,
> > >  	POWER_DOMAIN_INIT);
> > >  
> > >  I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
> > > +	POWER_DOMAIN_AUX_IO_C,
> > >  	POWER_DOMAIN_AUX_C,
> > >  	POWER_DOMAIN_INIT);
> > >  
> > > @@ -617,6 +642,11 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_pw_4,
> > >  	POWER_DOMAIN_VGA, \
> > >  	POWER_DOMAIN_AUDIO_MMIO, \
> > >  	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > > +	POWER_DOMAIN_AUX_IO_B, \
> > > +	POWER_DOMAIN_AUX_IO_C, \
> > > +	POWER_DOMAIN_AUX_IO_D, \
> > > +	POWER_DOMAIN_AUX_IO_E, \
> > > +	POWER_DOMAIN_AUX_IO_F, \
> > >  	POWER_DOMAIN_AUX_B, \
> > >  	POWER_DOMAIN_AUX_C, \
> > >  	POWER_DOMAIN_AUX_D, \
> > > @@ -660,11 +690,21 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_f,	POWER_DOMAIN_PORT_DDI_IO_F);
> > >  I915_DECL_PW_DOMAINS(icl_pwdoms_aux_a,
> > >  	POWER_DOMAIN_AUX_IO_A,
> > >  	POWER_DOMAIN_AUX_A);
> > > -I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,		POWER_DOMAIN_AUX_B);
> > > -I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
> > > -I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,		POWER_DOMAIN_AUX_D);
> > > -I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,		POWER_DOMAIN_AUX_E);
> > > -I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,		POWER_DOMAIN_AUX_F);
> > > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,
> > > +	POWER_DOMAIN_AUX_IO_B,
> > > +	POWER_DOMAIN_AUX_B);
> > > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,
> > > +	POWER_DOMAIN_AUX_IO_C,
> > > +	POWER_DOMAIN_AUX_C);
> > > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,
> > > +	POWER_DOMAIN_AUX_IO_D,
> > > +	POWER_DOMAIN_AUX_D);
> > > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,
> > > +	POWER_DOMAIN_AUX_IO_E,
> > > +	POWER_DOMAIN_AUX_E);
> > > +I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,
> > > +	POWER_DOMAIN_AUX_IO_F,
> > > +	POWER_DOMAIN_AUX_F);
> > >  I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT1);
> > >  I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT2);
> > >  I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT3);
> > > @@ -1215,6 +1255,9 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
> > >  	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
> > >  	POWER_DOMAIN_VGA, \
> > >  	POWER_DOMAIN_AUDIO_PLAYBACK, \
> > > +	POWER_DOMAIN_AUX_IO_C, \
> > > +	POWER_DOMAIN_AUX_IO_D, \
> > > +	POWER_DOMAIN_AUX_IO_E, \
> > >  	POWER_DOMAIN_AUX_C, \
> > >  	POWER_DOMAIN_AUX_D, \
> > >  	POWER_DOMAIN_AUX_E, \
> > > -- 
> > > 2.37.1
> > 
> > -- 
> > Ville Syrj�l�
> > Intel

-- 
Ville Syrj�l�
Intel
