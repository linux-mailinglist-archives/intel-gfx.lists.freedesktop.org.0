Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21571A6C5A4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 23:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A3B10E840;
	Fri, 21 Mar 2025 22:08:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jWD9mpk8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F8310E840
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 22:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742594938; x=1774130938;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Dti2QIVzIi+6rhNZBwK7ewkWJ7FXSIWTdydA59pofS0=;
 b=jWD9mpk8LdYdNMCJoBEEM8z8+Fjm4LHuISIdRfJOOEH6nLr/vTSCtN6c
 4QHlhb7scHCuqK6WxSJhIIaoJwvQ3pUbmIqx1bfTXlQevul/gUxIQmVLT
 f329GiTaoy71j9efPrwCECaa0dH/IfLymKIkhum77S7syqQiyy0qNJR+q
 BAytLZxgthQQOZ4y1SCMUC9R9Uqv2yua7KpAsz1ikHa9kU7IShl3bvlU+
 8+PM4rhH3nCd+nVE+iXqwFXqyKSuRESzYo5V6lwrG/AReu7rZsnn60E5T
 kizuwV4QyuhMxHswGpQIISnyXD9deuNZdvBgUyECj8MkU7PHATEy1nFUQ g==;
X-CSE-ConnectionGUID: bqwSaNpkQp+Atid96y9zZg==
X-CSE-MsgGUID: 00AjOFGzQEyG21kc3yl0CQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43601226"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="43601226"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 15:08:58 -0700
X-CSE-ConnectionGUID: 5izRNJPBSX2kMRvdqbGoiw==
X-CSE-MsgGUID: CRnyGwQyRPybTnjykNyWhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="128738665"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 15:08:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 22 Mar 2025 00:08:55 +0200
Date: Sat, 22 Mar 2025 00:08:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/16] use XNFcallocarray() instead of xnfcalloc macro
Message-ID: <Z93jdzK4Y3yCxwiO@intel.com>
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-12-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304155809.30399-12-info@metux.net>
X-Patchwork-Hint: comment
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

On Tue, Mar 04, 2025 at 04:58:04PM +0100, Enrico Weigelt, metux IT consult wrote:
> xnfcalloc is just an alias for XNFcallocarray() that doesn't seem to serve
> any practical purpose, so it can go away once all drivers stopped using it.
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
>  src/legacy/i810/i810_driver.c | 4 ++--
>  src/legacy/i810/i810_xaa.c    | 4 ++--
>  src/uxa/intel_driver.c        | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/src/legacy/i810/i810_driver.c b/src/legacy/i810/i810_driver.c
> index 778b1a41..e24d3f8b 100644
> --- a/src/legacy/i810/i810_driver.c
> +++ b/src/legacy/i810/i810_driver.c
> @@ -155,7 +155,7 @@ I810GetRec(ScrnInfoPtr scrn)
>     if (((uintptr_t)scrn->driverPrivate & 3) == 0)
>        return TRUE;
> 
> -   scrn->driverPrivate = xnfcalloc(sizeof(I810Rec), 1);
> +   scrn->driverPrivate = XNFcallocarray(sizeof(I810Rec), 1);

Hmm. These have transposed arguments as well. I just fixed the 
normal calloc()s because the compiler was unhappy:

commit fc07603ee033 ("Fix transposed calloc() arguments")

>     return TRUE;
>  }
> 
> @@ -503,7 +503,7 @@ I810PreInit(ScrnInfoPtr scrn, int flags)
>  	 pI810->MaxClock = 86000;
>        }
>     }
> -   clockRanges = xnfcalloc(sizeof(ClockRange), 1);
> +   clockRanges = XNFcallocarray(sizeof(ClockRange), 1);
>     clockRanges->next = NULL;
>     /* 9.4MHz appears to be the smallest that works. */
>     clockRanges->minClock = 9500;
> diff --git a/src/legacy/i810/i810_xaa.c b/src/legacy/i810/i810_xaa.c
> index ea03441b..1e0a8527 100644
> --- a/src/legacy/i810/i810_xaa.c
> +++ b/src/legacy/i810/i810_xaa.c
> @@ -284,7 +284,7 @@ I810AccelInit(ScreenPtr pScreen)
> 
>        pI810->NumScanlineColorExpandBuffers = nr_buffers;
>        pI810->ScanlineColorExpandBuffers = (unsigned char **)
> -	    xnfcalloc(nr_buffers, sizeof(unsigned char *));
> +	    XNFcallocarray(nr_buffers, sizeof(unsigned char *));
> 
>        for (i = 0; i < nr_buffers; i++, ptr += width)
>  	 pI810->ScanlineColorExpandBuffers[i] = ptr;
> @@ -295,7 +295,7 @@ I810AccelInit(ScreenPtr pScreen)
>  							  | 0);
> 
>        infoPtr->ScanlineColorExpandBuffers = (unsigned char **)
> -	    xnfcalloc(1, sizeof(unsigned char *));
> +	    XNFcallocarray(1, sizeof(unsigned char *));
>        infoPtr->NumScanlineColorExpandBuffers = 1;
> 
>        infoPtr->ScanlineColorExpandBuffers[0] =
> diff --git a/src/uxa/intel_driver.c b/src/uxa/intel_driver.c
> index 79105b89..24783492 100644
> --- a/src/uxa/intel_driver.c
> +++ b/src/uxa/intel_driver.c
> @@ -460,7 +460,7 @@ static Bool I830PreInit(ScrnInfoPtr scrn, int flags)
>  		return TRUE;
> 
>  	if (((uintptr_t)scrn->driverPrivate) & 3) {
> -		intel = xnfcalloc(sizeof(*intel), 1);
> +		intel = XNFcallocarray(sizeof(*intel), 1);
>  		if (intel == NULL)
>  			return FALSE;
> 
> --
> 2.39.5

-- 
Ville Syrjälä
Intel
