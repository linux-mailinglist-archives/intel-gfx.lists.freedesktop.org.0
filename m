Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F352063216D
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 12:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D1F10E2B0;
	Mon, 21 Nov 2022 11:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F46310E2B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 11:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669031750; x=1700567750;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=WdoCgvroKp96oVvkj5Bcpp7x5UgsjRvqcFq5CrnPipQ=;
 b=B80bFHa5CNwmnQHpxJ8MsNGDq9ZI5axlybmTEA0w/xQlADpbxMLCxbZ/
 2WQq5m6rJSt3hkcE5qavfMmWbSCs7GMYwRU1xGhXA1DoMF6V04ZzsT0ib
 ufmCKq2FHVH0yRcmBY1m1Zer/qFaKUY4Fyp9MQFShqK8A5pSRAqon27O8
 bg1xPG2/LSkqvliDaKDTug+CpixbxQApQGSmCRusIWooqGXvLKlHNEj1v
 Vllnj1YOufnvTQwmlPgQfPFv8dHkVKbVXgLwCtYmQxCUsNywELpBJ3lYP
 y4LwwMdGBFsg1Y5so7OU4HtRnZ44ny/WSVqkxE3Rf8BU+RWfg4qbJt1UG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="375685204"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="375685204"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 03:55:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="673950827"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="673950827"
Received: from slarkin-mobl.ger.corp.intel.com (HELO [10.213.201.194])
 ([10.213.201.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 03:55:47 -0800
Message-ID: <e33f417d-ae27-95df-d1dd-40e487efc674@linux.intel.com>
Date: Mon, 21 Nov 2022 11:55:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "Winkler, Tomas" <tomas.winkler@intel.com>,
 "Usyskin, Alexander" <alexander.usyskin@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, David Airlie <airlied@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20221121092449.328674-1-alexander.usyskin@intel.com>
 <MN2PR11MB4093DB849B8945C9618C4E88E50A9@MN2PR11MB4093.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <MN2PR11MB4093DB849B8945C9618C4E88E50A9@MN2PR11MB4093.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gsc: Only initialize GSC in
 tile 0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/11/2022 09:35, Winkler, Tomas wrote:
>>
>> From: José Roberto de Souza <jose.souza@intel.com>
>>
>> For multi-tile setups the GSC operational only on the tile 0.
>> Skip GSC auxiliary device creation for all other tiles in GSC device init code.
>> Initialize basic GSC fields and use the same path as HECI1 (HECI_PXP) device
>> disable.
>>
>> Cc: Tomas Winkler <tomas.winkler@intel.com>
>> Cc: Vitaly Lubart <vitaly.lubart@intel.com>
>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> 
> Acked-by: Tomas Winkler <tomas.winkler@intel.com>

Feel free to upgrade to r-b so someone can merge it. :)

>> ---
>> V2: Move decision to skip initialization into GSC device init code.
>>      This initializes basic GSC fields and uses the same path
>>      as HECI1 (HECI_PXP) device disable.
>>      It is simpler and protects interrupt handler too.
>>
>>   drivers/gpu/drm/i915/gt/intel_gsc.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c
>> b/drivers/gpu/drm/i915/gt/intel_gsc.c
>> index 976fdf27e790..bcc3605158db 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
>> @@ -174,6 +174,14 @@ static void gsc_init_one(struct drm_i915_private
>> *i915, struct intel_gsc *gsc,
>>   	intf->irq = -1;
>>   	intf->id = intf_id;
>>
>> +	/*
>> +	 * On the multi-tile setups the GSC is functional on the first tile only
>> +	 */
>> +	if (gsc_to_gt(gsc)->info.id != 0) {
>> +		drm_dbg(&i915->drm, "Not initializing gsc for remote
>> tiles\n");

Is there any value of adding a log message for this? I don't immediately 
see that it is worth it, but your call.

Regards,

Tvrtko

>> +		return;
>> +	}
>> +
>>   	if (intf_id == 0 && !HAS_HECI_PXP(i915))
>>   		return;
>>
>> --
>> 2.34.1
> 
