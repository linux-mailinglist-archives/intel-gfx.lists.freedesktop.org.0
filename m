Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE526292B2C
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 18:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8F16EA0C;
	Mon, 19 Oct 2020 16:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C756EA0C
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 16:10:23 +0000 (UTC)
IronPort-SDR: ADDHQJm/FX1C8idzngF0B54jPAGGKLtiUoA4cU4tbNo8zp5pirAyja9EJfnH2ZqYw8OnqRp5Uu
 8V+7l0lwLXOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="184669496"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="184669496"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 09:10:22 -0700
IronPort-SDR: Y08qPNuk/z8QzcFMvN9SL5yxkyExHzU+5+cFwVrObvMVTe1Zpm4fgbqd2zC4C/xkuV5pqAneiH
 yMImnk1xD2Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="522047802"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga006.fm.intel.com with ESMTP; 19 Oct 2020 09:10:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Oct 2020 17:10:15 +0100
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Mon, 19 Oct 2020 09:10:14 -0700
From: "Tang, CQ" <cq.tang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Onion unwind for scratch page
 allocation failure
Thread-Index: AQHWpfLA/6Livgc1pUOBB+fxSK5LI6mfF6gg
Date: Mon, 19 Oct 2020 16:10:14 +0000
Message-ID: <9ba0d8874027462cb2229a87decc9628@intel.com>
References: <20201019083444.1286-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201019083444.1286-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Onion unwind for scratch page
 allocation failure
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I fixed this problem partially (not gen6 code) with patch:
http://intel-gfx-pw.fi.intel.com/series/5911/

Should I continue to fix on internal?

--CQ


> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Chris Wilson
> Sent: Monday, October 19, 2020 1:35 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Auld, Matthew <matthew.auld@intel.com>; Chris Wilson <chris@chris-
> wilson.co.uk>
> Subject: [Intel-gfx] [PATCH] drm/i915/gt: Onion unwind for scratch page
> allocation failure
> 
> In switching to using objects for our ppGTT scratch pages, care was not taken
> to avoid trying to unref NULL objects on failure. And for gen6 ppGTT, it
> appears we forgot entirely to unwind after a partial allocation failure.
> 
> Fixes: 89351925a477 ("drm/i915/gt: Switch to object allocations for page
> directories")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c | 18 ++++++++++++------
> drivers/gpu/drm/i915/gt/gen8_ppgtt.c |  3 ++-
>  2 files changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> index c0d17f87b00f..680bd9442eb0 100644
> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> @@ -239,18 +239,24 @@ static int gen6_ppgtt_init_scratch(struct
> gen6_ppgtt *ppgtt)
>  			       I915_CACHE_NONE, PTE_READ_ONLY);
> 
>  	vm->scratch[1] = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
> -	if (IS_ERR(vm->scratch[1]))
> -		return PTR_ERR(vm->scratch[1]);
> +	if (IS_ERR(vm->scratch[1])) {
> +		ret = PTR_ERR(vm->scratch[1]);
> +		goto err_scratch0;
> +	}
> 
>  	ret = pin_pt_dma(vm, vm->scratch[1]);
> -	if (ret) {
> -		i915_gem_object_put(vm->scratch[1]);
> -		return ret;
> -	}
> +	if (ret)
> +		goto err_scratch1;
> 
>  	fill32_px(vm->scratch[1], vm->scratch[0]->encode);
> 
>  	return 0;
> +
> +err_scratch1:
> +	i915_gem_object_put(vm->scratch[1]);
> +err_scratch0:
> +	i915_gem_object_put(vm->scratch[0]);
> +	return ret;
>  }
> 
>  static void gen6_ppgtt_free_pd(struct gen6_ppgtt *ppgtt) diff --git
> a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index b236aa046f91..a37c968ef8f7 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -607,7 +607,8 @@ static int gen8_init_scratch(struct i915_address_space
> *vm)
>  	return 0;
> 
>  free_scratch:
> -	free_scratch(vm);
> +	while (i--)
> +		i915_gem_object_put(vm->scratch[i]);
>  	return -ENOMEM;
>  }
> 
> --
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
