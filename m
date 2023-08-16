Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4488477E13B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 14:15:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7998010E033;
	Wed, 16 Aug 2023 12:15:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E085710E033
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 12:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692188121; x=1723724121;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=E3XL57ut43GBbQ4vSb414XOAcKdxbZxIl3tmNxqlVTg=;
 b=maef4E3CjRdrk/NNRnuIG9J/TSxFc1nW8xM2LPN8Jx6ie3243CsW/SXA
 FxRhq3GGZlCxGvo8bl8rUS2b6vo8gwYWCNzdbSvoTf744niI8xWZOrfU1
 m4D9rNU+U0HR85D4kMhjwdyXZmMYGNlvjGokyZZL+hXOSXsiFl3UxYEVc
 WVPZ7H0D+9OSalvd4OeQkERIT5G05cg0IIBUyfG6cmQkgyIX+sdesE7mn
 YKsIjOyd5Zmnd8vveS2T6QAm+uIq7LKVOiOYc4BBihpxgLkbida5plHww
 +Fn/7PTAZ4tHXSKK4RaEeIQgwMh3qtf6OAJ5abrefQ4FqQMCdHdfxK5Nj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="369985794"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="369985794"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 05:15:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="763608614"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="763608614"
Received: from golubevv-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 05:15:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB6750962FDFE9E533FAFCF0CEE315A@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230807142754.3891787-1-suraj.kandpal@intel.com>
 <877cpwayob.fsf@intel.com>
 <SN7PR11MB6750D24920061E5DDD3F2171E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87o7j79uqd.fsf@intel.com> <87fs4j9t3e.fsf@intel.com>
 <SN7PR11MB6750A2CE4750AB0760EEA4C4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <SN7PR11MB6750962FDFE9E533FAFCF0CEE315A@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Wed, 16 Aug 2023 15:15:15 +0300
Message-ID: <875y5f9oa4.fsf@intel.com>
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

On Wed, 16 Aug 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> Also a small thing I needed to add is we found this patch series
> https://patchwork.freedesktop.org/patch/549863/?series=121487&rev=2
>
> where panel sets the slice height to 40 if a value around 30 is given
> it should work not sure how relevant this is here but just an FYI

Parse error. :p

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>> >
>> > On Wed, 16 Aug 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> > > On Wed, 16 Aug 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com>
>> wrote:
>> > >>> On Mon, 07 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com>
>> wrote:
>> > >>> > Assign explicit value of 12 at 8bpp as per Table E2 of DSC 1.1
>> > >>> > for DSI panels even though we already use calculations from
>> > >>> > CModel for first_line_bpg_offset.
>> > >>> > The reason being some DSI monitors may have not have added the
>> > >>> > change in errata for the calculation of first_line_bpg_offset.
>> > >
>> > > We should be using DRM_DSC_1_1_PRE_SCR parameters for this, right?
>> > Why
>> 
>> Sorry I seemed to have missed this comment in my previous reply but from
>> how the code is written if display_ver >= 13 we call on calculate_rc_params
>> which uses formulas to calculate the params and we don't rely on the dsc
>> tables in drm_dsc_helpers so the DRM_DSC_1_1_PRE_SCR scenario does not
>> come in picture.
>> 
>> > > does the array have post-SCR values for first_line_bpg_offset?
>> >
>> > I'm asking for logs on the gitlab issue, and trying to get at the root
>> > of this, because so many times in the past adding a specific fix like
>> > this for a specific panel (albeit using generic conditions), it has
>> > caused more troule for other panels in the future. What if other panels
>> don't work with 12?
>> >
>> 
>> That is true which is why I too was unsure on the fix.
>> 
>> Maybe Tseng can provide the logs them on the gitlab issue.
>> 
>> Regards,
>> Suraj Kandpal
>> 
>> > BR,
>> > Jani.
>> >
>> >
>> > >
>> > >
>> > >>> >
>> > >>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > >>> > ---
>> > >>> >  drivers/gpu/drm/i915/display/icl_dsi.c | 5 +++++
>> > >>> >  1 file changed, 5 insertions(+)
>> > >>> >
>> > >>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
>> > >>> > b/drivers/gpu/drm/i915/display/icl_dsi.c
>> > >>> > index f7ebc146f96d..2376d5000d78 100644
>> > >>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> > >>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> > >>> > @@ -1585,6 +1585,11 @@ static int
>> > >>> > gen11_dsi_dsc_compute_config(struct
>> > >>> intel_encoder *encoder,
>> > >>> >  	if (ret)
>> > >>> >  		return ret;
>> > >>> >
>> > >>> > +	/* From Table E-2 in DSC 1.1*/
>> > >>> > +	if (vdsc_cfg->dsc_version_minor == 1 &&
>> > >>> > +	    vdsc_cfg->bits_per_pixel == 128)
>> > >>>
>> > >> Hi Jani,
>> > >> Thanks for the review
>> > >>
>> > >>> So, vdsc_cfg->bits_per_pixel has 4 fractional bits, and that's 8
>> > >>> bpp compressed?
>> > >>>
>> > >>> Better describe it that way, instead of as 128.
>> > >>>
>> > >>
>> > >> Yes would be better to right shift (vdsc_cfg->bits_per_pixel)  by 4
>> > >> then compare with 8 to avoid confusion.
>> > >>
>> > >>> But... looking around, in intel_vdsc.c we set:
>> > >>>
>> > >>> 	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
>> > >>>
>> > >>> and we have:
>> > >>>
>> > >>> 	#define DSC_BPP(bpp)	((bpp) << 4)
>> > >>>
>> > >>> however, when reading it back in intel_dsc_get_config(), it's just
>> > >>> directly:
>> > >>>
>> > >>> 	vdsc_cfg->bits_per_pixel = pps1;
>> > >>>
>> > >>> Are we always sending x16 bpp in PPS?
>> > >>
>> > >> Yes we are always sending bpp x16 considering the fractional bits
>> > >> also in intel_vdsc_regs.h We have
>> > >> #define  DSC_BPP(bpp)                           ((bpp) << 0)
>> > >
>> > > This is the part that confused me.
>> > >
>> > > BR,
>> > > Jani.
>> > >
>> > >> Which in hindsight can be renamed as it has the same name as the
>> > >> one in drm_dsc_helper.c But then again the DSC_BPP macro there is
>> > >> more
>> > local to that file.
>> > >>
>> > >> Moreover vdsc_cfg->bits_per_pixel is being set in
>> > >> intel_dsc_compute_params(among other places but is still being set
>> > >> x16
>> > the value).
>> > >>
>> > >> vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
>> > >>
>> > >> Regards,
>> > >> Suraj Kandpal
>> > >>>
>> > >>>
>> > >>> BR,
>> > >>> Jani.
>> > >>>
>> > >>>
>> > >>>
>> > >>> > +		vdsc_cfg->first_line_bpg_offset = 12;
>> > >>> > +
>> > >>> >  	/* DSI specific sanity checks on the common code */
>> > >>> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->vbr_enable);
>> > >>> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->simple_422);
>> > >>>
>> > >>> --
>> > >>> Jani Nikula, Intel Open Source Graphics Center
>> >
>> > --
>> > Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
