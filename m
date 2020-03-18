Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3186189D69
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 14:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 479676E894;
	Wed, 18 Mar 2020 13:55:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB326E894
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 13:55:46 +0000 (UTC)
IronPort-SDR: BzFC02eKk7LdakJijdcKTfsRh6DdydDFzsulFm/gilW7UbzQ0ltVeUCp205+YcK95Idi88aKSA
 ehZYrrem8cFQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 06:55:45 -0700
IronPort-SDR: rIc78cJEdWxOquI26UPrdwgFNHQjPqLfw+YPJTYyEqE84oJ9hk9hk+l6lN9FmcQUxXpcamKLMY
 9kQLaD0HFlCA==
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="238612950"
Received: from unknown (HELO [10.214.196.8]) ([10.214.196.8])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 06:55:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
 <20200318121138.909-5-tvrtko.ursulin@linux.intel.com>
 <158453937101.6873.968262303725410952@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <121b8990-7edc-db9b-5d40-76a50b6cc6e1@linux.intel.com>
Date: Wed, 18 Mar 2020 13:55:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158453937101.6873.968262303725410952@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915: Use explicit flag to mark
 unreachable intel_context
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


On 18/03/2020 13:49, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-18 12:11:33)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> I need to keep the GEM context around a bit longer so adding an explicit
>> flag for syncing execbuf with closed/abandonded contexts.
>>
>> v2:
>>   * Use already available context flags. (Chris)
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c    | 3 ++-
>>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
>>   drivers/gpu/drm/i915/gt/intel_context_types.h  | 1 +
>>   3 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index 9afc60ab95e0..7c119a3a2cbd 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -579,7 +579,8 @@ static void engines_idle_release(struct i915_gem_context *ctx,
>>                  int err = 0;
>>   
>>                  /* serialises with execbuf */
>> -               RCU_INIT_POINTER(ce->gem_context, NULL);
>> +               set_bit(INTEL_CONTEXT_CLOSED, &ce->flags);
>> +
>>                  if (!intel_context_pin_if_active(ce))
>>                          continue;
>>   
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index d3f4f28e9468..875da020d6c8 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -2316,7 +2316,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
>>          prev = __i915_request_commit(rq);
>>   
>>          /* Check that the context wasn't destroyed before submission */
>> -       if (likely(rcu_access_pointer(eb->context->gem_context))) {
>> +       if (likely(!test_bit(INTEL_CONTEXT_CLOSED, &eb->context->flags))) {
>>                  attr = eb->gem_context->sched;
>>   
>>                  /*
>> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> index 0f3b68b95c56..d5925c25f109 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> @@ -66,6 +66,7 @@ struct intel_context {
>>   #define CONTEXT_BANNED                 4
>>   #define CONTEXT_FORCE_SINGLE_SUBMISSION        5
>>   #define CONTEXT_NOPREEMPT              6
>> +#define INTEL_CONTEXT_CLOSED           7
> 
> Trying to start a flame war? :)

No, but CONTEXT_ namespace is overloaded between here and GEM context. I 
propose we prefix one of them all with something.

> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> With this flag, we can start banning contexts after a GPU hang on a
> closed context _again_. That might justify applying immediately.

Hm okay.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
