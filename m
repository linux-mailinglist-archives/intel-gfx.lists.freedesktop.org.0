Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CDE129BCA
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 00:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4166E4F9;
	Mon, 23 Dec 2019 23:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62BE56E09E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 23:23:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 15:23:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="229469864"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga002.jf.intel.com with ESMTP; 23 Dec 2019 15:23:06 -0800
Date: Mon, 23 Dec 2019 15:23:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191223232306.GT2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
 <20191223173244.30742-3-lucas.demarchi@intel.com>
 <20191223225831.GK2877816@mdroper-desk1.amr.corp.intel.com>
 <20191223232057.ingwx7mre7omoi7c@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223232057.ingwx7mre7omoi7c@ldmartin-desk1>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v3 02/10] drm/i915: prefer 3-letter acronym
 for pineview
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

On Mon, Dec 23, 2019 at 03:20:57PM -0800, Lucas De Marchi wrote:
> On Mon, Dec 23, 2019 at 02:58:31PM -0800, Matt Roper wrote:
> > On Mon, Dec 23, 2019 at 09:32:36AM -0800, Lucas De Marchi wrote:
> > > We are currently using a mix of platform name and acronym to name the
> > > functions. Let's prefer the acronym as it should be clear what platfo=
rm
> > > it's about and it's shorter, so it doesn't go over 80 columns in a few
> > > cases. This converts pineview to pnv where appropriate.
> > =

> > Do you also want to convert watermark stuff in intel_pm.c like
> > pineview_display_wm, PINEVIEW_DISPLAY_FIFO, PINEVIEW_MAX_WM, etc.?
> =

> pineview_display_wm, yes. I missed that.
> =

> I tried to avoid the constants and IS_<PLATFORM> macros as it would make
> it too ugly to review. Those can be done on top.

Okay.  There's also:

pineview_display_hplloff_wm
pineview_cursor_wm
pineview_cursor_hplloff_wm
pineview_update_wm

too.


Matt


> =

> Thanks
> Lucas De Marchi
> =

> > =

> > =

> > Matt
> > =

> > > =

> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> > > Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
> > >  drivers/gpu/drm/i915/intel_pm.c              | 4 ++--
> > >  2 files changed, 6 insertions(+), 6 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 1860da0a493e..5d43024f35aa 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -369,7 +369,7 @@ static const struct intel_limit intel_limits_g4x_=
dual_channel_lvds =3D {
> > >  	},
> > >  };
> > > =

> > > -static const struct intel_limit intel_limits_pineview_sdvo =3D {
> > > +static const struct intel_limit pnv_limits_sdvo =3D {
> > >  	.dot =3D { .min =3D 20000, .max =3D 400000},
> > >  	.vco =3D { .min =3D 1700000, .max =3D 3500000 },
> > >  	/* Pineview's Ncounter is a ring counter */
> > > @@ -384,7 +384,7 @@ static const struct intel_limit intel_limits_pine=
view_sdvo =3D {
> > >  		.p2_slow =3D 10, .p2_fast =3D 5 },
> > >  };
> > > =

> > > -static const struct intel_limit intel_limits_pineview_lvds =3D {
> > > +static const struct intel_limit pnv_limits_lvds =3D {
> > >  	.dot =3D { .min =3D 20000, .max =3D 400000 },
> > >  	.vco =3D { .min =3D 1700000, .max =3D 3500000 },
> > >  	.n =3D { .min =3D 3, .max =3D 6 },
> > > @@ -8795,9 +8795,9 @@ static int pnv_crtc_compute_clock(struct intel_=
crtc *crtc,
> > >  			DRM_DEBUG_KMS("using SSC reference clock of %d kHz\n", refclk);
> > >  		}
> > > =

> > > -		limit =3D &intel_limits_pineview_lvds;
> > > +		limit =3D &pnv_limits_lvds;
> > >  	} else {
> > > -		limit =3D &intel_limits_pineview_sdvo;
> > > +		limit =3D &pnv_limits_sdvo;
> > >  	}
> > > =

> > >  	if (!crtc_state->clock_set &&
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/i=
ntel_pm.c
> > > index 31ec82337e4f..eab3b029e98a 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -140,7 +140,7 @@ static void glk_init_clock_gating(struct drm_i915=
_private *dev_priv)
> > > =

> > >  }
> > > =

> > > -static void i915_pineview_get_mem_freq(struct drm_i915_private *dev_=
priv)
> > > +static void pnv_get_mem_freq(struct drm_i915_private *dev_priv)
> > >  {
> > >  	u32 tmp;
> > > =

> > > @@ -7180,7 +7180,7 @@ void intel_init_pm(struct drm_i915_private *dev=
_priv)
> > >  {
> > >  	/* For cxsr */
> > >  	if (IS_PINEVIEW(dev_priv))
> > > -		i915_pineview_get_mem_freq(dev_priv);
> > > +		pnv_get_mem_freq(dev_priv);
> > >  	else if (IS_GEN(dev_priv, 5))
> > >  		i915_ironlake_get_mem_freq(dev_priv);
> > > =

> > > --
> > > 2.24.0
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =

> > -- =

> > Matt Roper
> > Graphics Software Engineer
> > VTT-OSGC Platform Enablement
> > Intel Corporation
> > (916) 356-2795

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
