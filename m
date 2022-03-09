Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8234D2F91
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 13:59:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F73110E46C;
	Wed,  9 Mar 2022 12:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D4A10E3C0
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 12:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646830769; x=1678366769;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Y58RoiufB7/QkwRixR/Z/mlt6rfibn2vOkd5/M7F2M0=;
 b=BpoMftfDCosw9j+b1MwEP2h7yA/oPSZyiFoBJ+YYTFb7humnZU2/jxS8
 bSY7etV3RrS87Fi7iVa60v1GWHsO8t0thN51OovCrRgS58ojnF5AbK+vI
 yX4CG4GF1Oe9Pfq7tCSlggxn3mNvH5FOj012dF/b/3V5Zu2n8nTIk6lh7
 4d14H6EzXezb7evDv16GE3vd/YBHSHWfoN/KNqnd6n4E+JKQSjOktfJ2Q
 ssSRCWAmXxQmSYwg62ya8Qmp2A9C3FDM9NyIB41KZZ2TYH+D7YzvBvqmm
 LzUpSVpAIVw+DxpTg0XdIEEP8ymPdO/dGpL5SyMHW3uvp2vYOV5S9Bmpd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254908676"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254908676"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 04:59:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="632596123"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 09 Mar 2022 04:59:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 14:59:24 +0200
Date: Wed, 9 Mar 2022 14:59:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <YiikrAHrmWaW42i5@intel.com>
References: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
 <20220308173230.4182-3-ville.syrjala@linux.intel.com>
 <72b03790e2b0f182bc5a3cb984d2b854e212858c.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <72b03790e2b0f182bc5a3cb984d2b854e212858c.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Rework SAGV block time probing
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

On Wed, Mar 09, 2022 at 10:41:28AM +0000, Govindapillai, Vinod wrote:
> On Tue, 2022-03-08 at 19:32 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > I'd like to see the SAGV block time we got from the mailbox
> > in the logs regardless of whether other factors prevent the
> > use of SAGV.
> > 
> > So let's adjust the code to always query the SAGV block time,
> > log it, and then reset it if SAGV is not actually supported.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Hi Ville,
> 
> I wonder if it is better to comprehend if we clean assigning  -1 to a u32 variable first before
> this? I see that you are doing that anyway in the next patch in this series. Was there any
> particular reason?

No real reason. Probably best to reorder as you suggest so we can
backport the s/-1/0/ change, assuming it actually fixes something.

> 
> BR
> Vinod
> 
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 38 +++++++++++++++++++--------------
> >  1 file changed, 22 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 8ee31c9590a7..21c37115c36e 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3670,8 +3670,8 @@ intel_has_sagv(struct drm_i915_private *dev_priv)
> >  		dev_priv->sagv_status != I915_SAGV_NOT_CONTROLLED;
> >  }
> >  
> > -static void
> > -skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
> > +static u32
> > +intel_sagv_block_time(struct drm_i915_private *dev_priv)
> >  {
> >  	if (DISPLAY_VER(dev_priv) >= 12) {
> >  		u32 val = 0;
> > @@ -3680,24 +3680,31 @@ skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
> >  		ret = snb_pcode_read(dev_priv,
> >  				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
> >  				     &val, NULL);
> > -		if (!ret) {
> > -			dev_priv->sagv_block_time_us = val;
> > -			return;
> > +		if (ret) {
> > +			drm_dbg_kms(&dev_priv->drm, "Couldn't read SAGV block time!\n");
> > +			return -1;
> >  		}
> >  
> > -		drm_dbg(&dev_priv->drm, "Couldn't read SAGV block time!\n");
> > +		return val;
> >  	} else if (DISPLAY_VER(dev_priv) == 11) {
> > -		dev_priv->sagv_block_time_us = 10;
> > -		return;
> > -	} else if (DISPLAY_VER(dev_priv) == 9) {
> > -		dev_priv->sagv_block_time_us = 30;
> > -		return;
> > +		return 10;
> > +	} else if (DISPLAY_VER(dev_priv) == 9 && !IS_LP(dev_priv)) {
> > +		return 30;
> >  	} else {
> > -		MISSING_CASE(DISPLAY_VER(dev_priv));
> > +		/* Default to an unusable block time */
> > +		return -1;
> >  	}
> > +}
> >  
> > -	/* Default to an unusable block time */
> > -	dev_priv->sagv_block_time_us = -1;
> > +static void intel_sagv_init(struct drm_i915_private *i915)
> > +{
> > +	i915->sagv_block_time_us = intel_sagv_block_time(i915);
> > +
> > +	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
> > +		    str_yes_no(intel_has_sagv(i915)), i915->sagv_block_time_us);
> > +
> > +	if (!intel_has_sagv(i915))
> > +		i915->sagv_block_time_us = -1;
> >  }
> >  
> >  /*
> > @@ -8173,8 +8180,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
> >  	else if (GRAPHICS_VER(dev_priv) == 5)
> >  		ilk_get_mem_freq(dev_priv);
> >  
> > -	if (intel_has_sagv(dev_priv))
> > -		skl_setup_sagv_block_time(dev_priv);
> > +	intel_sagv_init(dev_priv);
> >  
> >  	/* For FIFO watermark updates */
> >  	if (DISPLAY_VER(dev_priv) >= 9) {

-- 
Ville Syrjälä
Intel
