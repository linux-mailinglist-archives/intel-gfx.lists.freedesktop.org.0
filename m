Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DECB6441D5
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 12:07:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7671F10E131;
	Tue,  6 Dec 2022 11:06:53 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D20F10E02D;
 Tue,  6 Dec 2022 11:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670324807; x=1701860807;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=j/s4k56FcWW7rGTDDJr6WBmvVF+OANMnkay5be1k41M=;
 b=e9RYlKvTV4+WNWlN73ewjh7wE+JiNwB4dDDEIqABDz+nB145Xz88GYFi
 OZSuLa18AIA+mOcQ1G0Qkipn97aqjCvTA11Tboo41Dg1ojmY4HfmnePcy
 hmPM/PV6GO/qdql/947bGp8qKzrjy2O8DCaADXAufBf9mNlJUBHF0rhHH
 MIu15o6JNLqLx6cMo5wwTp3ACSZ6FSVwl3HYKuyz48khsqtUm+OhnOKa0
 FfqIoetWsqIM6V1nxMGUxCJ2Yjuf1Y8STxb1OhTCloPasr/xGxWif+urz
 CwFGcVp+IsHvPyU91yRTqpcTLwhB0JZ3kYEYQ65JOGInQzyy+jFz6/hjh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317739137"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="317739137"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 03:06:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714763101"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714763101"
Received: from kflahert-mobl.ger.corp.intel.com (HELO [10.213.212.142])
 ([10.213.212.142])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 03:06:45 -0800
Message-ID: <f0ebffa1-45b7-d6f9-4341-3fa8aabae3f5@linux.intel.com>
Date: Tue, 6 Dec 2022 11:06:43 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 John Harrison <john.c.harrison@intel.com>, Intel-GFX@Lists.FreeDesktop.Org
References: <20221118015858.2548106-1-John.C.Harrison@Intel.com>
 <20221118015858.2548106-5-John.C.Harrison@Intel.com>
 <48f594de-9682-4b60-f934-9420d02b405e@intel.com>
 <dd9559e8-7d65-d7bb-ea1a-d169a1c7eec3@intel.com>
 <4579b7e8-eae7-b760-66aa-b01273d18aab@intel.com>
 <d658f8fa-a063-aa0c-48ff-14f32cb6b339@intel.com>
 <9a5a84be-a5ae-7be2-f522-5e976511e4e1@intel.com>
 <143a660d-de2d-a77a-b490-8ad2add80420@linux.intel.com>
 <dd787d9d-8559-1da4-7e99-2635ef1341a8@intel.com>
 <c5622088-e381-1df4-417d-9b033b0a6afe@linux.intel.com>
 <467f47f4-c30f-16ba-3330-a3d4752366a8@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <467f47f4-c30f-16ba-3330-a3d4752366a8@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915/guc: Add GuC CT specific
 debug print wrappers
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 05/12/2022 18:44, Michal Wajdeczko wrote:
> On 05.12.2022 14:16, Tvrtko Ursulin wrote:
>>
>> On 02/12/2022 20:14, John Harrison wrote:
>>
>>>>> and while for dbg level messages it doesn't matter, I assume we should
>>>>> be consistent for err/warn/info messages (as those will eventually show
>>>>> up to the end user) so let maintainers decide here what is
>>>>> expectation here
>>>>
>>>> Could we have some examples pasted here, of the end result of this
>>>> series, for all message "categories" (origins, macros, whatever)?
>>>
>>> GT initialisation:
>>> gt_err(gt, "Failed to allocate scratch page\n");
>>> i915 0000:00:02.0: [drm] GT0: Failed to allocate scratch page
>>>
>>> G2H notification handler:
>>> guc_err(guc, "notification: Invalid length %u for deregister done\n",
>>> len);
>>> i915 0000:00:02.0: [drm] GT0: GuC notification: Invalid length 0 for
>>> deregister done
> 
> please note that today this message is coded as:
> 
> drm_err(&guc_to_gt(guc)->i915->drm, "Invalid length %u\n", len);
> -> i915 0000:00:02.0: [drm] Invalid length %u
> 
> which makes this rather an example of meaningless log

Okay, so log text needs improving anyway which is orthogonal.

