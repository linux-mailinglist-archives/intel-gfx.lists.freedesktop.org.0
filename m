Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BC82695D6
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 21:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5176E575;
	Mon, 14 Sep 2020 19:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E6A6E573
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 19:47:59 +0000 (UTC)
IronPort-SDR: AIu6xLpwG49kwOqV60cZr+DG9wb1kiF/3nwJghdy3t/88iap+aYkqo9Uk53fjVb6quAAW38cPu
 mllXXjW5D8KQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="160088528"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="160088528"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 12:47:58 -0700
IronPort-SDR: g1Kzi5Q1R8S/swI9WoSUwCE1pjcI+dStRfGeicWBmrlqT8oq3pu1EzEahJHpGf5CDaPwLc7n1G
 BOwyRE8Bjr3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="408952420"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 14 Sep 2020 12:47:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Sep 2020 22:47:56 +0300
Date: Mon, 14 Sep 2020 22:47:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20200914194756.GA6112@intel.com>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-4-manasi.d.navare@intel.com>
 <20200907112056.GF6112@intel.com>
 <20200914190026.GB28760@labuser-Z97X-UD5H>
 <20200914191757.GX6112@intel.com>
 <20200914193857.GB29235@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914193857.GB29235@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v6 04/11] drm/i915/dp: Allow big joiner
 modes in intel_dp_mode_valid(), v3.
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

On Mon, Sep 14, 2020 at 12:38:57PM -0700, Navare, Manasi wrote:
> On Mon, Sep 14, 2020 at 10:17:57PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Mon, Sep 14, 2020 at 12:00:33PM -0700, Navare, Manasi wrote:
> > > On Mon, Sep 07, 2020 at 02:20:56PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > On Wed, Jul 15, 2020 at 03:42:15PM -0700, Manasi Navare wrote:
> > > > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > > =

> > > > > Small changes to intel_dp_mode_valid(), allow listing modes that
> > > > > can only be supported in the bigjoiner configuration, which is
> > > > > not supported yet.
> > > > > =

> > > > > eDP does not support bigjoiner, so do not expose bigjoiner only
> > > > > modes on the eDP port.
> > > > > =

> > > > > v5:
> > > > > * Increase max plane width to support 8K with bigjoiner (Maarten)
> > > > > v4:
> > > > > * Rebase (Manasi)
> > > > > =

> > > > > Changes since v1:
> > > > > - Disallow bigjoiner on eDP.
> > > > > Changes since v2:
> > > > > - Rename intel_dp_downstream_max_dotclock to intel_dp_max_dotcloc=
k,
> > > > >   and split off the downstream and source checking to its own fun=
ction.
> > > > >   (Ville)
> > > > > v3:
> > > > > * Rebase (Manasi)
> > > > > =

> > > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.c=
om>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_display.c |   2 +-
> > > > >  drivers/gpu/drm/i915/display/intel_dp.c      | 119 +++++++++++++=
+-----
> > > > >  2 files changed, 91 insertions(+), 30 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drive=
rs/gpu/drm/i915/display/intel_display.c
> > > > > index 78cbfefbfa62..3ecb642805a6 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -17400,7 +17400,7 @@ intel_mode_valid_max_plane_size(struct dr=
m_i915_private *dev_priv,
> > > > >  	 * too big for that.
> > > > >  	 */
> > > > >  	if (INTEL_GEN(dev_priv) >=3D 11) {
> > > > > -		plane_width_max =3D 5120;
> > > > > +		plane_width_max =3D 7680;
> > > > =

> > > > This looks misplaced. Planes do no know whether bigjoiner can be us=
ed or
> > > > not. They should not care in fact. The caller should have that know=
ledge
> > > > and can deal with it properly.
> > > =

> > > Hmm, so the caller of intel_mode_valid_max_plane_size() should check =
on the bigjoiner
> > > flag and perhaps if bigjoiner is true then increase the plane_width_m=
ax to 7680?
> > > =

> > > Am still not sure where this should happen? We need to have the plane=
 max width to be 7680
> > > before we prune the 8K mode in intel_mode_valid
> > > =

> > > Where should this be added according to you?
> > =

> > Hmm. I guess we do need to put it into this function given the way this
> > is structured. However we still can't assume bigjoiner can be used since
> > it can't be used on DDI A on icl. So we should probably just pass in a
> > bool here to indicate whether bigjoiner can be used or not.
> >
> =

> So in intel_dp_mode_valid() we set bigjoiner =3D true if not edp and high=
er clock.
> I think here we need to do the platform check also, 1. because now we are=
 enabling this for TGL+
> where big joiner on all pipes. But we should still I think add GEN >=3D12=
 check before setting bigjoiner
> to true in intel_dp_mode_valid() and then pass that to intel_mode_valid_m=
ax_plane_size(..., book bigjoiner)

can_bigjoiner() {
	return gen >=3D 12 || (gen=3D=3D11 && port!=3DA);
}

or something.

> =

> Sounds good?
> =

> > Personally I'd just write the thing as something like:
> > intel_mode_valid_max_plane_size(..., bool bigjoiner)
> > {
> > 	...
> > 	plane_width_max =3D 5120 << bigjoiner;
> > 	...
> > }
> > =

> > > =

> > > Manasi
> > > > =

> > > > >  		plane_height_max =3D 4320;
> > > > >  	} else {
> > > > >  		plane_width_max =3D 5120;
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gp=
u/drm/i915/display/intel_dp.c
> > > > > index d6295eb20b63..fbfea99fd804 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > @@ -248,25 +248,37 @@ intel_dp_max_data_rate(int max_link_clock, =
int max_lanes)
> > > > >  	return max_link_clock * max_lanes;
> > > > >  }
> > > > >  =

> > > > > -static int
> > > > > -intel_dp_downstream_max_dotclock(struct intel_dp *intel_dp)
> > > > > +static int source_max_dotclock(struct intel_dp *intel_dp, bool a=
llow_bigjoiner)
> > > > >  {
> > > > > -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp=
);
> > > > > -	struct intel_encoder *encoder =3D &dig_port->base;
> > > > > +	struct intel_digital_port *intel_dig_port =3D dp_to_dig_port(in=
tel_dp);
> > > > > +	struct intel_encoder *encoder =3D &intel_dig_port->base;
> > > > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
> > > > > -	int max_dotclk =3D dev_priv->max_dotclk_freq;
> > > > > -	int ds_max_dotclk;
> > > > >  =

> > > > > +	if (allow_bigjoiner && INTEL_GEN(dev_priv) >=3D 11 && !intel_dp=
_is_edp(intel_dp))
> > > > > +		return 2 * dev_priv->max_dotclk_freq;
> > > > > +
> > > > > +	return dev_priv->max_dotclk_freq;
> > > > > +}
> > > > > +
> > > > > +static int downstream_max_dotclock(struct intel_dp *intel_dp)
> > > > > +{
> > > > >  	int type =3D intel_dp->downstream_ports[0] & DP_DS_PORT_TYPE_MA=
SK;
> > > > >  =

> > > > >  	if (type !=3D DP_DS_PORT_TYPE_VGA)
> > > > > -		return max_dotclk;
> > > > > +		return 0;
> > > > >  =

> > > > > -	ds_max_dotclk =3D drm_dp_downstream_max_clock(intel_dp->dpcd,
> > > > > -						    intel_dp->downstream_ports);
> > > > > +	return drm_dp_downstream_max_clock(intel_dp->dpcd,
> > > > > +					   intel_dp->downstream_ports);
> > > > > +}
> > > > > +
> > > > > +static int
> > > > > +intel_dp_max_dotclock(struct intel_dp *intel_dp, bool allow_bigj=
oiner)
> > > > > +{
> > > > > +	int max_dotclk =3D source_max_dotclock(intel_dp, allow_bigjoine=
r);
> > > > > +	int ds_max_dotclk =3D downstream_max_dotclock(intel_dp);
> > > > >  =

> > > > >  	if (ds_max_dotclk !=3D 0)
> > > > > -		max_dotclk =3D min(max_dotclk, ds_max_dotclk);
> > > > > +		return min(max_dotclk, ds_max_dotclk);
> > > > >  =

> > > > >  	return max_dotclk;
> > > > >  }
> > > > > @@ -527,7 +539,8 @@ small_joiner_ram_size_bits(struct drm_i915_pr=
ivate *i915)
> > > > >  =

