Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A87026DB63
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 14:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D18516E181;
	Thu, 17 Sep 2020 12:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87EB26E22D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 12:20:52 +0000 (UTC)
IronPort-SDR: B9Xhzbv1ExJ+jyUL0RA2IFBRpGPPfKkAp6KZf0G1TcdfC8kRvJ6zWYIWvD5UTodqL79TdntzZV
 nRz4wtDZruMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="223860719"
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="223860719"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 05:20:49 -0700
IronPort-SDR: AhCOG3RKGaRQLl0/yxVK8VMHFQbSzHhw0iYUPNqnJw9lmZT2w+0kqZlmB+AMj06SzESIf485u9
 PBpwGWjVgj0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="307453255"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 17 Sep 2020 05:20:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Sep 2020 15:20:46 +0300
Date: Thu, 17 Sep 2020 15:20:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20200917122046.GU6112@intel.com>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-4-manasi.d.navare@intel.com>
 <20200907112056.GF6112@intel.com>
 <20200914190026.GB28760@labuser-Z97X-UD5H>
 <20200914191757.GX6112@intel.com>
 <20200914193857.GB29235@labuser-Z97X-UD5H>
 <20200914194756.GA6112@intel.com>
 <20200915230345.GA14516@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915230345.GA14516@labuser-Z97X-UD5H>
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

On Tue, Sep 15, 2020 at 04:03:45PM -0700, Navare, Manasi wrote:
> On Mon, Sep 14, 2020 at 10:47:56PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Mon, Sep 14, 2020 at 12:38:57PM -0700, Navare, Manasi wrote:
> > > On Mon, Sep 14, 2020 at 10:17:57PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > On Mon, Sep 14, 2020 at 12:00:33PM -0700, Navare, Manasi wrote:
> > > > > On Mon, Sep 07, 2020 at 02:20:56PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > > On Wed, Jul 15, 2020 at 03:42:15PM -0700, Manasi Navare wrote:
> > > > > > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > > > > =

> > > > > > > Small changes to intel_dp_mode_valid(), allow listing modes t=
hat
> > > > > > > can only be supported in the bigjoiner configuration, which is
> > > > > > > not supported yet.
> > > > > > > =

> > > > > > > eDP does not support bigjoiner, so do not expose bigjoiner on=
ly
> > > > > > > modes on the eDP port.
> > > > > > > =

> > > > > > > v5:
> > > > > > > * Increase max plane width to support 8K with bigjoiner (Maar=
ten)
> > > > > > > v4:
> > > > > > > * Rebase (Manasi)
> > > > > > > =

> > > > > > > Changes since v1:
> > > > > > > - Disallow bigjoiner on eDP.
> > > > > > > Changes since v2:
> > > > > > > - Rename intel_dp_downstream_max_dotclock to intel_dp_max_dot=
clock,
> > > > > > >   and split off the downstream and source checking to its own=
 function.
> > > > > > >   (Ville)
> > > > > > > v3:
> > > > > > > * Rebase (Manasi)
> > > > > > > =

> > > > > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > > > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.int=
el.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_display.c |   2 +-
> > > > > > >  drivers/gpu/drm/i915/display/intel_dp.c      | 119 +++++++++=
+++++-----
> > > > > > >  2 files changed, 91 insertions(+), 30 deletions(-)
> > > > > > > =

> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/d=
rivers/gpu/drm/i915/display/intel_display.c
> > > > > > > index 78cbfefbfa62..3ecb642805a6 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > @@ -17400,7 +17400,7 @@ intel_mode_valid_max_plane_size(struc=
t drm_i915_private *dev_priv,
> > > > > > >  	 * too big for that.
> > > > > > >  	 */
> > > > > > >  	if (INTEL_GEN(dev_priv) >=3D 11) {
> > > > > > > -		plane_width_max =3D 5120;
> > > > > > > +		plane_width_max =3D 7680;
> > > > > > =

> > > > > > This looks misplaced. Planes do no know whether bigjoiner can b=
e used or
> > > > > > not. They should not care in fact. The caller should have that =
knowledge
> > > > > > and can deal with it properly.
> > > > > =

> > > > > Hmm, so the caller of intel_mode_valid_max_plane_size() should ch=
eck on the bigjoiner
> > > > > flag and perhaps if bigjoiner is true then increase the plane_wid=
th_max to 7680?
> > > > > =

> > > > > Am still not sure where this should happen? We need to have the p=
lane max width to be 7680
> > > > > before we prune the 8K mode in intel_mode_valid
> > > > > =

> > > > > Where should this be added according to you?
> > > > =

> > > > Hmm. I guess we do need to put it into this function given the way =
this
> > > > is structured. However we still can't assume bigjoiner can be used =
since
> > > > it can't be used on DDI A on icl. So we should probably just pass i=
n a
> > > > bool here to indicate whether bigjoiner can be used or not.
> > > >
> > > =

> > > So in intel_dp_mode_valid() we set bigjoiner =3D true if not edp and =
higher clock.
> > > I think here we need to do the platform check also, 1. because now we=
 are enabling this for TGL+
> > > where big joiner on all pipes. But we should still I think add GEN >=
=3D12 check before setting bigjoiner
> > > to true in intel_dp_mode_valid() and then pass that to intel_mode_val=
id_max_plane_size(..., book bigjoiner)
> > =

> > can_bigjoiner() {
> > 	return gen >=3D 12 || (gen=3D=3D11 && port!=3DA);
> > }
> =

> Hmm, gen check can be done but can the port check be done in intel_dp_mod=
e_valid() since we dont have
> an encoder yet?

The encoder is there already.

> Else we set the bigjoiner to true here based on gen check but add the por=
t check later in compute_config at
> what point if not supported then encoder config will fail.
> =

> or can this be sufficient check:
> =

> can_bigjoiner() {
> 	return gen >=3D 12 || (gen =3D=3D 11 && !intel_dp_is_edp())
> }
> =

> Manasi
> =

> > =

> > or something.
> > =

> > > =

> > > Sounds good?
> > > =

> > > > Personally I'd just write the thing as something like:
> > > > intel_mode_valid_max_plane_size(..., bool bigjoiner)
> > > > {
> > > > 	...
> > > > 	plane_width_max =3D 5120 << bigjoiner;
> > > > 	...
> > > > }
> > > > =

> > > > > =

> > > > > Manasi
> > > > > > =

> > > > > > >  		plane_height_max =3D 4320;
> > > > > > >  	} else {
> > > > > > >  		plane_width_max =3D 5120;
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/driver=
s/gpu/drm/i915/display/intel_dp.c
> > > > > > > index d6295eb20b63..fbfea99fd804 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > > @@ -248,25 +248,37 @@ intel_dp_max_data_rate(int max_link_clo=
ck, int max_lanes)
> > > > > > >  	return max_link_clock * max_lanes;
> > > > > > >  }
> > > > > > >  =

> > > > > > > -static int
> > > > > > > -intel_dp_downstream_max_dotclock(struct intel_dp *intel_dp)
> > > > > > > +static int source_max_dotclock(struct intel_dp *intel_dp, bo=
ol allow_bigjoiner)
> > > > > > >  {
> > > > > > > -	struct intel_digital_port *dig_port =3D dp_to_dig_port(inte=
l_dp);
> > > > > > > -	struct intel_encoder *encoder =3D &dig_port->base;
> > > > > > > +	struct intel_digital_port *intel_dig_port =3D dp_to_dig_por=
t(intel_dp);
> > > > > > > +	struct intel_encoder *encoder =3D &intel_dig_port->base;
> > > > > > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base=
.dev);
> > > > > > > -	int max_dotclk =3D dev_priv->max_dotclk_freq;
> > > > > > > -	int ds_max_dotclk;
> > > > > > >  =

> > > > > > > +	if (allow_bigjoiner && INTEL_GEN(dev_priv) >=3D 11 && !inte=
l_dp_is_edp(intel_dp))
> > > > > > > +		return 2 * dev_priv->max_dotclk_freq;
> > > > > > > +
> > > > > > > +	return dev_priv->max_dotclk_freq;
> > > > > > > +}
> > > > > > > +
> > > > > > > +static int downstream_max_dotclock(struct intel_dp *intel_dp)
> > > > > > > +{
> > > > > > >  	int type =3D intel_dp->downstream_ports[0] & DP_DS_PORT_TYP=
E_MASK;
> > > > > > >  =

> > > > > > >  	if (type !=3D DP_DS_PORT_TYPE_VGA)
> > > > > > > -		return max_dotclk;
> > > > > > > +		return 0;
> > > > > > >  =

> > > > > > > -	ds_max_dotclk =3D drm_dp_downstream_max_clock(intel_dp->dpc=
d,
> > > > > > > -						    intel_dp->downstream_ports);
> > > > > > > +	return drm_dp_downstream_max_clock(intel_dp->dpcd,
> > > > > > > +					   intel_dp->downstream_ports);
> > > > > > > +}
> > > > > > > +
> > > > > > > +static int
> > > > > > > +intel_dp_max_dotclock(struct intel_dp *intel_dp, bool allow_=
bigjoiner)
> > > > > > > +{
> > > > > > > +	int max_dotclk =3D source_max_dotclock(intel_dp, allow_bigj=
oiner);
> > > > > > > +	int ds_max_dotclk =3D downstream_max_dotclock(intel_dp);
> > > > > > >  =

> > > > > > >  	if (ds_max_dotclk !=3D 0)
> > > > > > > -		max_dotclk =3D min(max_dotclk, ds_max_dotclk);
> > > > > > > +		return min(max_dotclk, ds_max_dotclk);
> > > > > > >  =

> > > > > > >  	return max_dotclk;
> > > > > > >  }
> > > > > > > @@ -527,7 +539,8 @@ small_joiner_ram_size_bits(struct drm_i91=
5_private *i915)
> > > > > > >  =

