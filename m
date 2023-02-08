Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8507F68F30E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 17:19:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB02210E7C4;
	Wed,  8 Feb 2023 16:19:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABDD010E7C4
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 16:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675873186; x=1707409186;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9KXMHLytY77VE6bWQAFujAK0qlWoGQx14NsBckRVurM=;
 b=SdtLgZqqNJ5f9Sg739dM38s+3ox8odUEBpVtBaBOLjrWm0bTnBv5cB39
 CSss3NZa1lxXzSMTJVxW+hdCgdaAi4avQTB4BVF1JHqdyu8uycJROMOcd
 avv1uyTjnOLk4PLokJj5pwtfpC3dhoX0+1f+2W7+bnJqvjq3D8JkQ1ihl
 5YL+s19eiH7zfxzYWdd0lgWtuAsMIessaB3sRKHxLLxYh1pvfOGfAgAwP
 2idWjcof2V0xknE1HliNWfATZ6/pGXN4lW5LPFyZCp+UlnLAtFT1L+SA8
 917+UxNXbzFAsHXHX6JZPDXJPAm25J82vOpmg6kr9gVEDk1rdZ8sWQbZI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="416066715"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="416066715"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 08:19:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="644910718"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="644910718"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 08 Feb 2023 08:19:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 18:19:42 +0200
Date: Wed, 8 Feb 2023 18:19:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y+PLnhNNm+X3Z8r1@intel.com>
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
 <20230207064337.18697-4-ville.syrjala@linux.intel.com>
 <Y+O+i1fTxy3Ii0Tn@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y+O+i1fTxy3Ii0Tn@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Pick the backlight controller
 based on VBT on ICP+
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

On Wed, Feb 08, 2023 at 10:23:55AM -0500, Rodrigo Vivi wrote:
> On Tue, Feb 07, 2023 at 08:43:37AM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Use the second backlight controller on ICP+ if the VBT asks
> > us to do so.
> > 
> > On pre-MTP we also check the chicken bit to make sure the
> > pins have been correctly muxed by the firmware.
> > 
> 
> It looks like CC: stable was added while merging this patch.
> But it doesn't go clean. build fails due to s/dev_priv/i915
> and also due to the lack of ICP_SECOND_PPS_IO_SELECT that
> was added by another patch.
> 
> So we need a backported version of this patch to be included
> in the stable trees... how far we will go in the stable tree?
> 
> At this point of -rc7 I even wonder it will be better to stay
> for 6.2 to get released and then send the backported version
> to the stable ml directly...

Yeah, let's attempt the backport after 6.2 is out.

> 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_backlight.c    | 34 +++++++++++++++++--
> >  1 file changed, 31 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> > index 5b7da72c95b8..a4e4b7f79e4d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> > @@ -1431,6 +1431,30 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
> >  	return 0;
> >  }
> >  
> > +static int cnp_num_backlight_controllers(struct drm_i915_private *i915)
> > +{
> > +	if (INTEL_PCH_TYPE(i915) >= PCH_DG1)
> > +		return 1;
> > +
> > +	if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
> > +		return 2;
> > +
> > +	return 1;
> > +}
> > +
> > +static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int controller)
> > +{
> > +	if (controller < 0 || controller >= cnp_num_backlight_controllers(i915))
> > +		return false;
> > +
> > +	if (controller == 1 &&
> > +	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> > +	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> > +		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
> > +
> > +	return true;
> > +}
> > +
> >  static int
> >  cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
> >  {
> > @@ -1440,10 +1464,14 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
> >  
> >  	/*
> >  	 * CNP has the BXT implementation of backlight, but with only one
> > -	 * controller. TODO: ICP has multiple controllers but we only use
> > -	 * controller 0 for now.
> > +	 * controller. ICP+ can have two controllers, depending on pin muxing.
> >  	 */
> > -	panel->backlight.controller = 0;
> > +	panel->backlight.controller = connector->panel.vbt.backlight.controller;
> > +	if (!cnp_backlight_controller_is_valid(i915, panel->backlight.controller)) {
> > +		drm_dbg_kms(&i915->drm, "Invalid backlight controller %d, assuming 0\n",
> > +			    panel->backlight.controller);
> > +		panel->backlight.controller = 0;
> > +	}
> >  
> >  	pwm_ctl = intel_de_read(i915,
> >  				BXT_BLC_PWM_CTL(panel->backlight.controller));
> > -- 
> > 2.39.1
> > 

-- 
Ville Syrjälä
Intel
