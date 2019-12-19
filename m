Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F4D125E0A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 10:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 379DB6EAF2;
	Thu, 19 Dec 2019 09:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110106EAF2
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 09:48:47 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 01:48:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="222231200"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 19 Dec 2019 01:48:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2019 11:48:43 +0200
Date: Thu, 19 Dec 2019 11:48:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20191219094843.GF1208@intel.com>
References: <20191213130228.29509-1-stanislav.lisovskiy@intel.com>
 <20191213130228.29509-4-stanislav.lisovskiy@intel.com>
 <20191218180046.GQ1208@intel.com>
 <aea7f05fa5b9e4c6c58966a71e48eef94eac68a0.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aea7f05fa5b9e4c6c58966a71e48eef94eac68a0.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v8 3/4] drm/i915: Manipulate DBuf slices
 properly
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 19, 2019 at 09:13:23AM +0000, Lisovskiy, Stanislav wrote:
> On Wed, 2019-12-18 at 20:00 +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Dec 13, 2019 at 03:02:27PM +0200, Stanislav Lisovskiy wrote:
> > > Start manipulating DBuf slices as a mask,
> > > but not as a total number, as current approach
> > > doesn't give us full control on all combinations
> > > of slices, which we might need(like enabling S2
> > > only can't enabled by setting enabled_slices=3D1).
> > > =

> > > Removed wrong code from intel_get_ddb_size as
> > > it doesn't match to BSpec. For now still just
> > > use DBuf slice until proper algorithm is implemented.
> > > =

> > > Other minor code refactoring to get prepared
> > > for major DBuf assignment changes landed:
> > > - As now enabled slices contain a mask
> > >   we still need some value which should
> > >   reflect how much DBuf slices are supported
> > >   by the platform, now device info contains
> > >   num_supported_dbuf_slices.
> > > - Removed unneeded assertion as we are now
> > >   manipulating slices in a more proper way.
> > > =

> > > v2: Start using enabled_slices in dev_priv
> > > =

> > > v3: "enabled_slices" is now "enabled_dbuf_slices_mask",
> > >     as this now sits in dev_priv independently.
> > > =

> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  23 ++--
> > >  .../drm/i915/display/intel_display_power.c    | 100 ++++++++----
> > > ------
> > >  .../drm/i915/display/intel_display_power.h    |   5 +
> > >  .../drm/i915/display/intel_display_types.h    |   2 +-
> > >  drivers/gpu/drm/i915/i915_drv.h               |   2 +-
> > >  drivers/gpu/drm/i915/i915_pci.c               |   6 +-
> > >  drivers/gpu/drm/i915/intel_device_info.h      |   1 +
> > >  drivers/gpu/drm/i915/intel_pm.c               |  49 +++------
> > >  drivers/gpu/drm/i915/intel_pm.h               |   2 +-
> > >  9 files changed, 84 insertions(+), 106 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 0e09d0c23b1d..42a0ea540d4f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -13359,12 +13359,12 @@ static void verify_wm_state(struct
> > > intel_crtc *crtc,
> =

> Hi Ville,
> =

> Thank you for comments, please see replies for some of those inline.
> =

> > >  =

> > >  	skl_pipe_ddb_get_hw_state(crtc, hw->ddb_y, hw->ddb_uv);
> > >  =

> > > -	hw_enabled_slices =3D intel_enabled_dbuf_slices_num(dev_priv);
> > > +	hw_enabled_slices =3D intel_enabled_dbuf_slices_mask(dev_priv);
> > >  =

> > >  	if (INTEL_GEN(dev_priv) >=3D 11 &&
> > > -	    hw_enabled_slices !=3D dev_priv->enabled_dbuf_slices_num)
> > > -		DRM_ERROR("mismatch in DBUF Slices (expected %u, got
> > > %u)\n",
> > > -			  dev_priv->enabled_dbuf_slices_num,
> > > +	    hw_enabled_slices !=3D dev_priv->enabled_dbuf_slices_mask)
> > > +		DRM_ERROR("mismatch in DBUF Slices (expected %x, got
> > > %x)\n",
> > > +			  dev_priv->enabled_dbuf_slices_mask,
> > >  			  hw_enabled_slices);
> > >  =

