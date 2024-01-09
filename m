Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC885828326
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 10:29:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62FA810E3BD;
	Tue,  9 Jan 2024 09:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF76010E3BD
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 09:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704792559; x=1736328559;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=QTjGOVV9WLQPRk9tZ4L1Kjzae51p3PiCbZ/XULYkAv8=;
 b=Wf9aBcHB+VFn/QAxO9Jno8Y+j83GtB0yNcazPKRYmnSbXX0fXrGhVNpp
 Beuh7cUTKkssHSj43snzUrIB9d7GG18i0yhQpnrt+4mVGgCdlFLROYJJm
 O6SDBeXZp5I23HL6plzH4QhFgKmwGiTWykIyFjBy4qKIPruRh21x8lR7o
 2hXAyOxHTj9P4r7ZOCFovhwo1Qg9Ogr/IXUi0vZPVGTyeeo5WFi6JuFc7
 UG0y1m0QtvTQBe1wKGqJl07CGTT0gsZGZVk8rNlvh5N8czvJRFeMMzTob
 DBe5v5pTq0i7Y01PfEiNgn/EuYdgaGmHnuXsXDB8Cur1Pzp9+79PEemM6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="4898807"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; 
   d="scan'208";a="4898807"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 01:29:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="1113024464"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="1113024464"
Received: from aakinrin-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.36.188])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 01:29:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
In-Reply-To: <87zfxex3do.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
 <875y04x88t.fsf@intel.com>
 <IA0PR11MB730740C0117353DC60DAC4B4BA6A2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87zfxex3do.fsf@intel.com>
Date: Tue, 09 Jan 2024 11:29:13 +0200
Message-ID: <87wmsix3bq.fsf@intel.com>
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

On Tue, 09 Jan 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 09 Jan 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>>> -----Original Message-----
>>> From: Nikula, Jani <jani.nikula@intel.com>
>>> Sent: Monday, January 8, 2024 7:01 PM
>>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop.org;
>>> Deak, Imre <imre.deak@intel.com>
>>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
>>> Subject: Re: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
>>>
>>> On Wed, 03 Jan 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>>> > With a value of '0' read from MSTM_CAP register MST to be enabled.
>>> > DP2.1 SCR updates the spec for 128/132b DP capable supporting only one
>>> > stream and not supporting single stream sideband MSG.
>>> > The underlying protocol will be MST to enable use of MTP.
>>> >
>>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>> > ---
>>> >  drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
>>> >  1 file changed, 7 insertions(+), 2 deletions(-)
>>> >
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>>> > index 9ff0cbd9c0df..40d3280f8d98 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> > @@ -4038,8 +4038,13 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>>> >     if (!intel_dp_mst_source_support(intel_dp))
>>> >             return;
>>> >
>>> > -   intel_dp->is_mst = sink_can_mst &&
>>> > -           i915->display.params.enable_dp_mst;
>>> > +   /*
>>> > +    * Even if dpcd reg MSTM_CAP is 0, if the sink supports UHBR rates
>>> then
>>> > +    * DP2.1 can be enabled with underlying protocol using MST for MTP
>>> > +    */
>>> > +   intel_dp->is_mst = (sink_can_mst ||
>>> > +
>>> drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
>>> > +                       && i915->display.params.enable_dp_mst;
>>>
>>> We use drm_dp_is_uhbr_rate() in intel_dp_is_uhbr() to determine whether the
>>> link rate in the *crtc state* is uhbr, and by proxy whether the link in the *crtc
>>> state* is 128b/132b.
>>>
>> Yes! If the link rate in crtc_state is not uhbr then we dont enable 128/132b. Also the return from drm_dp_read_mst_cap() return 0 or 1 and if not mst then 128/132b is not enabled. We need to deviate here and a value of bit[0]=0, bit[1]=0 in MSTM_CAP register is 128/132b with SST. Hence this hack is added to see if the return from MSTM_CAP is 0x00 and if uhbr rates are supported then enable 128/132b.
>
> Per spec it depends on intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> DP_CAP_ANSI_128B132B, why not use that here too?

Also, shouldn't we ensure we don't try to do more than one stream?

>
>>
>>> There, we've already decided to use uhbr and 128b/132b.
>>>
>>> This one here is different, and I think it's taking us to the wrong direction. For
>>> example, it should be possible to downgrade the link from uhbr to non-uhbr on
>>> link failures. We don't have that yet. But this makes untangling that even
>>> harder.
>>
>> Yes upon having the fallback, I think we will have to handle fallback in this case separately. Change might be required in drm core, drm_dp_read_mst_cap() should consider the DP2.1 changes to accommodate this 0x00 value.
>>
>> Will be floating the fallback patches very soon.
>>
>> Thanks and Regards,
>> Arun R Murthy
>> --------------------
>>>
>>>
>>> BR,
>>> Jani.
>>>
>>>
>>> >
>>> >     drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
>>> >                                     intel_dp->is_mst);
>>>
>>> --
>>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
