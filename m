Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1E6665E2D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 15:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8892910E182;
	Wed, 11 Jan 2023 14:41:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E1B10E182
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 14:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673448109; x=1704984109;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=th7HMU55p6jP5gUnl2tCks/hpbnUOFgn3ll/atnAK2A=;
 b=M7vaU8VfHepovuOdNpkMDs8H0PuDJZ/CaLedzfF5iRE5kqsHYu8wUn+t
 OUZimXxgh98QK0C9LtVbDInu2nfQ6AzpiyzSd5xhS5u6RL4VqujAZv6CE
 8Yq3EcuFfbUySJNowjYoafO9A4W8sSDoM17Fs4JkXS/aa+cyhq8ygLF0w
 ypHX3etMOuykulu7ON8sNqNaDjuBzZ5Z0v+bOiXKqitcVR4FQwQ9r4z1D
 sxpokgVIlPr3AJGHYxTnODetZSOVNaOUQuqlfWes2YjdmqnzX7YUp9JKF
 79uU+awEoSdjwUzXHe1s5dlOOGdsZgP/UfRAvQ8sUq9nFOP+EmhsfUSDC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="325435834"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="325435834"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 06:41:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831372129"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="831372129"
Received: from mmgriffi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.11.225])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 06:41:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM5PR11MB173978075F8EFE4E99647446E3FC9@DM5PR11MB1739.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230111053837.1608588-1-suraj.kandpal@intel.com>
 <20230111053837.1608588-7-suraj.kandpal@intel.com>
 <874jsxi3x7.fsf@intel.com>
 <DM5PR11MB173978075F8EFE4E99647446E3FC9@DM5PR11MB1739.namprd11.prod.outlook.com>
Date: Wed, 11 Jan 2023 16:41:44 +0200
Message-ID: <87tu0xgml3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v6 6/9] drm/i915/vdsc: Check slice design
 requirement
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 11 Jan 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> 
>> On Wed, 11 Jan 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > Add function to check if slice design requirements are being met as
>> > defined in the below link section Slice Design Requirement
>> >
>> > https://gfxspecs.intel.com/Predator/Home/Index/49259
>> >
>> 
>> Just add this:
>> 
>> Bspec: 49259
>> 
>> and no URLs.
>> 
>
> Ohkay got it
>
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 32
>> > +++++++++++++++++++++++
>> >  1 file changed, 32 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > index 52a82d8b289e..0a683d6dff33 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> > @@ -447,6 +447,29 @@ calculate_rc_params(struct rc_parameters *rc,
>> >  	}
>> >  }
>> >
>> > +static int intel_dsc_check_slice_design_req(struct intel_crtc_state *pipe_config,
>> > +					    struct drm_dsc_config *vdsc_cfg)
>> 
>> Bikeshedding, I think "check" is generally a poor verb in a function name.
>> 
>> intel_dsc_slice_dimensions_valid() or something like that?
>
> Sure then ill go with intel_dsc_validate_slice_design

I'm often considering function names from the caller perspective. Say it
out loud, wonder what it sounds like the function is doing, and what it
returns.

intel_dsc_slice_dimensions_valid() is a predicate function that returns
true or false. Either the slice dimensions are valid or not.

Also, "slice design" is incomprehensible to anyone who hasn't read the
bspec. I had to look it up before I understood what this was about. And
it's just the dimensions that are being checked.


BR,
Jani.


>
> Regards,
> Suraj Kandpal
>> 
>> 
>> > +{
>> > +	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_RGB ||
>> > +	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
>> > +		if (vdsc_cfg->slice_height > 4095)
>> > +			return -EINVAL;
>> > +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width < 15000)
>> > +			return -EINVAL;
>> > +	} else if (pipe_config->output_format ==
>> INTEL_OUTPUT_FORMAT_YCBCR420) {
>> > +		if (!(vdsc_cfg->slice_width % 2))
>> > +			return -EINVAL;
>> > +		if (!(vdsc_cfg->slice_height % 2))
>> > +			return -EINVAL;
>> > +		if (vdsc_cfg->slice_height > 4094)
>> > +			return -EINVAL;
>> > +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width < 30000)
>> > +			return -EINVAL;
>> > +	}
>> > +
>> > +	return 0;
>> > +}
>> > +
>> >  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)  {
>> >  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>> > @@ -455,11 +478,20 @@ int intel_dsc_compute_params(struct intel_crtc_state
>> *pipe_config)
>> >  	u16 compressed_bpp = pipe_config->dsc.compressed_bpp;
>> >  	const struct rc_parameters *rc_params;
>> >  	struct rc_parameters *rc = NULL;
>> > +	int err;
>> >  	u8 i = 0;
>> >
>> >  	vdsc_cfg->pic_width = pipe_config->hw.adjusted_mode.crtc_hdisplay;
>> >  	vdsc_cfg->slice_width = DIV_ROUND_UP(vdsc_cfg->pic_width,
>> >  					     pipe_config->dsc.slice_count);
>> > +
>> > +	err = intel_dsc_check_slice_design_req(pipe_config, vdsc_cfg);
>> > +
>> > +	if (err) {
>> > +		drm_dbg_kms(&dev_priv->drm, "Slice design requirements not
>> met\n");
>> > +		return err;
>> > +	}
>> > +
>> >  	/*
>> >  	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb is 0
>> >  	 * else 1
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
