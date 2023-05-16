Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EB1704DD1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 14:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE76010E0C6;
	Tue, 16 May 2023 12:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E72C510E0C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 12:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684240288; x=1715776288;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=i6m8kb7Xfbg938NFfhw+K/zZ1s6iEb504+7GabM/Ccw=;
 b=gv0kD3yOp6HUk1JlwaWLTyuzxuhxZ4ptIl2ZtFdcFhpVluXBbhAISNHj
 ztTgi8nlfh9zTN2+RgLIEEETdEIfesc3vMl9U+2MrSXePr+r/MF1lGP80
 FhcfMuQrSNdn9mazd9W3JhjXVjxPN5VLxuLjKl7qxd9oJGz2gdY480UiG
 CKisOT+E9GQGgKmedNQ35+AsN7d70F7YqSBFn6uyVKGiUD/1qmCUXVPVu
 oDT0HBurYhBTucXXaCVgbwJ6+uL2kN60SnotMfOqZ9I6sWCJmbnyULn+C
 vnT1wgzR199WJgByqKp9f3g5Padz3IrtfDeCOsaMDtvvRnP+DZBhido88 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="331826376"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="331826376"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 05:31:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="947837471"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="947837471"
Received: from khach-mobl.ger.corp.intel.com (HELO localhost) ([10.252.49.69])
 by fmsmga006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2023 05:31:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230516121345.1036399-1-tejas.upadhyay@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230516121345.1036399-1-tejas.upadhyay@intel.com>
Date: Tue, 16 May 2023 15:31:23 +0300
Message-ID: <87wn18h2zo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Use large rings for compute
 contexts
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 16 May 2023, Tejas Upadhyay <tejas.upadhyay@intel.com> wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
>
> Allow compute contexts to submit the maximal amount of work without
> blocking userspace.
>
> The original size for user LRC ring's (SZ_16K) was chosen to minimise
> memory consumption, without being so small as to frequently stall in the
> middle of workloads. With the main consumers being GL / media pipelines
> of 2 or 3 batches per frame, we want to support ~10 requests in flight
> to allow for the application to control throttling without stalling
> within a frame.
>
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 5402a7bbcb1d..0edb7be6fa5e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -965,6 +965,8 @@ static int intel_context_set_gem(struct intel_context *ce,
>  
>  	GEM_BUG_ON(intel_context_is_pinned(ce));
>  	ce->ring_size = SZ_16K;
> +	if (ce->engine->class == COMPUTE_CLASS)
> +		ce->ring_size = SZ_512K;

Not a huge fan of first initializing something, and then changing it in
some cases.

Why not if (ce->engine->class == COMPUTE_CLASS) ... else ...?

BR,
Jani.


>  
>  	i915_vm_put(ce->vm);
>  	ce->vm = i915_gem_context_get_eb_vm(ctx);

-- 
Jani Nikula, Intel Open Source Graphics Center
