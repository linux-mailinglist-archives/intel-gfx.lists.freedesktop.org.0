Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1BF769504
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 13:36:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A7910E264;
	Mon, 31 Jul 2023 11:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48C910E267
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 11:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690803377; x=1722339377;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=55QSmjBi7USb99iXNXocxO/mCIxg/4Qa8yoIlG66EcQ=;
 b=LuIb6NvjCiUslXF0az+HVW4LM2Xib7EltU0OvQKmpdjQKAGRR2cahhqO
 cl0yErmooUOYRiJioGZeFKkU+IM5bd2KGliSWYL1y+L2YXwkQ813Vw8BQ
 gg89ODUxJEtlhNru4PfBZJ/+oWPEJo1fM2uCd7fBrGjSfwwCMbHD7vnev
 2el6lu79Nfpa3aKxTaFhCfz7/Ix4nTPPqEAsUyKLbMthyPSipb9dmDaT6
 d8ief+wu699au/Am4+2jleFBNRhIWq2njeYWJ+v6aMjuR7SXN6KYIwmMr
 dyuzjItYYmUlV30s2x9HgM2fA3+iI3z7jRqMxAZ/kzGS94JpCdQOwoM2x A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="455369748"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="455369748"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 04:35:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="722034583"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="722034583"
Received: from naikshri-mobl7.ger.corp.intel.com (HELO localhost)
 ([10.252.36.230])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 04:35:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Murthy,
 Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <SJ1PR11MB6129F386F8578FF3CA08ACDEB905A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230714053733.2117730-1-arun.r.murthy@intel.com>
 <SJ1PR11MB61292C56230D5D4C493D9FE1B906A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <DM6PR11MB317751DCD7C0B1B87EA94F69BA05A@DM6PR11MB3177.namprd11.prod.outlook.com>
 <SJ1PR11MB6129F386F8578FF3CA08ACDEB905A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Mon, 31 Jul 2023 14:35:46 +0300
Message-ID: <871qgoxqi5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC
 enable
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

On Mon, 31 Jul 2023, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> Hello Arun,
>
>> -----Original Message-----
>> From: Murthy, Arun R <arun.r.murthy@intel.com>
>> Sent: Monday, July 31, 2023 11:25 AM
>> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: RE: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC
>> enable
>> 
>> > -----Original Message-----
>> > From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
>> > Sent: Friday, July 28, 2023 2:48 PM
>> > To: Murthy, Arun R <arun.r.murthy@intel.com>
>> > Cc: intel-gfx@lists.freedesktop.org
>> > Subject: RE: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in
>> > SDP CRC enable
>> >
>> > Hello Arun,
>> >
>> > > -----Original Message-----
>> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>> > > Of Arun R Murthy
>> > > Sent: Friday, July 14, 2023 11:08 AM
>> > > To: intel-gfx@lists.freedesktop.org
>> > > Subject: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP
>> > > CRC enable
>> > >
>> > > The debug print for enabling SDP CRC16 is applicable only for DP2.0,
>> >
>> > DP2.0 and UHBR?
>> 
>> This is a DP2.0 feature that can be enabled on UHBR rates.
>> 
>> >
>> > >but this
>> > > debug print was not within the uhbr check and was always printed.
>> > > Fis this by adding proper checks and returning.
>> >
>> > Typo.
>> >
>> > >
>> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> > > ---
>> > >  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 +++++++-----
>> > >  1 file changed, 7 insertions(+), 5 deletions(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > > index a263773f4d68..4485ef4f8ec6 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > > @@ -1390,11 +1390,13 @@ void intel_dp_128b132b_sdp_crc16(struct
>> > > intel_dp *intel_dp,
>> > >  	 * Default value of bit 31 is '0' hence discarding the write
>> > >  	 * TODO: Corrective actions on SDP corruption yet to be defined
>> > >  	 */
>> > > -	if (intel_dp_is_uhbr(crtc_state))
>> > > -		/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
>> > > -		drm_dp_dpcd_writeb(&intel_dp->aux,
>> > > -
>> > > DP_SDP_ERROR_DETECTION_CONFIGURATION,
>> > > -				   DP_SDP_CRC16_128B132B_EN);
>> > > +	if (!intel_dp_is_uhbr(crtc_state))
>> > > +		return;
>> >
>> > I see that while calling this function in intel_ddi_pre_enable_dp(),
>> > we do have a check for for DP2.0
>> >
>> > if (HAS_DP20(dev_priv))
>> > 		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
>> > 					    crtc_state);
>> >
>> > Should this check be added within the function too for the sake of
>> > completion?
>> >
>> 
>> HAS DP20 just checked for the display version number and not UHBR rates.
>> We need to check for UHBR rates and then enable this CRC.
>> 
>
> I was alluding more to the fact that there are two conditions for enabling the CRC.
>
> 	if (!HAS_DP20(dev_priv) || !intel_dp_is_uhbr(crtc_state))
> 		return;
>
> But if it is implicit that UHBR will only be supported on DP2.0 or/and this function is not
> expected to be used anywhere else (and hence without any possibility of this function being
> called without the HAS_DP20() check), the change looks good to me.

HAS_DP20() should be used as little as possible, basically for platform
DP 2.0 support only. In most cases it's UHBR we want to check, and that
implies DP 2.0 and 128b/132b.

This function is also fine to be called *without* the HAS_DP20() check,
and IMO that should just be removed. The crtc state simply can't have a
UHBR rate unless HAS_DP20() is true.


BR,
Jani.


>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>
> Regards
>
> Chaitanya
>
>
>> Thanks and Regards,
>> Arun R Murthy
>> -------------------
>> 
>> > Regards
>> >
>> > Chaitanya
>> >
>> > > +
>> > > +	/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
>> > > +	drm_dp_dpcd_writeb(&intel_dp->aux,
>> > > +			   DP_SDP_ERROR_DETECTION_CONFIGURATION,
>> > > +			   DP_SDP_CRC16_128B132B_EN);
>> > >
>> > >  	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b
>> > > enabled\n");  }
>> > > --
>> > > 2.25.1
>

-- 
Jani Nikula, Intel Open Source Graphics Center
