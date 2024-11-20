Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA549D383B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:21:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AC1C10E0A2;
	Wed, 20 Nov 2024 10:21:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cB6Ihb2l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC8D10E0A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 10:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098070; x=1763634070;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HN45Tbw9iA5E2rC1+21QcVPgKJARdFTa6vh7pAefUZ8=;
 b=cB6Ihb2ljl3mP0BQ8k2kLripDGXUIPDa5lh0Fm9zzrVzbtyJdxVJDAf8
 PEbTdEYgdkpUHVxE6rYWJSPV1YPD9jVbEyUB32LAENfApp6gqof4NGGY7
 Tb37H3oMpM28jwKMDd2Il/Iw6ViP4+wl6wxvtpkgLYCiRFGzaSZpz5IRv
 rZqSoHQTzOkjQADQ5+wkgIHVMAy8UAc+/yYH5fP6m2fA0MIYGVfOg4lyQ
 YuctiiURyYYfR29CThWAdMAO45C1KQMbgWehicIRVetN9IBFqbPN1dT8D
 zqVRdNopGjfWvbIn1fr3eOro7OmWb6YR8e5fVkVSh/CKUYA3Pq66vae6Y g==;
X-CSE-ConnectionGUID: LYHKKjnrSZeRYXNg8xwhdg==
X-CSE-MsgGUID: m/wchqoeSaKvUNQ+kiiDEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31897655"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31897655"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:21:07 -0800
X-CSE-ConnectionGUID: ep8fIZnZQJWApcZjiGkDbA==
X-CSE-MsgGUID: El/z+Qe/SvG4N37uB8gcMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94326280"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.24])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:21:05 -0800
Date: Wed, 20 Nov 2024 11:21:02 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Eugene Kobyak <eugene.kobyak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Fixed NULL pointer dereference in capture_engine
Message-ID: <Zz24DtYMdbPGfpXh@ashyti-mobl2.lan>
References: <5a42bhkoaoed2mky6343qz35pdyzfz6pqgyczrywqgwb4ezipv@be2aiql3bmih>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5a42bhkoaoed2mky6343qz35pdyzfz6pqgyczrywqgwb4ezipv@be2aiql3bmih>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Eugene,

On Tue, Nov 19, 2024 at 05:16:44PM +0000, Eugene Kobyak wrote:
> When the intel_context structure contains NULL,
> it raises a NULL pointer dereference error in drm_info().
> 
> This patch aims to resolve issue:
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
> 
> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>

Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: <stable@vger.kernel.org> # v6.3+

> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 135ded17334e..b00651ad8515 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1643,11 +1643,13 @@ capture_engine(struct intel_engine_cs *engine,
>  		return NULL;
>  
>  	intel_engine_get_hung_entity(engine, &ce, &rq);
> -	if (rq && !i915_request_started(rq))
> -		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> -			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
> -
>  	if (rq) {
> +		if (!i915_request_started(rq)) {

why are you breaking the if here?

> +			u16 guc_id = ce ? ce->guc_id.id : 0;

good catch!

Andi

> +			drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> +				 engine->name, rq->fence.context, rq->fence.seqno, guc_id);
> +		}
>  		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
>  		i915_request_put(rq);
>  	} else if (ce) {
> -- 
> 2.34.1
