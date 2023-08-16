Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF43F77DEB9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 12:31:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9451E10E04C;
	Wed, 16 Aug 2023 10:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93C1710E096
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 10:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692181883; x=1723717883;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=B3auMLrxw+xTOxt626e6oWba2L0JDy3Q4rPfWvhxMIk=;
 b=lWVqpPJt/3XwlqxQ425NE4Lp9Qe+KPnZBYvxs52UzXXVw0kK+R4wyE9+
 8P1hfYh7o7S5RaEfB/ah0K4q4XrHfT7TSer+0FDeNE7kxeMPp67GykqUB
 eW7GyOy5XTmfy/X1iJJ86pWAA2I6K+ZS/q+KX79xIJgb2YmMI95ff4x0J
 OJMmXadotd/WeWz55V1IH8Xx/D77IcglS9J9TxMbDUG+hScVt//og2/cV
 +cECk4bVXWP+Fq1Mb4gg1b42LhlDf+kMUDRGCdEPEaCIFf7tlQf8Gvktl
 J4jP/zxXfvJNIIbe5mC2lsKluHmLNEPqRDedd0EySHtb9o+/hmZLwmRs2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436394417"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="436394417"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 03:31:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="848436494"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="848436494"
Received: from golubevv-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 03:31:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <87o7j79uqd.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230807142754.3891787-1-suraj.kandpal@intel.com>
 <877cpwayob.fsf@intel.com>
 <SN7PR11MB6750D24920061E5DDD3F2171E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87o7j79uqd.fsf@intel.com>
Date: Wed, 16 Aug 2023 13:31:17 +0300
Message-ID: <87fs4j9t3e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit
 first_line_bpg_offset assignment for DSI
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 16 Aug 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 16 Aug 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>>> On Mon, 07 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>>> > Assign explicit value of 12 at 8bpp as per Table E2 of DSC 1.1 for DSI
>>> > panels even though we already use calculations from CModel for
>>> > first_line_bpg_offset.
>>> > The reason being some DSI monitors may have not have added the change
>>> > in errata for the calculation of first_line_bpg_offset.
>
> We should be using DRM_DSC_1_1_PRE_SCR parameters for this, right? Why
> does the array have post-SCR values for first_line_bpg_offset?

I'm asking for logs on the gitlab issue, and trying to get at the root
of this, because so many times in the past adding a specific fix like
this for a specific panel (albeit using generic conditions), it has
caused more troule for other panels in the future. What if other panels
don't work with 12?

BR,
Jani.


>
>
>>> >
>>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> > ---
>>> >  drivers/gpu/drm/i915/display/icl_dsi.c | 5 +++++
>>> >  1 file changed, 5 insertions(+)
>>> >
>>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
>>> > b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> > index f7ebc146f96d..2376d5000d78 100644
>>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> > @@ -1585,6 +1585,11 @@ static int gen11_dsi_dsc_compute_config(struct
>>> intel_encoder *encoder,
>>> >  	if (ret)
>>> >  		return ret;
>>> >
>>> > +	/* From Table E-2 in DSC 1.1*/
>>> > +	if (vdsc_cfg->dsc_version_minor == 1 &&
>>> > +	    vdsc_cfg->bits_per_pixel == 128)
>>> 
>> Hi Jani,
>> Thanks for the review
>>
>>> So, vdsc_cfg->bits_per_pixel has 4 fractional bits, and that's 8 bpp
>>> compressed?
>>> 
>>> Better describe it that way, instead of as 128.
>>> 
>>
>> Yes would be better to right shift (vdsc_cfg->bits_per_pixel)  by 4 then compare with 8
>> to avoid confusion.
>>
>>> But... looking around, in intel_vdsc.c we set:
>>> 
>>> 	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
>>> 
>>> and we have:
>>> 
>>> 	#define DSC_BPP(bpp)	((bpp) << 4)
>>> 
>>> however, when reading it back in intel_dsc_get_config(), it's just
>>> directly:
>>> 
>>> 	vdsc_cfg->bits_per_pixel = pps1;
>>> 
>>> Are we always sending x16 bpp in PPS?
>>
>> Yes we are always sending bpp x16 considering the fractional bits also in intel_vdsc_regs.h
>> We have 
>> #define  DSC_BPP(bpp)                           ((bpp) << 0)
>
> This is the part that confused me.
>
> BR,
> Jani.
>
>> Which in hindsight can be renamed as it has the same name as the one in drm_dsc_helper.c
>> But then again the DSC_BPP macro there is more local to that file.
>>
>> Moreover vdsc_cfg->bits_per_pixel is being set in intel_dsc_compute_params(among other places
>> but is still being set x16 the value).
>>
>> vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
>>
>> Regards,
>> Suraj Kandpal
>>> 
>>> 
>>> BR,
>>> Jani.
>>> 
>>> 
>>> 
>>> > +		vdsc_cfg->first_line_bpg_offset = 12;
>>> > +
>>> >  	/* DSI specific sanity checks on the common code */
>>> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->vbr_enable);
>>> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->simple_422);
>>> 
>>> --
>>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
