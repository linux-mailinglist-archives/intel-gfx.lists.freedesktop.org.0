Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51866623C8C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 08:23:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CEA410E66C;
	Thu, 10 Nov 2022 07:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D00C310E66C
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 07:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668065008; x=1699601008;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kjl5DQG79z8lTHTSnv+cJkQdDTV9MHF7oUVcjmesx+M=;
 b=NCQJ93hMJthNSEHR+FVZYTPzniHe8GEhwz86uhbpKUGTspRlW+lIOIu8
 0qHNcxVljrWbLev7qsENrPML+oo1t/WJqcGHdLwb/vDg6fKG69PN0g7Sg
 uPJNLBmFxyytTOuW27cZ0RANtWmimuTT9/T8cy2Ve4DwOuVegb3WIuTWe
 tObPFEiGP+UfpraCMENMQS26ve+Cz4S37DH3IU6G5wzRyJOc7FaEauqzD
 gdJmxDTQru3sGW1uorvTlsRHUrT/VObYchyxvB3t4TyiGYEAWhWKB1u9i
 ijHj0p+FvKPqZje0ANvb8/mDPg7D2D/Gv3KeoGmsqDwM4KYZGEVrZ3LwM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="375481434"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="375481434"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 23:23:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="700687936"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="700687936"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 09 Nov 2022 23:23:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 09:23:17 +0200