> > > > > > >  static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_priva=
te *i915,
> > > > > > >  				       u32 link_clock, u32 lane_count,
> > > > > > > -				       u32 mode_clock, u32 mode_hdisplay)
> > > > > > > +				       u32 mode_clock, u32 mode_hdisplay,
> > > > > > > +				       bool bigjoiner)
> > > > > > >  {
> > > > > > >  	u32 bits_per_pixel, max_bpp_small_joiner_ram;
> > > > > > >  	int i;
> > > > > > > @@ -545,6 +558,10 @@ static u16 intel_dp_dsc_get_output_bpp(s=
truct drm_i915_private *i915,
> > > > > > >  	/* Small Joiner Check: output bpp <=3D joiner RAM (bits) / =
Horiz. width */
> > > > > > >  	max_bpp_small_joiner_ram =3D small_joiner_ram_size_bits(i91=
5) /
> > > > > > >  		mode_hdisplay;
> > > > > > > +
> > > > > > > +	if (bigjoiner)
> > > > > > > +		max_bpp_small_joiner_ram *=3D 2;
> > > > > > > +
> > > > > > >  	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
> > > > > > >  		    max_bpp_small_joiner_ram);
> > > > > > >  =

> > > > > > > @@ -554,6 +571,15 @@ static u16 intel_dp_dsc_get_output_bpp(s=
truct drm_i915_private *i915,
> > > > > > >  	 */
> > > > > > >  	bits_per_pixel =3D min(bits_per_pixel, max_bpp_small_joiner=
_ram);
> > > > > > >  =

> > > > > > > +	if (bigjoiner) {
> > > > > > > +		u32 max_bpp_bigjoiner =3D
> > > > > > > +			i915->max_cdclk_freq * 48 /
> > > > > > > +			intel_dp_mode_to_fec_clock(mode_clock);
> > > > > > > +
> > > > > > > +		DRM_DEBUG_KMS("Max big joiner bpp: %u\n", max_bpp_bigjoine=
r);
> > > > > > > +		bits_per_pixel =3D min(bits_per_pixel, max_bpp_bigjoiner);
> > > > > > > +	}
> > > > > > > +
> > > > > > >  	/* Error out if the max bpp is less than smallest allowed v=
alid bpp */
> > > > > > >  	if (bits_per_pixel < valid_dsc_bpp[0]) {
> > > > > > >  		drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min %u\n",
> > > > > > > @@ -576,7 +602,8 @@ static u16 intel_dp_dsc_get_output_bpp(st=
ruct drm_i915_private *i915,
> > > > > > >  }
> > > > > > >  =

> > > > > > >  static u8 intel_dp_dsc_get_slice_count(struct intel_dp *inte=
l_dp,
> > > > > > > -				       int mode_clock, int mode_hdisplay)
> > > > > > > +				       int mode_clock, int mode_hdisplay,
> > > > > > > +				       bool bigjoiner)
> > > > > > >  {
> > > > > > >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > > > > >  	u8 min_slice_count, i;
> > > > > > > @@ -603,12 +630,20 @@ static u8 intel_dp_dsc_get_slice_count(=
struct intel_dp *intel_dp,
> > > > > > >  =

> > > > > > >  	/* Find the closest match to the valid slice count values */
> > > > > > >  	for (i =3D 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
> > > > > > > -		if (valid_dsc_slicecount[i] >
> > > > > > > -		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
> > > > > > > -						    false))
> > > > > > > +		u8 test_slice_count =3D bigjoiner ?
> > > > > > > +			2 * valid_dsc_slicecount[i] :
> > > > > > > +			valid_dsc_slicecount[i];
> > > > > > > +
> > > > > > > +		if (test_slice_count >
> > > > > > > +		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd, fa=
lse))
> > > > > > >  			break;
> > > > > > > -		if (min_slice_count  <=3D valid_dsc_slicecount[i])
> > > > > > > -			return valid_dsc_slicecount[i];
> > > > > > > +
> > > > > > > +		/* big joiner needs small joiner to be enabled */
> > > > > > > +		if (bigjoiner && test_slice_count < 4)
> > > > > > > +			continue;
> > > > > > > +
> > > > > > > +		if (min_slice_count <=3D test_slice_count)
> > > > > > > +			return test_slice_count;
> > > > > > >  	}
> > > > > > >  =

> > > > > > >  	drm_dbg_kms(&i915->drm, "Unsupported Slice Count %d\n",
> > > > > > > @@ -648,11 +683,15 @@ intel_dp_mode_valid(struct drm_connecto=
r *connector,
> > > > > > >  	int max_dotclk;
> > > > > > >  	u16 dsc_max_output_bpp =3D 0;
> > > > > > >  	u8 dsc_slice_count =3D 0;
> > > > > > > +	bool dsc =3D false, bigjoiner =3D false;
> > > > > > >  =

> > > > > > >  	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
> > > > > > >  		return MODE_NO_DBLESCAN;
> > > > > > >  =

> > > > > > > -	max_dotclk =3D intel_dp_downstream_max_dotclock(intel_dp);
> > > > > > > +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> > > > > > > +		return MODE_H_ILLEGAL;
> > > > > > > +
> > > > > > > +	max_dotclk =3D intel_dp_max_dotclock(intel_dp, false);
> > > > > > >  =

> > > > > > >  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> > > > > > >  		if (mode->hdisplay > fixed_mode->hdisplay)
> > > > > > > @@ -664,6 +703,21 @@ intel_dp_mode_valid(struct drm_connector=
 *connector,
> > > > > > >  		target_clock =3D fixed_mode->clock;
> > > > > > >  	}
> > > > > > >  =

> > > > > > > +	if (mode->clock < 10000)
> > > > > > > +		return MODE_CLOCK_LOW;
> > > > > > > +
> > > > > > > +	if (target_clock > max_dotclk) {
> > > > > > > +		if (intel_dp_is_edp(intel_dp))
> > > > > > > +			return MODE_CLOCK_HIGH;
> > > > > > > +
> > > > > > > +		max_dotclk =3D intel_dp_max_dotclock(intel_dp, true);
> > > > > > > +
> > > > > > > +		if (target_clock > max_dotclk)
> > > > > > > +			return MODE_CLOCK_HIGH;
> > > > > > > +
> > > > > > > +		bigjoiner =3D true;
> > > > > > > +	}
> > > > > > > +
> > > > > > >  	max_link_clock =3D intel_dp_max_link_rate(intel_dp);
> > > > > > >  	max_lanes =3D intel_dp_max_lane_count(intel_dp);
> > > > > > >  =

> > > > > > > @@ -691,23 +745,28 @@ intel_dp_mode_valid(struct drm_connecto=
r *connector,
> > > > > > >  							    max_link_clock,
> > > > > > >  							    max_lanes,
> > > > > > >  							    target_clock,
> > > > > > > -							    mode->hdisplay) >> 4;
> > > > > > > +							    mode->hdisplay,
> > > > > > > +							    bigjoiner) >> 4;
> > > > > > >  			dsc_slice_count =3D
> > > > > > >  				intel_dp_dsc_get_slice_count(intel_dp,
> > > > > > >  							     target_clock,
> > > > > > > -							     mode->hdisplay);
> > > > > > > +							     mode->hdisplay,
> > > > > > > +							     bigjoiner);
> > > > > > >  		}
> > > > > > > +
> > > > > > > +		dsc =3D dsc_max_output_bpp && dsc_slice_count;
> > > > > > >  	}
> > > > > > >  =

