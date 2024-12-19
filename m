Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2409F78E5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 10:50:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE28910E47A;
	Thu, 19 Dec 2024 09:50:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bRQFOKUg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF4E10E47A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 09:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734601808; x=1766137808;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=L4f2GvSrXhfB1p/pC9o9BKj0gk5dgfEtIBSOqfoIQ2U=;
 b=bRQFOKUg2Pn9E6lMXGQ5OPm11e8NRzu3LFsiAIB0fDcS1JJ5LCpOcsbP
 Q9zRCgoHHCT9LgAPklWpuuxb78eIk/gwT38O4rFJ9WcOjyJm/u8WjXpwj
 wALeMFmKzdymk2TAXSIeqH1tJUGpCxia2DFtrTbjy1F2m3aaKk7p6HsU2
 2lYkVpSaGIrORReQB9Y2nda+YqAWsAwj4lOKUOhKIIiAauRkMZzFndGnM
 +NPYOC+Dpnrplt+5f4EsyBaBoDr52T2mU0sd5fO2DQ34ymwhF6hqrWFar
 DFDOTI7/f1lFfxsQ2RGb4Z0+yWEVzPXIwXuMzE0fkBcHiBmytmVdqD3SC A==;
X-CSE-ConnectionGUID: go86YjFuQ7eT3xzGFKJQnw==
X-CSE-MsgGUID: guCqVgKBTkq2QpcLS5WfrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="34986959"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="34986959"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 01:50:07 -0800
X-CSE-ConnectionGUID: 4AqWtwLVS4y5OP5sqPWrTA==
X-CSE-MsgGUID: ulyC8zJlS5SwJCEFx6RUGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="103133055"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.178])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 01:50:05 -0800
Date: Thu, 19 Dec 2024 10:50:01 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com
Subject: Re: [PATCH] drm/i915/gt: Add logging before setting TAINT_WARN
Message-ID: <Z2PsSe1AZbksmjld@ashyti-mobl2.lan>
References: <20241218195530.2821188-1-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218195530.2821188-1-sebastian.brzezinka@intel.com>
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

Hi Sebastian,

On Wed, Dec 18, 2024 at 07:55:30PM +0000, Sebastian Brzezinka wrote:
> Adding TAINT_WARN is expected when GPU cannot be restarted, informing
> about it will make it easier to find the source of the failure.
> 
> Right now TAINT_WARN will cause CI machine to restart, leaving only err
> code EINTR.

you are describing here what you haven't done in your patch. If I
just read this I assume that you are adding the TAINT_WARN, which
is not the case.

Please describe in your commit log:

 - The problem you are trying to solve.
 - What's the the solution.
 - How you implemented it.

The title is not very descriptive either.

> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index c2fe3fc78e76..458c26706df4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1113,6 +1113,7 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
>  		 * Warn CI about the unrecoverable wedged condition.
>  		 * Time for a reboot.
>  		 */
> +		gt_err(gt, "Unrecoverable wedged condition\n");
>  		add_taint_for_CI(gt->i915, TAINT_WARN);
>  		return false;
>  	}
> @@ -1264,9 +1265,10 @@ void intel_gt_reset(struct intel_gt *gt,
>  	}
>  
>  	ret = resume(gt);
> -	if (ret)
> +	if (ret) {
> +		gt_err(gt, "Failed to resume (%d)\n", ret);
>  		goto taint;
> -
> +	}
>  finish:

It looks much better if you leave one space before the error
labels, same as before, but now you are adding the brackets.

Andi

>  	reset_finish(gt, awake);
>  unlock:
> @@ -1608,6 +1610,7 @@ void intel_gt_set_wedged_on_init(struct intel_gt *gt)
>  	set_bit(I915_WEDGED_ON_INIT, &gt->reset.flags);
>  
>  	/* Wedged on init is non-recoverable */
> +	gt_err(gt, "Non-recoverable wedged on init\n");
>  	add_taint_for_CI(gt->i915, TAINT_WARN);
>  }
>  
> -- 
> 2.34.1
