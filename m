Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB4CB1A571
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 17:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9AE10E586;
	Mon,  4 Aug 2025 15:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yfz8l6RW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9AAF10E586
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 15:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754319864; x=1785855864;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TcMLAsy2uBj9gGIZoOEMzfzjKtUZLxx2rW2JsSTtai4=;
 b=Yfz8l6RW6s5lw2dbfXr6IIZldjWXk2G7Hn871GvRF2Lw3fHaAqlOxKgr
 OFP7M8xEppp9/wWN/ZNV+QapPsHuF/uiRtcH9RS6UCddhA6FgvSPJI+wJ
 zr+Y1lHO60x95dJmWF7B6fLMJVht0mE+L7wt8viI4qK8nqcfIa6U9asNe
 kbijps2zpGaL2pVVqWhTuhG0gOvDFt0gz7f+VVQ0YGf1g/cfMDv0wmtO7
 9+dBVQnOYT8+pTyaL/ATmouevIDCX2FKjf3PqHgTgnenOykTJ7BEuuygp
 lUobdQ8+1snKree1K6qs4N0xcHAJfk7RkehYbSD4uydOAmpgy34rrc2Jb w==;
X-CSE-ConnectionGUID: hn5LpjXwQPWHfsJvfuqICw==
X-CSE-MsgGUID: hMI+Nqx4TQemHso0oKb86g==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56728783"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56728783"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 08:04:24 -0700
X-CSE-ConnectionGUID: xp/mPeyjTTyaRj1eJG2edA==
X-CSE-MsgGUID: JM7F0Zs/RKSvgH2xtJLKIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="195126314"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.236])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 08:04:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/gt: Protect against overflow in
 active_engine()
In-Reply-To: <ifjlp3lvgfd47mkhzg2jnsyiwfofzqj5liuj7u34r5uel7d66e@d3mar5w3hhp3>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ifjlp3lvgfd47mkhzg2jnsyiwfofzqj5liuj7u34r5uel7d66e@d3mar5w3hhp3>
Date: Mon, 04 Aug 2025 18:04:18 +0300
Message-ID: <ff2314572908e95cebef2edc3473f3a6862681d0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 04 Aug 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
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

This passes an error pointer to intel_context_put().

BR,
Jani.

> +			} while (count--);
>  			return;
>  		}
>  	}
> -- 
> 2.34.1

-- 
Jani Nikula, Intel
