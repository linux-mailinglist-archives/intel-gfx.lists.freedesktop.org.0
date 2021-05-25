Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 377323909D0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 21:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9241A6EAC7;
	Tue, 25 May 2021 19:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EB746EAC7;
 Tue, 25 May 2021 19:43:55 +0000 (UTC)
IronPort-SDR: QqWWlLc5z/do8yUUQxKf7cKl4uxc2uHXCg7Ine+EK9FGQCuwpTwV21h3rDP7cwympHTTvUwyS4
 PDUZ7f9m0i7g==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="287859068"
X-IronPort-AV: E=Sophos;i="5.82,329,1613462400"; d="scan'208";a="287859068"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 12:43:53 -0700
IronPort-SDR: XOK6DDkYDFt6Ziu2PuoFGgFS5Vg2MPaZBb9yXD4ablH7it28f4LGkqK8+ejn/xTuTkBAjd3YWC
 nR/PkCM6+YuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,329,1613462400"; d="scan'208";a="614649045"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga005.jf.intel.com with ESMTP; 25 May 2021 12:43:51 -0700
Received: from [10.249.148.145] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.148.145])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 14PJhoaU010457; Tue, 25 May 2021 20:43:50 +0100
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-19-matthew.brost@intel.com>
 <20210525181510.GA23878@sdutt-i7>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <86b6f921-12d8-aa1b-3732-51bade260409@intel.com>
