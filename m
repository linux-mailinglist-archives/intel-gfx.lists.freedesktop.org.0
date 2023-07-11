Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 031A374EB9D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 12:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A78810E35D;
	Tue, 11 Jul 2023 10:18:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA2810E35D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 10:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689070715; x=1720606715;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NeGV+wSCNbQn4yMObY3Pa6d240fXFNQirNxKwJ1yW90=;
 b=FJLrMOC9zpEt+IXyPeUWarOSsEGj/OQdwNSCh+2bGXocjtxIvp22kl1C
 aaE+ftzB1xtL9/N1I9meY+mSkkIFoLHewPPeYQxBselktZqq+ZSLlPT8B
 BQatsRMSeg65KvwYUI8Jtq19RNTQ7ylfgqGNvaaBAogUhZES4S1TBHZKw
 u6D/1omYYLqIgeipOXNh3o0BfpGl6K1yzKZFUwM/Rvq+Pa53sSm58ZPQo
 QK2dKWgkIOkwEctN3+E2CcnPblJEU6a7cmg39uONHsyx1GRgRG+5NlaKn
 z0tP+XHVQGOcK084FONn32cvDYO/a/l4ODlxyyhQrzrn5fDwJUoTJev7O w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344900815"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="344900815"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 03:18:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="845218161"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="845218161"
Received: from sbodin-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.13])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 03:18:32 -0700
Date: Tue, 11 Jul 2023 12:18:23 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZK0sbz+h0r/PwYn2@ashyti-mobl2.lan>
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <20230706151611.1024576-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230706151611.1024576-1-andrzej.hajda@intel.com>
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

On Thu, Jul 06, 2023 at 05:16:11PM +0200, Andrzej Hajda wrote:
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

so the only difference between v1 and v2 is this part of the log?

> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7926
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index a0e3ef1c65d246..2c877ea5eda6f0 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -3461,6 +3461,8 @@ static void guc_prio_fini(struct i915_request *rq, struct intel_context *ce)
>  static void remove_from_context(struct i915_request *rq)
>  {
>  	struct intel_context *ce = request_to_scheduling_context(rq);
> +	struct intel_engine_cs *engine;
> +	intel_engine_mask_t tmp;
>  
>  	GEM_BUG_ON(intel_context_is_child(ce));
>  
> @@ -3478,6 +3480,15 @@ static void remove_from_context(struct i915_request *rq)
>  
>  	atomic_dec(&ce->guc_id.ref);
>  	i915_request_notify_execute_cb_imm(rq);
> +
> +	/*
> +	 * GuC virtual engine can disappear after this call, so let's assign
> +	 * something valid, as driver expects this to be always valid pointer.
> +	 */
> +	for_each_engine_masked(engine, rq->engine->gt, rq->execution_mask, tmp) {
> +		rq->engine = engine;

yes... here the context might lose the virtual engine... I wonder
whether this is the rigth solution, though. Maybe we should set
rq->engine = NULL; and check for NULL? Don't know.

Andi

> +		break;
> +	}
>  }
>  
>  static const struct intel_context_ops guc_context_ops = {
> -- 
> 2.34.1
