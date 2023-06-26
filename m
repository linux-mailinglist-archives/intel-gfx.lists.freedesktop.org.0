Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC05B73D92C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 10:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A83E10E1C7;
	Mon, 26 Jun 2023 08:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183B610E1C7;
 Mon, 26 Jun 2023 08:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687766983; x=1719302983;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+lr7gWkrUK24BQPjHF38fYVzI+XtiPSL5/A2F9B/bVc=;
 b=fGBtW5j/wKel3UivgGsMiA7GUvQzd1VkISoU0i0Vg7S3EqL4c92N76Um
 2JASlE8ZO060PR76efbOmN+j9Kdbk8U3A7Hg+CtP48MUWam/R2zhXUvig
 26lzFcIQBXsCdhKnGJjit/IHegsMt8UxeWOBQghdysYUYG2Wd8Il/enua
 WNO6hZAxPDpGjtc+oGjW+8O6TEb614vU3kT8ZV61TfNGdJU2QY8D2n99t
 Ru6QGEIRmHjG0j9KOUA8P6F32OG5VxlnSdqjpqOfvqox4OLUNkT6nf2Kg
 j6NaQMsKq6Reo3G8yLIsKNzDigw+I7qLOsRZ/hA0MPCyLBP7u2i1PkSOy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="447588953"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="447588953"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 01:09:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="860596455"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="860596455"
Received: from csteeb-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.251.217.4])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 01:09:24 -0700
Date: Mon, 26 Jun 2023 10:09:15 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <ZJlHq30vUxVuv/Qh@ashyti-mobl2.lan>
References: <20230622101848.3482277-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230622101848.3482277-1-arnd@kernel.org>
Subject: Re: [Intel-gfx] [PATCH] i915: avoid unused-but-set-variable warning
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
Cc: Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Arnd,

On Thu, Jun 22, 2023 at 12:18:41PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The mchbar_addr variable is only used inside of an #ifdef:
> 
> drivers/gpu/drm/i915/soc/intel_gmch.c:41:6: error: variable 'mchbar_addr' set but not used [-Werror,-Wunused-but-set-variable]
> 
> Change this to an IS_ENABLED() check to let the compiler see how
> it's used and no longer warn about it.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/i915/soc/intel_gmch.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
> index 6d0204942f7a5..49c7fb16e934f 100644
> --- a/drivers/gpu/drm/i915/soc/intel_gmch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
> @@ -47,11 +47,9 @@ intel_alloc_mchbar_resource(struct drm_i915_private *i915)
>  	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
>  
>  	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
> -#ifdef CONFIG_PNP
> -	if (mchbar_addr &&
> +	if (IS_ENABLED(CONFIG_PNP) && mchbar_addr &&
>  	    pnp_range_reserved(mchbar_addr, mchbar_addr + MCHBAR_SIZE))
>  		return 0;
> -#endif

you actually already sent this same patch[*] and I did push it in
drm-intel-next.

Andi

[*] https://patchwork.freedesktop.org/patch/542054/

>  
>  	/* Get some space for it */
>  	i915->gmch.mch_res.name = "i915 MCHBAR";
> -- 
> 2.39.2
