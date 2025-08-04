Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA946B1A620
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 17:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 605C210E59C;
	Mon,  4 Aug 2025 15:34:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B7GtiPem";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C2710E59C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 15:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754321688; x=1785857688;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qKz17TGyT1xgLaEMmI8MPFLHro7ro9c2OSvPp+r6jH8=;
 b=B7GtiPemRTzkizTSCHG6phaLaTmBlr0g/kKg/FRGUeQvt9fb/rki2vQl
 sL1aZHvLILvVCCzRBSe5GT98tGE7fcyUndjefQP/VusJwTsm1kJl+kedq
 oOfMLXjLb0urtDi16RrgB1G4QMEhFdMRLvU2niJ8gZtTyQKIC+Fp6XFbT
 jHmB3Q/mb65vvNVfYS8ZfrzQnY8O4RrFkRnFd/D/CyLit/E8s9EPP+VZV
 k+Pvw8TFp8TT64DxGV2zEFtLRNpGIFvSXukD80XlCnxz5cCrSlDGGl1p7
 wZ7b5klww+jXRlJV3LCcqmE93mPGC7iTwD7funhOM6RB4Gb5ZLEFPWpMs w==;
X-CSE-ConnectionGUID: KK0T8wq/SzaU4wc4ag99LA==
X-CSE-MsgGUID: e5hM56nBSFmqSwYW9V4HAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="66868888"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="66868888"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 08:34:48 -0700
X-CSE-ConnectionGUID: sCBQVG6dT62WCdluVs9qXA==
X-CSE-MsgGUID: CTe9SR2MTgiujfmWdF5OqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="169495089"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.35])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 08:34:46 -0700
Date: Mon, 4 Aug 2025 14:34:43 -0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/gt: Protect against overflow in
 active_engine()
Message-ID: <aJDTEwmRrAWUKX_d@ashyti-mobl2.lan>
References: <ifjlp3lvgfd47mkhzg2jnsyiwfofzqj5liuj7u34r5uel7d66e@d3mar5w3hhp3>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ifjlp3lvgfd47mkhzg2jnsyiwfofzqj5liuj7u34r5uel7d66e@d3mar5w3hhp3>
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

On Mon, Aug 04, 2025 at 02:55:46PM +0000, Krzysztof Karas wrote:
> It is unlikely, but possible for the first call to
> intel_context_create() to fail with -ENOMEM, which would result
> in entering the following code block and decrementing "count",
> when it is set to 0 (initial condition in the for loop).
> 
> Protect from overflowing the variable by replacing "while" with
> "do while" and using decrement as postfix to make sure
> intel_context_put() fires at least once.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> 
> v2:
>  * remove unlikely() - Jani
>  * replace "while" with "do while" - Andi
> 
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index f057c16410e7..4ec97024665a 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -904,8 +904,9 @@ static void active_engine(struct kthread_work *work)
>  			arg->result = PTR_ERR(ce[count]);
>  			pr_err("[%s] Create context #%ld failed: %d!\n",
>  			       engine->name, count, arg->result);
> -			while (--count)
> +			do {
>  				intel_context_put(ce[count]);
> +			} while (count--);

you still need to decrease count, though, before entering the
loop. However you do it, it requires some check on count. You
should try out the different ways and choose one. Even a 'for'
loop needs to check for count.

Andi

>  			return;
>  		}
>  	}
> -- 
> 2.34.1
> 
> -- 
> Best Regards,
> Krzysztof
