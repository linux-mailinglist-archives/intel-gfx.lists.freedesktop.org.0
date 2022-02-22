Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1CC4C0411
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 22:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B43D10E79F;
	Tue, 22 Feb 2022 21:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA1A10E79F;
 Tue, 22 Feb 2022 21:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645566576; x=1677102576;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qXepcxQySxqZDGn/5Yyb7hpnVKBtuUhmgQfPTO6Wbvc=;
 b=VdKbR7zDJze753iOENvWXu0cqcElmtDmbZchVC/9VaE1jMiVemMD2PRb
 6f/59lPNE8+s9TkMebpz7TkCa2zz9kq7yC6TW1j77ZDDqkODxeKWT/J9U
 6AfcgJ2U6fUi9nliAF7NPUYAgALlNd/Grc/okiMs5UnDSUr17JJlisskh
 cTLf0qgRoo4UGnrC0cwM53V+cl5cJp+Ms8z2bHto6TEiFZ21+LUpd30gv
 2fmeJ/fZtMHl2s4VtAUAoq59rLmDaPF7aanMShUtVpye5OD2yCg1b7OGj
 JQeATVbGJoLjf26f+lSO9PnQh7Iiu84ZXI+dZlq3+AE1ByyOzenYGHY4z A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="312537248"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="312537248"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 13:49:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="543095740"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 13:49:35 -0800
Date: Tue, 22 Feb 2022 13:49:34 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Michael Cheng <michael.cheng@intel.com>
Message-ID: <YhVablVDkSEPFqwZ@mdroper-desk1.amr.corp.intel.com>
References: <20220210183636.1187973-1-michael.cheng@intel.com>
 <20220210183636.1187973-2-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220210183636.1187973-2-michael.cheng@intel.com>
Subject: Re: [Intel-gfx] [PATCH v10 1/6] drm: Add arch arm64 for
 drm_clflush_virt_range
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 10, 2022 at 10:36:31AM -0800, Michael Cheng wrote:
> Add arm64 support for drm_clflush_virt_range. dcache_clean_inval_poc
> performs a flush by first performing a clean, follow by an invalidation
> operation.
> 
> v2 (Michael Cheng): Use correct macro for cleaning and invalidation the
> 		    dcache.
> 
> v3 (Michael Cheng): Remove ifdef for asm/cacheflush.h
> 
> v4 (Michael Cheng): Rebase
> 
> v5 (Michael Cheng): Replace asm/cacheflush.h with linux/cacheflush.h

Note that you only really need to indicate that you're the one making
these updates in cases where you're picking up someone else's patch and
carrying it forward; otherwise it's pretty clear that you were also the
author of v2-v5.

However when possible it is a good idea to indicate who suggested
various changes you're making.  E.g., I think a lot of these were based
on feedback from Tvrtko?

> 
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>

Change appears to accurately implement the same type of cache flush as
what we have on the x86 backend.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/drm_cache.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_cache.c b/drivers/gpu/drm/drm_cache.c
> index 66597e411764..2e233f53331e 100644
> --- a/drivers/gpu/drm/drm_cache.c
> +++ b/drivers/gpu/drm/drm_cache.c
> @@ -28,6 +28,7 @@
>   * Authors: Thomas Hellström <thomas-at-tungstengraphics-dot-com>
>   */
>  
> +#include <linux/cacheflush.h>
>  #include <linux/cc_platform.h>
>  #include <linux/export.h>
>  #include <linux/highmem.h>
> @@ -174,6 +175,11 @@ drm_clflush_virt_range(void *addr, unsigned long length)
>  
>  	if (wbinvd_on_all_cpus())
>  		pr_err("Timed out waiting for cache flush\n");
> +
> +#elif defined(CONFIG_ARM64)
> +	void *end = addr + length;
> +	dcache_clean_inval_poc((unsigned long)addr, (unsigned long)end);
> +
>  #else
>  	WARN_ONCE(1, "Architecture has no drm_cache.c support\n");
>  #endif
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
