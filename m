Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB5874F0E5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 15:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 942F510E183;
	Tue, 11 Jul 2023 13:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869DE10E183
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 13:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689083925; x=1720619925;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=d64+vBPFupVku28bL1GsvWkDhMShv8Vmw+a99Ae6MD4=;
 b=YFVIlNKItMdL+K4EXZOsLLp4/51N/1jCbqYLLZgXezkexe4WVgpgeEdo
 0UgObZjKMCZfIR6ZMIoIZKspg7l6jIlC8J3rOdI41CG62AnO9hFT1JWAK
 2TchNf9fVIlyhs546fEsIRmugskCfezWKuSJ+/ko+PiGPlFCHZfChvBJJ
 ql4B4sc3v7kBbCYS6X0/2vYNxMWL3Eg+wPyiaSVkS7SpmjXtThwwm7j/E
 DJrhdTvIQLx4Y0+3EOr9Vt9mj4kDRLEmYxBm2pqaFuChuq2+66QrJYtBy
 iEfTYtVsfoxTRaQM3I6eom8jFtGVtrecx5eWPQEchm+qR6IbL+JME3qaq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="368124135"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="368124135"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 06:58:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="845258793"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="845258793"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.37])
 ([10.213.6.37])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 06:58:40 -0700
Message-ID: <118e74c0-c1ce-fc6e-39f4-5518ace5d71e@intel.com>
Date: Tue, 11 Jul 2023 15:58:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <20230706151611.1024576-1-andrzej.hajda@intel.com>
 <ZK0sbz+h0r/PwYn2@ashyti-mobl2.lan>
 <a9e34d7a-b22d-779c-67cb-88c69dc7ca6b@intel.com>
 <ZK0+NXmKnEzeUtTI@ashyti-mobl2.lan>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ZK0+NXmKnEzeUtTI@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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



On 11.07.2023 13:34, Andi Shyti wrote:
> Hi Andrzej,
>
>>           drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++++++++++
>>           1 file changed, 11 insertions(+)
>>
>>          diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>          index a0e3ef1c65d246..2c877ea5eda6f0 100644
>>          --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>          +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>          @@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
>>           static void remove_from_context(struct i915_request *rq)
>>           {
>>                  struct intel_context *ce = request_to_scheduling_context(rq);
>>          +       struct intel_engine_cs *engine;
>>          +       intel_engine_mask_t tmp;
>>
>>                  GEM_BUG_ON(intel_context_is_child(ce));
>>
>>          @@ -3478,6 +3480,15 @@ static void remove_from_context(struct i915_request *rq)
>>
>>                  atomic_dec(&ce->guc_id.ref);
>>                  i915_request_notify_execute_cb_imm(rq);
>>          +
>>          +       /*
>>          +        * GuC virtual engine can disappear after this call, so let's assign
>>          +        * something valid, as driver expects this to be always valid pointer.
>>          +        */
>>          +       for_each_engine_masked(engine, rq->engine->gt, rq->execution_mask, tmp) {
>>          +               rq->engine = engine;
>>
>>      yes... here the context might lose the virtual engine... I wonder
>>      whether this is the rigth solution, though. Maybe we should set
>>      rq->engine = NULL; and check for NULL? Don't know.
>>
>>
>> Setting NULL causes occasional null page de-reference in
>>
>> i915_request_wait_timeout:
>>
>> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
>>
>> rq->engine after removing rq from context is (IMHO) used as a set of aliases
>> for gt and i915 (despite rq itself contains the alias to i915).
> without investigating further, but maybe that code is not even
> supposed to be executed, at this point, if the request's assigned
> virtual engine is removed.

Real tests show it is executed and the function 
i915_request_wait_timeout is quite generic
I guess it is quite typical use-case, the only question is about timings 
- what happens earlier -
finalization of i915_request_wait_timeout or context removal.

The other point rq->engine is accessed after context removal is 
i915_fence_release -
there is long comment there regarding virtual context and reuse retired rq.
Anyway calling there "intel_engine_is_virtual(rq->engine)" is risky 
without this patch and KASAN complains clearly about it:
http://gfx-ci.igk.intel.com/tree/drm-tip/kasan.html?testfilter=gem_exec_balancer

Regards
Andrzej


>
> Andi

