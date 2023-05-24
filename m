Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDE570F4C6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 13:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6304110E0AA;
	Wed, 24 May 2023 11:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A184610E0AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 11:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684926334; x=1716462334;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=aWXEP/r+kEuso+53oVmUTTBVq3Deg3LivipIdLDWk84=;
 b=nr+nf9NWDDzhlzGB9HUzMWF02sYc7sdZFhbDr/m39WfoQONf91GUhOsO
 3r5V9c0lWYJa/gaY6K2jUfXqc2uiZIt645uGJkd8ozSuNNVvhCs6U7cWY
 Jh8KgtBwGTps1vpGlXGIuqUNRtRwCJpP5ZHs9D4YF2DxKXRzgF2BBdP87
 u57g2kOQhe8H6VUV7uvVKs+pLIwuC0ofaMRJMJb9OwhWoAwNsWtmrxqCy
 rfarChVRekoXdJv6CmIwFughE6RDs44PS4qZyYv8mo7dFJJp0wjBuONVI
 xe/oAy+ser7FSnzAY86tSplZICPduDaTfzS3w64qixmvi5Qpo3gYtSUV1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="333154036"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="333154036"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 04:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="794150316"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="794150316"
Received: from bmhacket-mobl.ger.corp.intel.com (HELO [10.213.218.245])
 ([10.213.218.245])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 04:05:32 -0700
Message-ID: <2128eea5-32f7-dbed-6c56-162038883dc3@linux.intel.com>
Date: Wed, 24 May 2023 12:05:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230524090521.596399-1-luciano.coelho@intel.com>
 <20230524090521.596399-3-luciano.coelho@intel.com>
 <0a1cf2a3-3402-04dd-b276-4d1ecd0d170b@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <0a1cf2a3-3402-04dd-b276-4d1ecd0d170b@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: add a dedicated workqueue
 inside drm_i915_private
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 24/05/2023 12:00, Tvrtko Ursulin wrote:
> 
> On 24/05/2023 10:05, Luca Coelho wrote:

8<

>>       if (pool_free_older_than(pool, HZ))
>> -        schedule_delayed_work(&pool->work,
>> -                      round_jiffies_up_relative(HZ));
>> +        queue_delayed_work(gt->i915->unordered_wq, &pool->work,
>> +                   round_jiffies_up_relative(HZ));
>>   }
>>   static void pool_retire(struct i915_active *ref)
>> @@ -99,6 +100,7 @@ static void pool_retire(struct i915_active *ref)
>>       struct intel_gt_buffer_pool_node *node =
>>           container_of(ref, typeof(*node), active);
>>       struct intel_gt_buffer_pool *pool = node->pool;
>> +    struct intel_gt *gt = container_of(pool, struct intel_gt, 
>> buffer_pool);
> 
> ... although I am beginning to wonder if intel_gt_buffer_pool shouldn't 
> just gain a gt backpointer? That would decouple things more instead of 
> tying the implementation with intel_gt implicitly. Not a strong 
> direction though.

Never mind on this point, code already assumes this relationships for 
instance in node_create().

Regards,

Tvrtko
