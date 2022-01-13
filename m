Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8577848E090
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 23:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F94B10E1FB;
	Thu, 13 Jan 2022 22:44:20 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C2F10E1FB;
 Thu, 13 Jan 2022 22:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642113859; x=1673649859;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=H3niaPraC/GIOzZf7AOKHGkv23v3Vy29wtcCJFAYyK0=;
 b=WQOcX3V/0GrtDJXEJW5jmKczNJVs0TlQG/wyOFkC3W9chtaQGOuvGWuS
 S7hYNtgjwTTMw/CCBxJUYjcRgcXloyX60rZJhTmdQsctMkD6NSTWDaZib
 qDFlceZo3ngxxyT0w5l1N6qkT4bzKOYIWiym4IFefnpGT3AwnbX9wUDQA
 MMOvXJm6Uowhxx3RcMdwVF4or7N29esxzvAnX2fDvsViT7Ls7hfyPpz8R
 mLVBx3iIBqmY1ggd0qR2kT8K8jjS2we/dJYWEYWtnuPrTdVpJ22uJRP1v
 yySnCSo6fU9Y6pLS7jUesmmWBWLGBC9fQZqmvUyyxdzMj4WQ01ROhvVRa Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="231476604"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="231476604"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 14:44:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="559274001"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 14:44:18 -0800
Date: Thu, 13 Jan 2022 14:38:28 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113223828.GA21140@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-15-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113195947.1536897-15-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 i-g-t 14/15] tests/i915/i915_hangman:
 Configure engine properties for quicker hangs
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

On Thu, Jan 13, 2022 at 11:59:46AM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Some platforms have very long timeouts configured for some engines.
> Some have them disabled completely. That makes for a very slow (or
> broken) hangman test. So explicitly configure the engines to have
> reasonable settings first.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>  tests/i915/i915_hangman.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 567eb71ee..1a2b2cf7a 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -500,8 +500,12 @@ igt_main
>  {
>  	const intel_ctx_t *ctx;
>  	igt_hang_t hang = {};
> +	struct gem_engine_properties saved_params[GEM_MAX_ENGINES];
> +	int num_engines = 0;
>  
>  	igt_fixture {
> +		const struct intel_execution_engine2 *e;
> +
>  		device = drm_open_driver(DRIVER_INTEL);
>  		igt_require_gem(device);
>  
> @@ -515,6 +519,13 @@ igt_main
>  		igt_require(has_error_state(sysfs));
>  
>  		gem_require_mmap_wc(device);
> +
> +		for_each_physical_engine(device, e) {
> +			saved_params[num_engines].engine = e;
> +			saved_params[num_engines].preempt_timeout = 500;
> +			saved_params[num_engines].heartbeat_interval = 1000;
> +			gem_engine_properties_configure(device, saved_params + num_engines++);
> +		}
>  	}
>  
>  	igt_describe("Basic error capture");
> @@ -546,6 +557,11 @@ igt_main
>  	do_tests("engine", "engine", ctx);
>  
>  	igt_fixture {
> +		int i;
> +
> +		for (i = 0; i < num_engines; i++)
> +			gem_engine_properties_restore(device, saved_params + i);

If you wanted to be clever:

while (num_engines--)
	gem_engine_properties_restore(device, saved_params + num_engines);

Regardless:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> +
>  		igt_disallow_hang(device, hang);
>  		intel_ctx_destroy(device, ctx);
>  		close(device);
> -- 
> 2.25.1
> 
