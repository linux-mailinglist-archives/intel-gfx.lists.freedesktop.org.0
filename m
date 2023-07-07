Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF9974AC78
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jul 2023 10:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E585D10E528;
	Fri,  7 Jul 2023 08:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F8F10E528
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jul 2023 08:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688717115; x=1720253115;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=dvNhghXwCWDha2WOoCBnydrAHAWSUSRZ7DkSa+6iCGE=;
 b=EBwbP5H7YlMNgfpSK8Dr2yWK1OS/Orljaj5TYMIa+O9cKmrM9JS+bbYP
 b4DwbbyEngbq80I7a2ebhKycbFCDuSva+o17ayuQ6r8uslfoG8MHdpPR/
 lb59+VQonjWFP6CnvcEDmReWkM/h0quMaKLXU8rJkn1f2qOSZQp0ogIw0
 3xhAiUj7YZBiWunlIL6TWFxY7aS9fZbXVkbvXo0hGRu2JWWXFjSwDhoC3
 oNpL5mpmcc6c9E2QVHB6N+nb6ez9UIB61sSBEHctYhd9sG9a+RoatCBNq
 idPAsRTsXzUAGO7/htSF8lO5RYvnauBM/+4eUba8oXWB1505N9+WXATRZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="429896965"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="429896965"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 01:05:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="844019652"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="844019652"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.219.107])
 ([10.251.219.107])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 01:05:13 -0700
Message-ID: <7de6f1eb-b5b1-69fd-4b6f-2b9d58e6bcf0@linux.intel.com>
Date: Fri, 7 Jul 2023 10:05:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <20230706151611.1024576-1-andrzej.hajda@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230706151611.1024576-1-andrzej.hajda@intel.com>
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/6/2023 5:16 PM, Andrzej Hajda wrote:
> GuC virtual engines can be removed before request removal. On the other
> side driver expects rq->engine to be a valid pointer for a whole life of
> request. Setting rq->engine to an always valid engine should solve
> the issue.
>
> The patch fixes bug detected by KASAN with following signature:
> i915 0000:00:02.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x0000005c [0x0000005c]
> BUG: KASAN: slab-use-after-free in i915_fence_release+0x2a2/0x2f0 [i915]
> Read of size 4 at addr ffff88813ffda6e8 by task kworker/u32:10/157
> ...
> Allocated by task 1184:
> ...
> guc_create_virtual+0x4d/0x1160 [i915]
> i915_gem_create_context+0x11ee/0x18c0 [i915]
> ...
> Freed by task 151:
> ...
> intel_guc_deregister_done_process_msg+0x324/0x6d0 [i915]
> ...
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7926
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++++++++++
>   1 file changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index a0e3ef1c65d246..2c877ea5eda6f0 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
>   static void remove_from_context(struct i915_request *rq)
>   {
>   	struct intel_context *ce = request_to_scheduling_context(rq);
> +	struct intel_engine_cs *engine;
> +	intel_engine_mask_t tmp;
>   
>   	GEM_BUG_ON(intel_context_is_child(ce));
>   
> @@ -3478,6 +3480,15 @@ static void remove_from_context(struct i915_request *rq)
>   
>   	atomic_dec(&ce->guc_id.ref);
>   	i915_request_notify_execute_cb_imm(rq);
> +
> +	/*
> +	 * GuC virtual engine can disappear after this call, so let's assign
> +	 * something valid, as driver expects this to be always valid pointer.
> +	 */
> +	for_each_engine_masked(engine, rq->engine->gt, rq->execution_mask, tmp) {
> +		rq->engine = engine;
> +		break;
> +	}
>   }
>   
>   static const struct intel_context_ops guc_context_ops = {