>> I'm not liking the inconsistency between gt_err and guc_err where with
>> latter callers either need to start the message with lower case because
>> of the unstructured "GuC " prefix added. Which then reads bad if callers
>> do guc_err(guc, "Error X happend").
>>
>> Looks like Michal was pointing out the same thing, AFAIU at least when
>> re-reading the thread now.
>>
>> Why wouldn't this work:
>>
>> guc_err(guc, "Invalid length %u for deregister done notification\n", len);
>> i915 0000:00:02.0: [drm] GT0: GuC: Invalid length 0 for deregister done
>> notification
> 
> +1
> 
>>
>> Or if the use case for adding custom prefixes is strong then maybe
>> consider:
>>
>> guc_err(guc, "notification", "Invalid length 0 for deregister done");
>> i915 0000:00:02.0: [drm] GT0: GuC notification: Invalid length 0 for
>> deregister done
>>
>> guc_err(guc, "", "Error X");
>> i915 0000:00:02.0: [drm] GT0: GuC: Error X
> 
> -1
> 
> this will make logging macros too different from others (unless we
> hide/use prefixes inside macros only, but I'm not sure there is any ROI)

Yeah I said if the use case is strong, no strong opinion either way.

>>> CTB initialisation:
>>> ct_probe_error(ct, "Failed to control/%s CTB (%pe)\n",
>>> str_enable_disable(enable), ERR_PTR(err));
>>> i915 0000:00:02.0: [drm] GT0: GuC CT Failed to control/enable CTB
>>> (EINVAL)
>>
>> Okay same as above.
>>
>>> Random meaningless (to me) message that is apparently a display thing:
>>> drm_dbg_kms(&dev_priv->drm, "disabling %s\n", pll->info->name);
>>> i915 0000:00:02.0: [drm:intel_disable_shared_dpll [i915]] disabling
>>> PORT PLL B
>>
>> Plan is to not touch outside gt/.
>>
>>> I'm sure you can extrapolate to all other forms of dbg, notice, info,
>>> etc. without me having to manually type each one out, given that they
>>> are all identical.
>>>
>>> Personally, I think the above should be just:
>>> gt_err(gt, "Failed to allocate scratch page\n");
>>> i915 0000:00:02.0: [drm] GT0: Failed to allocate scratch page
>>>
>>> gt_err(guc_to_gt(guc), "G2H: Invalid length for deregister done:
>>> %u\n", len);
>>> i915 0000:00:02.0: [drm] GT0: G2H: Invalid length for deregister done: 0
> 
> that's probably should be:
> 
> 	"Invalid length for G2H deregister done: %u\n
> 
> and it will still just look fine if we auto append the 'GuC' prefix:
> 
> i915 0000:00:02.0: [drm] GT0: GuC: Invalid length for G2H deregister
> 
>>>
>>> gt_probe_error(ct_to_gt(ct), "Failed to %s CT %d buffer (%pe)\n",
>>> str_enable_disable(enable), send ? "SEND" : "RECV", ERR_PTR(err));
>>> i915 0000:00:02.0: [drm] GT0: Failed to enable CT SEND buffer (EINVAL)
> 
> having "GuC/CT" prefix here will also look fine:
> 
> i915 0000:00:02.0: [drm] GT0: GuC: Failed to enable CT SEND buffer
> i915 0000:00:02.0: [drm] GT0: GuC: CT: Failed to enable SEND buffer
> i915 0000:00:02.0: [drm] GT0: CT: Failed to enable SEND buffer

Works for me.

>> We could but it seems we agreed some weeks ago to consolidate the
>> existing CT_ERROR macros and such in this exercise. At least no
>> objections were raised to that plan.
>>
>> If now we want to go back on that, and if you want to have
>> guc_to_gt(guc) in all gt/uc/ call sites that's fine by me, but please
>> get some acks and consensus from people who work in that area. And under
>> that option someone would also need to convert the CT code to new macros.
> 
> while the main goal of this series was to have GT# appended to the log
> messages but we also wanted to simplify the use of the logging macros by
> passing the component pointer directly (with extra *bonus* that allows
> to auto append component specific prefix, if any, like CT macros do)
> 
> IMHO adding guc_xxx() macros with "GuC:" prefix will do the trick and
> since many of the existing GuC related logs are already broken or
> incomplete, we might fix them accordingly.
> 
> In other words in addition to gt_xxx() I still want additional guc_xxx()
> macros (as it will allow us to fix related messages) and ct_xxx() macros
> (as we already have CT_xxx so no need to change anything)

Both approaches are fine by me as long as it's logical and consistent 
and we manage not to leave the conversion half-done for too long.

Maybe as a way forward work could be split? If John wants to deal with 
gt_xxx macros, avoid touching GuC (putting his original motivation 
aside) and you want to convert the gt/uc folder? Assuming John you are 
okay with "GuC:" and "CT:" prefixes.

Regards,

Tvrtko
