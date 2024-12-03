Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8739E1ECC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 15:15:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565B910EA19;
	Tue,  3 Dec 2024 14:15:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3tGis41";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8275010EA19
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 14:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733235344; x=1764771344;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NoT/Mr0QYoAiUVoIL9M6wB3FlLZouGTEr//qZCIExbU=;
 b=R3tGis416wJayBbUG3SzotFBVe5sQninr/KKz59jvA0OnAV+sLVJYQNr
 kHNB7MUdOugoqsWQlrXisBxmbe7XJwqPgb6hwJ9QsYyxt5NKFBxF8tNO5
 CDxMK4LYXuKvbmRQDTcmbAILMBGivXGblCm90D3q7a/EaG/R8bC3u4h/9
 UuUI9ZfFgV7BPnl+h0jU8vJH1w/ww4NCFTOqJqDINFeyqY0LfquRX46rv
 rs2Z27la8WoAJ7If1EsSQM+YAEJ/BH2iiIbeh1TBBUec3IxIz8ELpu0cO
 SuHdvXDA20TN6OvTVOttLWMKpqX9b74i/ZG0z5edplWZY+m954w3URbMb g==;
X-CSE-ConnectionGUID: 9NfX7b2nQyenus8JxNlRJw==
X-CSE-MsgGUID: eETjenU2TZyb0YySUBcGaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44479371"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="44479371"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 06:15:43 -0800
X-CSE-ConnectionGUID: mAz91JYyQZq01o6MTQpbsg==
X-CSE-MsgGUID: Y5d85YRGRLmyQGd1j9GmMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93644961"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.145])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 06:15:41 -0800
Date: Tue, 3 Dec 2024 15:15:38 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH v4] drm/i915: ensure segment offset never exceeds allowed
 max
Message-ID: <Z08SitnYQJ4uvio9@ashyti-mobl2.lan>
References: <kjsmgowrerhkk2d7qxsbccosjb55usqhfmxse6lesxfqwxtvhu@twuaxfazvq2a>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <kjsmgowrerhkk2d7qxsbccosjb55usqhfmxse6lesxfqwxtvhu@twuaxfazvq2a>
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

> diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
> index f5c97a620962..76e2801619f0 100644
> --- a/drivers/gpu/drm/i915/i915_mm.c
> +++ b/drivers/gpu/drm/i915/i915_mm.c
> @@ -143,8 +143,8 @@ int remap_io_sg(struct vm_area_struct *vma,
>  	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
>  	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
>  
> -	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
> -		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
> +	while (offset >= r.sgt.max >> PAGE_SHIFT) {
> +		offset -= r.sgt.max >> PAGE_SHIFT;

I finally defeated my laziness and looked at this a little
closer, I think you are right, I missed in my first comment a few
calculation.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
