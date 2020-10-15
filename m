Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B32C428F690
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 18:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B476ED74;
	Thu, 15 Oct 2020 16:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30756ED74
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 16:25:13 +0000 (UTC)
IronPort-SDR: +WJoMGI/00S6CLi1mEVwuOgE3RNwimM3Y20f5TfN9Z/dwGyYUylX43UTNYdlFQKNLZI8Y0lYyJ
 UHXKSPXx41rQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="154217821"
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="154217821"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 09:25:13 -0700
IronPort-SDR: fbqrhxQBFMkOAEjBM7r7M3Uxh5nHpg9nqzKrbYVJ5oHcLYUVfdwoJK1j0rIKYxHg4LomcNDzKR
 sJ9vAsL3Wb8A==
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="531319092"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 09:25:12 -0700
Date: Thu, 15 Oct 2020 09:26:45 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201015162645.GA28888@labuser-Z97X-UD5H>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
 <20201008214535.22942-4-manasi.d.navare@intel.com>
 <20201014112634.GG6112@intel.com>
 <20201014190405.GA22826@labuser-Z97X-UD5H>
 <20201015115247.GI6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015115247.GI6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v10 04/11] drm/i915/dp: Allow big joiner
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

On Thu, Oct 15, 2020 at 02:52:47PM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, Oct 14, 2020 at 12:04:10PM -0700, Navare, Manasi wrote:
> > On Wed, Oct 14, 2020 at 02:26:34PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Thu, Oct 08, 2020 at 02:45:28PM -0700, Manasi Navare wrote:
> > > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > =

> > > > Small changes to intel_dp_mode_valid(), allow listing modes that
> > > > can only be supported in the bigjoiner configuration, which is
> > > > not supported yet.
> > > > =

> > > > eDP does not support bigjoiner, so do not expose bigjoiner only
> > > > modes on the eDP port.
> > > > =

> > > > v7:
> > > > * Add can_bigjoiner() helper (Ville)
> > > > * Pass bigjoiner to plane_size validation (Ville)
> > > > v6:
> > > > * Rebase after dp_downstream mode valid changes (Manasi)
> > > > v5:
> > > > * Increase max plane width to support 8K with bigjoiner (Maarten)
> > > > v4:
> > > > * Rebase (Manasi)
> > > > =

> > > > Changes since v1:
> > > > - Disallow bigjoiner on eDP.
> > > > Changes since v2:
> > > > - Rename intel_dp_downstream_max_dotclock to intel_dp_max_dotclock,
> > > >   and split off the downstream and source checking to its own funct=
ion.
> > > >   (Ville)
> > > > v3:
> > > > * Rebase (Manasi)
> > > > =

> > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c |   5 +-
> > > >  drivers/gpu/drm/i915/display/intel_display.h |   3 +-
> > > >  drivers/gpu/drm/i915/display/intel_dp.c      | 126 +++++++++++++++=
----
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c  |   2 +-
> > > >  drivers/gpu/drm/i915/display/intel_dsi.c     |   2 +-
> > > >  drivers/gpu/drm/i915/display/intel_hdmi.c    |   2 +-
> > > >  6 files changed, 111 insertions(+), 29 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers=
/gpu/drm/i915/display/intel_display.c
> > > > index 723766b1eae3..cc540c7b7dcd 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -17642,7 +17642,8 @@ intel_mode_valid(struct drm_device *dev,
> > > >  =

> > > >  enum drm_mode_status
> > > >  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> > > > -				const struct drm_display_mode *mode)
> > > > +				const struct drm_display_mode *mode,
> > > > +				bool bigjoiner)
> > > >  {
> > > >  	int plane_width_max, plane_height_max;
> > > >  =

> > > > @@ -17659,7 +17660,7 @@ intel_mode_valid_max_plane_size(struct drm_=
i915_private *dev_priv,
> > > >  	 * too big for that.
> > > >  	 */
> > > >  	if (INTEL_GEN(dev_priv) >=3D 11) {
> > > > -		plane_width_max =3D 5120;
> > > > +		plane_width_max =3D 5120 << bigjoiner;
> > > >  		plane_height_max =3D 4320;
> > > >  	} else {
> > > >  		plane_width_max =3D 5120;
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers=
/gpu/drm/i915/display/intel_display.h
> > > > index d10b7c8cde3f..3d860a9da8fe 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > > @@ -496,7 +496,8 @@ u32 intel_plane_fb_max_stride(struct drm_i915_p=
rivate *dev_priv,
> > > >  bool intel_plane_can_remap(const struct intel_plane_state *plane_s=
tate);
> > > >  enum drm_mode_status
> > > >  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> > > > -				const struct drm_display_mode *mode);
> > > > +				const struct drm_display_mode *mode,
> > > > +				bool bigjoiner);
> > > >  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum por=
t port);
> > > >  bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
> > > >  =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/=
drm/i915/display/intel_dp.c
> > > > index 8a522edd7386..af2ff425e5d5 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -247,6 +247,29 @@ intel_dp_max_data_rate(int max_link_clock, int=
 max_lanes)
> > > >  	return max_link_clock * max_lanes;
> > > >  }
> > > >  =

> > > > +static int source_max_dotclock(struct intel_dp *intel_dp, bool all=
ow_bigjoiner)
> > > > +{
> > > > +	struct intel_digital_port *intel_dig_port =3D dp_to_dig_port(inte=
l_dp);
> > > > +	struct intel_encoder *encoder =3D &intel_dig_port->base;
> > > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > > +
> > > > +	if (allow_bigjoiner && INTEL_GEN(dev_priv) >=3D 11 && !intel_dp_i=
s_edp(intel_dp))
> > > > +		return 2 * dev_priv->max_dotclk_freq;
> > > > +
> > > > +	return dev_priv->max_dotclk_freq;
> > > > +}
> > > > +
> > > > +static int
> > > > +intel_dp_max_dotclock(struct intel_dp *intel_dp, bool allow_bigjoi=
ner)
> > > > +{
> > > > +	int max_dotclk =3D source_max_dotclock(intel_dp, allow_bigjoiner);
> > > > +
> > > > +	if (intel_dp->dfp.max_dotclock)
> > > =

> > > No. dfp checks should stay where they are.
> > =

> > I am using dfp.max_dotclock because we populate that with drm_dp_downst=
ream_max_dotclock()
> > should that be used here directly from drm_dp_downstream_max_dotclock i=
nstead of using dfp.maxdotclock ?
> =

> Can you explain how bigjoiner and DFP dotclock limits relate to each
> other?

Before the dfp dotclock checks were added, we were obtaining the max dotclo=
ck as min (source_max_dotclock, downstream max dotclock from dpcd)
And thats why I was using the dfp.max_dotclock

But while addressing your feedback , I have now max_dotclock =3D source max=
 dotclock
and the downstream max dotclock checks happen in intel_dp_mode_valid_downst=
ream(), so I think we dont need to consider
this here in max dotclock computation.

Is this correct?

Manasi
 =

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
