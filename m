Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B29617AB8
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 11:20:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CCA010E26E;
	Thu,  3 Nov 2022 10:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F1710E26E
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 10:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667470827; x=1699006827;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZXRJyGrJSvqDWjFRrBWebrzmMMJkt+CCM0uqOEsCCWA=;
 b=IL1cXw+cv98cfeylyKTLIsx8a3FvGb3T5DXOdrwEbonM4jWfyduCCEcM
 Bcyw6h45CPNCQnZM2cy37mhlfn7rx4fYdrjEehgloPSkHmEP/w6fE/hV+
 uDW9H5/fY/hd19/jyXKJWe+PpSvU6It7JUftRfY2ZyZMgf7fNIe93gYyW
 zNVeNvmSE+sFINPPPoMglAHMjNR3/8fHjkdEY8jYdDv+mekF9kgn2eikT
 1XMTWoaTXYl4UPJOxbobpOafKn55dtamoRe/gAWpHNYM3HYmLhOdQv+us
 6rnYY1XIGy/6638gOOiCIVeUZSla+QKv/HGATfWeJf8x2NJJGwCtcAqFM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="371744132"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="371744132"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 03:20:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="777250096"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="777250096"
Received: from sslose-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.217.229])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 03:20:23 -0700
Date: Thu, 3 Nov 2022 11:20:19 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y2OV45FrQWZFZZ0V@ashyti-mobl2.lan>
References: <20221102155709.31717-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102155709.31717-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Reduce oversaturation
 of request smoketesting
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Wed, Nov 02, 2022 at 04:57:09PM +0100, Nirmoy Das wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> The goal in launching the request smoketest is to have sufficient tasks
> running across the system such that we are likely to detect concurrency
> issues. We aim to have 2 tasks using the same engine, gt, device (each
> level of locking around submission and signaling) running at the same
> time. While tasks may not be running all the time as they synchronise
> with the gpu, they will be running most of the time, in which case
> having many more tasks than cores available is wasteful (and
> dramatically increases the workload causing excess runtime). Aim to
> limit the number of tasks such that there is at least 2 running per
> engine, spreading surplus cores around the engines (rather than running
> a task per core per engine.)
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Pushed in intel-drm-gt-next.

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/selftests/i915_request.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index a46350c37e9d..4380473ceb98 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -1710,7 +1710,8 @@ static int live_breadcrumbs_smoketest(void *arg)
>  {
>  	struct drm_i915_private *i915 = arg;
>  	const unsigned int nengines = num_uabi_engines(i915);
> -	const unsigned int ncpus = num_online_cpus();
> +	const unsigned int ncpus = /* saturate with nengines * ncpus */
> +		max_t(int, 2, DIV_ROUND_UP(num_online_cpus(), nengines));
>  	unsigned long num_waits, num_fences;
>  	struct intel_engine_cs *engine;
>  	struct smoke_thread *threads;
> @@ -1782,7 +1783,7 @@ static int live_breadcrumbs_smoketest(void *arg)
>  			goto out_flush;
>  		}
>  		/* One ring interleaved between requests from all cpus */
> -		smoke[idx].max_batch /= num_online_cpus() + 1;
> +		smoke[idx].max_batch /= ncpus + 1;
>  		pr_debug("Limiting batches to %d requests on %s\n",
>  			 smoke[idx].max_batch, engine->name);
>  
> -- 
> 2.38.0
