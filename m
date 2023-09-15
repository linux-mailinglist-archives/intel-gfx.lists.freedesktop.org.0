Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 337FB7A20C0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 16:22:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0438110E63A;
	Fri, 15 Sep 2023 14:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 122BC10E638
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 14:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694787758; x=1726323758;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/ikepzHqKVkDSce84bYgp2OfmMMhjYD02rIvu5TAmR0=;
 b=O5H95GKiq1nyjO90ilA6Z6EWH8NXlpulnmg9W8afFSQdY7G+FutJmbxc
 YpykEOn43WduRqkxNB4Fs4NQiCyrcY896XdLM+Up57+RCLOBUY0oQd2nP
 lTxcAbVRuaws7tbq/VJqWwb6omfoqeausf1RJJ/jRqd+8tmxweUjuJnwK
 T3JEbLnG9dN+ZHx29vsp8shjVMR8LqnTceSOcLimone6zGEIdANaitJUg
 9/Xw+p9JvQzxAyz0CxNVbuE0uXIMKlnpBwqT/Jaen+HUPQnsk9FkX4r05
 ZtNa9Fhy/pKuV6N+YjDdDtju4DLhADY+N8mvAkDHNrgX44rtrnWInQBvH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="358673357"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="358673357"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 07:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="815185669"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="815185669"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.46.156])
 ([10.249.46.156])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 07:22:35 -0700
Message-ID: <85f9b337-9776-6180-7185-6198ef516a8e@linux.intel.com>
Date: Fri, 15 Sep 2023 16:22:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230915083412.4572-1-nirmoy.das@intel.com>
 <20230915083412.4572-7-nirmoy.das@intel.com> <87o7i3vk8f.fsf@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <87o7i3vk8f.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Toggle binder context ready
 status
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
Cc: chris.p.wilson@linux.intel.com, matthew.d.roper@intel.com,
 andi.shyti@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/15/2023 11:50 AM, Jani Nikula wrote:
> On Fri, 15 Sep 2023, Nirmoy Das <nirmoy.das@intel.com> wrote:
>> Toggle binder context ready status when needed.
>>
>> To issue gpu commands, the driver must be primed to receive
>> requests. Maintain binder-based GGTT update disablement until driver
>> probing completes. Moreover, implement a temporary disablement
>> of blitter prior to entering suspend, followed by re-enablement
>> post-resume. This is acceptable as those transition periods are
>> mostly single threaded.
>>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> Not a fan of adding more gt (or gem, or display) specific details at the
> top level driver hooks. The direction should be to remove stuff from
> there, and move to lower levels.
>
> The top level functions have become really hard to understand because we
> don't know the ordering constraints. This adds more constraints, and
> looks like very specific and complicated ones too.

Tried to hook this into gt suspend/resume but didn't work well . I will 
try again.


Thanks,

Nirmoy

>
> BR,
> Jani.
>
>
>> ---
>>   drivers/gpu/drm/i915/i915_driver.c | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index f8dbee7a5af7..8cc289acdb39 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -815,6 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>   	i915_welcome_messages(i915);
>>   
>>   	i915->do_release = true;
>> +	intel_gt_bind_context_set_ready(to_gt(i915), true);
>>   
>>   	return 0;
>>   
>> @@ -855,6 +856,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
>>   {
>>   	intel_wakeref_t wakeref;
>>   
>> +	intel_gt_bind_context_set_ready(to_gt(i915), false);
>>   	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>>   
>>   	i915_driver_unregister(i915);
>> @@ -1077,6 +1079,8 @@ static int i915_drm_suspend(struct drm_device *dev)
>>   	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>>   	pci_power_t opregion_target_state;
>>   
>> +	intel_gt_bind_context_set_ready(to_gt(dev_priv), false);
>> +
>>   	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>>   
>>   	/* We do a lot of poking in a lot of registers, make sure they work
>> @@ -1264,6 +1268,7 @@ static int i915_drm_resume(struct drm_device *dev)
>>   	intel_gvt_resume(dev_priv);
>>   
>>   	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>> +	intel_gt_bind_context_set_ready(to_gt(dev_priv), true);
>>   
>>   	return 0;
>>   }