> > >  	/* planes */
> > > @@ -14549,22 +14549,23 @@ static void
> > > intel_update_trans_port_sync_crtcs(struct intel_crtc *crtc,
> > >  static void icl_dbuf_slice_pre_update(struct intel_atomic_state
> > > *state)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > -	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_num;
> > > -	u8 required_slices =3D state->enabled_dbuf_slices_num;
> > > +	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;
> > > +	u8 required_slices =3D state->enabled_dbuf_slices_mask;
> > > +	u8 slices_union =3D hw_enabled_slices | required_slices;
> > >  =

> > >  	/* If 2nd DBuf slice required, enable it here */
> > > -	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices >
> > > hw_enabled_slices)
> > > -		icl_dbuf_slices_update(dev_priv, required_slices);
> > > +	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices !=3D
> > > hw_enabled_slices)
> > > +		icl_dbuf_slices_update(dev_priv, slices_union);
> > >  }
> > >  =

> > >  static void icl_dbuf_slice_post_update(struct intel_atomic_state
> > > *state)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > -	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_num;
> > > -	u8 required_slices =3D state->enabled_dbuf_slices_num;
> > > +	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;
> > > +	u8 required_slices =3D state->enabled_dbuf_slices_mask;
> > >  =

> > >  	/* If 2nd DBuf slice is no more required disable it */
> > > -	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices <
> > > hw_enabled_slices)
> > > +	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices !=3D
> > > hw_enabled_slices)
> > =

> > I would rename the variables to old_slices vs. new_slices or
> > something
> > like that. Would match the common naming pattern we use extensively
> > all
> > over.
> =

> Yep, we just used to have it that way, so I just didn't want to
> change variable names.
> =

> > =

> > >  		icl_dbuf_slices_update(dev_priv, required_slices);
> > >  }
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index b8983422a882..ba384a5315f8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -1031,15 +1031,6 @@ static bool
> > > gen9_dc_off_power_well_enabled(struct drm_i915_private *dev_priv,
> > >  		(I915_READ(DC_STATE_EN) &
> > > DC_STATE_EN_UPTO_DC5_DC6_MASK) =3D=3D 0);
> > >  }
> > >  =

> > > -static void gen9_assert_dbuf_enabled(struct drm_i915_private
> > > *dev_priv)
> > > -{
> > > -	u32 tmp =3D I915_READ(DBUF_CTL);
> > > -
> > > -	WARN((tmp & (DBUF_POWER_STATE | DBUF_POWER_REQUEST)) !=3D
> > > -	     (DBUF_POWER_STATE | DBUF_POWER_REQUEST),
> > > -	     "Unexpected DBuf power power state (0x%08x)\n", tmp);
> > > -}
> > > -
> > >  static void gen9_disable_dc_states(struct drm_i915_private
> > > *dev_priv)
> > >  {
> > >  	struct intel_cdclk_state cdclk_state =3D {};
> > > @@ -1055,8 +1046,6 @@ static void gen9_disable_dc_states(struct
> > > drm_i915_private *dev_priv)
> > >  	/* Can't read out voltage_level so can't use
> > > intel_cdclk_changed() */
> > >  	WARN_ON(intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
> > > &cdclk_state));
> > >  =

> > > -	gen9_assert_dbuf_enabled(dev_priv);
> > =

> > Why are you removing these? I think you still left the code in place
> > to
> > power up the first slice uncoditionally. Also not sure if DMC just
> > powers that sucker up regardless. I think we should try it and if DMC
> > isn't insane we should turn all the slices off when we don't need
> > them.
> =

> I just didn't get why we do this check here, as we actually have that
> check in verify_wm_state. Also this hardcoded check seems to always
> assume that we should have both slices enabled which might be wrong - =

> we could have now different configurations, prior to this call,
> as this is called for example before suspend which would be =

> intel_power_domains_suspend->icl_display_core_uninit-

The check is there because DMC is supposed to restore power to the
slices after DC5/6.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
