Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D7EB48B0A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 13:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8400C10E4C5;
	Mon,  8 Sep 2025 11:03:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vu5XGl1j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 778D410E4C3
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 11:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757329439; x=1788865439;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=x+FBEkRRCSYfMbu8wo/NW3nJ2IsFXtKhJafWqNxj9so=;
 b=Vu5XGl1jOMZEyO5mD/PSnh6joGTPU3YRkHa5YF/FgRpQnQZHnJp18EVP
 a1KOH5OHer9h2osbHMvht5x8SFUlYKC2HHCaSqZh8Igf6FqJDzVzwddkp
 oTaMfVITa/sI1XlFNMbShruXMt2n/Hdlahleg5BfxaD58PAUYrIA/L7dk
 FbIhNCqHOPBHYqx6BN4Q5ytg+6sa+ydgrAmhoDN2Rwf1aUJaymHQAgGh2
 0lKzcW6OQ4vU2ant4XrE2sCf3NbuAGhbilh3KZ2WQaRUIiKp08svn5zYH
 6xRDFxVuVNfqsxA/Gc54M87AbVibc4zcS7Mg7LlwHdrydvQCW6jEpYU3w g==;
X-CSE-ConnectionGUID: zdfdgRdUR6elIWFi7k/MFA==
X-CSE-MsgGUID: gfKeId8qStC7h5LFK5q0Uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="63222578"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="63222578"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:03:58 -0700
X-CSE-ConnectionGUID: 1duPciXtQzqaoXtu/o6otQ==
X-CSE-MsgGUID: +pjDCJnmTrCfgbLHdblf0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="176817069"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.178])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:03:56 -0700
Date: Mon, 8 Sep 2025 13:03:53 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 2/6] drm/i915: Add default case for the switch in
 igt_smoke_tiling()
Message-ID: <aL64GakuuVzJh3is@ashyti-mobl2.lan>
References: <cover.1756995162.git.krzysztof.karas@intel.com>
 <71110554b2303dc911a411df8a75801c073964a6.1756995162.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <71110554b2303dc911a411df8a75801c073964a6.1756995162.git.krzysztof.karas@intel.com>
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

On Mon, Sep 08, 2025 at 09:23:56AM +0000, Krzysztof Karas wrote:
> To calm down static analysers define a default case and break
> out of the test.
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 78734c404a6d..6d87356e928b 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -498,13 +498,15 @@ static int igt_smoke_tiling(void *arg)
>  			tile.stride = 0;
>  			tile.swizzle = I915_BIT_6_SWIZZLE_NONE;
>  			break;
> -
>  		case I915_TILING_X:
>  			tile.swizzle = to_gt(i915)->ggtt->bit_6_swizzle_x;
>  			break;
>  		case I915_TILING_Y:
>  			tile.swizzle = to_gt(i915)->ggtt->bit_6_swizzle_y;
>  			break;
> +		default:
> +			err = -EINVAL;
> +			break;

You are breaking from the switch/case and ending up where? Should
this be continue?

If you really want to make static analysers happy (which we don't
care much) you could do something like:

		case I915_TILING_NONE:
		default:

But the C specification is not obliging anyone to use the default
case, so that we can happily ignore the static analyser issue if
there is no need for a default.

Andi

>  		}
>  
>  		if (tile.swizzle == I915_BIT_6_SWIZZLE_9_17 ||
> -- 
> 2.34.1
> 
> 
> -- 
> Best Regards,
> Krzysztof