> > > > > > > -	if ((mode_rate > max_rate && !(dsc_max_output_bpp && dsc_sl=
ice_count)) ||
> > > > > > > -	    target_clock > max_dotclk)
> > > > > > > +	/* big joiner configuration needs DSC */
> > > > > > > +	if (bigjoiner && !dsc) {
> > > > > > > +		DRM_DEBUG_KMS("Link clock needs bigjoiner, but DSC or FEC =
not available\n");
> > > > > > >  		return MODE_CLOCK_HIGH;
> > > > > > > +	}
> > > > > > >  =

> > > > > > > -	if (mode->clock < 10000)
> > > > > > > -		return MODE_CLOCK_LOW;
> > > > > > > -
> > > > > > > -	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> > > > > > > -		return MODE_H_ILLEGAL;
> > > > > > > +	if (mode_rate > max_rate && !dsc) {
> > > > > > > +		DRM_DEBUG_KMS("Cannot drive without DSC\n");
> > > > > > > +		return MODE_CLOCK_HIGH;
> > > > > > > +	}
> > > > > > >  =

> > > > > > >  	return intel_mode_valid_max_plane_size(dev_priv, mode);
> > > > > > >  }
> > > > > > > @@ -2204,11 +2263,13 @@ static int intel_dp_dsc_compute_confi=
g(struct intel_dp *intel_dp,
> > > > > > >  						    pipe_config->port_clock,
> > > > > > >  						    pipe_config->lane_count,
> > > > > > >  						    adjusted_mode->crtc_clock,
> > > > > > > -						    adjusted_mode->crtc_hdisplay);
> > > > > > > +						    adjusted_mode->crtc_hdisplay,
> > > > > > > +						    false);
> > > > > > >  		dsc_dp_slice_count =3D
> > > > > > >  			intel_dp_dsc_get_slice_count(intel_dp,
> > > > > > >  						     adjusted_mode->crtc_clock,
> > > > > > > -						     adjusted_mode->crtc_hdisplay);
> > > > > > > +						     adjusted_mode->crtc_hdisplay,
> > > > > > > +						     false);
> > > > > > >  		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
> > > > > > >  			drm_dbg_kms(&dev_priv->drm,
> > > > > > >  				    "Compressed BPP/Slice Count not supported\n");
> > > > > > > -- =

> > > > > > > 2.19.1
> > > > > > > =

> > > > > > > _______________________________________________
> > > > > > > Intel-gfx mailing list
> > > > > > > Intel-gfx@lists.freedesktop.org
> > > > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > > > > =

> > > > > > -- =

> > > > > > Ville Syrj=E4l=E4
> > > > > > Intel
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
