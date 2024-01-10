Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADC082980E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 11:54:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB92410E5AE;
	Wed, 10 Jan 2024 10:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DEDE10E5AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 10:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704884043; x=1736420043;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=llOFoaXHfwgcmQlm2XkqvZ/LEXnLTdkZZVspXtt0Dxk=;
 b=P6H0aGC/ptugRgpiwd79BwgpzdhIiFdApeWVcUJ+G7eXvYcY3ISSghsU
 ta2MDT2h5u6YfaJrccMl97mu+IfQdkNlvVtpmmoN4st5unLtQQ8rgvU56
 G+CbyhcFPS2ckks624QyriPTZk7NpfA3toT8d/9O0OuEfhg5eYemYzKFR
 0mR++FSerPhZY5Bz8DkBGuhCHGS9oHo+U74zl+xpVIVreWkWYSjNhX1GI
 T62ITMCR9oHZsYF51wAYwUVU+JMLEwHxecjmFrsxme1o7+okokxvFJmmH
 ZO0aSqsGJeMJN+o8KDI82E2tgSewGsya2pr06Jw/Nxyk3+8gtSYZFM/uD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11826243"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="11826243"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 02:54:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="925599251"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="925599251"
Received: from fpallare-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.36.240])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 02:54:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
In-Reply-To: <IA0PR11MB73073A46D0967A2E6A569165BA692@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
 <875y04x88t.fsf@intel.com>
 <IA0PR11MB730740C0117353DC60DAC4B4BA6A2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87zfxex3do.fsf@intel.com> <87wmsix3bq.fsf@intel.com>
 <IA0PR11MB73073A46D0967A2E6A569165BA692@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Wed, 10 Jan 2024 12:53:57 +0200
Message-ID: <878r4xwjay.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 10 Jan 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Tuesday, January 9, 2024 2:59 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop.org;
>> Deak, Imre <imre.deak@intel.com>
>> Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
>>
>> On Tue, 09 Jan 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> > On Tue, 09 Jan 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >>> -----Original Message-----
>> >>> From: Nikula, Jani <jani.nikula@intel.com>
>> >>> Sent: Monday, January 8, 2024 7:01 PM
>> >>> To: Murthy, Arun R <arun.r.murthy@intel.com>;
>> >>> intel-gfx@lists.freedesktop.org; Deak, Imre <imre.deak@intel.com>
>> >>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
>> >>> Subject: Re: [PATCH] drm/i915/display/dp: 128/132b DP-capable with
>> >>> SST
>> >>>
>> >>> On Wed, 03 Jan 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> >>> > With a value of '0' read from MSTM_CAP register MST to be enabled.
>> >>> > DP2.1 SCR updates the spec for 128/132b DP capable supporting only
>> >>> > one stream and not supporting single stream sideband MSG.
>> >>> > The underlying protocol will be MST to enable use of MTP.
>> >>> >
>> >>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> >>> > ---
>> >>> >  drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
>> >>> >  1 file changed, 7 insertions(+), 2 deletions(-)
>> >>> >
>> >>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> >>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> >>> > index 9ff0cbd9c0df..40d3280f8d98 100644
>> >>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> >>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> >>> > @@ -4038,8 +4038,13 @@ intel_dp_configure_mst(struct intel_dp
>> *intel_dp)
>> >>> >     if (!intel_dp_mst_source_support(intel_dp))
>> >>> >             return;
>> >>> >
>> >>> > -   intel_dp->is_mst = sink_can_mst &&
>> >>> > -           i915->display.params.enable_dp_mst;
>> >>> > +   /*
>> >>> > +    * Even if dpcd reg MSTM_CAP is 0, if the sink supports UHBR
>> >>> > + rates
>> >>> then
>> >>> > +    * DP2.1 can be enabled with underlying protocol using MST for MTP
>> >>> > +    */
>> >>> > +   intel_dp->is_mst = (sink_can_mst ||
>> >>> > +
>> >>> drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
>> >>> > +                       && i915->display.params.enable_dp_mst;
>> >>>
>> >>> We use drm_dp_is_uhbr_rate() in intel_dp_is_uhbr() to determine
>> >>> whether the link rate in the *crtc state* is uhbr, and by proxy
>> >>> whether the link in the *crtc
>> >>> state* is 128b/132b.
>> >>>
>> >> Yes! If the link rate in crtc_state is not uhbr then we dont enable 128/132b.
>> Also the return from drm_dp_read_mst_cap() return 0 or 1 and if not mst then
>> 128/132b is not enabled. We need to deviate here and a value of bit[0]=0,
>> bit[1]=0 in MSTM_CAP register is 128/132b with SST. Hence this hack is added
>> to see if the return from MSTM_CAP is 0x00 and if uhbr rates are supported
>> then enable 128/132b.
>> >
>> > Per spec it depends on intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
>> > DP_CAP_ANSI_128B132B, why not use that here too?
>>
>> Also, shouldn't we ensure we don't try to do more than one stream?
>>
> Yes, this will be taken care of in a separate patch, tracked as part of separate JIRA. VLK-55112.

Well, you shouldn't really first open the possibility for a broken
config, and then say it'll be taken care of in the future.

BR,
Jani.


-- 
Jani Nikula, Intel
