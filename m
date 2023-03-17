Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2F86BE53A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 10:15:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA0EB10EEA8;
	Fri, 17 Mar 2023 09:15:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AA7C10EEA8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 09:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679044538; x=1710580538;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Un5z/L5aaJ+9WWl8lebIi2UXcogUH1ZCjdTenEjn8sU=;
 b=N2XYI/3QHbPsQj8EMYIhwTVkBkhaKm6yk388v5MWXwBxfpCf03HWlKA+
 stfiotyTzPrRDqUB4AcVehWCLuhEUjRKjCvTfqW0J26tfqM6ZW4MMf1gY
 VKPi1o9IDohmiI50RuoE+SuMwpGn7Qn89vkDJLoHbTUB07Eq1QmuQ2LTV
 Jkf+QN8yCyIQcj05M/iga9NSVIn1rffhYkccRkW69tralzcvpzV/5159L
 SmzFZ6PpvQRz90GVvN3St4YSFSo/kMNOCeR6wlRVWl6aiBdS6qyvb2akA
 8O91IXAiYqvJurl8k0vZhJw2Hcu6ph9PNIvsYKuKo/a5wIS0qZekhfFOL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="365919377"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="365919377"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 02:15:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="657497910"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="657497910"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.22.107])
 ([10.213.22.107])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 02:15:35 -0700
Message-ID: <1f460864-0195-aea3-fa22-60cd7a6cdb3e@intel.com>
Date: Fri, 17 Mar 2023 10:15:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
Content-Language: en-US
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20230314151920.1065847-1-andrzej.hajda@intel.com>
 <3958487c-1110-aa2b-2b53-56a3fe23bf9a@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <3958487c-1110-aa2b-2b53-56a3fe23bf9a@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: perform uc late init after
 probe error injection
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, chris.p.wilson@linux.intel.com,
 Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15.03.2023 11:05, Das, Nirmoy wrote:
> 
> On 3/14/2023 4:19 PM, Andrzej Hajda wrote:
>> Probe pseudo errors should be injected only in places where real errors
>> can be encountered, otherwise unwinding code can be broken.
>> Placing intel_uc_init_late before i915_inject_probe_error violated
>> this rule, resulting in following bug:
>> __intel_gt_disable:655 GEM_BUG_ON(intel_gt_pm_is_awake(gt))
>>
>> Fixes: 481d458caede ("drm/i915/guc: Add golden context to GuC ADS")
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Acked-by: Nirmoy Das <nirmoy.das@intel.com>

Thx Nirmoy and Andi, pushed.

Regards
Andrzej

>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>> index 6ca944d01eb677..38c62e4ad3eba2 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -736,12 +736,12 @@ int intel_gt_init(struct intel_gt *gt)
>>       if (err)
>>           goto err_gt;
>> -    intel_uc_init_late(&gt->uc);
>> -
>>       err = i915_inject_probe_error(gt->i915, -EIO);
>>       if (err)
>>           goto err_gt;
>> +    intel_uc_init_late(&gt->uc);
>> +
>>       intel_migrate_init(&gt->migrate, gt);
>>       goto out_fw;

