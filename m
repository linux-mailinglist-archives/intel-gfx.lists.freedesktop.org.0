Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3753901C2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 15:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CBB76EA1C;
	Tue, 25 May 2021 13:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232386EA20
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 13:10:08 +0000 (UTC)
IronPort-SDR: ScnoVDxtuA5ndSEFpHQJHeyR+d0dKfv6Wxp5jFmhq4/r9Tjhhj30u9tnGQf+W9m1KiF0qvWNQa
 Twd3h0Br9WOQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="200288841"
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="200288841"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 06:10:05 -0700
IronPort-SDR: trBROGRaN6QLX1ldYw4Yk++hnZcFs9bM/CAzxh4q0KFXoQYufFgo5hesXs2bp6CjcK5MF7xR5m
 3wgb7M9wFQNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="414022652"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 25 May 2021 06:10:04 -0700
Received: from [10.249.148.145] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.148.145])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 14PDA3Md025647
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 14:10:03 +0100
To: intel-gfx@lists.freedesktop.org
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <20210506191451.77768-17-matthew.brost@intel.com>
 <20210525032125.GA12961@sdutt-i7>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <671c04c9-7d86-c99a-40fb-569865dd9239@intel.com>
Date: Tue, 25 May 2021 15:10:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210525032125.GA12961@sdutt-i7>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 16/97] drm/i915/guc: Start protecting
 access to CTB descriptors
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



On 25.05.2021 05:21, Matthew Brost wrote:
> On Thu, May 06, 2021 at 12:13:30PM -0700, Matthew Brost wrote:
>> From: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>
>> We want to stop using guc.send_mutex while sending CTB messages
>> so we have to start protecting access to CTB send descriptor.
>>
>> For completeness protect also CTB send descriptor.
> 
> Michal I think you have a typo here, receive descriptor, right? Again

oops, yes, it's typo

> this is going to get squashed in the firmware update patch but thought
> I'd mention this.

again, please don't squash patches if not necessary

> 
> With that:
> Reviewed-by: Matthew Brost <matthew.brost@intel.com> 
> 
>>
>> Add spinlock to struct intel_guc_ct_buffer and start using it.
>>
>> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 14 ++++++++++++--
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  2 ++
>>  2 files changed, 14 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index a4b2e7fe318b..bee0958d8bae 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -89,6 +89,8 @@ static void ct_incoming_request_worker_func(struct work_struct *w);
>>   */
>>  void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>>  {
>> +	spin_lock_init(&ct->ctbs.send.lock);
>> +	spin_lock_init(&ct->ctbs.recv.lock);
>>  	spin_lock_init(&ct->requests.lock);
>>  	INIT_LIST_HEAD(&ct->requests.pending);
>>  	INIT_LIST_HEAD(&ct->requests.incoming);
>> @@ -479,17 +481,22 @@ static int ct_send(struct intel_guc_ct *ct,
>>  	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
>>  	GEM_BUG_ON(!response_buf && response_buf_size);
>>  
>> +	spin_lock_irqsave(&ct->ctbs.send.lock, flags);
>> +
>>  	fence = ct_get_next_fence(ct);
>>  	request.fence = fence;
>>  	request.status = 0;
>>  	request.response_len = response_buf_size;
>>  	request.response_buf = response_buf;
>>  
>> -	spin_lock_irqsave(&ct->requests.lock, flags);
>> +	spin_lock(&ct->requests.lock);
>>  	list_add_tail(&request.link, &ct->requests.pending);
>> -	spin_unlock_irqrestore(&ct->requests.lock, flags);
>> +	spin_unlock(&ct->requests.lock);
>>  
>>  	err = ct_write(ct, action, len, fence);
>> +
>> +	spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
>> +
>>  	if (unlikely(err))
>>  		goto unlink;
>>  
>> @@ -825,6 +832,7 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
>>  void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>>  {
>>  	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
>> +	unsigned long flags;
>>  	int err = 0;
>>  
>>  	if (unlikely(!ct->enabled)) {
>> @@ -833,7 +841,9 @@ void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>>  	}
>>  
>>  	do {
>> +		spin_lock_irqsave(&ct->ctbs.recv.lock, flags);
>>  		err = ct_read(ct, msg);
>> +		spin_unlock_irqrestore(&ct->ctbs.recv.lock, flags);
>>  		if (err)
>>  			break;
>>  
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> index fc9486779e87..bc52dc479a14 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> @@ -27,11 +27,13 @@ struct intel_guc;
>>   * record (command transport buffer descriptor) and the actual buffer which
>>   * holds the commands.
>>   *
>> + * @lock: protects access to the commands buffer and buffer descriptor
>>   * @desc: pointer to the buffer descriptor
>>   * @cmds: pointer to the commands buffer
>>   * @size: size of the commands buffer
>>   */
>>  struct intel_guc_ct_buffer {
>> +	spinlock_t lock;
>>  	struct guc_ct_buffer_desc *desc;
>>  	u32 *cmds;
>>  	u32 size;
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
