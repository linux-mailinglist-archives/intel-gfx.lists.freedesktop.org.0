Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 722C8868B1E
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 09:45:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB3210E5FC;
	Tue, 27 Feb 2024 08:45:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lcGUF0Np";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0489810E727
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 08:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709023539; x=1740559539;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YSwkeRcZZzY3LsU0YW6Hm46Oc+UVQAc3ADuQUceSUHA=;
 b=lcGUF0NpBovP3ZlyBnGizwl2sOj859h2RFUBtp5VEgqu3J/Vgrc7oHL9
 sU/SSO4mv+YtKSTt48Vi4AslnphsBZWlgAb1syW+M7j7wpq6clkdXPCvD
 Ef4bN2vaVBa8+VB8qwLWn9rJ6BQlUJv8XMqpNnQTty1QuG3IlvYtoC2EO
 Pev+xgUgfh/jKQMs6+nPDdGVW6H/G0VjqbEZ3dazLlnks7I/xIdEuwLm0
 wnKIT/5U3G6Zz2GT/iIFeVDEGS3BTxVWRsLkPC+n4TxJDbiUShf6u2nZI
 NaSIms00PsqVQBIyBGDkIX3ljmU++uKfi677KwIsSKW9v/r+C9KRMTitB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="6300640"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6300640"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 00:45:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="7117255"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.187])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 00:45:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>, "Nautiyal, Ankit
 K" <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar Ajitkumar"
 <mitulkumar.ajitkumar.golani@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
 i915_drrs_status
In-Reply-To: <44cb0094-7106-47db-bd73-7b700c58c3ff@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240221111223.2313692-1-bhanuprakash.modem@intel.com>
 <IA1PR11MB63487164DE1F2C03BDBC1C54B2562@IA1PR11MB6348.namprd11.prod.outlook.com>
 <b8f2bb3d-30fd-42f7-b120-af851f594225@intel.com>
 <87edczmhn5.fsf@intel.com>
 <44cb0094-7106-47db-bd73-7b700c58c3ff@intel.com>
Date: Tue, 27 Feb 2024 10:45:32 +0200
Message-ID: <877ciql2hf.fsf@intel.com>
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

On Tue, 27 Feb 2024, "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com> wrote:
> On 26-02-2024 07:50 pm, Jani Nikula wrote:
>> On Mon, 26 Feb 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>>> On 2/22/2024 11:27 AM, Golani, Mitulkumar Ajitkumar wrote:
>>>>
>>>>> -----Original Message-----
>>>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>>>>> Bhanuprakash Modem
>>>>> Sent: Wednesday, February 21, 2024 4:42 PM
>>>>> To: intel-gfx@lists.freedesktop.org
>>>>> Cc: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>
>>>>> Subject: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
>>>>> i915_drrs_status
>>>>>
>>>>> If the connected panel supports both DRRS & PSR, driver gives preference to
>>>>> PSR ("DRRS enabled: no"). Even though the hardware supports DRRS, IGT
>>>>> treats ("DRRS enabled: yes") as not capable.
>>>>>
>>>>> Introduce a new entry "DRRS capable" to debugfs i915_drrs_status, so that
>>>>> IGT will read the DRRS capability as "DRRS capable: yes".
>>>>>
>>>>> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/display/intel_drrs.c | 6 ++++++
>>>>>    1 file changed, 6 insertions(+)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c
>>>>> b/drivers/gpu/drm/i915/display/intel_drrs.c
>>>>> index 6282ec0fc9b4..169ef38ff188 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
>>>>> @@ -299,6 +299,7 @@ void intel_drrs_crtc_init(struct intel_crtc *crtc)  static
>>>>> int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)  {
>>>>>    	struct intel_crtc *crtc = m->private;
>>>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>>>>    	const struct intel_crtc_state *crtc_state;
>>>>>    	int ret;
>>>>>
>>>>> @@ -310,6 +311,11 @@ static int intel_drrs_debugfs_status_show(struct
>>>>> seq_file *m, void *unused)
>>>>>
>>>>>    	mutex_lock(&crtc->drrs.mutex);
>>>>>
>>>>> +	seq_printf(m, "DRRS capable: %s\n",
>>>>> +		   str_yes_no(crtc_state->has_drrs ||
>>>>> +			      HAS_DOUBLE_BUFFERED_M_N(i915) ||
>>>>> +			      intel_cpu_transcoder_has_m2_n2(i915,
>>>>> +crtc_state->cpu_transcoder)));
>> 
>> Why would "capability" look at ->has_drrs?
>
> IGT interprets the platform capability as "DRRS enabled: yes", which is 
> represented by crtc_state->has_drrs.

That doesn't answer the question.

> However, if the connected panel supports both DRRS and PSR, the driver 
> prioritizes PSR, causing crtc_state->has_drrs to become false. This 
> leads to IGT incorrectly reading the DRRS capability as "DRRS enabled: no".
>
> To rectify this we introduced a new entry "DRRS capable: yes/no".
>
>> 
>> Why didn't anyone question the duplication of the conditions of what
>> "drrs capable" means?

Please remove the duplication. There should be a single point of truth
on what "drrs capable" means. One function.

BR,
Jani.


>> 
>> And what *does* "drrs capable" mean here anyway? That the platform is
>> capable? But what if the display isn't capable?
>
> "DRRS capable: yes/no" is the platform capability. For display 
> capability, there is another connector specific debugfs called 
> "i915_drrs_type".
>
> - Bhanu
>
>> 
>> 
>> BR,
>> Jani.
>> 
>> 
>> 
>>>>> +
>>>> Adding DRRS capable property to debugfs.
>>>>
>>>> Change LGTM
>>>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>>>
>>>
>>> Thanks for the patch and review. Pushed to drm-intel-next.
>>>
>>> Regards,
>>>
>>> Ankit
>>>
>>>>>    	seq_printf(m, "DRRS enabled: %s\n",
>>>>>    		   str_yes_no(crtc_state->has_drrs));
>>>>>
>>>>> --
>>>>> 2.43.0
>> 

-- 
Jani Nikula, Intel
