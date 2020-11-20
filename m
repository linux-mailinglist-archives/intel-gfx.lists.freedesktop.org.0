Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7841F2BAC24
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 15:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91AF96E8DB;
	Fri, 20 Nov 2020 14:48:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D41A6E8E5
 for <Intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 14:48:21 +0000 (UTC)
IronPort-SDR: QX83c4zXGrFfigRP8XkoxQHQN4tqUH0aqoCmnoR8mhs8r+xBg7BPxQM3akyVUhPOAleRdXTblH
 mKEAZGUZ+wJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="189585099"
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="189585099"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 06:48:21 -0800
IronPort-SDR: 18iwuM9WNBj7+2dokOmEt/weQ09xqR3dHSb+L9PiVqUuAJs8IgEkyRoN+3zmAEG1CJqJYWZzX/
 4G8YGMFNU1OQ==
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="545465386"
Received: from shilatbx-mobl1.ger.corp.intel.com (HELO [10.255.201.139])
 ([10.255.201.139])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 06:48:19 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20201120095636.1987395-1-tvrtko.ursulin@linux.intel.com>
 <160588238065.28535.17983138007111557633@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <237a936d-df5e-bf0a-0fdc-e46254806315@linux.intel.com>
Date: Fri, 20 Nov 2020 14:48:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160588238065.28535.17983138007111557633@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Use correct lock for
 accessing guc->mmio_msg
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/11/2020 14:26, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-11-20 09:56:35)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Guc->mmio_msg is set under the guc->irq_lock in guc_get_mmio_msg so it
>> should be consumed under the same lock from guc_handle_mmio_msg.
>>
>> I am not sure if the overall flow here makes complete sense but at least
>> the correct lock is now used.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_uc.c | 16 ++++++----------
>>   1 file changed, 6 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index 4e6070e95fe9..220626c3ad81 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -175,19 +175,15 @@ static void guc_get_mmio_msg(struct intel_guc *guc)
>>   
>>   static void guc_handle_mmio_msg(struct intel_guc *guc)
>>   {
>> -       struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> -
>>          /* we need communication to be enabled to reply to GuC */
>>          GEM_BUG_ON(!guc_communication_enabled(guc));
>>   
>> -       if (!guc->mmio_msg)
>> -               return;
>> -
>> -       spin_lock_irq(&i915->irq_lock);
>> -       intel_guc_to_host_process_recv_msg(guc, &guc->mmio_msg, 1);
>> -       spin_unlock_irq(&i915->irq_lock);
>> -
>> -       guc->mmio_msg = 0;
>> +       spin_lock_irq(&guc->irq_lock);
>> +       if (guc->mmio_msg) {
>> +               intel_guc_to_host_process_recv_msg(guc, &guc->mmio_msg, 1);
>> +               guc->mmio_msg = 0;
>> +       }
>> +       spin_unlock_irq(&guc->irq_lock);
> 
> Based on just looking at mmio_msg, the locking should be guc->irq_lock, and
> guc->mmio_msg = 0 should be pulled under the lock.
> 
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Thanks, the thing which made me say that I am not sure it completely makes sense is that the mmio_msg appears to only be used from guc_enable_communication and 
guc_disable_communication, which I would assume should be mutually exclusive by itself already. So I was not sure what value is there in the locking around mmio_msg access.

And even in guc_enable_communication we have a sequence of:

	guc_get_mmio_msg(guc);
	guc_handle_mmio_msg(guc);

Which expands to:

static void guc_get_mmio_msg(struct intel_guc *guc)
{
	u32 val;

	spin_lock_irq(&guc->irq_lock);

	val = intel_uncore_read(guc_to_gt(guc)->uncore, SOFT_SCRATCH(15));
	guc->mmio_msg |= val & guc->msg_enabled_mask;

	/*
	 * clear all events, including the ones we're not currently servicing,
	 * to make sure we don't try to process a stale message if we enable
	 * handling of more events later.
	 */
	guc_clear_mmio_msg(guc);

	spin_unlock_irq(&guc->irq_lock);
}

static void guc_handle_mmio_msg(struct intel_guc *guc)
{
	/* we need communication to be enabled to reply to GuC */
	GEM_BUG_ON(!guc_communication_enabled(guc));

	spin_lock_irq(&guc->irq_lock);
	if (guc->mmio_msg) {
		intel_guc_to_host_process_recv_msg(guc, &guc->mmio_msg, 1);
		guc->mmio_msg = 0;
	}
	spin_unlock_irq(&guc->irq_lock);
}

So it seems a bit pointless. Nevertheless I only wanted to remove usage of i915->irq_lock.

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
