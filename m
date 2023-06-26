Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CD973DF4B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 14:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE7F10E1F4;
	Mon, 26 Jun 2023 12:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D25410E1F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 12:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687782751; x=1719318751;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JiYAl0UGYXagx2hW2nQLuw4OFqTN79kHJPbkY3RSQbc=;
 b=KW9VKc9bziNpaC7IK8f8GpR0f/VBIeb+mcXWpzWgWXRBd5xOlmCGGfuz
 Eeh3UB5izvBQlr6YeI7JgPfgxsnCaOFei9x+oq8f85m1p6LWo7JfhtmWz
 RaD/+16uK0fg4q1+P6qvtvFsNpnI5Ay6rQCwCtLuSoo3WueBOuaDVyIQ7
 vpFB+rE+H1uSghOIFhL6aP5QWPwZsOOYIMuy3pLkbb8c4mBnA9q2AeAW9
 NlkU/5Kis6QLabgrGcV/Ux2uJvPPm0rgBc8NQNaW/nJ3Y9f+d4EY/iSfj
 ZvtgZHP1iUcVomkw5L9rL40k8vNoVB5M6TXFwR5tgJiZjuWxArlJbYFKW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="427249100"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="427249100"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:32:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="890267884"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="890267884"
Received: from avhiruda-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.41.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:32:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB31773E3293F8287557F918BEBA22A@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620025243.979317-1-arun.r.murthy@intel.com>
 <871qi5fb19.fsf@intel.com>
 <DM6PR11MB31773E3293F8287557F918BEBA22A@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Mon, 26 Jun 2023 15:32:13 +0300
Message-ID: <87h6quv1yq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Remove support for
 UHBR13.5
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

On Thu, 22 Jun 2023, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Wednesday, June 21, 2023 2:27 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Deak, Imre <imre.deak@intel.com>; Kahola, Mika
>> <mika.kahola@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
>> Subject: Re: [PATCH] drm/i915/display/dp: Remove support for UHBR13.5
>>
>> On Tue, 20 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> > As per the DP2.1 Spec support for UHBR13.5 is optional. Hence removing
>> > the support for UHBR13.5
>>
>> That's just not a proper rationale. Please explain.
>>
> Programming for UHBR10 and UHBR20 is similar compared to UHBR13.5
> As of now we have validated 10Gbps and 20Gbps. The spec also points out when 20Gbps is supported 13.5Gbps is optional so we have not validated/implemented the UHBR13.5
> Now we have the DP2.1 compatible panel is market, expecting users can come up with UHBR13.5 not working. Hence removing the support for 13.5Gbps for now.
> Maybe once we have support for UHBR13.5 in the driver we can enable this.

What's missing?

BR,
Jani.



>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>> BR,
>> Jani.
>>
>>
>> > UHBR10 can be used for 6k panels.
>> >
>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 9f40da20e88d..54ddc953e5bc 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -465,7 +465,7 @@ intel_dp_set_source_rates(struct intel_dp
>> *intel_dp)
>> >     };
>> >     static const int icl_rates[] = {
>> >             162000, 216000, 270000, 324000, 432000, 540000, 648000,
>> 810000,
>> > -           1000000, 1350000,
>> > +           1000000,
>> >     };
>> >     static const int bxt_rates[] = {
>> >             162000, 216000, 243000, 270000, 324000, 432000, 540000
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
