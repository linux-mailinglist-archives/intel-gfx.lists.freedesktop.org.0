Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB3C603AA5
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 09:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360ED10EA7F;
	Wed, 19 Oct 2022 07:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B061A10EA7F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 07:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666164590; x=1697700590;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xf7x2S8yFYeiF2556LF5OxBNzvNjI1nR36DxG8tPAv4=;
 b=ENk72U5q30EX/AJoc+zrizJXFr8dS5h17VQoSGLbpO8KjkLlX77OxAhG
 3u2SlFKt6814AU6PzL83dfzUxyCt6JCPo0GlVhmwlEk0W1EpFiEQELPdz
 C6r29+bPSFQxnOuL0FEs3LuFNd//Jv1foFgH0Q5QtTIy7OkQCaC1XOEpu
 c/mYVprQfyNojvtbDs0J8ABBdiuMk0QsVqKEHWeYYzqM0WWCYv1/K48mx
 RQdHDcsM2MBAz6O8S4EOSl7IL2xr2vIKSEboshOHwJwrko97ENHoUvSXM
 4aUQh0tzSrn8BGrCv2x14FvSmTHYxVk9e2S2dXczNMrsnSFkJgIzngBow Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="286722327"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="286722327"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 00:29:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="958199859"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="958199859"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga005.fm.intel.com with SMTP; 19 Oct 2022 00:29:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Oct 2022 10:29:47 +0300
Date: Wed, 19 Oct 2022 10:29:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <Y0+na3ypxfNCjS90@intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
 <20220929071521.26612-10-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360D74E4C70C8D53892C2EAF42B9@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB6360D74E4C70C8D53892C2EAF42B9@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Get rid of
 glk_load_degamma_lut_linear()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 19, 2022 at 07:20:13AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville Syrjala
