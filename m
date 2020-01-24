Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E64BB148522
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 13:26:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574C26FA45;
	Fri, 24 Jan 2020 12:26:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C1E6FA45;
 Fri, 24 Jan 2020 12:26:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 04:26:35 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="230273709"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO [10.252.10.247])
 ([10.252.10.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 24 Jan 2020 04:26:33 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20200124121759.22308-1-tvrtko.ursulin@linux.intel.com>
 <157986861487.2524.12141917333565358192@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9593ea49-ceb1-011a-bcd9-e194bf0eda9c@linux.intel.com>
Date: Fri, 24 Jan 2020 12:26:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157986861487.2524.12141917333565358192@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] lib/i915: Add helper for copying
 engine maps from one context to another
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 24/01/2020 12:23, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-24 12:17:58)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> We also need to support copying across file descriptors.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
>> ---
>>   lib/i915/gem_context.c | 30 ++++++++++++++++++++++++++++++
>>   lib/i915/gem_context.h |  2 ++
>>   2 files changed, 32 insertions(+)
>>
>> diff --git a/lib/i915/gem_context.c b/lib/i915/gem_context.c
>> index 0b6a554dfe27..41957b66ca52 100644
>> --- a/lib/i915/gem_context.c
>> +++ b/lib/i915/gem_context.c
>> @@ -462,3 +462,33 @@ bool gem_context_has_engine(int fd, uint32_t ctx, uint64_t engine)
>>   
>>          return __gem_execbuf(fd, &execbuf) == -ENOENT;
>>   }
>> +
>> +/**
>> + * gem_context_copy_engines:
>> + * @src_fd: open i915 drm file descriptor where @src context belongs to
>> + * @src: source engine map context id
>> + * @dst_fd: open i915 drm file descriptor where @dst context belongs to
>> + * @dst: destination engine map context id
>> + *
>> + * Special purpose wrapper for copying engine map from one context to another.
>> + *
>> + * In can be called regardless of whether the kernel supports context engine
>> + * maps and is a no-op if not supported.
>> + */
>> +void
>> +gem_context_copy_engines(int src_fd, uint32_t src, int dst_fd, uint32_t dst)
>> +{
>> +       I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, I915_EXEC_RING_MASK + 1);
>> +       struct drm_i915_gem_context_param param = {
>> +               .param = I915_CONTEXT_PARAM_ENGINES,
>> +               .ctx_id = src,
>> +               .size = sizeof(engines),
>> +               .value = to_user_pointer(&engines),
>> +       };
>> +
>> +       if (__gem_context_get_param(src_fd, &param) || !param.size)
>> +               return;
>> +
>> +       param.ctx_id = dst;
>> +       gem_context_set_param(dst_fd, &param);
> 
> You don't want to copy across the use-default set? You presume dst is
> already using defaults?

Hm hm.. not sure. I guess it would be most in-line with what the helper 
say on the tin to copy as is. I'll respin.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
