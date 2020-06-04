Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 870E51EEE01
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 00:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AA636E7D1;
	Thu,  4 Jun 2020 22:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619F36E7D1
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 22:56:00 +0000 (UTC)
IronPort-SDR: riCNMVBXgLpHrconKXz08slfeWtAXtJ8GJfyaPqWp2anArtBPY2CGDQ3BrWv8vnfsG1dvqDDsD
 SxfOxjiuTA2A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 15:55:59 -0700
IronPort-SDR: vxf13J5xIGH50+UdS7Yfe0mzg4mJGPf+vOh/7mlFPJeYhMd/APxN9BiT1lSuTY9V4g7EhOiiT7
 v9uSvsBG/dIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="287538314"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga002.jf.intel.com with ESMTP; 04 Jun 2020 15:55:58 -0700
Date: Thu, 4 Jun 2020 15:55:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200604225558.GD3023929@mdroper-desk1.amr.corp.intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-14-matthew.d.roper@intel.com>
 <20200604165955.GY6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604165955.GY6112@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 13/15] drm/i915/rkl: Handle HTI
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 04, 2020 at 07:59:55PM +0300, Ville Syrj=E4l=E4 wrote:
> On Wed, Jun 03, 2020 at 02:15:27PM -0700, Matt Roper wrote:
> > If HTI (also sometimes called HDPORT) is enabled at startup, it may be
> =

> whatis HTI?

That's not really clear in the bspec or any other documents I've seen.
It sounds like its something setup by the boot firmware that can
potentially steal PLL and PHYs away.  Driver-wise there doesn't seem to
be much we need to do other than avoid using the reserved resources,
sort of like how we avoid using fused off units.


Matt

> =

> > using some of the PHYs and DPLLs making them unavailable for general
> > usage.  Let's read out the HDPORT_STATE register and avoid making use of
> > resources that HTI is already using.
> > =

> > v2:
> >  - Fix minor checkpatch warnings
> > =

> > Bspec: 49189
> > Bspec: 53707
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 30 ++++++++++++++++---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 21 +++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
> >  drivers/gpu/drm/i915/i915_drv.h               |  3 ++
> >  drivers/gpu/drm/i915/i915_reg.h               |  6 ++++
> >  5 files changed, 57 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index bcc6dc4e321b..cdd84a419cf7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -46,6 +46,7 @@
> >  #include "display/intel_ddi.h"
> >  #include "display/intel_dp.h"
> >  #include "display/intel_dp_mst.h"
> > +#include "display/intel_dpll_mgr.h"
> >  #include "display/intel_dsi.h"
> >  #include "display/intel_dvo.h"
> >  #include "display/intel_gmbus.h"
> > @@ -16817,6 +16818,13 @@ static void intel_pps_init(struct drm_i915_pri=
vate *dev_priv)
> >  	intel_pps_unlock_regs_wa(dev_priv);
> >  }
> >  =