Date: Thu, 10 Nov 2022 09:23:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <Y2ym5Q1cdpKgBfXT@intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-12-ville.syrjala@linux.intel.com>
 <ae278ba0-f13a-8218-3b82-76b634deadb0@intel.com>
 <Y2Temsw9pX+KEy2E@intel.com>
 <01aa693d-7b1b-4310-79ae-8aecf43644f5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <01aa693d-7b1b-4310-79ae-8aecf43644f5@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915: Create resized LUTs for
 ivb+ split gamma mode
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 10, 2022 at 09:35:28AM +0530, Nautiyal, Ankit K wrote:
> 
> On 11/4/2022 3:12 PM, Ville Syrjälä wrote:
> > On Fri, Nov 04, 2022 at 10:49:39AM +0530, Nautiyal, Ankit K wrote:
> >> Patch looks good to me.
> >>
> >> Minor suggestions inline:
> >>
> >> On 10/26/2022 5:09 PM, Ville Syrjala wrote:
> >>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>>
> >>> Currently when opeating in split gamma mode we do the
> >> nitpick: 'operating' typo.
> >>> "skip ever other sw LUT entry" trick in the low level
> >>> LUT programming/readout functions. That is very annoying
> >>> and a big hinderance to revamping the color management
> >>> uapi.
> >>>
> >>> Let's get rid of that problem by making half sized copies
> >>> of the software LUTs and plugging those into the internal
> >>> {pre,post}_csc_lut attachment points (instead of the sticking
> >>> the uapi provide sw LUTs there directly).
> >>>
> >>> With this the low level stuff will operate purely in terms
> >>> the hardware LUT sizes, and all uapi nonsense is contained
> >>> to the atomic check phase. The one thing we do lose is
> >>> intel_color_assert_luts() since we no longer have a way to
> >>> check that the uapi LUTs were correctly used when generating
> >>> the internal copies. But that seems like a price worth paying.
> >>>
> >>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/display/intel_color.c | 81 +++++++++++++++++-----
> >>>    1 file changed, 64 insertions(+), 17 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> >>> index 33871bfacee7..d48904f90e3a 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_color.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> >>> @@ -597,6 +597,30 @@ create_linear_lut(struct drm_i915_private *i915, int lut_size)
> >>>    	return blob;
> >>>    }
> >>>    
> >>> +static struct drm_property_blob *
> >>> +create_resized_lut(struct drm_i915_private *i915,
> >>> +		   const struct drm_property_blob *blob_in, int lut_out_size)
> >>> +{
> >>> +	int i, lut_in_size = drm_color_lut_size(blob_in);
> >>> +	struct drm_property_blob *blob_out;
> >>> +	const struct drm_color_lut *lut_in;
> >>> +	struct drm_color_lut *lut_out;
> >>> +
> >>> +	blob_out = drm_property_create_blob(&i915->drm,
> >>> +					    sizeof(lut_out[0]) * lut_out_size,
> >>> +					    NULL);
> >>> +	if (IS_ERR(blob_out))
> >>> +		return blob_out;
> >>> +
> >>> +	lut_in = blob_in->data;
> >>> +	lut_out = blob_out->data;
> >>> +
> >>> +	for (i = 0; i < lut_out_size; i++)
> >>> +		lut_out[i] = lut_in[i * (lut_in_size - 1) / (lut_out_size - 1)];
> >>> +
> >>> +	return blob_out;
> >>> +}
> >>> +
> >>>    static void i9xx_load_lut_8(struct intel_crtc *crtc,
> >>>    			    const struct drm_property_blob *blob)
> >>>    {
> >>> @@ -723,19 +747,14 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
> >>>    			    u32 prec_index)
> >>>    {
> >>>    	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >>> -	int hw_lut_size = ivb_lut_10_size(prec_index);
> >>>    	const struct drm_color_lut *lut = blob->data;
> >>>    	int i, lut_size = drm_color_lut_size(blob);
> >>>    	enum pipe pipe = crtc->pipe;
> >>>    
> >>> -	for (i = 0; i < hw_lut_size; i++) {
> >>> -		/* We discard half the user entries in split gamma mode */
> >>> -		const struct drm_color_lut *entry =
> >>> -			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
> >>> -
> >>> +	for (i = 0; i < lut_size; i++) {
> >>>    		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), prec_index++);
> >>>    		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
> >>> -				  ilk_lut_10(entry));
> >>> +				  ilk_lut_10(&lut[i]));
> >>>    	}
> >>>    
> >>>    	/*
> >>> @@ -751,7 +770,6 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
> >>>    			    u32 prec_index)
> >>>    {
> >>>    	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >>> -	int hw_lut_size = ivb_lut_10_size(prec_index);
> >>>    	const struct drm_color_lut *lut = blob->data;
> >>>    	int i, lut_size = drm_color_lut_size(blob);
> >>>    	enum pipe pipe = crtc->pipe;
> >>> @@ -759,14 +777,9 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
> >>>    	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
> >>>    			  prec_index | PAL_PREC_AUTO_INCREMENT);
> >>>    
> >>> -	for (i = 0; i < hw_lut_size; i++) {
> >>> -		/* We discard half the user entries in split gamma mode */
> >>> -		const struct drm_color_lut *entry =
> >>> -			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
> >>> -
> >>> +	for (i = 0; i < lut_size; i++)
> >>>    		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
> >>> -				  ilk_lut_10(entry));
> >>> -	}
> >>> +				  ilk_lut_10(&lut[i]));
> >>>    
> >>>    	/*
> >>>    	 * Reset the index, otherwise it prevents the legacy palette to be
> >>> @@ -1343,7 +1356,7 @@ void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
> >>>    			    crtc_state->pre_csc_lut != i915->display.color.glk_linear_degamma_lut);
> >>>    		drm_WARN_ON(&i915->drm,
> >>>    			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
> >>> -	} else {
> >>> +	} else if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
> >>>    		drm_WARN_ON(&i915->drm,
> >>>    			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
> >>>    			    crtc_state->pre_csc_lut != crtc_state->hw.gamma_lut);
> >>> @@ -1564,6 +1577,38 @@ static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
> >>>    	return CSC_POSITION_BEFORE_GAMMA;
> >>>    }
> >>>    
> >>> +static int ivb_assign_luts(struct intel_crtc_state *crtc_state)
> >>> +{
> >>> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> >>> +	struct drm_property_blob *degamma_lut, *gamma_lut;
> >>> +
> >>> +	if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
> >>> +		ilk_assign_luts(crtc_state);
> >>> +		return 0;
> >>> +	}
> >>> +
> >>> +	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.degamma_lut) != 1024);
> >>> +	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.gamma_lut) != 1024);
> >> Does it make sense to use some macro for LUT size for split gamma case
> >> and regular case?
> >>
> >> Same thing perhaps can be used in ivb_lut_10_size?
> > I don't think macros would be really helpful. I guess I
> > could have used ivb_lut_10_size() for the create_resized_lut()
> > calls below. And these WARNs I guess could have just used
> > device info stuff instead.
> 
> Using ivb_lut_10_size() should be good enough, I think.
> 
> In any case, this is a just a minor suggestion. Patch looks good to me.

I've left it as is for now. We can certainly improve this
when we return to topic of the color uapi redesign.

> 
> With the small typo fixed in commit message:

Doh. Accidentally pulled the trigger before fixing the typo.
Oh well.

> 
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks for the reviews. Entire series merged now.

-- 
Ville Syrjälä
Intel
