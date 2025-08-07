Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADA8B1DCEF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 20:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9312A10E3D9;
	Thu,  7 Aug 2025 18:13:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y0HSJGB9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE2210E3D9
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 18:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754590389; x=1786126389;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lfwapok/fFct3qlQZu2l4BvbmvIvE10OtB+gPEObecU=;
 b=Y0HSJGB9qcT5xPAP1HxTaSDDhFJ6sHJcquA7e5q4qxf/q7MSspGd2BDw
 2omZsdI2kN1GHvkS0+p9/4j7fa/VaDRL4K94ajVTxdxv46di1zF4JhrHL
 KsyCYpLmFrt3FAwu1Xy27ZS4tjMVl0k0JhM0oF192oDyGFqCnYqDDFfqi
 de2zQMw0zeMsNyvK+HtlBnmWHVVo401yF+PBa6gLigbYx5Uo7HsdGLuZx
 korTC2UwvadAQjIeqC2zwdfkmOQIpTijDanC7BVJx3Q7dDsB7x+ucHYzY
 X7TLPsDNhM1qVwgm2wdATqQ/fZ4IE51BKv1590nq4mtaCoBQfjYdJFCT7 w==;
X-CSE-ConnectionGUID: E/CwPcMQTXK2tw219LkR6w==
X-CSE-MsgGUID: TwnS825ySseklmxXWXVOnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68017446"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="68017446"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 11:13:09 -0700
X-CSE-ConnectionGUID: Ut6rKvQXTa+TXkoxjE/Ltg==
X-CSE-MsgGUID: aFTwDKAcTB2uQaCvfrPOTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165513222"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.126])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 11:13:06 -0700
Date: Thu, 7 Aug 2025 17:12:57 -0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Ensure sleep calculations in
 wait_for_freq() do not use negative value of timeout_ms
Message-ID: <aJTsqXQ_h5Rz7q-0@ashyti-mobl2.lan>
References: <o6umy6rqbsdgfqig22k5wqxr5awohf2dwcropgs2rxuqbme7ku@3f56co6tlk4i>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <o6umy6rqbsdgfqig22k5wqxr5awohf2dwcropgs2rxuqbme7ku@3f56co6tlk4i>
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

Hi Krzysztof,

...

> Change the type of "sleep" variable to unsigned and ensure it
> does not use "timeout_ms", when it is a negative value in the
> calculations.

ehm... if it does, though, it's a different, bigger problem :-)

> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 73bc91c6ea07..20ec7c0c94dc 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -152,7 +152,7 @@ static u8 wait_for_freq(struct intel_rps *rps, u8 freq, int timeout_ms)
>  {
>  	u8 history[64], i;
>  	unsigned long end;
> -	int sleep;
> +	unsigned int sleep;

I'm not a big fan of this change.

>  	i = 0;
>  	memset(history, freq, sizeof(history));
> @@ -180,7 +180,7 @@ static u8 wait_for_freq(struct intel_rps *rps, u8 freq, int timeout_ms)

How about doing at this point:

	if (!timeout_ms)
		return act;

Maybe the caller doesn't want to wait (even though, as Jani said
this validation is a bit overengineered, but I would still accept
it).

If you really want, you could add it at the very beginning to
avoid extra operations.

Andi

>  		usleep_range(sleep, 2 * sleep);
>  		sleep *= 2;
> -		if (sleep > timeout_ms * 20)
> +		if (sleep > timeout_ms * 20 && timeout_ms > 0)
>  			sleep = timeout_ms * 20;
>  	} while (1);
>  }
> -- 
> 2.34.1
> 
> -- 
> Best Regards,
> Krzysztof
