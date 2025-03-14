Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E36A613DE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 15:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4415610E9FD;
	Fri, 14 Mar 2025 14:43:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="KF6ko0CA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C254F10E9FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 14:43:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DF6B7A47615;
 Fri, 14 Mar 2025 14:37:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED53FC4CEE3;
 Fri, 14 Mar 2025 14:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1741963386;
 bh=NOQ4WREVOARnkJEYaKwBg5QXjgL1Mo/69T1l6dFoHkk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KF6ko0CAhFGjOfytY+yyO5zmEPuiWoclQXoCMrCY42E9dohPBnpFEZaN0I4nOFMC7
 SOa8v6xohmicv3ZGqQclF2S+2CWzmsAyPtQO6pGOwfZ2wRaS1DD6AtSle8FUQ1MAb9
 Vi2Z2x4ZWuODzVtKAdxnqNo6Dn8WmLp2G48/QGWs4mew68wau4G532vcTpP1l4/iwb
 Cl7PQs1fnmZMp+I+5WUlaACqghyUzyDbRVrQrIWZGZk6wDcoiAQfTi7lTDJFUFzTrB
 OBRT1bbO8Nubxq2Ut8Bq3d8fyU0tiRNzEOFyyvDoDhTYxqa+wL+yrmBU1I5kWsCH/n
 LEiZ3o60t+VCw==
Date: Fri, 14 Mar 2025 15:43:02 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, 
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Andi Shyti <andi.shyti@intel.com>, chris.p.wilson@linux.intel.com
Subject: Re: [PATCH v3] i915/gt/selftests: Disable lrc_timestamp test
Message-ID: <rtote75hb3xv4kdtjahyeihtkypsoadbearwtkdj27e7xdgevx@dbi5u5itevpw>
References: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
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

On Tue, Mar 11, 2025 at 10:33:14AM +0100, Mikolaj Wasiak wrote:
> This test was designed to isolate a bug in tigerlake and dg2 hardware.
> The bug was found and fixed in newer generations.
> Since we won't support any new hardware with this driver, the test
> should now be turned off in the CI to not pollute it with random failures
> on previous hardware.
> 
> Fixes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697
> 

Please don't make it as tag. Fixes has a specific meaning that
means that the patch is fixing a bug introduced by a specific
commit and it needs to be backported to stable kernels.

You can use a discursive form, saying, e.g. that the issue has
been reported here[*]. I can fix it, no need to resend.

> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> Reviewed-by: Chris Wilson <chris.p.wilson@linux.intel.com>

Welcome back Chris!

> ---
> v1 -> v2:
> - Disabled the test instead of removing it,
> - Changed name from 'remove' to 'disable'
> 
> v2 -> v3:
> - Fix vocabulary
> - Disable this test only on related hardware
> 
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 22e750108c5f..c928b4723c38 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -7,6 +7,7 @@
>  
>  #include "gem/i915_gem_internal.h"
>  
> +#include "i915_drv.h"
>  #include "i915_selftest.h"
>  #include "intel_engine_heartbeat.h"
>  #include "intel_engine_pm.h"
> @@ -858,6 +859,16 @@ static int live_lrc_timestamp(void *arg)
>  		U32_MAX,
>  	};
>  
> +	/*
> +	 * This test was designed to isolate a hardware bug.
> +	 * The bug was found and fixed in future generations but 
> +	 * now the test pollutes our CI on previous generation.
> +	 *
> +	 * https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13697

Please, no links in comments. If you want to refer to something
specific in the link you can summarize it rather than adding the
link.

Is there anything you want to add from the link? Otherwise I am
going to remove it.

> +	 */
> +	if (GRAPHICS_VER(gt->i915) == 12)
> +		return 0;

yes, much cleaner than the first version. With the changes above:

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi

> +
>  	/*
>  	 * We want to verify that the timestamp is saved and restore across
>  	 * context switches and is monotonic.
> -- 
> 2.48.1
> 
