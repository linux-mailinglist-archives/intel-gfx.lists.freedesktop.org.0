Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C89717DDF3
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 11:52:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD1B6E142;
	Mon,  9 Mar 2020 10:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96BCF6E142
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 10:52:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 03:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,533,1574150400"; d="scan'208";a="235645050"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 09 Mar 2020 03:52:06 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E4D405C1DD1; Mon,  9 Mar 2020 12:50:45 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200307122425.29114-1-chris@chris-wilson.co.uk>
References: <20200307122425.29114-1-chris@chris-wilson.co.uk>
Date: Mon, 09 Mar 2020 12:50:45 +0200
Message-ID: <87sgih3ipm.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Wait for the wa batch to be
 pinned
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Be sure to wait for the vma to be in place before we tell the GPU to
> execute from the wa batch. Since initialisation is mostly synchronous
> (or rather at some point during start up we will need to sync anyway),
> we can affort to do an explicit i915_vma_sync() during wa batch
> construction rather than check for a required await on every context
> switch. (We don't expect to change the wa bb at run time so paying the
> cost once up front seems preferrable.)
>
> Fixes: ee2413eeed76 ("drm/i915: Add mechanism to submit a context WA on ring submission")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c    | 4 ++++
>  drivers/gpu/drm/i915/gt/selftest_ring_submission.c | 6 ++++++
>  2 files changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 6881317a747e..1424582e4a9b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -2015,6 +2015,10 @@ static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
>  	if (err)
>  		goto err_private;
>  
> +	err = i915_vma_sync(vma);
> +	if (err)
> +		goto err_unpin;
> +
>  	err = gen7_ctx_switch_bb_setup(engine, vma);
>  	if (err)
>  		goto err_unpin;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> index fcfddcd2a63d..9995faadd7e8 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> @@ -29,6 +29,12 @@ static struct i915_vma *create_wally(struct intel_engine_cs *engine)
>  		return ERR_PTR(err);
>  	}
>  
> +	err = i915_vma_sync(vma);
> +	if (err) {
> +		i915_gem_object_put(obj);
> +		return ERR_PTR(err);
> +	}
> +
>  	cs = i915_gem_object_pin_map(obj, I915_MAP_WC);
>  	if (IS_ERR(cs)) {
>  		i915_gem_object_put(obj);
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
