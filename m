Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA631F9B05
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 16:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC16F6E33A;
	Mon, 15 Jun 2020 14:55:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4536E33A
 for <Intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 14:55:01 +0000 (UTC)
IronPort-SDR: BJgrN0exViIlj4CsHX9ygF1jbtmCOJu78oOtl8o2MG+W10sZ4UXTpCTahi7zJis6ZgZWyMamZW
 hurrklZvUOrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 07:55:00 -0700
IronPort-SDR: JwfiIOi6rJm3+rQ+Ti1mbgUyvPGRsbnMYkAL6DiYPEOt7Qw8S/Zpg1pvQKIIBZtO6BCykTL0YI
 fgt8StxRvW4g==
X-IronPort-AV: E=Sophos;i="5.73,514,1583222400"; d="scan'208";a="449420774"
Received: from unknown (HELO [10.249.37.34]) ([10.249.37.34])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 07:54:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200615140928.27336-1-tvrtko.ursulin@linux.intel.com>
 <159223143519.2981.2404611553306232536@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1264692d-8fa6-7731-548a-923c6279d537@linux.intel.com>
Date: Mon, 15 Jun 2020 15:54:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159223143519.2981.2404611553306232536@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove redundant
 i915_request_await_object in blit clears
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/06/2020 15:30, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-06-15 15:09:28)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> One i915_request_await_object is enough and we keep the one under the
>> object lock so it is final.
>>
>> At the same time move async clflushing setup under the same locked
>> section and consolidate common code into a helper function.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
>> ---
>>   .../gpu/drm/i915/gem/i915_gem_object_blt.c    | 35 +++++++------------
>>   1 file changed, 13 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
>> index f457d7130491..7d8b396e265a 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
>> @@ -126,6 +126,17 @@ void intel_emit_vma_release(struct intel_context *ce, struct i915_vma *vma)
>>          intel_engine_pm_put(ce->engine);
>>   }
>>   
>> +static int
>> +move_obj_to_gpu(struct drm_i915_gem_object *obj,
>> +               struct i915_request *rq,
>> +               bool write)
>> +{
>> +       if (obj->cache_dirty & ~obj->cache_coherent)
>> +               i915_gem_clflush_object(obj, 0);
>> +
>> +       return i915_request_await_object(rq, obj, write);
>> +}
>> +
>>   int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
>>                               struct intel_context *ce,
>>                               u32 value)
>> @@ -143,12 +154,6 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
>>          if (unlikely(err))
>>                  return err;
>>   
>> -       if (obj->cache_dirty & ~obj->cache_coherent) {
>> -               i915_gem_object_lock(obj);
>> -               i915_gem_clflush_object(obj, 0);
>> -               i915_gem_object_unlock(obj);
>> -       }
>> -
>>          batch = intel_emit_vma_fill_blt(ce, vma, value);
>>          if (IS_ERR(batch)) {
>>                  err = PTR_ERR(batch);
>> @@ -165,10 +170,6 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
>>          if (unlikely(err))
>>                  goto out_request;
>>   
>> -       err = i915_request_await_object(rq, obj, true);
>> -       if (unlikely(err))
>> -               goto out_request;
>> -
>>          if (ce->engine->emit_init_breadcrumb) {
>>                  err = ce->engine->emit_init_breadcrumb(rq);
>>                  if (unlikely(err))
>> @@ -176,7 +177,7 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
>>          }
>>   
>>          i915_vma_lock(vma);
>> -       err = i915_request_await_object(rq, vma->obj, true);
>> +       err = move_obj_to_gpu(vma->obj, rq, true);
>>          if (err == 0)
>>                  err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
>>          i915_vma_unlock(vma);
> 
> Ah, but here it's also the wrong side of init_breadcrumb.

Why it is important to mark the object as active on the failure path? We 
skip the payload, no?

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