> > Sent: Thursday, September 29, 2022 12:45 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 09/10] drm/i915: Get rid of
> > glk_load_degamma_lut_linear()
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Since we now have a place (pre_csc_lut) to stuff a purely internal LUT we can
> > replace glk_load_degamma_lut_linear() with such a thing and just rely on the normal
> > glk_load_degamma_lut() to load it as well.
> > 
> > drm_mode_config_cleanup() will clean this up for us.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c    | 110 +++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_color.h    |   1 +
> >  drivers/gpu/drm/i915/display/intel_display.c  |   4 +
> >  .../gpu/drm/i915/display/intel_display_core.h |   5 +
> >  4 files changed, 79 insertions(+), 41 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index 575d2a23682a..de530bf1aba1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -557,6 +557,32 @@ static void skl_color_commit_arm(const struct
> > intel_crtc_state *crtc_state)
> >  			  crtc_state->csc_mode);
> >  }
> > 
> > +static struct drm_property_blob *
> > +create_linear_lut(struct drm_i915_private *i915, int lut_size) {
> > +	struct drm_property_blob *blob;
> > +	struct drm_color_lut *lut;
> > +	int i;
> > +
> > +	blob = drm_property_create_blob(&i915->drm,
> > +					sizeof(struct drm_color_lut) * lut_size,
> > +					NULL);
> > +	if (IS_ERR(blob))
> > +		return NULL;
> > +
> > +	lut = blob->data;
> > +
> > +	for (i = 0; i < lut_size; i++) {
> > +		u16 val = 0xffff * i / (lut_size - 1);
> > +
> > +		lut[i].red = val;
> > +		lut[i].green = val;
> > +		lut[i].blue = val;
> > +	}
> > +
> > +	return blob;
> > +}
> > +
> >  static void i9xx_load_lut_8(struct intel_crtc *crtc,
> >  			    const struct drm_property_blob *blob)  { @@ -871,53
> > +897,14 @@ static void glk_load_degamma_lut(const struct intel_crtc_state
> > *crtc_state,
> >  	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);  }
> > 
> > -static void glk_load_degamma_lut_linear(const struct intel_crtc_state *crtc_state) -
> > {
> > -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > -	enum pipe pipe = crtc->pipe;
> > -	int i, lut_size = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
> > -
> > -	/*
> > -	 * When setting the auto-increment bit, the hardware seems to
> > -	 * ignore the index bits, so we need to reset it to index 0
> > -	 * separately.
> > -	 */
> > -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
> > -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
> > -			  PRE_CSC_GAMC_AUTO_INCREMENT);
> > -
> > -	for (i = 0; i < lut_size; i++) {
> > -		u32 v = (i << 16) / (lut_size - 1);
> > -
> > -		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), v);
> > -	}
> > -
> > -	/* Clamp values > 1.0. */
> > -	while (i++ < 35)
> > -		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
> > -
> > -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
> > -}
> > -
> >  static void glk_load_luts(const struct intel_crtc_state *crtc_state)  {
> >  	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
> >  	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > 
> > -	/*
> > -	 * On GLK+ both pipe CSC and degamma LUT are controlled
> > -	 * by csc_enable. Hence for the cases where the CSC is
> > -	 * needed but degamma LUT is not we need to load a
> > -	 * linear degamma LUT. In fact we'll just always load
> > -	 * the degama LUT so that we don't have to reload
> > -	 * it every time the pipe CSC is being enabled.
> > -	 */
> >  	if (pre_csc_lut)
> >  		glk_load_degamma_lut(crtc_state, pre_csc_lut);
> > -	else
> > -		glk_load_degamma_lut_linear(crtc_state);
> > 
> >  	switch (crtc_state->gamma_mode) {
> >  	case GAMMA_MODE_MODE_8BIT:
> > @@ -1360,11 +1347,17 @@ void intel_color_assert_luts(const struct
> > intel_crtc_state *crtc_state)
> >  	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> > 
> >  	/* make sure {pre,post}_csc_lut were correctly assigned */
> > -	if (DISPLAY_VER(i915) >= 10 || HAS_GMCH(i915)) {
> > +	if (DISPLAY_VER(i915) >= 11 || HAS_GMCH(i915)) {
> >  		drm_WARN_ON(&i915->drm,
> >  			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut);
> >  		drm_WARN_ON(&i915->drm,
> >  			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
> > +	} else if (DISPLAY_VER(i915) == 10) {
> > +		drm_WARN_ON(&i915->drm,
> > +			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut
> > &&
> > +			    crtc_state->pre_csc_lut != i915-
> > >display.color.glk_linear_degamma_lut);
> > +		drm_WARN_ON(&i915->drm,
> > +			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
> >  	} else {
> >  		drm_WARN_ON(&i915->drm,
> >  			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut
> > && @@ -1619,6 +1612,25 @@ static u32 glk_gamma_mode(const struct
> > intel_crtc_state *crtc_state)
> >  		return GAMMA_MODE_MODE_10BIT;
> >  }
> > 
> > +static void glk_assign_luts(struct intel_crtc_state *crtc_state) {
> > +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> > +
> > +	intel_assign_luts(crtc_state);
> > +
> > +	/*
> > +	 * On GLK+ both pipe CSC and degamma LUT are controlled
> > +	 * by csc_enable. Hence for the cases where the CSC is
> > +	 * needed but degamma LUT is not we need to load a
> > +	 * linear degamma LUT. In fact we'll just always load
> > +	 * the degama LUT so that we don't have to reload
> > +	 * it every time the pipe CSC is being enabled.
> > +	 */
> > +	if (!crtc_state->pre_csc_lut)
> > +		drm_property_replace_blob(&crtc_state->pre_csc_lut,
> > +					  i915-
> > >display.color.glk_linear_degamma_lut);
> > +}
> > +
> >  static int glk_color_check(struct intel_crtc_state *crtc_state)  {
> >  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> > @@ -1653,7 +1665,7 @@ static int glk_color_check(struct intel_crtc_state
> > *crtc_state)
> >  	if (ret)
> >  		return ret;
> > 
> > -	intel_assign_luts(crtc_state);
> > +	glk_assign_luts(crtc_state);
> > 
> >  	crtc_state->preload_luts = glk_can_preload_luts(crtc_state);
> > 
> > @@ -2283,6 +2295,22 @@ void intel_crtc_color_init(struct intel_crtc *crtc)
> >  				   INTEL_INFO(dev_priv)-
> > >display.color.gamma_lut_size);
> >  }
> > 
> > +int intel_color_init(struct drm_i915_private *i915) {
> > +	struct drm_property_blob *blob;
> > +
> > +	if (DISPLAY_VER(i915) != 10)
> > +		return 0;
> 
> This is very specific to Gen10. Should we rename intel_color_init which sounds more global
> to a gen10 specific name.

I guess I could have added a glk specific function for this and
call it from intel_color_init(), but should be easy enough to do
that refcatoring if/when someone needs to add more stuff to
intel_color_init().

> 
> Will leave that to your discretion, don't see any issues logically
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Thanks.

-- 
Ville Syrjälä
Intel
