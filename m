Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAneLDvuzmktsAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 00:31:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F8D38ECB5
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 00:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922A810F46E;
	Thu,  2 Apr 2026 22:31:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WgW+gzzy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C4010F442;
 Thu,  2 Apr 2026 22:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775169081; x=1806705081;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=cO64CKkACNbHlpt1hIl8CGNggDSyCJaq3hgxQTMrHqs=;
 b=WgW+gzzy3NALh+rMn6KoxPEu/XuF6Zws8H9dc7yb/ts6BQ0qdPj/C0R2
 YeSS4HOVyjuuE2gzq8XBoUPurojYsJmTvTsDRa/8B7uf+DaxUvvWWNcOa
 BSNnWPNa8pQJ5REV1uynN25BvxAHOibuJcwGqgcWg/yS0Q1N+M8elOzCZ
 L+MXnnp+Jy2oHXagMKIBUPYtjD4scTglZ1tMTpeBiFERHytFaroqvkTbF
 ShWN0X+NGXbH1NFbLBIGIcgSnWFNyLr9PtvgVp6huTLqhopNe+x2b6qfU
 WgPcFwrmL3YDWhCQqNEaA26AAd07+Vn4pjedwdzWk1ORsH17Qo3iwR/bp Q==;
X-CSE-ConnectionGUID: NdXrxuMZTUmc/beI0NlIQQ==
X-CSE-MsgGUID: 2cJWjvX+RdiUe1AgeMQ3UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="80126022"
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="80126022"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 15:31:20 -0700
X-CSE-ConnectionGUID: SrylpgJCTWifatqvDdT+1Q==
X-CSE-MsgGUID: Aek+H7K7SRqjQA12cBlI4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="223826662"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 15:31:17 -0700
Date: Fri, 3 Apr 2026 00:31:15 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
cc: "Grzelak, Michal" <michal.grzelak@intel.com>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v1] drm/i915/aux: use polling when irqs are unavailable
In-Reply-To: <CH3PR11MB73006943DE437D325A3B4540BA55A@CH3PR11MB7300.namprd11.prod.outlook.com>
Message-ID: <87c88e4d-f528-6503-44a6-0eaf94b689c3@intel.com>
References: <20260210111952.4138954-1-michal.grzelak@intel.com>
 <IA0PR11MB73072FD0F4A1F94AA63B5A04BA48A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <dbb4a305-612a-c01f-37e3-e7f86c72cc69@intel.com>
 <CH3PR11MB73006943DE437D325A3B4540BA55A@CH3PR11MB7300.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-920747834-1775169078=:1805036"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: 10F8D38ECB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-920747834-1775169078=:1805036
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Sun, 29 Mar 2026, Murthy, Arun R wrote:
>> -----Original Message-----
>> From: Grzelak, Michal <michal.grzelak@intel.com>
>> Sent: Saturday, March 28, 2026 9:22 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>
>> Cc: Grzelak, Michal <michal.grzelak@intel.com>; intel-xe@lists.freedesktop.org;
>> intel-gfx@lists.freedesktop.org; Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Subject: RE: [PATCH v1] drm/i915/aux: use polling when irqs are unavailable
>>
>> On Tue, 24 Mar 2026, Murthy, Arun R wrote:
>>>
>>>> -----Original Message-----
>>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>>>> Of Michał Grzelak
>>>> Sent: Tuesday, February 10, 2026 4:50 PM
>>>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>>>> Cc: Grzelak, Michal <michal.grzelak@intel.com>; Ville Syrjälä
>>>> <ville.syrjala@linux.intel.com>
>>>> Subject: [PATCH v1] drm/i915/aux: use polling when irqs are
>>>> unavailable
>>>>
>>>> PTL with physically disconnected display was observed to have 40s
>>>> longer execution time when testing
>> xe_fault_injection@xe_guc_mmio_send_recv.
>>>> The issue has not been seen when reverting commit 40a9f77a28fa
>>>> ("Revert
>>>> "drm/i915/dp: change aux_ctl reg read to polling read"").
>>>>
>>>> Apparently the configuration suffers from not having AUX enabled when
>>>> using interrupts. One probable cause can be xe enabling interrupts
>>>> too
>>>> late: interrupts need memory allocations which currently can't be
>>>> done before the display FB takeover is done.
>>>>
>>>> As for now, use polling for AUX in case interrupts are unavailable.
>>>>
>>>> Fixes: 40a9f77a28fa ("Revert "drm/i915/dp: change aux_ctl reg read to
>>>> polling
>>>> read"")
>>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 20
>>>> ++++++++++++++++----
>>>>  1 file changed, 16 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>>>> b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>>>> index b20ec3e589fad..9c9b6410366d5 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>>>> @@ -12,6 +12,7 @@
>>>>  #include "intel_dp.h"
>>>>  #include "intel_dp_aux.h"
>>>>  #include "intel_dp_aux_regs.h"
>>>> +#include "intel_parent.h"
>>>>  #include "intel_pps.h"
>>>>  #include "intel_quirks.h"
>>>>  #include "intel_tc.h"
>>>> @@ -60,18 +61,29 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>>>>  	struct intel_display *display = to_intel_display(intel_dp);
>>>>  	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
>>>>  	const unsigned int timeout_ms = 10;
>>>> +	bool done = true;
>>>>  	u32 status;
>>>> -	bool done;
>>>> +	int ret;
>>>>
>>>> +	if (intel_parent_irq_enabled(display)) {
>>>>  #define C (((status = intel_de_read_notrace(display, ch_ctl)) &
>>>> DP_AUX_CH_CTL_SEND_BUSY) == 0)
>>>> -	done = wait_event_timeout(display->gmbus.wait_queue, C,
>>>> -				  msecs_to_jiffies_timeout(timeout_ms));
>>>> +		done = wait_event_timeout(display->gmbus.wait_queue, C,
>>>> +
>>> Wonder if this is a corner/error case, as to how interrupts are disabled.
>>> Rather I feel should find out why interrupts are being disabled, if this would
>> be a valid scenario then in most of the places where wait_event_timeout() is
>> used in drm we should check if parent_irq is enabled! In that case, can this be a
>> workaround ?
>>
>> I'm not sure I get what you mean. Can you elaborate more on what you would
>> like to see?
>>
> Having interrupts disabled for such a long time is an issue and will have to identify that.

I think I still need more clarification. Do you mean the root cause
suggested by Ville seen in commit message isn't clear enough? If so,
which part?

> This work around would definitely help in those scenarios and a good to have in driver.
>

My point is that it is the only scenario. And there is no need to patch
driver with work arounds, until we see others.

>> My suspicion is that you are asking to
>> s/wait_event_timeout()/<this patch> in the whole drm directory. If that's the
>> case, I don't know if it is really neccessary since it is AUX-only related issue.
> Why is it only AUX related. For AUX Tx we are relaying on interrupts and getting this interrupt is the issue over here due to parent interrupt being disabled.

Reverting the AUX-only related commit makes the issue disappear. IMO
this together with suggestion from Ville makes it AUX-only related.

I can rephrase the commit message if it is unclear, but I'd
retain the WA in it's current form.

BR,
Michał

> Similarly in other places where waitqueues are used in i915, can have this WA to make the driver more robust.
>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>
>> Could you put some rationale behind it?
>>
>> BR,
>> Michał
>>
>>>
>>> Thanks and Regards,
>>> Arun R Murthy
>>> --------------------
>>>> msecs_to_jiffies_timeout(timeout_ms));
>>>> +
>>>> +#undef C
>>>> +	} else {
>>>> +		ret = intel_de_wait_ms(display, ch_ctl,
>>>> +				       DP_AUX_CH_CTL_SEND_BUSY, 0,
>>>> +				       timeout_ms, &status);
>>>> +
>>>> +		if (ret == -ETIMEDOUT)
>>>> +			done = false;
>>>> +	}
>>>>
>>>>  	if (!done)
>>>>  		drm_err(display->drm,
>>>>  			"%s: did not complete or timeout within %ums (status
>> 0x%08x)\n",
>>>>  			intel_dp->aux.name, timeout_ms, status); -#undef C
>>>>
>>>>  	return status;
>>>>  }
>>>> --
>>>> 2.45.2
>>>
>>>
>
--8323329-920747834-1775169078=:1805036--
