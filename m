Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E624E4D2F9A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 14:01:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3615E10E4DD;
	Wed,  9 Mar 2022 13:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8815410E631
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 13:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646830859; x=1678366859;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UC6iqbXqnxBeuHFvIggChhHXClpKaFq57epdqGJPbig=;
 b=nn0elBkUJ4ZCS6cjz5kgQLsR4BXKGI1XYF2iLqnj6gppEre/CyZX4Gl8
 yFdZuFYoc2znx6IRJEoWBzLDcivyO8y3HFCKXAV9dC5SDrbZgq8xPPx0c
 mKmyabf1FLFXLDdAyZ89fR1a+nAjb+KNDaxLesSTGkc5q4gPMrQF+7u5V
 SuBkfqOEU15jf++BVqc7TVIuOIxWo2EDYWx/iZTfOEtuUSuuSLbjlyTPD
 ZIY/OTr/qaIxIP0a5xIIOWnusOjMHD6iO62Kqurr+z9cv7fLSrH4A0HXV
 gql3JHLr91XrXCaWZlpZyj23tsuU7LGs77pUCp4dcA4sqZDxnanAyxJXd Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="279694580"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="279694580"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 05:00:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="596262216"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 09 Mar 2022 05:00:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 15:00:55 +0200
Date: Wed, 9 Mar 2022 15:00:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <YiilBzvfc38vHEb4@intel.com>
References: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
 <20220308173230.4182-4-ville.syrjala@linux.intel.com>
 <7eff18fd44e1d44f6d014cacfd4db992444a0051.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7eff18fd44e1d44f6d014cacfd4db992444a0051.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Treat SAGV block time 0 as
 SAGV disabled
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

On Wed, Mar 09, 2022 at 11:29:37AM +0000, Govindapillai, Vinod wrote:
> On Tue, 2022-03-08 at 19:32 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > For modern platforms the spec explicitly states that a
> > SAGV block time of zero means that SAGV is not supported.
> > Let's extend that to all platforms. Supposedly there should
> > be no systems where this isn't true, and it'll allow us to:
> > - use the same code regardless of older vs. newer platform
> > - wm latencies already treat 0 as disabled, so this fits well
> >   with other related code
> > - make it a bit more clear when SAGV is used vs. not
> > - avoid overflows from adding U32_MAX with a u16 wm0 latency value
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 21c37115c36e..906501d6b298 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3682,7 +3682,7 @@ intel_sagv_block_time(struct drm_i915_private *dev_priv)
> >  				     &val, NULL);
> >  		if (ret) {
> >  			drm_dbg_kms(&dev_priv->drm, "Couldn't read SAGV block time!\n");
> > -			return -1;
> > +			return 0;
> >  		}
> >  
> >  		return val;
> > @@ -3691,8 +3691,7 @@ intel_sagv_block_time(struct drm_i915_private *dev_priv)
> >  	} else if (DISPLAY_VER(dev_priv) == 9 && !IS_LP(dev_priv)) {
> >  		return 30;
> >  	} else {
> > -		/* Default to an unusable block time */
> > -		return -1;
> > +		return 0;
> >  	}
> >  }
> >  
> > @@ -3704,7 +3703,7 @@ static void intel_sagv_init(struct drm_i915_private *i915)
> >  		    str_yes_no(intel_has_sagv(i915)), i915->sagv_block_time_us);
> >  
> >  	if (!intel_has_sagv(i915))
> > -		i915->sagv_block_time_us = -1;
> > +		i915->sagv_block_time_us = 0;
> 
> Hi Ville
> 
> Currently we set the "sagv_status" as "I915_SAGV_NOT_CONTROLLED" based on the number of qgv points.
> So here i915->sagv_block_time_us will be set to 0 even if intel_sagv_block_time(i915) would have
> returned some valid values. Is that the desired behavior for sgav watermarks calcultations?

I don't think there's much point in calculating the sagv wm if we can't
use sagv anyway.

-- 
Ville Syrjälä
Intel
