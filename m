Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 268ED9DB624
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 12:00:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D183510E012;
	Thu, 28 Nov 2024 11:00:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d+9Rp/C/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E54B10E012
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 11:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732791610; x=1764327610;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aHk+fF94gLWJQrlGt1qIQopvEH1iICLRc4lkji1U3pw=;
 b=d+9Rp/C/NGaUnlzGZDZtVLfHtuAhWesTACH2kURWW/eHVEXWpJf2cDBd
 qN7JNc4Es1+FTT1Sd7oO6njrEZLe+fatU4NQSPiNISUD8OhouDUakgFXz
 7xsvACOAT6M+poICPiMabZeQWYk8DAu46RJaM7uof3l0PV7NAg3W8DE4Y
 6M7kKE3nmE/yWK5P5Oqdh8piHRCtG+X5B8InqExlW2RyMUz0PQtA7+UMB
 7xtsi9TIEOGczDpkFtbkx+FozcGgJldoQQO4nP4goiiTPfocbWcawz9d2
 MMV75Jqq1Jq2rB8vZhdObf793hJkw2mF86Vj+FzCQAMXbvtDxM8chJaLo Q==;
X-CSE-ConnectionGUID: v+1kC5RlRWCbJwKlGIXDDQ==
X-CSE-MsgGUID: c1mwPVlySyyLiTwEcyLKrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32388790"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="32388790"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:00:10 -0800
X-CSE-ConnectionGUID: 2xj2QaE8TqSwZNdD5BCQ2A==
X-CSE-MsgGUID: mJjG+w19R02cGdnh38vwzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92303570"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.166])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:00:08 -0800
Date: Thu, 28 Nov 2024 12:00:04 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Eugene Kobyak <eugene.kobyak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, John.C.Harrison@intel.com,
 andi.shyti@linux.intel.com
Subject: Re: [PATCH v3] drm/i915: Fixed NULL pointer dereference in
 capture_engine
Message-ID: <Z0hNNPLktl4e1haH@ashyti-mobl2.lan>
References: <etwgucaj4hu7buvrvzgxkhxjtl526qd6fdyfmxzsdacphrg667@nrd35hese3t5>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <etwgucaj4hu7buvrvzgxkhxjtl526qd6fdyfmxzsdacphrg667@nrd35hese3t5>
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

Hi,

On Mon, Nov 25, 2024 at 03:27:11PM +0000, Eugene Kobyak wrote:
> When the intel_context structure contains NULL,
> it raises a NULL pointer dereference error in drm_info().
> 
> Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
> 
> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 135ded17334e..1c614c74c2cf 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1643,9 +1643,16 @@ capture_engine(struct intel_engine_cs *engine,
>  		return NULL;
>  
>  	intel_engine_get_hung_entity(engine, &ce, &rq);
> -	if (rq && !i915_request_started(rq))
> -		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
> -			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
> +	if (rq && !i915_request_started(rq)) {
> +		char guc_id[9];
> +		if (ce)
> +			scnprintf(guc_id, sizeof(guc_id), "[0x%04X]", ce->guc_id.id);
> +		else
> +			scnprintf(guc_id, sizeof(guc_id), " ");
> +
> +		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld%s not yet started\n",
> +			 engine->name, rq->fence.context, rq->fence.seqno, guc_id);
> +	}

I've discussed offline with Eugene this scenario and we tested
the cases when ce is NULL. I'm looking forward to your v4.

Thanks,
Andi
