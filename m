Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D65836EDC2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 18:01:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DFB16F3A8;
	Thu, 29 Apr 2021 16:01:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADA5D6F3A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 16:01:34 +0000 (UTC)
IronPort-SDR: M26C92EayuldvPwhgvPUm/knWQyjZ2vNbFGiXY/CFJ4OQmhH0Uo0Z9TNqhgExh+OfJ//m7Eu0C
 LHT9ozjVgTmA==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="184171415"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="184171415"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 08:59:26 -0700
IronPort-SDR: 3MATDlKlm2sz9MO5UYhdKjcxEX7mRJKOlWfQ9L4OVPwQ0LWsMpPfF1wXlRDSGd5vc89wrJYcgM
 ddBom0VWzf7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="458826282"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 29 Apr 2021 08:59:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Apr 2021 18:59:23 +0300
Date: Thu, 29 Apr 2021 18:59:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <YIrX2y+h+iOLksz9@intel.com>
References: <20210429023535.1653-1-ville.syrjala@linux.intel.com>
 <11fce46408df47cea6ed85f345f321c8@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11fce46408df47cea6ed85f345f321c8@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Include intel_de_{read,
 write}_fw() in i915_reg_rw traces
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 29, 2021 at 07:34:00AM +0000, Gupta, Anshuman wrote:
> =

> =

> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of =
Ville
> > Syrjala
> > Sent: Thursday, April 29, 2021 8:06 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Chiou, Cooper <cooper.chiou@intel.com>
> > Subject: [Intel-gfx] [PATCH] drm/i915: Include intel_de_{read, write}_f=
w() in
> > i915_reg_rw traces
> > =

> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > We lost the i915_reg_rw tracepoint for a lot of display registers when =
we
> > switched from the heavyweight normal register accessors to the lightwei=
ght
> > _fw() variants. Put the tracepoints back so that the register traces mi=
ght actually
> > be useful. Hopefully these should be close to free when the tracepoint =
is not
> > enabled and thus not slow down our vblank critical sections significant=
ly.
> > =

> > The biggest hurdle is untangling the include order. Fortunately just pu=
lling
> > intel_de.h out from intel_display_types.h seems to have been sufficient=
 to make
> > it build.
> > =

> > This little cocci script did most of the work for me:
> > @find@
> > @@
> > (
> > intel_de_read(...)
> > |
> > intel_de_read_fw(...)
> > |
> > intel_de_write(...)
> > |
> > intel_de_write_fw(...)
> > )
> > =

> > @has_include@
> > @@
> > (
> >  #include "intel_de.h"
> > |
> >  #include "display/intel_de.h"
> > )
> > =

> > @depends on find && !has_include@
> > @@
> > + #include "intel_de.h"
> >   #include "intel_display_types.h"
> > =

> > @depends on find && !has_include@
> > @@
> > + #include "display/intel_de.h"
> >   #include "display/intel_display_types.h"
> > =

> > Cc: Cooper Chiou <cooper.chiou@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Overall patch Looks good to me,  just in my opinion worth to edit the fun=
ction comment intel_de_{read, write}_fw()
> /* Note: read the warnings for intel_uncore_*_fw() functions! */
> to indicate it is a traced function.

The one thing we should still point out is the same-cacheline
issues. The rest of the uncore comments didn't really apply anyway
since it's mostly about forcewake. I guess I could just copy paste
the relevant bits from there into intel_de.h directly.

> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/g4x_dp.c                | 1 +
> >  drivers/gpu/drm/i915/display/g4x_hdmi.c              | 1 +
> >  drivers/gpu/drm/i915/display/i9xx_plane.c            | 1 +
> >  drivers/gpu/drm/i915/display/icl_dsi.c               | 1 +
> >  drivers/gpu/drm/i915/display/intel_audio.c           | 1 +
> >  drivers/gpu/drm/i915/display/intel_cdclk.c           | 1 +
> >  drivers/gpu/drm/i915/display/intel_color.c           | 1 +
> >  drivers/gpu/drm/i915/display/intel_combo_phy.c       | 1 +
> >  drivers/gpu/drm/i915/display/intel_crt.c             | 1 +
> >  drivers/gpu/drm/i915/display/intel_cursor.c          | 1 +
> >  drivers/gpu/drm/i915/display/intel_ddi.c             | 1 +
> >  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c   | 1 +
> >  drivers/gpu/drm/i915/display/intel_de.h              | 9 ++++++++-
> >  drivers/gpu/drm/i915/display/intel_display.c         | 1 +
> >  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 1 +
> >  drivers/gpu/drm/i915/display/intel_display_power.c   | 1 +
> >  drivers/gpu/drm/i915/display/intel_display_types.h   | 1 -
> >  drivers/gpu/drm/i915/display/intel_dp.c              | 1 +
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c         | 1 +
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c          | 1 +
> >  drivers/gpu/drm/i915/display/intel_dpio_phy.c        | 1 +
> >  drivers/gpu/drm/i915/display/intel_dpll.c            | 1 +
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c        | 1 +
> >  drivers/gpu/drm/i915/display/intel_dsb.c             | 1 +
> >  drivers/gpu/drm/i915/display/intel_dvo.c             | 1 +
> >  drivers/gpu/drm/i915/display/intel_fbc.c             | 1 +
> >  drivers/gpu/drm/i915/display/intel_fdi.c             | 1 +
> >  drivers/gpu/drm/i915/display/intel_fifo_underrun.c   | 1 +
> >  drivers/gpu/drm/i915/display/intel_gmbus.c           | 1 +
> >  drivers/gpu/drm/i915/display/intel_hdcp.c            | 1 +
> >  drivers/gpu/drm/i915/display/intel_hdmi.c            | 1 +
> >  drivers/gpu/drm/i915/display/intel_lspcon.c          | 1 +
> >  drivers/gpu/drm/i915/display/intel_lvds.c            | 1 +
> >  drivers/gpu/drm/i915/display/intel_overlay.c         | 1 +
> >  drivers/gpu/drm/i915/display/intel_panel.c           | 1 +
> >  drivers/gpu/drm/i915/display/intel_pipe_crc.c        | 1 +
> >  drivers/gpu/drm/i915/display/intel_pps.c             | 1 +
> >  drivers/gpu/drm/i915/display/intel_psr.c             | 1 +
> >  drivers/gpu/drm/i915/display/intel_sdvo.c            | 1 +
> >  drivers/gpu/drm/i915/display/intel_sprite.c          | 1 +
> >  drivers/gpu/drm/i915/display/intel_tv.c              | 1 +
> >  drivers/gpu/drm/i915/display/intel_vdsc.c            | 1 +
> >  drivers/gpu/drm/i915/display/intel_vrr.c             | 1 +
> >  drivers/gpu/drm/i915/display/skl_scaler.c            | 1 +
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c   | 1 +
> >  drivers/gpu/drm/i915/display/vlv_dsi.c               | 1 +
> >  drivers/gpu/drm/i915/display/vlv_dsi_pll.c           | 1 +
> >  drivers/gpu/drm/i915/i915_irq.c                      | 1 +
> >  drivers/gpu/drm/i915/intel_pm.c                      | 1 +
> >  49 files changed, 55 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> > b/drivers/gpu/drm/i915/display/g4x_dp.c
> > index dfe3cf328d13..de0f358184aa 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > @@ -8,6 +8,7 @@
> >  #include "g4x_dp.h"
> >  #include "intel_audio.h"
> >  #include "intel_connector.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_link_training.h"
> > diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > index 78f93506ffaf..be352e9f0afc 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > @@ -8,6 +8,7 @@
> >  #include "g4x_hdmi.h"
> >  #include "intel_audio.h"
> >  #include "intel_connector.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dpio_phy.h"
> >  #include "intel_fifo_underrun.h"
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > index 393ef09ba0ac..9643c45a2209 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -10,6 +10,7 @@
> > =

> >  #include "intel_atomic.h"
> >  #include "intel_atomic_plane.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_fb.h"
> >  #include "intel_sprite.h"
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 781630a40f06..ce544e20f35c 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -33,6 +33,7 @@
> >  #include "intel_connector.h"
> >  #include "intel_crtc.h"
> >  #include "intel_ddi.h"
> > +#include "intel_de.h"
> >  #include "intel_dsi.h"
> >  #include "intel_panel.h"
> >  #include "intel_vdsc.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index b40e929a167e..c74c00a18f54 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -31,6 +31,7 @@
> >  #include "intel_atomic.h"
> >  #include "intel_audio.h"
> >  #include "intel_cdclk.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_lpe_audio.h"
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 1f0bd23bb883..f95896f7c113 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -26,6 +26,7 @@
> >  #include "intel_atomic.h"
> >  #include "intel_bw.h"
> >  #include "intel_cdclk.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_sideband.h"
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index 5fae69879adf..dab892d2251b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -23,6 +23,7 @@
> >   */
> > =

