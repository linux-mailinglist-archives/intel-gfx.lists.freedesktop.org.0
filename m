Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF15036F632
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 09:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F0666E4B7;
	Fri, 30 Apr 2021 07:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C5076E4B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 07:12:58 +0000 (UTC)
IronPort-SDR: /GPSvCqtkj47PiPtemmc7npcCTj/QSrQ3NyBNN77NyV0lTWsp783Eevrs+V/iNRE8M6mI7Y9mf
 tnALH5KmQOvw==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="195108548"
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="195108548"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 00:12:57 -0700
IronPort-SDR: o8gnyhEXyE60xxrMvP9bvZZeVtO3uZx3bs03Pa4lNpbOZp40Mn9F01smKwQchVZwliB438/zKs
 V/PLjbX0X3uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="466701236"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 30 Apr 2021 00:12:57 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 30 Apr 2021 00:12:56 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 30 Apr 2021 12:42:53 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Fri, 30 Apr 2021 12:42:53 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v3 15/16] drm/i915/pxp: black pixels on pxp disabled
Thread-Index: AQHXJCXNsfnP167iqEq+t+70smfg8arIAEMAgACJJ4CABEu+EA==
Date: Fri, 30 Apr 2021 07:12:53 +0000
Message-ID: <96d9782a7e864448a4d311f4eeaa6923@intel.com>
References: <20210328225709.18541-16-daniele.ceraolospurio@intel.com>
 <20210427104504.2720-1-anshuman.gupta@intel.com> <YIhePcRcpKEoBmAE@intel.com>
In-Reply-To: <YIhePcRcpKEoBmAE@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 15/16] drm/i915/pxp: black pixels on pxp
 disabled
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
Cc: "Gaurav, Kumar" <kumar.gaurav@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, April 28, 2021 12:26 AM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Vivi, Rodrigo <rodrigo.vivi@intel.co=
m>;
> Gaurav, Kumar <kumar.gaurav@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Ceraolo Spurio, Daniele
> <daniele.ceraolospurio@intel.com>
> Subject: Re: [PATCH v3 15/16] drm/i915/pxp: black pixels on pxp disabled
> =

> On Tue, Apr 27, 2021 at 04:15:04PM +0530, Anshuman Gupta wrote:
> > When protected sufaces has flipped and pxp session is disabled,
> > display black pixels by using plane color CTM correction.
> >
> > v2:
> > - Display black pixels in aysnc flip too.	=

> =

> We can't change any of that with an async flip.
I was thinking of an scenario , when application flip the protected surface=
s with synchronous flips
and driver has enable the plane decryption, can application issue an interm=
ediate async flip with
protected surfaces afterwards ?
If above is possible, is it possible to display black pixels in case of pxp=
 session invalidation at the time of
Plane commit?   =

Thanks,
Anshuman
> =

> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> > Cc: Shankar Uma <uma.shankar@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Daniele Ceraolo Spurio
> > <daniele.ceraolospurio@intel.com>
> > ---
> >  .../drm/i915/display/skl_universal_plane.c    | 51 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/i915_reg.h               | 46 +++++++++++++++++
> >  2 files changed, 95 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 74489217e580..a666b86df726 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -934,6 +934,33 @@ static u32 glk_plane_color_ctl(const struct
> intel_crtc_state *crtc_state,
> >  	return plane_color_ctl;
> >  }
> >
> > +static void intel_load_plane_csc_black(struct intel_plane
> > +*intel_plane) {
> > +	struct drm_i915_private *dev_priv =3D to_i915(intel_plane->base.dev);
> > +	enum pipe pipe =3D intel_plane->pipe;
> > +	enum plane_id plane =3D intel_plane->id;
> > +	u16 postoff =3D 0;
> > +
> > +	drm_dbg_kms(&dev_priv->drm, "plane color CTM to black  %s:%d\n",
> > +		    intel_plane->base.name, plane);
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 0), 0);
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 1), 0);
> > +
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 2), 0);
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 3), 0);
> > +
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 4), 0);
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 5), 0);
> > +
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_PREOFF(pipe, plane, 0), 0);
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_PREOFF(pipe, plane, 1), 0);
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_PREOFF(pipe, plane, 2), 0);
> > +
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_POSTOFF(pipe, plane, 0),
> postoff);
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_POSTOFF(pipe, plane, 1),
> postoff);
> > +	intel_de_write_fw(dev_priv, PLANE_CSC_POSTOFF(pipe, plane, 2),
> > +postoff); }
> > +
> >  static void
> >  skl_program_plane(struct intel_plane *plane,
> >  		  const struct intel_crtc_state *crtc_state, @@ -1039,13
> +1066,22
> > @@ skl_program_plane(struct intel_plane *plane,
> >  	 */
> >  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> >  	plane_surf =3D intel_plane_ggtt_offset(plane_state) + surf_addr;
> > +	plane_color_ctl =3D intel_de_read_fw(dev_priv, PLANE_COLOR_CTL(pipe,
> > +plane_id));
> >
> >  	if (intel_pxp_is_active(&dev_priv->gt.pxp) &&
> > -	    plane_state->plane_decryption)
> > +	    plane_state->plane_decryption) {
> >  		plane_surf |=3D PLANE_SURF_DECRYPTION_ENABLED;
> > -	else
> > +		plane_color_ctl &=3D ~PLANE_COLOR_PLANE_CSC_ENABLE;
> > +	} else if (plane_state->plane_decryption) {
> > +		intel_load_plane_csc_black(plane);
> > +		plane_color_ctl |=3D PLANE_COLOR_PLANE_CSC_ENABLE;
> > +	} else {
> >  		plane_surf &=3D ~PLANE_SURF_DECRYPTION_ENABLED;
> > +		plane_color_ctl &=3D ~PLANE_COLOR_PLANE_CSC_ENABLE;
> > +	}
> >
> > +	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
> > +			  plane_color_ctl);
> >  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
> >
> >  	if (plane_state->scaler_id >=3D 0)
> > @@ -1066,6 +1102,7 @@ skl_plane_async_flip(struct intel_plane *plane,
> >  	enum pipe pipe =3D plane->pipe;
> >  	u32 surf_addr =3D plane_state->view.color_plane[0].offset;
> >  	u32 plane_ctl =3D plane_state->ctl;
> > +	u32 plane_color_ctl =3D 0;
> >
> >  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state);
> >
> > @@ -1075,6 +1112,16 @@ skl_plane_async_flip(struct intel_plane *plane,
> >  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> >
> >  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> > +
> > +	if (!intel_pxp_is_active(&dev_priv->gt.pxp) &&
> > +	    plane_state->plane_decryption) {
> > +		plane_color_ctl =3D intel_de_read_fw(dev_priv,
> PLANE_COLOR_CTL(pipe, plane_id));
> > +		intel_load_plane_csc_black(plane);
> > +		plane_color_ctl |=3D PLANE_COLOR_PLANE_CSC_ENABLE;
> > +		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe,
> plane_id),
> > +				  plane_color_ctl);
> > +	}
> > +
> >  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> >  			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index fbaf9199001d..0a4deca1098b
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -7119,6 +7119,7 @@ enum {
> >  #define _PLANE_COLOR_CTL_3_A			0x703CC /* GLK+ */
> >  #define   PLANE_COLOR_PIPE_GAMMA_ENABLE		(1 << 30) /*
> Pre-ICL */
> >  #define   PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE	(1 << 28)
> > +#define   PLANE_COLOR_PLANE_CSC_ENABLE			(1 <<
> 21) /* ICL+ */
> >  #define   PLANE_COLOR_INPUT_CSC_ENABLE		(1 << 20) /* ICL+ */
> >  #define   PLANE_COLOR_PIPE_CSC_ENABLE		(1 << 23) /* Pre-ICL */
> >  #define   PLANE_COLOR_CSC_MODE_BYPASS			(0 << 17)
> > @@ -11191,6 +11192,51 @@ enum skl_power_gate {
> >  					_PAL_PREC_MULTI_SEG_DATA_A, \
> >  					_PAL_PREC_MULTI_SEG_DATA_B)
> >
> > +#define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) +
> > +(i) * 4)
> > +
> > +/* Plane CSC Registers */
> > +#define _PLANE_CSC_RY_GY_1_A	0x70210
> > +#define _PLANE_CSC_RY_GY_2_A	0x70310
> > +
> > +#define _PLANE_CSC_RY_GY_1_B	0x71210
> > +#define _PLANE_CSC_RY_GY_2_B	0x71310
> > +
> > +#define _PLANE_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_1_A,
> \
> > +					      _PLANE_CSC_RY_GY_1_B)
> > +#define _PLANE_CSC_RY_GY_2(pipe)	_PIPE(pipe,
> _PLANE_INPUT_CSC_RY_GY_2_A, \
> > +					      _PLANE_INPUT_CSC_RY_GY_2_B)
> > +#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane,
> \
> > +
> _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
> > +
> _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)
> > +
> > +#define _PLANE_CSC_PREOFF_HI_1_A		0x70228
> > +#define _PLANE_CSC_PREOFF_HI_2_A		0x70328
> > +
> > +#define _PLANE_CSC_PREOFF_HI_1_B		0x71228
> > +#define _PLANE_CSC_PREOFF_HI_2_B		0x71328
> > +
> > +#define _PLANE_CSC_PREOFF_HI_1(pipe)	_PIPE(pipe,
> _PLANE_CSC_PREOFF_HI_1_A, \
> > +					      _PLANE_CSC_PREOFF_HI_1_B)
> > +#define _PLANE_CSC_PREOFF_HI_2(pipe)	_PIPE(pipe,
> _PLANE_CSC_PREOFF_HI_2_A, \
> > +					      _PLANE_CSC_PREOFF_HI_2_B)
> > +#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane,
> _PLANE_CSC_PREOFF_HI_1(pipe) + \
> > +							    (index) * 4,
> _PLANE_CSC_PREOFF_HI_2(pipe) + \
> > +							    (index) * 4)
> > +
> > +#define _PLANE_CSC_POSTOFF_HI_1_A		0x70234
> > +#define _PLANE_CSC_POSTOFF_HI_2_A		0x70334
> > +
> > +#define _PLANE_CSC_POSTOFF_HI_1_B		0x71234
> > +#define _PLANE_CSC_POSTOFF_HI_2_B		0x71334
> > +
> > +#define _PLANE_CSC_POSTOFF_HI_1(pipe)	_PIPE(pipe,
> _PLANE_CSC_POSTOFF_HI_1_A, \
> > +					      _PLANE_CSC_POSTOFF_HI_1_B)
> > +#define _PLANE_CSC_POSTOFF_HI_2(pipe)	_PIPE(pipe,
> _PLANE_CSC_POSTOFF_HI_2_A, \
> > +					      _PLANE_CSC_POSTOFF_HI_2_B)
> > +#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane,
> _PLANE_CSC_POSTOFF_HI_1(pipe) + \
> > +							    (index) * 4,
> _PLANE_CSC_POSTOFF_HI_2(pipe) + \
> > +							    (index) * 4)
> > +
> >  /* pipe CSC & degamma/gamma LUTs on CHV */
> >  #define _CGM_PIPE_A_CSC_COEFF01	(VLV_DISPLAY_BASE + 0x67900)
> >  #define _CGM_PIPE_A_CSC_COEFF23	(VLV_DISPLAY_BASE + 0x67904)
> > --
> > 2.26.2
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
