Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7610C7DCB3B
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 11:57:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E587B10E46C;
	Tue, 31 Oct 2023 10:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 527B910E46C
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 10:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698749832; x=1730285832;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Z2aMIn9ZgbrivwzJWLhZ1eo4rdcD51vtibx9nkCvukA=;
 b=WiAQY/xO/IqSi9os8yZiFsu//d8XIYQ/QmEW7MkBaOILaQjuWXbTuWTh
 DB9szmccZDmfT/7kBQoGvrx//eglf0odL9hcnhCU7XUA3vt4Id/9erCsZ
 +i9K4tc9Hb8zJrs9xXnI/4gWlMw/QgaNiomSt+5jCriH1hwuceC97zEcF
 LtVbN+yH8lcA2itUPG9t6qY0RWUcW9RjUF5Aak/nBc92rHIEHjTPK/rMe
 ffdnXdIxJjfan1sJtSkY403mjb4KeaRJmT0dkt4cJUi1IBiucB8L/1nPk
 B88/iiSxrd0VbYFQpZGkH/8Izmp9QMPTG0OfXkDczEIaEGdJA/7cvytIs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="474502148"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="474502148"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 03:57:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="710391474"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="710391474"
Received: from hteikenx-mobl.ger.corp.intel.com (HELO [10.252.33.135])
 ([10.252.33.135])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 03:57:09 -0700
Message-ID: <60cab0e2-8b6f-0ec9-e6b0-a359f157757a@linux.intel.com>
Date: Tue, 31 Oct 2023 11:57:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das
 <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231025102826.16955-1-nirmoy.das@intel.com>
 <d18c18c2-bd0b-42b6-a7a8-034f1afc4a80@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <d18c18c2-bd0b-42b6-a7a8-034f1afc4a80@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Apply notify_guc to all GTs
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

merged to drm-next


Thanks,

Nirmoy

On 10/25/2023 3:12 PM, Andrzej Hajda wrote:
>
>
> On 25.10.2023 12:28, Nirmoy Das wrote:
>> Handle platforms with multiple GTs by iterate over all GTs.
>> Add a Fixes commit so this gets propagated for MTL support.
>>
>> Fixes: 213c43676beb ("drm/i915/mtl: Remove the 'force_probe' 
>> requirement for Meteor Lake")
>> Suggested-by: John Harrison <john.c.harrison@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_debugfs_params.c | 9 ++++++---
>>   1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c 
>> b/drivers/gpu/drm/i915/i915_debugfs_params.c
>> index 614bde321589..8bca02025e09 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs_params.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
>> @@ -38,10 +38,13 @@ static int i915_param_int_open(struct inode 
>> *inode, struct file *file)
>>     static int notify_guc(struct drm_i915_private *i915)
>>   {
>> -    int ret = 0;
>> +    struct intel_gt *gt;
>> +    int i, ret = 0;
>>   -    if (intel_uc_uses_guc_submission(&to_gt(i915)->uc))
>> -        ret = intel_guc_global_policies_update(&to_gt(i915)->uc.guc);
>> +    for_each_gt(gt, i915, i) {
>> +        if (intel_uc_uses_guc_submission(&gt->uc))
>> +            ret = intel_guc_global_policies_update(&gt->uc.guc);
>> +    }
>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>
> Regards
> Andrzej
>
>>         return ret;
>>   }
>
