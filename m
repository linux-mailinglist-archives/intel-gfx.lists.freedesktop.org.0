Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2E12A7A95
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 10:31:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90BE36E9AE;
	Thu,  5 Nov 2020 09:31:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCF636E9AE
 for <Intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 09:31:12 +0000 (UTC)
IronPort-SDR: 5HlMw4USsSuLW0pfJ7JyYVOIbGHVXM6edmfgFEBS0NKU6TNSdyxu6lyVLvVNyF+82dxwjNXOzr
 GWxAizNFsQUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="149207382"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="149207382"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 01:31:12 -0800
IronPort-SDR: thtZrRaBlgiTAt4dlonJOnN/uDmpfPZnK+hMnSWfi+mUUx/aOt2lhQ5V6VLEouWYreX3eV10/O
 bUUUp0F4zUKA==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="325963775"
Received: from sharonma-mobl.ger.corp.intel.com (HELO [10.214.237.124])
 ([10.214.237.124])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 01:31:10 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20201104134743.916027-1-tvrtko.ursulin@linux.intel.com>
 <20201104134743.916027-2-tvrtko.ursulin@linux.intel.com>
 <160453261800.17472.1591297091381831846@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <19d84410-f2a9-58a7-a60e-bd03161c4078@linux.intel.com>
Date: Thu, 5 Nov 2020 09:31:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160453261800.17472.1591297091381831846@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915: Use ABI engine class in error
 state ecode
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


On 04/11/2020 23:30, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-11-04 13:47:43)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Instead of printing out the internal engine mask, which can change between
>> kernel versions making it difficult to map to actual engines, present a
>> bitmask of hanging engines ABI classes. For example:
>>
>>    [drm] GPU HANG: ecode 9:24dffffd:8, in gem_exec_schedu [1334]
>>
>> Notice the swapped the order of ecode and bitmask which makes the new
>> versus old bug reports are obvious.
>>
>> Engine ABI class is useful to quickly categorize render vs media etc hangs
>> in bug reports. Considering virtual engine even more so than the current
>> scheme.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_gpu_error.c | 13 +++++++------
>>   1 file changed, 7 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>> index 857db66cc4a3..e7d9af184d58 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>> @@ -1659,17 +1659,16 @@ static u32 generate_ecode(const struct intel_engine_coredump *ee)
>>   static const char *error_msg(struct i915_gpu_coredump *error)
>>   {
>>          struct intel_engine_coredump *first = NULL;
>> +       unsigned int hung_classes = 0;
>>          struct intel_gt_coredump *gt;
>> -       intel_engine_mask_t engines;
>>          int len;
>>   
>> -       engines = 0;
>>          for (gt = error->gt; gt; gt = gt->next) {
>>                  struct intel_engine_coredump *cs;
>>   
>>                  for (cs = gt->engine; cs; cs = cs->next) {
>>                          if (cs->hung) {
>> -                               engines |= cs->engine->mask;
>> +                               hung_classes |= BIT(cs->engine->uabi_class);
> 
> Your argument makes sense.
> 
>>                                  if (!first)
>>                                          first = cs;
>>                          }
>> @@ -1677,9 +1676,11 @@ static const char *error_msg(struct i915_gpu_coredump *error)
>>          }
>>   
>>          len = scnprintf(error->error_msg, sizeof(error->error_msg),
>> -                       "GPU HANG: ecode %d:%x:%08x",
>> -                       INTEL_GEN(error->i915), engines,
>> -                       generate_ecode(first));
>> +                       "GPU HANG: ecode %d:%08x:%x",
>> +                       INTEL_GEN(error->i915),
>> +                       generate_ecode(first),
>> +                       hung_classes);
> 
> I vote for keeping gen:engines:ecode order, for me that is biggest to
> smallest.

It would not be obvious what kind of bits are in the mask then, say 
looking from the ecode in maybe bugzilla titles and two different bugs 
may be incorrectly marked as duplicate. Maybe instead of the order we 
could change the separator(s)? Or add prefix/suffix to the mask?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