Date: Tue, 25 May 2021 21:43:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210525181510.GA23878@sdutt-i7>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 18/97] drm/i915/guc: Don't receive all
 G2H messages in irq handler
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 25.05.2021 20:15, Matthew Brost wrote:
> On Thu, May 06, 2021 at 12:13:32PM -0700, Matthew Brost wrote:
>> From: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>
>> In irq handler try to receive just single G2H message, let other
>> messages to be received from tasklet.
>>
>> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 67 ++++++++++++++++-------
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  3 +
>>  2 files changed, 50 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index cb58fa7f970c..d630ec32decf 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -81,6 +81,7 @@ enum { CTB_SEND = 0, CTB_RECV = 1 };
>>  
>>  enum { CTB_OWNER_HOST = 0 };
>>  
>> +static void ct_receive_tasklet_func(unsigned long data);
>>  static void ct_incoming_request_worker_func(struct work_struct *w);
>>  
>>  /**
>> @@ -95,6 +96,7 @@ void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>>  	INIT_LIST_HEAD(&ct->requests.pending);
>>  	INIT_LIST_HEAD(&ct->requests.incoming);
>>  	INIT_WORK(&ct->requests.worker, ct_incoming_request_worker_func);
>> +	tasklet_init(&ct->receive_tasklet, ct_receive_tasklet_func, (unsigned long)ct);
> 
> This function is deprecated. tasklet_setup should be used.
> I can fix this up when I post the CTB patches.

I didn't notice that, but yes, passing struct to callback will be
cleaner, so please fix it

Thanks,
Michal

> 
>>  }
>>  
>>  static inline const char *guc_ct_buffer_type_to_str(u32 type)
>> @@ -244,6 +246,7 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
>>  {
>>  	GEM_BUG_ON(ct->enabled);
>>  
>> +	tasklet_kill(&ct->receive_tasklet);
>>  	i915_vma_unpin_and_release(&ct->vma, I915_VMA_RELEASE_MAP);
>>  	memset(ct, 0, sizeof(*ct));
>>  }
>> @@ -629,7 +632,7 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
>>  	CT_DEBUG(ct, "received %*ph\n", 4 * len, data);
>>  
>>  	desc->head = head * 4;
>> -	return 0;
>> +	return available - len;
>>  
>>  corrupted:
>>  	CT_ERROR(ct, "Corrupted descriptor addr=%#x head=%u tail=%u size=%u\n",
>> @@ -665,10 +668,10 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>>  	u32 status;
>>  	u32 datalen;
>>  	struct ct_request *req;
>> +	unsigned long flags;
>>  	bool found = false;
>>  
>>  	GEM_BUG_ON(!ct_header_is_response(header));
>> -	GEM_BUG_ON(!in_irq());
>>  
>>  	/* Response payload shall at least include fence and status */
>>  	if (unlikely(len < 2)) {
>> @@ -688,7 +691,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>>  
>>  	CT_DEBUG(ct, "response fence %u status %#x\n", fence, status);
>>  
>> -	spin_lock(&ct->requests.lock);
>> +	spin_lock_irqsave(&ct->requests.lock, flags);
>>  	list_for_each_entry(req, &ct->requests.pending, link) {
>>  		if (unlikely(fence != req->fence)) {
>>  			CT_DEBUG(ct, "request %u awaits response\n",
>> @@ -707,7 +710,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
>>  		found = true;
>>  		break;
>>  	}
>> -	spin_unlock(&ct->requests.lock);
>> +	spin_unlock_irqrestore(&ct->requests.lock, flags);
>>  
>>  	if (!found)
>>  		CT_ERROR(ct, "Unsolicited response %*ph\n", msgsize, msg);
>> @@ -821,31 +824,55 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
>>  	return 0;
>>  }
>>  
>> +static int ct_receive(struct intel_guc_ct *ct)
>> +{
>> +	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
>> +	unsigned long flags;
>> +	int ret;
>> +
>> +	spin_lock_irqsave(&ct->ctbs.recv.lock, flags);
>> +	ret = ct_read(ct, msg);
>> +	spin_unlock_irqrestore(&ct->ctbs.recv.lock, flags);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	if (ct_header_is_response(msg[0]))
>> +		ct_handle_response(ct, msg);
>> +	else
>> +		ct_handle_request(ct, msg);
>> +
>> +	return ret;
>> +}
>> +
>> +static void ct_try_receive_message(struct intel_guc_ct *ct)
>> +{
>> +	int ret;
>> +
>> +	if (GEM_WARN_ON(!ct->enabled))
>> +		return;
>> +
>> +	ret = ct_receive(ct);
>> +	if (ret > 0)
>> +		tasklet_hi_schedule(&ct->receive_tasklet);
>> +}
>> +
>> +static void ct_receive_tasklet_func(unsigned long data)
>> +{
> 
> As mentioned above tasklet_init is deprecated. The callback now accepts
> the tasklet structure and ct can be looked up via container_of macro.
> 
> Everything else looks good.
> 
> With that and changing to the new tasklet API:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> 
>> +	struct intel_guc_ct *ct = (struct intel_guc_ct *)data;
>> +
>> +	ct_try_receive_message(ct);
>> +}
>> +
>>  /*
>>   * When we're communicating with the GuC over CT, GuC uses events
>>   * to notify us about new messages being posted on the RECV buffer.
>>   */
>>  void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>>  {
>> -	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
>> -	unsigned long flags;
>> -	int err = 0;
>> -
>>  	if (unlikely(!ct->enabled)) {
>>  		WARN(1, "Unexpected GuC event received while CT disabled!\n");
>>  		return;
>>  	}
>>  
>> -	do {
>> -		spin_lock_irqsave(&ct->ctbs.recv.lock, flags);
>> -		err = ct_read(ct, msg);
>> -		spin_unlock_irqrestore(&ct->ctbs.recv.lock, flags);
>> -		if (err)
>> -			break;
>> -
>> -		if (ct_header_is_response(msg[0]))
>> -			err = ct_handle_response(ct, msg);
>> -		else
>> -			err = ct_handle_request(ct, msg);
>> -	} while (!err);
>> +	ct_try_receive_message(ct);
>>  }
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> index bc52dc479a14..cb222f202301 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> @@ -6,6 +6,7 @@
>>  #ifndef _INTEL_GUC_CT_H_
>>  #define _INTEL_GUC_CT_H_
>>  
>> +#include <linux/interrupt.h>
>>  #include <linux/spinlock.h>
>>  #include <linux/workqueue.h>
>>  
>> @@ -55,6 +56,8 @@ struct intel_guc_ct {
>>  		struct intel_guc_ct_buffer recv;
>>  	} ctbs;
>>  
>> +	struct tasklet_struct receive_tasklet;
>> +
>>  	struct {
>>  		u32 last_fence; /* last fence used to send request */
>>  
>> -- 
>> 2.28.0
>>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
