Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E59B8292B86
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 18:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410C36EA10;
	Mon, 19 Oct 2020 16:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4003E6EA10
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 16:30:13 +0000 (UTC)
IronPort-SDR: ceUt5fRhWnBUWhubeDTkqB1MfqQv5cm4wd/xqxh78cEj+ZG4Jle1lyyxBcRz7ioqbU1SlRg1Zs
 Q6TWW2nb2gSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="167140472"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="167140472"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 09:30:10 -0700
IronPort-SDR: 9x3NukId3fQe52swWXS4wWBV5xGgLJCPFGdflfeVbpQ6aNuvtAmCIblaEgjUpZc9+AwEECmOpI
 LQyHAgdI9BOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="358881179"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 19 Oct 2020 09:30:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 19 Oct 2020 19:30:07 +0300
Date: Mon, 19 Oct 2020 19:30:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20201019163007.GV6112@intel.com>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
 <20201008214535.22942-4-manasi.d.navare@intel.com>
 <20201014112634.GG6112@intel.com>
 <20201014190405.GA22826@labuser-Z97X-UD5H>
 <20201015115247.GI6112@intel.com>
 <20201015162645.GA28888@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015162645.GA28888@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Thu, Oct 15, 2020 at 09:26:45AM -0700, Navare, Manasi wrote:
> On Thu, Oct 15, 2020 at 02:52:47PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Wed, Oct 14, 2020 at 12:04:10PM -0700, Navare, Manasi wrote:
> > > On Wed, Oct 14, 2020 at 02:26:34PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > On Thu, Oct 08, 2020 at 02:45:28PM -0700, Manasi Navare wrote:
> > > > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > > =

> > > > > Small changes to intel_dp_mode_valid(), allow listing modes that
> > > > > can only be supported in the bigjoiner configuration, which is
> > > > > not supported yet.
> > > > > =

> > > > > eDP does not support bigjoiner, so do not expose bigjoiner only
> > > > > modes on the eDP port.
> > > > > =

> > > > > v7:
> > > > > * Add can_bigjoiner() helper (Ville)
> > > > > * Pass bigjoiner to plane_size validation (Ville)
> > > > > v6:
> > > > > * Rebase after dp_downstream mode valid changes (Manasi)
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
> > > > >  drivers/gpu/drm/i915/display/intel_display.c |   5 +-
> > > > >  drivers/gpu/drm/i915/display/intel_display.h |   3 +-
> > > > >  drivers/gpu/drm/i915/display/intel_dp.c      | 126 +++++++++++++=
++----
> > > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c  |   2 +-
> > > > >  drivers/gpu/drm/i915/display/intel_dsi.c     |   2 +-
> > > > >  drivers/gpu/drm/i915/display/intel_hdmi.c    |   2 +-
> > > > >  6 files changed, 111 insertions(+), 29 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drive=
rs/gpu/drm/i915/display/intel_display.c
> > > > > index 723766b1eae3..cc540c7b7dcd 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -17642,7 +17642,8 @@ intel_mode_valid(struct drm_device *dev,
> > > > >  =

> > > > >  enum drm_mode_status
> > > > >  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_pri=
v,
> > > > > -				const struct drm_display_mode *mode)
> > > > > +				const struct drm_display_mode *mode,
> > > > > +				bool bigjoiner)
> > > > >  {
> > > > >  	int plane_width_max, plane_height_max;
> > > > >  =

> > > > > @@ -17659,7 +17660,7 @@ intel_mode_valid_max_plane_size(struct dr=
m_i915_private *dev_priv,
> > > > >  	 * too big for that.
> > > > >  	 */
> > > > >  	if (INTEL_GEN(dev_priv) >=3D 11) {
> > > > > -		plane_width_max =3D 5120;
> > > > > +		plane_width_max =3D 5120 << bigjoiner;
> > > > >  		plane_height_max =3D 4320;
> > > > >  	} else {
> > > > >  		plane_width_max =3D 5120;
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drive=
rs/gpu/drm/i915/display/intel_display.h
> > > > > index d10b7c8cde3f..3d860a9da8fe 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > > > @@ -496,7 +496,8 @@ u32 intel_plane_fb_max_stride(struct drm_i915=
_private *dev_priv,
> > > > >  bool intel_plane_can_remap(const struct intel_plane_state *plane=
_state);
> > > > >  enum drm_mode_status
> > > > >  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_pri=
v,
> > > > > -				const struct drm_display_mode *mode);
> > > > > +				const struct drm_display_mode *mode,
> > > > > +				bool bigjoiner);
> > > > >  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum p=
ort port);
> > > > >  bool is_trans_port_sync_mode(const struct intel_crtc_state *stat=
e);
> > > > >  =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gp=
u/drm/i915/display/intel_dp.c
> > > > > index 8a522edd7386..af2ff425e5d5 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > @@ -247,6 +247,29 @@ intel_dp_max_data_rate(int max_link_clock, i=
nt max_lanes)
> > > > >  	return max_link_clock * max_lanes;
> > > > >  }
> > > > >  =

> > > > > +static int source_max_dotclock(struct intel_dp *intel_dp, bool a=
llow_bigjoiner)
> > > > > +{
> > > > > +	struct intel_digital_port *intel_dig_port =3D dp_to_dig_port(in=
tel_dp);
> > > > > +	struct intel_encoder *encoder =3D &intel_dig_port->base;
> > > > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
> > > > > +
> > > > > +	if (allow_bigjoiner && INTEL_GEN(dev_priv) >=3D 11 && !intel_dp=
_is_edp(intel_dp))
> > > > > +		return 2 * dev_priv->max_dotclk_freq;
> > > > > +
> > > > > +	return dev_priv->max_dotclk_freq;
> > > > > +}
> > > > > +
> > > > > +static int
> > > > > +intel_dp_max_dotclock(struct intel_dp *intel_dp, bool allow_bigj=
oiner)
> > > > > +{
> > > > > +	int max_dotclk =3D source_max_dotclock(intel_dp, allow_bigjoine=
r);
> > > > > +
> > > > > +	if (intel_dp->dfp.max_dotclock)
> > > > =

> > > > No. dfp checks should stay where they are.
> > > =

> > > I am using dfp.max_dotclock because we populate that with drm_dp_down=
stream_max_dotclock()
> > > should that be used here directly from drm_dp_downstream_max_dotclock=
 instead of using dfp.maxdotclock ?
> > =

> > Can you explain how bigjoiner and DFP dotclock limits relate to each
> > other?
> =

> Before the dfp dotclock checks were added, we were obtaining the max dotc=
lock as min (source_max_dotclock, downstream max dotclock from dpcd)
> And thats why I was using the dfp.max_dotclock
> =

> But while addressing your feedback , I have now max_dotclock =3D source m=
ax dotclock
> and the downstream max dotclock checks happen in intel_dp_mode_valid_down=
stream(), so I think we dont need to consider
> this here in max dotclock computation.
> =

> Is this correct?

DFP's have nothing to do with bigjoiner. It is a purely internal
implemntation detail of our display engine. So mixing up the two
would be very wrong.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