> > > > >  static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *=
i915,
> > > > >  				       u32 link_clock, u32 lane_count,
> > > > > -				       u32 mode_clock, u32 mode_hdisplay)
> > > > > +				       u32 mode_clock, u32 mode_hdisplay,
> > > > > +				       bool bigjoiner)
> > > > >  {
> > > > >  	u32 bits_per_pixel, max_bpp_small_joiner_ram;
> > > > >  	int i;
> > > > > @@ -545,6 +558,10 @@ static u16 intel_dp_dsc_get_output_bpp(struc=
t drm_i915_private *i915,
> > > > >  	/* Small Joiner Check: output bpp <=3D joiner RAM (bits) / Hori=
z. width */
> > > > >  	max_bpp_small_joiner_ram =3D small_joiner_ram_size_bits(i915) /
> > > > >  		mode_hdisplay;
> > > > > +
> > > > > +	if (bigjoiner)
> > > > > +		max_bpp_small_joiner_ram *=3D 2;
> > > > > +
> > > > >  	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
> > > > >  		    max_bpp_small_joiner_ram);
> > > > >  =

> > > > > @@ -554,6 +571,15 @@ static u16 intel_dp_dsc_get_output_bpp(struc=
t drm_i915_private *i915,
> > > > >  	 */
> > > > >  	bits_per_pixel =3D min(bits_per_pixel, max_bpp_small_joiner_ram=
);
> > > > >  =

> > > > > +	if (bigjoiner) {
> > > > > +		u32 max_bpp_bigjoiner =3D
> > > > > +			i915->max_cdclk_freq * 48 /
> > > > > +			intel_dp_mode_to_fec_clock(mode_clock);
> > > > > +
> > > > > +		DRM_DEBUG_KMS("Max big joiner bpp: %u\n", max_bpp_bigjoiner);
> > > > > +		bits_per_pixel =3D min(bits_per_pixel, max_bpp_bigjoiner);
> > > > > +	}
> > > > > +
> > > > >  	/* Error out if the max bpp is less than smallest allowed valid=
 bpp */
> > > > >  	if (bits_per_pixel < valid_dsc_bpp[0]) {
> > > > >  		drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min %u\n",
> > > > > @@ -576,7 +602,8 @@ static u16 intel_dp_dsc_get_output_bpp(struct=
 drm_i915_private *i915,
> > > > >  }
> > > > >  =

> > > > >  static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
> > > > > -				       int mode_clock, int mode_hdisplay)
> > > > > +				       int mode_clock, int mode_hdisplay,
> > > > > +				       bool bigjoiner)
> > > > >  {
> > > > >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > > >  	u8 min_slice_count, i;
> > > > > @@ -603,12 +630,20 @@ static u8 intel_dp_dsc_get_slice_count(stru=
ct intel_dp *intel_dp,
> > > > >  =

> > > > >  	/* Find the closest match to the valid slice count values */
> > > > >  	for (i =3D 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
> > > > > -		if (valid_dsc_slicecount[i] >
> > > > > -		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
> > > > > -						    false))
> > > > > +		u8 test_slice_count =3D bigjoiner ?
> > > > > +			2 * valid_dsc_slicecount[i] :
> > > > > +			valid_dsc_slicecount[i];
> > > > > +
> > > > > +		if (test_slice_count >
> > > > > +		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd, false))
> > > > >  			break;
> > > > > -		if (min_slice_count  <=3D valid_dsc_slicecount[i])
> > > > > -			return valid_dsc_slicecount[i];
> > > > > +
> > > > > +		/* big joiner needs small joiner to be enabled */
> > > > > +		if (bigjoiner && test_slice_count < 4)
> > > > > +			continue;
> > > > > +
> > > > > +		if (min_slice_count <=3D test_slice_count)
> > > > > +			return test_slice_count;
> > > > >  	}
> > > > >  =

> > > > >  	drm_dbg_kms(&i915->drm, "Unsupported Slice Count %d\n",
> > > > > @@ -648,11 +683,15 @@ intel_dp_mode_valid(struct drm_connector *c=
onnector,
> > > > >  	int max_dotclk;
> > > > >  	u16 dsc_max_output_bpp =3D 0;
> > > > >  	u8 dsc_slice_count =3D 0;
> > > > > +	bool dsc =3D false, bigjoiner =3D false;
> > > > >  =

> > > > >  	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
> > > > >  		return MODE_NO_DBLESCAN;
> > > > >  =

> > > > > -	max_dotclk =3D intel_dp_downstream_max_dotclock(intel_dp);
> > > > > +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> > > > > +		return MODE_H_ILLEGAL;
> > > > > +
> > > > > +	max_dotclk =3D intel_dp_max_dotclock(intel_dp, false);
> > > > >  =

> > > > >  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> > > > >  		if (mode->hdisplay > fixed_mode->hdisplay)
> > > > > @@ -664,6 +703,21 @@ intel_dp_mode_valid(struct drm_connector *co=
nnector,
> > > > >  		target_clock =3D fixed_mode->clock;
> > > > >  	}
> > > > >  =

> > > > > +	if (mode->clock < 10000)
> > > > > +		return MODE_CLOCK_LOW;
> > > > > +
> > > > > +	if (target_clock > max_dotclk) {
> > > > > +		if (intel_dp_is_edp(intel_dp))
> > > > > +			return MODE_CLOCK_HIGH;
> > > > > +
> > > > > +		max_dotclk =3D intel_dp_max_dotclock(intel_dp, true);
> > > > > +
> > > > > +		if (target_clock > max_dotclk)
> > > > > +			return MODE_CLOCK_HIGH;
> > > > > +
> > > > > +		bigjoiner =3D true;
> > > > > +	}
> > > > > +
> > > > >  	max_link_clock =3D intel_dp_max_link_rate(intel_dp);
> > > > >  	max_lanes =3D intel_dp_max_lane_count(intel_dp);
> > > > >  =

> > > > > @@ -691,23 +745,28 @@ intel_dp_mode_valid(struct drm_connector *c=
onnector,
> > > > >  							    max_link_clock,
> > > > >  							    max_lanes,
> > > > >  							    target_clock,
> > > > > -							    mode->hdisplay) >> 4;
> > > > > +							    mode->hdisplay,
> > > > > +							    bigjoiner) >> 4;
> > > > >  			dsc_slice_count =3D
> > > > >  				intel_dp_dsc_get_slice_count(intel_dp,
> > > > >  							     target_clock,
> > > > > -							     mode->hdisplay);
> > > > > +							     mode->hdisplay,
> > > > > +							     bigjoiner);
> > > > >  		}
> > > > > +
> > > > > +		dsc =3D dsc_max_output_bpp && dsc_slice_count;
> > > > >  	}
> > > > >  =

