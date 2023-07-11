Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBF974ECF3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 13:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0C7310E37E;
	Tue, 11 Jul 2023 11:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8AF710E37F
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 11:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689075284; x=1720611284;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9SQy6E1VUlqt7cmasHDZJJHV9XSQYGWMfY/EBhDNI0Y=;
 b=lY36WXeov8UymYd/qZqaBswNXKIuWMIVfC9U18QdU0EIUlyGTP7I3xrY
 Maw17+BkNi43IqZPTtz+WaNyXQ9bZFfreSgG6cWaOVDBRu1ztH0HhTo35
 GrlcJ+BpALHWULMYC5Pn2ygzO0GqexOg4OWDSPLlDTiq7LVzQDFQHDfXd
 6IywLcTBztg+KFXqJhr68xGO9KTNaONaU9+Hg9WMHL4M8VGJbMcTxA6nB
 VzjUKCRJtsi13xEDsluNlLptGDt5VHWj/dnMd9tYgm6IP2WmPObJJIPx6
 mmEofjjgWI1pgeX6ES5YbbWiNrGa1wClFkRlZ8R7jBWAgm9D/C6YHnV0J w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="364629907"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="364629907"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 04:34:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="1051743613"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="1051743613"
Received: from mschweik-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.34.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 04:34:21 -0700
Date: Tue, 11 Jul 2023 13:34:13 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZK0+NXmKnEzeUtTI@ashyti-mobl2.lan>
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <20230706151611.1024576-1-andrzej.hajda@intel.com>
 <ZK0sbz+h0r/PwYn2@ashyti-mobl2.lan>
 <a9e34d7a-b22d-779c-67cb-88c69dc7ca6b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a9e34d7a-b22d-779c-67cb-88c69dc7ca6b@intel.com>
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

Hi Andrzej,

>          drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++++++++++
>          1 file changed, 11 insertions(+)
> 
>         diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>         index a0e3ef1c65d246..2c877ea5eda6f0 100644
>         --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>         +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>         @@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
>          static void remove_from_context(struct i915_request *rq)
>          {
>                 struct intel_context *ce = request_to_scheduling_context(rq);
>         +       struct intel_engine_cs *engine;
>         +       intel_engine_mask_t tmp;
> 
>                 GEM_BUG_ON(intel_context_is_child(ce));
> 
>         @@ -3478,6 +3480,15 @@ static void remove_from_context(struct i915_request *rq)
> 
>                 atomic_dec(&ce->guc_id.ref);
>                 i915_request_notify_execute_cb_imm(rq);
>         +
>         +       /*
>         +        * GuC virtual engine can disappear after this call, so let's assign
>         +        * something valid, as driver expects this to be always valid pointer.
>         +        */
>         +       for_each_engine_masked(engine, rq->engine->gt, rq->execution_mask, tmp) {
>         +               rq->engine = engine;
> 
>     yes... here the context might lose the virtual engine... I wonder
>     whether this is the rigth solution, though. Maybe we should set
>     rq->engine = NULL; and check for NULL? Don't know.
> 
> 
> Setting NULL causes occasional null page de-reference in
> 
> i915_request_wait_timeout:
> 
> mutex_release(&rq->engine->gt->reset.mutex.dep_map, _THIS_IP_)
> 
> rq->engine after removing rq from context is (IMHO) used as a set of aliases
> for gt and i915 (despite rq itself contains the alias to i915).

without investigating further, but maybe that code is not even
supposed to be executed, at this point, if the request's assigned
virtual engine is removed.

Andi
