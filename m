Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 125E574EC5E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 13:12:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F1310E36F;
	Tue, 11 Jul 2023 11:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 658BA10E36F
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 11:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689073929; x=1720609929;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=vNPRbfP2zUZ3Ael1wJb8aG3Obr34Fv+JpdZDpp2YJVc=;
 b=CIlgATJss8xcAzYrSXu8J8xixbZXAhKmqeSnD5WfBgSExxMI1Wpy7Doc
 TA8WYziHJTJBGgHs7A4jtMD4Sa9COSkHv6MRSNFn7dLNP1gp3B0Y786FD
 tfxUbc3f2yY5sbU4z4wyQp5E5qWBjpgc+8sArubWh7vpUoInmFEcky+QD
 RtctWS+xuiXN5b4Gfbr9vGt0bX0Bcc44WJYUQvSrl6fEfqfcmujDumAL8
 3kI+p2haENN5PP0a3ymGyGaiR+50lJ0Av1y17Dk4gNOPBP8m4pcxd3Wcn
 t54/ukeDvY/9RqSEbktNfdQhVCJlDhuuYrMm2mdM9fAKNWpasPvq9OGB0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="362053675"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; 
 d="scan'208,217";a="362053675"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 04:12:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="715145128"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; 
 d="scan'208,217";a="715145128"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.37])
 ([10.213.6.37])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 04:12:05 -0700
Content-Type: multipart/alternative;
 boundary="------------5RO0ruRkN2fiVt0ppUYs5Fv8"
Message-ID: <a9e34d7a-b22d-779c-67cb-88c69dc7ca6b@intel.com>
Date: Tue, 11 Jul 2023 13:12:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <20230706151611.1024576-1-andrzej.hajda@intel.com>
 <ZK0sbz+h0r/PwYn2@ashyti-mobl2.lan>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ZK0sbz+h0r/PwYn2@ashyti-mobl2.lan>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: update request engine
 before removing virtual GuC engine
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------5RO0ruRkN2fiVt0ppUYs5Fv8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11.07.2023 12:18, Andi Shyti wrote:
> Hi Andrzej,
>
> On Thu, Jul 06, 2023 at 05:16:11PM +0200, Andrzej Hajda wrote:
>> GuC virtual engines can be removed before request removal. On the other
>> side driver expects rq->engine to be a valid pointer for a whole life of
>> request. Setting rq->engine to an always valid engine should solve
>> the issue.
>>
>> The patch fixes bug detected by KASAN with following signature:
>> i915 0000:00:02.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x0000005c [0x0000005c]
>> BUG: KASAN: slab-use-after-free in i915_fence_release+0x2a2/0x2f0 [i915]
>> Read of size 4 at addr ffff88813ffda6e8 by task kworker/u32:10/157
>> ...
>> Allocated by task 1184:
>> ...
>> guc_create_virtual+0x4d/0x1160 [i915]
>> i915_gem_create_context+0x11ee/0x18c0 [i915]
>> ...
>> Freed by task 151:
>> ...
>> intel_guc_deregister_done_process_msg+0x324/0x6d0 [i915]
>> ...
> so the only difference between v1 and v2 is this part of the log?

yes, I forgot to add changelog.

