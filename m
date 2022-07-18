Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1BB577C43
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 09:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C262EAB314;
	Mon, 18 Jul 2022 07:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67A07A7485;
 Mon, 18 Jul 2022 07:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658128640; x=1689664640;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aI+ihsBtH367SHAHuG4E0Jj+622u6iud7noSoKs3V4k=;
 b=l9rxJUrk/M+JBX3Tle5YSc8ppjjPWYFC0N40VxPq/FqZNn3H1Nfu/Yi8
 8X6iNdxzCX2+m2pxXqSKDn+fgRgOawfWM5sAtP9BAk0lmAtcjzENtxj4z
 32x39oIKtsIZoScOWh0AednS367565td6FOQctPlS+XSWDTzlb+t3kGG8
 i4TfxD2W6T2pftzlBGAemFQkND+WIpx+AO/r46xyv5iHS8wC+5V/XLpva
 1+2MIxjee6gPoCqj8yJ3MvV9UAkpiJltxEfCIm3OW/ZEb6MGpS+4QiXOo
 5xFucd7AAkxHMdM81Xun3+kzOQSuXE90mol019UZLfIUu4g4EZAiSwbHA A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="284910416"
X-IronPort-AV: E=Sophos;i="5.92,280,1650956400"; d="scan'208";a="284910416"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 00:17:19 -0700
X-IronPort-AV: E=Sophos;i="5.92,280,1650956400"; d="scan'208";a="655156765"
Received: from mgrudkow-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.10.182])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 00:17:18 -0700
Date: Mon, 18 Jul 2022 09:17:16 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YtUI/B4/6Rpc5z5G@zkempczy-mobl2>
References: <20220715111937.1245586-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220715111937.1245586-1-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_create: use 48b
 addressing
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 15, 2022 at 12:19:37PM +0100, Matthew Auld wrote:
> The object here could be very large (8G+), so make sure we allow using
> the entire address space, to avoid sometimes hitting -ENOSPC.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6446
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>

Yes, on DG1 we've often never entered > 32b offsets.

Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>

--
Zbigniew

> ---
>  tests/i915/gem_create.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/tests/i915/gem_create.c b/tests/i915/gem_create.c
> index 1b694c6a..ff022713 100644
> --- a/tests/i915/gem_create.c
> +++ b/tests/i915/gem_create.c
> @@ -538,7 +538,9 @@ static int upload(int fd, uint32_t handle)
>  	 * for sure placed in one of requested regions.
>  	 */
>  	exec[0].handle = handle;
> +	exec[0].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
>  	exec[1].handle = batch_create_size(fd, PAGE_SIZE);
> +	exec[1].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
>  
>  	return __gem_execbuf(fd, &execbuf);
>  }
> -- 
> 2.36.1
> 
