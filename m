Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B213E48DF3B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D8210E565;
	Thu, 13 Jan 2022 20:54:06 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A97810E4BB;
 Thu, 13 Jan 2022 20:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642107245; x=1673643245;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sRoB8so6O0VNsb0QVcufs455QhXn3PYNEnTGJPojVbM=;
 b=hrjH3Y6PgWqMH1xN43Ovd4XBfBfQ0geczGBHo0rjs2ociyUgL1bRnLoR
 hByDenTljpkoufVh7POi6wjwoH5/RECm0LFyO+3PXET4a+ifTXfNPPBUf
 Ft8l2/I1d7CQvhkbUAk4j6O79kwv5ohiGevl7b2mGCPOwSRbAb77mPj3O
 UnKHQVTS5ar/XR7GBZjDzI71mW2E/WVS7Vm64pANABfN+Ltd4jFRa2VsT
 hpKms/QVw1ujMBp7ifICXQoJ4sBNmQsmqM8AxCIr6H37RZ+c8EujIDPPy
 BVOfblOktWYsE4+m3h3ZKlSKA9wpN82IO7Lc7+IaTFBUl9RKZEr4zQkDM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="304842004"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="304842004"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:54:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="473366961"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:54:04 -0800
Date: Thu, 13 Jan 2022 12:48:15 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113204814.GA8816@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-11-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113195947.1536897-11-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 i-g-t 10/15] tests/i915/i915_hangman: Run
 background task on all engines
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 11:59:42AM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> As opposed to only on the non-target engines. This means that there is
> some other workload present for the scheduler to switch between and so
> detet the hang immediately.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  tests/i915/i915_hangman.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 6601db5f6..9f7f8062c 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -298,12 +298,14 @@ test_engine_hang(const intel_ctx_t *ctx,
>  	igt_skip_on(flags & IGT_SPIN_INVALID_CS &&
>  		    gem_engine_has_cmdparser(device, &ctx->cfg, e->flags));
>  
> -	/* Fill all the other engines with background load */
> +	/*
> +	 * Fill all engines with background load.
> +	 * This verifies that independent engines are unaffected and gives
> +	 * the target engine something to switch between so it notices the
> +	 * hang.
> +	 */
>  	num_ctx = 0;
>  	for_each_ctx_engine(device, ctx, other) {
> -		if (other->flags == e->flags)
> -			continue;
> -
>  		local_ctx[num_ctx] = intel_ctx_create(device, &ctx->cfg);
>  		ahndN = get_reloc_ahnd(device, local_ctx[num_ctx]->id);
>  		spin = __igt_spin_new(device,
> -- 
> 2.25.1
> 
