Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B74B1A17A
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 14:33:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63BFE10E1F1;
	Mon,  4 Aug 2025 12:33:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IfCq4u6H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64DC510E1F1
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 12:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754310820; x=1785846820;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2uGmY7iKBeYhaq0Q3v282N7pMHoi85BHBM3ODcdDCW0=;
 b=IfCq4u6HeAxgXSHZ7wnACu9suyIu4YBgh+FQTBiQOP6x1peTvfDV2X2O
 1MFzcyaw1f8w4qM8wqWJ+eR709rbIdqdnxDRLTnujdZju7zvKG5ZyXytf
 +KYYL3rdrma8I27q4riVHlXtUafFUeFDpvkZuhZ9jpd78DCCtXVdM7A9+
 0nkCIw4xCho61hQ1eTtpLzT4Z30wG77vLYrmSgABeICo9sEKpE621GnCp
 ZSJvvmisxCuKfWEZfa6Zi8MrIroAKaXbsCuR40nZwc0GXf9C481AQc4Xw
 3MPc7SeWRVro9wN0dfoBvU66SfyU12yIwsOvspv7K2Pn15fLnsqMkogom g==;
X-CSE-ConnectionGUID: AIooXYLbQPuvRTYOtTLKTw==
X-CSE-MsgGUID: HEkpxwtbSKSj190IY066QQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="56649150"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56649150"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 05:33:39 -0700
X-CSE-ConnectionGUID: eWsNyWOzR1+q9nxBxkZNlg==
X-CSE-MsgGUID: ollSNcE9TmSl9q406dV7Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163826077"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.35])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 05:33:36 -0700
Date: Mon, 4 Aug 2025 11:33:32 -0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Protect against overflow in active_engine()
Message-ID: <aJConLDlhGTP9VnU@ashyti-mobl2.lan>
References: <xb3spla5mxe3y74hbn3pbhjdb7b6peopcwctfokf43qs54uu64@a5pgr7dctcrt>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xb3spla5mxe3y74hbn3pbhjdb7b6peopcwctfokf43qs54uu64@a5pgr7dctcrt>
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

On Mon, Aug 04, 2025 at 07:57:08AM +0000, Krzysztof Karas wrote:
> It is unlikely, but possible for the first call to
> intel_context_create() to fail with -ENOMEM, which would result
> in entering the following code block and decrementing "count",
> when it is set to 0 (initial condition in the for loop).
> 
> Protect from overflowing the variable with additional count > 0
> check.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index f057c16410e7..cc0798dd30d5 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -904,8 +904,10 @@ static void active_engine(struct kthread_work *work)
>  			arg->result = PTR_ERR(ce[count]);
>  			pr_err("[%s] Create context #%ld failed: %d!\n",
>  			       engine->name, count, arg->result);
> -			while (--count)

Off topic:

This is one of the reasons why counters should always be signed,
I've been always fighting with people saying that "this is
impossible to be negative". It's called robust programming.

if (count == 0) is one case out of all possible values of count.
if (count >= 0) is covering half of the possible values rendering
                the check more robust, even if we swear that
		count will never be negative (we can also have
		cases of memory corruption).

Anyway...

> -				intel_context_put(ce[count]);
> +			if (likely(count > 0)) {

... no need for likely, if we are here, we are already in an
unlikely situation.

> +				while (--count)
> +					intel_context_put(ce[count]);
> +			}


How about using a do ... while()?

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
