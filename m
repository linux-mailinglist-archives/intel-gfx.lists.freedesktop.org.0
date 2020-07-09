Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FED21A183
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 15:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814136E1CD;
	Thu,  9 Jul 2020 13:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8158C6E1CD
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 13:57:47 +0000 (UTC)
IronPort-SDR: rIZL+3WRVw25rJZlVknSgSp10ZU8icMSRFT+PaI3tM3hlNW9zARvHOxSMwhs4J3SzcLHn/8sfi
 pjwFhse/Loqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="146081596"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="146081596"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 06:57:46 -0700
IronPort-SDR: djrV/PT+0tvaL1pKYXdrjI6xTX76OY3gsgToDVTkg7hQc7jtksHJEoD7HJw/RsEzgAnNyfa9W4
 GoZ65yugSn7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="298078417"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 09 Jul 2020 06:57:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jul 2020 16:57:43 +0300
Date: Thu, 9 Jul 2020 16:57:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200709135743.GA6112@intel.com>
References: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
 <20200708131223.9519-2-ville.syrjala@linux.intel.com>
 <5493d75083c104576c360dbba02f44f3a9d37479.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5493d75083c104576c360dbba02f44f3a9d37479.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Don't do
 WaFbcTurnOffFbcWatermark for glk
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

On Thu, Jul 09, 2020 at 12:19:07AM +0000, Souza, Jose wrote:
> On Wed, 2020-07-08 at 16:12 +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > GLK supposedly does not need WaFbcTurnOffFbcWatermark,
> > so let's not apply it.
> =

> WA 0562 from BSpec 21664 says it applies to all GEN9 but it is probably r=
eferring to all display GEN9.

Yeah, and it doesn't show the GLK tag, nor does it show up if you
filter for GLK.

> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Thanks. Series pushed.

> =

> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 18 ++++++++++++++++--
> >  1 file changed, 16 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index 63d1a4882727..8760e1ba1eee 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -94,10 +94,8 @@ static void gen9_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
> >  	I915_WRITE(GEN8_CHICKEN_DCPR_1,
> >  		   I915_READ(GEN8_CHICKEN_DCPR_1) | MASK_WAKEMEM);
> >  =

> > -	/* WaFbcTurnOffFbcWatermark:skl,bxt,kbl,cfl */
> >  	/* WaFbcWakeMemOn:skl,bxt,kbl,glk,cfl */
> >  	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> > -		   DISP_FBC_WM_DIS |
> >  		   DISP_FBC_MEMORY_WAKE);
> >  =

> >  	/* WaFbcHighMemBwCorruptionAvoidance:skl,bxt,kbl,cfl */
> > @@ -140,6 +138,10 @@ static void bxt_init_clock_gating(struct drm_i915_=
private *dev_priv)
> >  	 * application, using batch buffers or any other means.
> >  	 */
> >  	I915_WRITE(RM_TIMEOUT, MMIO_TIMEOUT_US(950));
> > +
> > +	/* WaFbcTurnOffFbcWatermark:bxt */
> > +	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> > +		   DISP_FBC_WM_DIS);
> >  }
> >  =

> >  static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
> > @@ -7189,6 +7191,10 @@ static void cfl_init_clock_gating(struct drm_i91=
5_private *dev_priv)
> >  	cnp_init_clock_gating(dev_priv);
> >  	gen9_init_clock_gating(dev_priv);
> >  =

> > +	/* WaFbcTurnOffFbcWatermark:cfl */
> > +	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> > +		   DISP_FBC_WM_DIS);
> > +
> >  	/* WaFbcNukeOnHostModify:cfl */
> >  	I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
> >  		   ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
> > @@ -7208,6 +7214,10 @@ static void kbl_init_clock_gating(struct drm_i91=
5_private *dev_priv)
> >  		I915_WRITE(GEN6_UCGCTL1, I915_READ(GEN6_UCGCTL1) |
> >  			   GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
> >  =

> > +	/* WaFbcTurnOffFbcWatermark:kbl */
> > +	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> > +		   DISP_FBC_WM_DIS);
> > +
> >  	/* WaFbcNukeOnHostModify:kbl */
> >  	I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
> >  		   ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
> > @@ -7221,6 +7231,10 @@ static void skl_init_clock_gating(struct drm_i91=
5_private *dev_priv)
> >  	I915_WRITE(FBC_LLC_READ_CTRL, I915_READ(FBC_LLC_READ_CTRL) |
> >  		   FBC_LLC_FULLY_OPEN);
> >  =

> > +	/* WaFbcTurnOffFbcWatermark:skl */
> > +	I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
> > +		   DISP_FBC_WM_DIS);
> > +
> >  	/* WaFbcNukeOnHostModify:skl */
> >  	I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
> >  		   ILK_DPFC_NUKE_ON_ANY_MODIFICATION);

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