> > > > > -	if ((mode_rate > max_rate && !(dsc_max_output_bpp && dsc_slice_=
count)) ||
> > > > > -	    target_clock > max_dotclk)
> > > > > +	/* big joiner configuration needs DSC */
> > > > > +	if (bigjoiner && !dsc) {
> > > > > +		DRM_DEBUG_KMS("Link clock needs bigjoiner, but DSC or FEC not =
available\n");
> > > > >  		return MODE_CLOCK_HIGH;
> > > > > +	}
> > > > >  =

> > > > > -	if (mode->clock < 10000)
> > > > > -		return MODE_CLOCK_LOW;
> > > > > -
> > > > > -	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> > > > > -		return MODE_H_ILLEGAL;
> > > > > +	if (mode_rate > max_rate && !dsc) {
> > > > > +		DRM_DEBUG_KMS("Cannot drive without DSC\n");
> > > > > +		return MODE_CLOCK_HIGH;
> > > > > +	}
> > > > >  =

> > > > >  	return intel_mode_valid_max_plane_size(dev_priv, mode);
> > > > >  }
> > > > > @@ -2204,11 +2263,13 @@ static int intel_dp_dsc_compute_config(st=
ruct intel_dp *intel_dp,
> > > > >  						    pipe_config->port_clock,
> > > > >  						    pipe_config->lane_count,
> > > > >  						    adjusted_mode->crtc_clock,
> > > > > -						    adjusted_mode->crtc_hdisplay);
> > > > > +						    adjusted_mode->crtc_hdisplay,
> > > > > +						    false);
> > > > >  		dsc_dp_slice_count =3D
> > > > >  			intel_dp_dsc_get_slice_count(intel_dp,
> > > > >  						     adjusted_mode->crtc_clock,
> > > > > -						     adjusted_mode->crtc_hdisplay);
> > > > > +						     adjusted_mode->crtc_hdisplay,
> > > > > +						     false);
> > > > >  		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
> > > > >  			drm_dbg_kms(&dev_priv->drm,
> > > > >  				    "Compressed BPP/Slice Count not supported\n");
> > > > > -- =

> > > > > 2.19.1
> > > > > =

> > > > > _______________________________________________
> > > > > Intel-gfx mailing list
> > > > > Intel-gfx@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > > =

> > > > -- =

> > > > Ville Syrj=E4l=E4
> > > > Intel
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