> > +static bool hti_uses_phy(u32 hdport_state, enum phy phy)
> > +{
> > +	return hdport_state & HDPORT_ENABLED &&
> > +		(hdport_state & HDPORT_PHY_USED_DP(phy) ||
> > +		 hdport_state & HDPORT_PHY_USED_HDMI(phy));
> > +}
> > +
> >  static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> >  {
> >  	struct intel_encoder *encoder;
> > @@ -16828,10 +16836,22 @@ static void intel_setup_outputs(struct drm_i9=
15_private *dev_priv)
> >  		return;
> >  =

> >  	if (IS_ROCKETLAKE(dev_priv)) {
> > -		intel_ddi_init(dev_priv, PORT_A);
> > -		intel_ddi_init(dev_priv, PORT_B);
> > -		intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
> > -		intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
> > +		/*
> > +		 * If HTI (aka HDPORT) is enabled at boot, it may have taken
> > +		 * over some of the PHYs and made them unavailable to the
> > +		 * driver.  In that case we should skip initializing the
> > +		 * corresponding outputs.
> > +		 */
> > +		u32 hdport_state =3D intel_de_read(dev_priv, HDPORT_STATE);
> > +
> > +		if (!hti_uses_phy(hdport_state, PHY_A))
> > +			intel_ddi_init(dev_priv, PORT_A);
> > +		if (!hti_uses_phy(hdport_state, PHY_B))
> > +			intel_ddi_init(dev_priv, PORT_B);
> > +		if (!hti_uses_phy(hdport_state, PHY_C))
> > +			intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
> > +		if (!hti_uses_phy(hdport_state, PHY_D))
> > +			intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
> >  	} else if (INTEL_GEN(dev_priv) >=3D 12) {
> >  		intel_ddi_init(dev_priv, PORT_A);
> >  		intel_ddi_init(dev_priv, PORT_B);
> > @@ -18379,6 +18399,8 @@ static void intel_modeset_readout_hw_state(stru=
ct drm_device *dev)
> >  =

> >  	intel_dpll_readout_hw_state(dev_priv);
> >  =

> > +	dev_priv->hti_pll_mask =3D intel_get_hti_plls(dev_priv);
> > +
> >  	for_each_intel_encoder(dev, encoder) {
> >  		pipe =3D 0;
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gp=
u/drm/i915/display/intel_dpll_mgr.c
> > index b5f4d4cef682..6f59f9ec453b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -265,6 +265,24 @@ void intel_disable_shared_dpll(const struct intel_=
crtc_state *crtc_state)
> >  	mutex_unlock(&dev_priv->dpll.lock);
> >  }
> >  =

> > +/*
> > + * HTI (aka HDPORT) may be using some of the platform's PLL's, making =
them
> > + * unavailable for use.
> > + */
> > +u32 intel_get_hti_plls(struct drm_i915_private *dev_priv)
> > +{
> > +	u32 hdport_state;
> > +
> > +	if (!IS_ROCKETLAKE(dev_priv))
> > +		return 0;
> > +
> > +	hdport_state =3D intel_de_read(dev_priv, HDPORT_STATE);
> > +	if (!(hdport_state & HDPORT_ENABLED))
> > +		return 0;
> > +
> > +	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, hdport_state);
> > +}
> > +
> >  static struct intel_shared_dpll *
> >  intel_find_shared_dpll(struct intel_atomic_state *state,
> >  		       const struct intel_crtc *crtc,
> > @@ -280,6 +298,9 @@ intel_find_shared_dpll(struct intel_atomic_state *s=
tate,
> >  =

> >  	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
> >  =

> > +	/* Eliminate DPLLs from consideration if reserved by HTI */
> > +	dpll_mask &=3D ~dev_priv->hti_pll_mask;
> > +
> >  	for_each_set_bit(i, &dpll_mask, I915_NUM_PLLS) {
> >  		pll =3D &dev_priv->dpll.shared_dplls[i];
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gp=
u/drm/i915/display/intel_dpll_mgr.h
> > index 5d9a2bc371e7..ac2238646fe7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -390,6 +390,7 @@ void intel_shared_dpll_swap_state(struct intel_atom=
ic_state *state);
> >  void intel_shared_dpll_init(struct drm_device *dev);
> >  void intel_dpll_readout_hw_state(struct drm_i915_private *dev_priv);
> >  void intel_dpll_sanitize_state(struct drm_i915_private *dev_priv);
> > +u32 intel_get_hti_plls(struct drm_i915_private *dev_priv);
> >  =

> >  void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
> >  			      const struct intel_dpll_hw_state *hw_state);
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i91=
5_drv.h
> > index e99255e17eb7..668b3c9cf3ae 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1037,6 +1037,9 @@ struct drm_i915_private {
> >  =

> >  	struct intel_l3_parity l3_parity;
> >  =

> > +	/* Mask of PLLs reserved for use by HTI and unavailable to driver. */
> > +	u32 hti_pll_mask;
> > +
> >  	/*
> >  	 * edram size in MB.
> >  	 * Cannot be determined by PCIID. You must always read a register.
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
> > index 85137d268c4a..b9faf0f978cf 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2906,6 +2906,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_=
t reg)
> >  #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
> >  #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
> >  =

> > +#define HDPORT_STATE			_MMIO(0x45050)
> > +#define   HDPORT_DPLL_USED_MASK		REG_GENMASK(14, 12)
> > +#define   HDPORT_PHY_USED_DP(phy)	REG_BIT(2*(phy) + 2)
> > +#define   HDPORT_PHY_USED_HDMI(phy)	REG_BIT(2*(phy) + 1)
> > +#define   HDPORT_ENABLED		REG_BIT(0)
> > +
> >  /* Make render/texture TLB fetches lower priorty than associated data
> >   *   fetches. This is not turned on by default
> >   */
> > -- =

> > 2.24.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
