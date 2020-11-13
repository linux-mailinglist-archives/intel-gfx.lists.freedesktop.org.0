Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6DB2B1933
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 11:40:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0D186E47A;
	Fri, 13 Nov 2020 10:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9552F6E47A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 10:40:19 +0000 (UTC)
IronPort-SDR: 7N+hIR3FguASYPG2j38G3j8I4VEcXGqoo6y8he2T7BWk8IsExhdOfBiBKFrWqZw98/3ToSwpBT
 EfJWVHZ1VjkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="170560528"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="170560528"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 02:40:13 -0800
IronPort-SDR: TRp+hz/sJOTC8CAvGjRR2idvImvMXyKqBoa1YNofDTivoRvOdTHuqPLimx8tyzEEVFyUrGZFkk
 U/YYWackfASA==
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="542613323"
Received: from shalomzo-mobl1.ger.corp.intel.com (HELO [10.251.180.188])
 ([10.251.180.188])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 02:40:11 -0800
To: Chris Wilson <chris.p.wilson@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201010002105.45152-1-umesh.nerlige.ramappa@intel.com>
 <20201010002105.45152-5-umesh.nerlige.ramappa@intel.com>
 <160521027215.25046.10810273417498100458@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f7469401-8537-964d-5c9a-8647b0ed060a@linux.intel.com>
Date: Fri, 13 Nov 2020 10:40:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160521027215.25046.10810273417498100458@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Refactor _wa_add to reuse
 wa_index and wa_list_grow
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/11/2020 19:44, Chris Wilson wrote:
> Quoting Umesh Nerlige Ramappa (2020-10-10 01:21:03)
>> Switch the search and grow code of the _wa_add to use _wa_index and
>> _wa_list_grow.
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 54 +++++++--------------
>>   1 file changed, 17 insertions(+), 37 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 801fcb60f46b..e49283bffa33 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -174,53 +174,33 @@ static void _wa_remove(struct i915_wa_list *wal, i915_reg_t reg, u32 flags)
>>   
>>   static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
>>   {
>> -       unsigned int addr = i915_mmio_reg_offset(wa->reg);
>> -       unsigned int start = 0, end = wal->count;
>> +       int index;
>>          const unsigned int grow = WA_LIST_CHUNK;
>>          struct i915_wa *wa_;
>>   
>>          GEM_BUG_ON(!is_power_of_2(grow));
>>   
>> -       if (IS_ALIGNED(wal->count, grow)) { /* Either uninitialized or full. */
>> -               struct i915_wa *list;
>> -
>> -               list = kmalloc_array(ALIGN(wal->count + 1, grow), sizeof(*wa),
>> -                                    GFP_KERNEL);
>> -               if (!list) {
>> -                       DRM_ERROR("No space for workaround init!\n");
>> +       if (IS_ALIGNED(wal->count, grow)) /* Either uninitialized or full. */
>> +               if (_wa_list_grow(wal, wal->count) < 0)
>>                          return;
>> -               }
>> -
>> -               if (wal->list)
>> -                       memcpy(list, wal->list, sizeof(*wa) * wal->count);
>>   
>> -               wal->list = list;
> 
> An inherited problem, but I'm a little unnerved by the apparent leak of
> wa->list here.
> 
> Paging Tvrtko to see if he can remember if there's a hidden trick.

I don't see any tricks, just a memory leak for all lists with more than 
16 unique registers on the wa list. :(

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
