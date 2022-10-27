Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E9C60FAE4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 16:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF6A810E235;
	Thu, 27 Oct 2022 14:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C088610E235
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 14:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666882499; x=1698418499;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=P/H/JQzMPLiwbE2ZuXNNiAZro1of9S6iR/TCR1HXdMo=;
 b=hA1bGu/2XwlR7zAPqr+cf2L7kv1/r0DYshns6JgayCkvi8OLDuFduEBe
 6w6p8GISTNHYccDag1gHR14dXGIjws+tebWxPpOuOpMpTUIKa8KYavOIc
 2cZsJphOsFC1q9W83r+5f5Ft9nrKENdBeF41GUSnnKtBI1ufGP9IpWZ0m
 nEjN7F6NCHmnIl3S838grbzRnTpxdkXyb+KW0YRr3wuoPRMJAoDVoCO2E
 /i6H15I3mRxBOWOD2/MmVklF0DDz6QPrRhJH1RAlpMiqDeIrx7lqDNEzQ
 6YzWmVvFzIQjGSJ9LQJC4aiVWUyfkNldZF3G3S4vmnTMz4pDvHIbh3wc9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334876473"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="334876473"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="663644516"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="663644516"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 27 Oct 2022 07:54:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Oct 2022 17:54:55 +0300
Date: Thu, 27 Oct 2022 17:54:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y1qbv7RUZehBt4fy@intel.com>
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
 <20221026101134.20865-3-ville.syrjala@linux.intel.com>
 <87pmedcp07.fsf@intel.com> <Y1qake1Ow8eOCj6n@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y1qake1Ow8eOCj6n@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/sdvo: Setup DDC fully before
 output init
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 27, 2022 at 05:49:53PM +0300, Ville Syrj�l� wrote:
> On Thu, Oct 27, 2022 at 05:36:24PM +0300, Jani Nikula wrote:
> > On Wed, 26 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > >
> > > Call intel_sdvo_select_ddc_bus() before initializing any
> > > of the outputs. And before that is functional (assuming no VBT)
> > > we have to set up the controlled_outputs thing. Otherwise DDC
> > > won't be functional during the output init but LVDS really
> > > needs it for the fixed mode setup.
> > >
> > > Note that the whole multi output support still looks very
> > > bogus, and more work will be needed to make it correct.
> > > But for now this should at least fix the LVDS EDID fixed mode
> > > setup.
> > >
> > > Cc: stable@vger.kernel.org
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7301
> > > Fixes: aa2b88074a56 ("drm/i915/sdvo: Fix multi function encoder stuff")
> > > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_sdvo.c | 31 +++++++++--------------
> > >  1 file changed, 12 insertions(+), 19 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > index c6200a91a777..ccf81d616cb4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > @@ -2746,13 +2746,10 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
> > >  	if (!intel_sdvo_connector)
> > >  		return false;
> > >  
> > > -	if (device == 0) {
> > > -		intel_sdvo->controlled_output |= SDVO_OUTPUT_TMDS0;
> > > +	if (device == 0)
> > >  		intel_sdvo_connector->output_flag = SDVO_OUTPUT_TMDS0;
> > > -	} else if (device == 1) {
> > > -		intel_sdvo->controlled_output |= SDVO_OUTPUT_TMDS1;
> > > +	else if (device == 1)
> > >  		intel_sdvo_connector->output_flag = SDVO_OUTPUT_TMDS1;
> > > -	}
> > >  
> > >  	intel_connector = &intel_sdvo_connector->base;
> > >  	connector = &intel_connector->base;
> > > @@ -2807,7 +2804,6 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
> > >  	encoder->encoder_type = DRM_MODE_ENCODER_TVDAC;
> > >  	connector->connector_type = DRM_MODE_CONNECTOR_SVIDEO;
> > >  
> > > -	intel_sdvo->controlled_output |= type;
> > >  	intel_sdvo_connector->output_flag = type;
> > >  
> > >  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
> > > @@ -2848,13 +2844,10 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
> > >  	encoder->encoder_type = DRM_MODE_ENCODER_DAC;
> > >  	connector->connector_type = DRM_MODE_CONNECTOR_VGA;
> > >  
> > > -	if (device == 0) {
> > > -		intel_sdvo->controlled_output |= SDVO_OUTPUT_RGB0;
> > > +	if (device == 0)
> > >  		intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB0;
> > > -	} else if (device == 1) {
> > > -		intel_sdvo->controlled_output |= SDVO_OUTPUT_RGB1;
> > > +	else if (device == 1)
> > >  		intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB1;
> > > -	}
> > >  
> > >  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
> > >  		kfree(intel_sdvo_connector);
> > > @@ -2884,13 +2877,10 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
> > >  	encoder->encoder_type = DRM_MODE_ENCODER_LVDS;
> > >  	connector->connector_type = DRM_MODE_CONNECTOR_LVDS;
> > >  
> > > -	if (device == 0) {
> > > -		intel_sdvo->controlled_output |= SDVO_OUTPUT_LVDS0;
> > > +	if (device == 0)
> > >  		intel_sdvo_connector->output_flag = SDVO_OUTPUT_LVDS0;
> > > -	} else if (device == 1) {
> > > -		intel_sdvo->controlled_output |= SDVO_OUTPUT_LVDS1;
> > > +	else if (device == 1)
> > >  		intel_sdvo_connector->output_flag = SDVO_OUTPUT_LVDS1;
> > > -	}
> > >  
> > >  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
> > >  		kfree(intel_sdvo_connector);
> > > @@ -2945,8 +2935,14 @@ static u16 intel_sdvo_filter_output_flags(u16 flags)
> > >  static bool
> > >  intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
> > >  {
> > > +	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
> > > +
> > >  	flags = intel_sdvo_filter_output_flags(flags);
> > >  
> > > +	intel_sdvo->controlled_output = flags;
> > > +
> > > +	intel_sdvo_select_ddc_bus(i915, intel_sdvo);
> > 
> > AFAICT the ->controlled_outputs member could now be removed and just
> > passed by value here.
> 
> Hmm. True. Though the whole thing is utter garbage anyway.
> intel_sdvo_guess_ddc_bus() really expects controlled_outputs
> to contain only a single bit. I guess it kinda works by luck
> most or the time, at least for single output devices.
> I suppose I can still include the controlled_outputs nukage
> into this patch.

On second though I think I'll do it as a followup. Less chance
of backport conflicts that way.

-- 
Ville Syrj�l�
Intel
