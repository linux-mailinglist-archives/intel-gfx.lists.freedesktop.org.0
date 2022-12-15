Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE11A64DFD1
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 18:38:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD97910E448;
	Thu, 15 Dec 2022 17:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E3110E448
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 17:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671125917; x=1702661917;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=JEZpKYyJA1EWM8S5RWNZSmIYNMGHX5oWVnRDBoc8hIY=;
 b=M823+FJm2mqRcsXSCsobLfZNVK/aZSlBUt9UrjIC211AOQCHaWJ2tgnM
 tfIqCuXgHnmQ3Lt7eCOOsFhCPkox14zAxYIjL+iSGJxYVvVx9kU9SRdun
 GmSiFXUgme30/FYvBYwuZKzEjArj3zbnJ+KDdv+pukeslNg7oHRW4urYn
 TJ97g61fDDlIwI9Y2cELBCX2zSutHgfq9kMlcT/pGmTVu9FpCda7aiZGO
 qwnISezGCcdf+jjTREv7k9lOyaUwnLtNLFYVu22FR9yxgc9+S//2lFrDl
 pUtipTKlaVW0DKaK6KzT50qigP7DyWc6u8BcZx9yYNDXthZWtMwj2QiEI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="318797539"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="318797539"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 09:38:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="712983700"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="712983700"
Received: from abindu-mobl.amr.corp.intel.com (HELO [10.213.188.28])
 ([10.213.188.28])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 09:38:24 -0800
Message-ID: <7f00495b-4fb7-01f7-a262-09813b84c57b@linux.intel.com>
Date: Thu, 15 Dec 2022 17:38:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>
References: <20220817224304.255767-1-radhakrishna.sripada@intel.com>
 <Yv3VY2agZffBJLut@mdroper-desk1.amr.corp.intel.com>
 <071b7a16-8848-f9f7-2dc7-53c499787c29@intel.com>
 <DM4PR11MB5971A43B5E78F34B30EA5E1587729@DM4PR11MB5971.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <DM4PR11MB5971A43B5E78F34B30EA5E1587729@DM4PR11MB5971.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip Bit12 fw domain reset for
 gen12+
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


On 25/08/2022 18:49, Sripada, Radhakrishna wrote:
> Hi G.G,
> 
>> -----Original Message-----
>> From: Mun, Gwan-gyeong <gwan-gyeong.mun@intel.com>
>> Sent: Tuesday, August 23, 2022 11:14 PM
>> To: Roper, Matthew D <matthew.d.roper@intel.com>; Sripada, Radhakrishna
>> <radhakrishna.sripada@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip Bit12 fw domain reset for gen12+
>>
>>
>>
>> On 8/18/22 3:00 PM, Matt Roper wrote:
>>> On Wed, Aug 17, 2022 at 03:43:04PM -0700, Radhakrishna Sripada wrote:
>>>> Bit12 of the Forcewake request register should not be cleared post
>>>> gen12. Do not touch this bit while clearing during fw domain reset.
>>>>
>>>> Bspec: 52542
>>>>
>>>> Signed-off-by: Sushma Venkatesh Reddy
>> <sushma.venkatesh.reddy@intel.com>
>>>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/intel_uncore.c | 5 ++++-
>>>>    1 file changed, 4 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c
>> b/drivers/gpu/drm/i915/intel_uncore.c
>>>> index a852c471d1b3..c85e2b686c95 100644
>>>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>>>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>>>> @@ -113,7 +113,10 @@ fw_domain_reset(const struct
>> intel_uncore_forcewake_domain *d)
>>>>    	 * off in ICL+), so no waiting for acks
>>>>    	 */
>>>>    	/* WaRsClearFWBitsAtReset:bdw,skl */
>>>
>>> While we're at it, let's remove the "bdw,skl" from this comment since
>>> it's misleading and doesn't match the code.  We do still apply this
>>> workaround on other pre-gen12 platforms than just those two.
>>>
>>> Aside from the comment tweak,
>>>
>>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>>>
>>>> -	fw_clear(d, 0xffff);
>>>> +	if (GRAPHICS_VER(d->uncore->i915) >= 12)
>> Hi Radhakrishna Sripada,
>>
>> In bspec 52542, there is an explanation that BIT12 should not be set for
>> address 0xA188 corresponding to FORCEWAKE_MT/FORCEWAKE_GT_GEN9, but
>> in
>> bspec 52466, there is no explanation that BIT12 should not be set for
>> address 0xA278, address of FORCEWAKE_RENDER_GEN9.
>>
>> I ask if fw_domain_reset() should perform fw_clear() by comparing not
>> only GRAPHICS_VER() >= 12 but also checking of FW_DOMAIN_ID_RENDER and
>> FW_DOMAIN_ID_GT values.
> Based on the note in 52542, all other WA notes are overridden by the comment. So unless stated
> otherwise, it should apply to this register as well.
> 
> Created a bspec issue to request for additional clarification just to be safe. Will send an additional
> patch if the comment contradicts our understanding.

How important was this patch - should it be sent to stable?

Regards,

Tvrtko