>
>> Closes:https://gitlab.freedesktop.org/drm/intel/-/issues/7926
>> Signed-off-by: Andrzej Hajda<andrzej.hajda@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++++++++++
>>   1 file changed, 11 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index a0e3ef1c65d246..2c877ea5eda6f0 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
>>   static void remove_from_context(struct i915_request *rq)
>>   {
>>   	struct intel_context *ce = request_to_scheduling_context(rq);
>> +	struct intel_engine_cs *engine;
>> +	intel_engine_mask_t tmp;
>>   
>>   	GEM_BUG_ON(intel_context_is_child(ce));
>>   
>> @@ -3478,6 +3480,15 @@ static void remove_from_context(struct i915_request *rq)
>>   
>>   	atomic_dec(&ce->guc_id.ref);
>>   	i915_request_notify_execute_cb_imm(rq);
>> +
>> +	/*
>> +	 * GuC virtual engine can disappear after this call, so let's assign
>> +	 * something valid, as driver expects this to be always valid pointer.
>> +	 */
>> +	for_each_engine_masked(engine, rq->engine->gt, rq->execution_mask, tmp) {
>> +		rq->engine = engine;
> yes... here the context might lose the virtual engine... I wonder
> whether this is the rigth solution, though. Maybe we should set
> rq->engine = NULL; and check for NULL? Don't know.

Setting NULL causes occasional null page de-reference in

i915_request_wait_timeout:

mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)

rq->engine after removing rq from context is (IMHO) used as a set of 
aliases for gt and i915 (despite rq itself contains the alias to i915).

Regards

Andrzej

>
> Andi
>
>> +		break;
>> +	}
>>   }
>>   
>>   static const struct intel_context_ops guc_context_ops = {
>> -- 
>> 2.34.1

--------------5RO0ruRkN2fiVt0ppUYs5Fv8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 11.07.2023 12:18, Andi Shyti wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:ZK0sbz+h0r%2FPwYn2@ashyti-mobl2.lan">
      <pre class="moz-quote-pre" wrap="">Hi Andrzej,

On Thu, Jul 06, 2023 at 05:16:11PM +0200, Andrzej Hajda wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">GuC virtual engines can be removed before request removal. On the other
side driver expects rq-&gt;engine to be a valid pointer for a whole life of
request. Setting rq-&gt;engine to an always valid engine should solve
the issue.

The patch fixes bug detected by KASAN with following signature:
i915 0000:00:02.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x0000005c [0x0000005c]
BUG: KASAN: slab-use-after-free in i915_fence_release+0x2a2/0x2f0 [i915]
Read of size 4 at addr ffff88813ffda6e8 by task kworker/u32:10/157
...
Allocated by task 1184:
...
guc_create_virtual+0x4d/0x1160 [i915]
i915_gem_create_context+0x11ee/0x18c0 [i915]
...
Freed by task 151:
...
intel_guc_deregister_done_process_msg+0x324/0x6d0 [i915]
...
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
so the only difference between v1 and v2 is this part of the log?</pre>
    </blockquote>
    <br>
    yes, I forgot to add changelog.<br>
    <br>
    <blockquote type="cite"
      cite="mid:ZK0sbz+h0r%2FPwYn2@ashyti-mobl2.lan">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Closes: <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/7926">https://gitlab.freedesktop.org/drm/intel/-/issues/7926</a>
Signed-off-by: Andrzej Hajda <a class="moz-txt-link-rfc2396E" href="mailto:andrzej.hajda@intel.com">&lt;andrzej.hajda@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a0e3ef1c65d246..2c877ea5eda6f0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
 static void remove_from_context(struct i915_request *rq)
 {
 	struct intel_context *ce = request_to_scheduling_context(rq);
+	struct intel_engine_cs *engine;
+	intel_engine_mask_t tmp;
 
 	GEM_BUG_ON(intel_context_is_child(ce));
 
@@ -3478,6 +3480,15 @@ static void remove_from_context(struct i915_request *rq)
 
 	atomic_dec(&amp;ce-&gt;guc_id.ref);
 	i915_request_notify_execute_cb_imm(rq);
+
+	/*
+	 * GuC virtual engine can disappear after this call, so let's assign
+	 * something valid, as driver expects this to be always valid pointer.
+	 */
+	for_each_engine_masked(engine, rq-&gt;engine-&gt;gt, rq-&gt;execution_mask, tmp) {
+		rq-&gt;engine = engine;
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
yes... here the context might lose the virtual engine... I wonder
whether this is the rigth solution, though. Maybe we should set
rq-&gt;engine = NULL; and check for NULL? Don't know.</pre>
    </blockquote>
    <br>
    Setting NULL causes occasional null page de-reference in <br>
    <div style="background-color:#ffffff;padding:0px 0px 0px 0px;">
      <div style="color:#000000;background-color:#ffffff;font-family:&quot;Consolas&quot;;font-size:10pt;white-space:pre;"><p style="margin:0;">i915_request_wait_timeout:</p><p style="margin:0;">	mutex_release(&amp;rq-&gt;engine-&gt;gt-&gt;reset.mutex.dep_map, _THIS_IP_)</p><p style="margin:0;">
</p><p style="margin:0;">rq-&gt;engine after removing rq from context is (IMHO) used as a set of aliases for gt and i915 (despite rq itself contains the alias to i915).</p><p style="margin:0;">
</p><p style="margin:0;">Regards</p><p style="margin:0;">Andrzej
</p><p style="margin:0;">
</p><p style="margin:0;">
</p></div>
    </div>
    <blockquote type="cite"
      cite="mid:ZK0sbz+h0r%2FPwYn2@ashyti-mobl2.lan">
      <pre class="moz-quote-pre" wrap="">

Andi

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+		break;
+	}
 }
 
 static const struct intel_context_ops guc_context_ops = {
-- 
2.34.1
</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------5RO0ruRkN2fiVt0ppUYs5Fv8--