> >  #include "intel_color.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> > =

> >  #define CTM_COEFF_SIGN	(1ULL << 63)
> > diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> > b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> > index 5df57d16a401..487c54cd5982 100644
> > --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> > @@ -4,6 +4,7 @@
> >   */
> > =

> >  #include "intel_combo_phy.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> > =

> >  #define for_each_combo_phy(__dev_priv, __phy) \ diff --git
> > a/drivers/gpu/drm/i915/display/intel_crt.c
> > b/drivers/gpu/drm/i915/display/intel_crt.c
> > index 1aac8bead4eb..648f1c0d3d39 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> > @@ -38,6 +38,7 @@
> >  #include "intel_crt.h"
> >  #include "intel_crtc.h"
> >  #include "intel_ddi.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_fdi.h"
> >  #include "intel_fifo_underrun.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> > b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index 2345f2efd60b..2ab389b38694 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -13,6 +13,7 @@
> >  #include "intel_atomic.h"
> >  #include "intel_atomic_plane.h"
> >  #include "intel_cursor.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_display.h"
> >  #include "intel_fb.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 93d94d50b63d..0b382e40d594 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -34,6 +34,7 @@
> >  #include "intel_crtc.h"
> >  #include "intel_ddi.h"
> >  #include "intel_ddi_buf_trans.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_link_training.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > index 58d6417b8f3e..7bcdd5c12028 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > @@ -6,6 +6,7 @@
> >  #include "i915_drv.h"
> >  #include "intel_ddi.h"
> >  #include "intel_ddi_buf_trans.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> > =

> >  /* HDMI/DVI modes ignore everything but the last 2 items. So we share =
diff --git
> > a/drivers/gpu/drm/i915/display/intel_de.h
> > b/drivers/gpu/drm/i915/display/intel_de.h
> > index 00da10bf35f5..f56ecea88931 100644
> > --- a/drivers/gpu/drm/i915/display/intel_de.h
> > +++ b/drivers/gpu/drm/i915/display/intel_de.h
> > @@ -8,6 +8,7 @@
> > =

> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> > +#include "i915_trace.h"
> >  #include "intel_uncore.h"
> > =

> >  static inline u32
> > @@ -26,7 +27,12 @@ intel_de_posting_read(struct drm_i915_private *i915,
> > i915_reg_t reg)  static inline u32  intel_de_read_fw(struct drm_i915_pr=
ivate
> > *i915, i915_reg_t reg)  {
> > -	return intel_uncore_read_fw(&i915->uncore, reg);
> > +	u32 val;
> > +
> > +	val =3D intel_uncore_read_fw(&i915->uncore, reg);
> > +	trace_i915_reg_rw(false, reg, val, sizeof(val), true);
> > +
> > +	return val;
> >  }
> > =

> >  static inline void
> > @@ -39,6 +45,7 @@ intel_de_write(struct drm_i915_private *i915, i915_re=
g_t
> > reg, u32 val)  static inline void  intel_de_write_fw(struct drm_i915_pr=
ivate *i915,
> > i915_reg_t reg, u32 val)  {
> > +	trace_i915_reg_rw(true, reg, val, sizeof(val), true);
> >  	intel_uncore_write_fw(&i915->uncore, reg, val);  }
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 6280ba7f4c17..974a6a3f01cd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -79,6 +79,7 @@
> >  #include "intel_color.h"
> >  #include "intel_crtc.h"
> >  #include "intel_csr.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp_link_training.h"
> >  #include "intel_fbc.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 183c414d554a..d55ae83d037a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -10,6 +10,7 @@
> >  #include "intel_csr.h"
> >  #include "intel_display_debugfs.h"
> >  #include "intel_display_power.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_fbc.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index d48dd15a4f6e..653744d831af 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -11,6 +11,7 @@
> >  #include "intel_combo_phy.h"
> >  #include "intel_csr.h"
> >  #include "intel_display_power.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dpio_phy.h"
> >  #include "intel_hotplug.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index e2e707c4dff5..6d8cdaa36748 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -45,7 +45,6 @@
> >  #include <media/cec-notifier.h>
> > =

> >  #include "i915_drv.h"
> > -#include "intel_de.h"
> > =

> >  struct drm_printer;
> >  struct __intel_global_objs_state;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index dfa7da928ae5..cbbba8e33b24 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -46,6 +46,7 @@
> >  #include "intel_audio.h"
> >  #include "intel_connector.h"
> >  #include "intel_ddi.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_aux.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index d7c3a74b81a3..d697d169e8c1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -12,6 +12,7 @@
> >  #include <drm/drm_print.h>
> > =

> >  #include "intel_ddi.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_hdcp.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index fc138049f67c..03be473e0ea7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -34,6 +34,7 @@
> >  #include "intel_connector.h"
> >  #include "intel_crtc.h"
> >  #include "intel_ddi.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_hdcp.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> > b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> > index 514c4a7adffc..48507ed79950 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> > @@ -23,6 +23,7 @@
> > =

> >  #include "display/intel_dp.h"
> > =

> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dpio_phy.h"
> >  #include "intel_sideband.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> > b/drivers/gpu/drm/i915/display/intel_dpll.c
> > index 9114953f57f1..89635da9f6f6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> > @@ -4,6 +4,7 @@
> >   */
> >  #include <linux/kernel.h>
> >  #include "intel_crtc.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_display.h"
> >  #include "intel_dpll.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index da2ff0b3ceac..18bfe8d09277 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -21,6 +21,7 @@
> >   * DEALINGS IN THE SOFTWARE.
> >   */
> > =

> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dpio_phy.h"
> >  #include "intel_dpll.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index 857126822a88..62a8a69f9f5d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -5,6 +5,7 @@
> >   */
> > =

> >  #include "i915_drv.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> > =

> >  #define DSB_BUF_SIZE    (2 * PAGE_SIZE)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
> > b/drivers/gpu/drm/i915/display/intel_dvo.c
> > index 090cd76266c6..77419f8c05e9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> > @@ -33,6 +33,7 @@
> > =

> >  #include "i915_drv.h"
> >  #include "intel_connector.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dvo.h"
> >  #include "intel_dvo_dev.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 91dad8004c34..b2f3ac846f5b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -43,6 +43,7 @@
> >  #include "i915_drv.h"
> >  #include "i915_trace.h"
> >  #include "i915_vgpu.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_fbc.h"
> >  #include "intel_frontbuffer.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c
> > b/drivers/gpu/drm/i915/display/intel_fdi.c
> > index d719cd9c5b73..cef1061fd6cb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> > @@ -5,6 +5,7 @@
> >  #include "intel_atomic.h"
> >  #include "intel_ddi.h"
> >  #include "intel_ddi_buf_trans.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_fdi.h"
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > index 0fce9fd6e0a9..3315aa1d4d5a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > @@ -27,6 +27,7 @@
> > =

> >  #include "i915_drv.h"
> >  #include "i915_trace.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_fbc.h"
> >  #include "intel_fifo_underrun.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c
> > b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > index 17ab3cb81e02..fcf47f98ea36 100644
> > --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> > +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > @@ -34,6 +34,7 @@
> >  #include <drm/drm_hdcp.h>
> > =

> >  #include "i915_drv.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_gmbus.h"
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index d254fe67ab7f..ebc2e32aec0b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -18,6 +18,7 @@
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> >  #include "intel_display_power.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_hdcp.h"
> >  #include "intel_sideband.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 46de56af33db..28e297296160 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -43,6 +43,7 @@
> >  #include "intel_atomic.h"
> >  #include "intel_connector.h"
> >  #include "intel_ddi.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_gmbus.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index ec0048024746..05d2d750fa53 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -27,6 +27,7 @@
> >  #include <drm/drm_dp_dual_mode_helper.h>  #include <drm/drm_edid.h>
> > =

> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_lspcon.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> > b/drivers/gpu/drm/i915/display/intel_lvds.c
> > index dd12d15f47c7..7f40e9f60bc2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> > @@ -41,6 +41,7 @@
> >  #include "i915_drv.h"
> >  #include "intel_atomic.h"
> >  #include "intel_connector.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_gmbus.h"
> >  #include "intel_lvds.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c
> > b/drivers/gpu/drm/i915/display/intel_overlay.c
> > index fffbde4256db..83c25d84c391 100644
> > --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> > +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> > @@ -34,6 +34,7 @@
> > =

> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_frontbuffer.h"
> >  #include "intel_overlay.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> > b/drivers/gpu/drm/i915/display/intel_panel.c
> > index 551fcaa77c2c..3a52d4eadd9d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -35,6 +35,7 @@
> >  #include <linux/pwm.h>
> > =

> >  #include "intel_connector.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp_aux_backlight.h"
> >  #include "intel_dsi_dcs_backlight.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> > b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> > index acc64b87d29f..8ac263f471be 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> > @@ -30,6 +30,7 @@
> >  #include <linux/seq_file.h>
> > =

> >  #include "intel_atomic.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_pipe_crc.h"
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 0fd28902d779..a36ec4a818ff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -5,6 +5,7 @@
> > =

> >  #include "g4x_dp.h"
> >  #include "i915_drv.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_dpll.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index c61e1d774667..e3c30dcadcd1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -27,6 +27,7 @@
> > =

> >  #include "i915_drv.h"
> >  #include "intel_atomic.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp_aux.h"
> >  #include "intel_hdmi.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > index f6eb95c717d2..e4f91d7a5c60 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > @@ -39,6 +39,7 @@
> >  #include "intel_atomic.h"
> >  #include "intel_connector.h"
> >  #include "intel_crtc.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_fifo_underrun.h"
> >  #include "intel_gmbus.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > index acbf4e63b245..4ae9a7455b23 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -43,6 +43,7 @@
> >  #include "i915_trace.h"
> >  #include "i915_vgpu.h"
> >  #include "intel_atomic_plane.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_frontbuffer.h"
> >  #include "intel_sprite.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_tv.c
> > b/drivers/gpu/drm/i915/display/intel_tv.c
> > index 2c5c77693474..ce73ebdfc669 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tv.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> > @@ -36,6 +36,7 @@
> > =

> >  #include "i915_drv.h"
> >  #include "intel_connector.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_hotplug.h"
> >  #include "intel_tv.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 3a21c65ffa85..42e3f9f7a37e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -7,6 +7,7 @@
> >   */
> > =

> >  #include "i915_drv.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dsi.h"
> >  #include "intel_vdsc.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index a9c2b2fd9252..046210ae1de0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -5,6 +5,7 @@
> >   */
> > =

> >  #include "i915_drv.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_vrr.h"
> > =

> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index 17a98cb627df..394b7bbf48d8 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -2,6 +2,7 @@
> >  /*
> >   * Copyright =A9 2020 Intel Corporation
> >   */
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 553bc937ad90..0d34a5ad4e2b 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -10,6 +10,7 @@
> > =

> >  #include "i915_drv.h"
> >  #include "intel_atomic_plane.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_fb.h"
> >  #include "intel_pm.h"
> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > index ac0553d492aa..084c9c43b2ed 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > @@ -34,6 +34,7 @@
> >  #include "intel_atomic.h"
> >  #include "intel_connector.h"
> >  #include "intel_crtc.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dsi.h"
> >  #include "intel_fifo_underrun.h"
> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> > b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> > index 4070b00c3690..90185b219447 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> > @@ -28,6 +28,7 @@
> >  #include <linux/kernel.h>
> > =

> >  #include "i915_drv.h"
> > +#include "intel_de.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dsi.h"
> >  #include "intel_sideband.h"
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
> > index 798ecc718e3f..f6967a93ec7a 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -35,6 +35,7 @@
> >  #include <drm/drm_drv.h>
> >  #include <drm/drm_irq.h>
> > =

> > +#include "display/intel_de.h"
> >  #include "display/intel_display_types.h"
> >  #include "display/intel_fifo_underrun.h"
> >  #include "display/intel_hotplug.h"
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index cd584474d1e8..06d5b7cc8b62 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -35,6 +35,7 @@
> >  #include "display/intel_atomic.h"
> >  #include "display/intel_atomic_plane.h"
> >  #include "display/intel_bw.h"
> > +#include "display/intel_de.h"
> >  #include "display/intel_display_types.h"
> >  #include "display/intel_fbc.h"
> >  #include "display/intel_sprite.h"
> > --
> > 2.26.3
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
