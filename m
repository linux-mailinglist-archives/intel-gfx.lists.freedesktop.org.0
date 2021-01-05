Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 138C62EA316
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 02:55:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8162F8951E;
	Tue,  5 Jan 2021 01:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3636189449
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 01:55:22 +0000 (UTC)
IronPort-SDR: LuFwpnV1vV8MRW1kXSRHiZqr7xB06oMuMwvRf1+b1NSiYCr0l4gYilfCK+M9g9Fe2FzRfOaCu2
 8suTRkRNWOBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="174459208"
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; d="scan'208";a="174459208"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 17:55:21 -0800
IronPort-SDR: rmF/B4PXKy0r6saZWeP+NH0D9pwuT6vBZbWxhXdda71DNOzzZyU/OnHKE54/DzniGJt0UDgcwa
 AUAXVZnNKiNg==
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; d="scan'208";a="462142968"
Received: from wburton-desk1.ger.corp.intel.com (HELO intel.com)
 ([10.252.28.225])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2021 17:55:19 -0800
Date: Tue, 5 Jan 2021 03:55:16 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/PHBIqvkoo9E8g3@intel.intel>
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
 <20210104115145.24460-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104115145.24460-3-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/gt: Allow failed resets
 without assertion
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Mon, Jan 04, 2021 at 11:51:42AM +0000, Chris Wilson wrote:
> If the engine reset fails, we will attempt to resume with the current
> inflight submissions. When that happens, we cannot assert that the
> engine reset cleared the pending submission, so do not.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2878
> Fixes: 16f2941ad307 ("drm/i915/gt: Replace direct submit with direct call to tasklet")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_types.h  |  2 +
>  .../drm/i915/gt/intel_execlists_submission.c  |  6 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c         |  3 +
>  drivers/gpu/drm/i915/gt/selftest_execlists.c  | 75 +++++++++++++++++++
>  4 files changed, 85 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index c28f4e190fe6..430066e5884c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -561,6 +561,8 @@ struct intel_engine_cs {
>  		unsigned long stop_timeout_ms;
>  		unsigned long timeslice_duration_ms;
>  	} props, defaults;
> +
> +	I915_SELFTEST_DECLARE(struct fault_attr reset_timeout);
>  };
>  
>  static inline bool
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 2afbc0a4ca03..f02e3ae10d28 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3047,9 +3047,13 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
>  	 * After a GPU reset, we may have requests to replay. Do so now while
>  	 * we still have the forcewake to be sure that the GPU is not allowed
>  	 * to sleep before we restart and reload a context.
> +	 *
> +	 * If the GPU reset fails, the engine may still be alive with requests
> +	 * inflight. We expect those to complete, or for the device to be
> +	 * reset as the next level of recovery, and as a final resort we
> +	 * will declare the device wedged.
>  	 */
>  	GEM_BUG_ON(!reset_in_progress(execlists));
> -	GEM_BUG_ON(engine->execlists.pending[0]);

I would have split this in two patches, but it looks good anyway.

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
