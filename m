Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 870DF44EF22
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 23:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30B16E037;
	Fri, 12 Nov 2021 22:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B09A6E037
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 22:18:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="230676521"
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="230676521"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 14:18:14 -0800
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="493184373"
Received: from sbacanu-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.217.145])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 14:18:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Mullati Siva <siva.mullati@intel.com>, intel-gfx@lists.freedesktop.org,
 siva.mullati@intel.com
In-Reply-To: <20211112171828.21770-1-siva.mullati@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112171828.21770-1-siva.mullati@intel.com>
Date: Sat, 13 Nov 2021 00:18:10 +0200
Message-ID: <87r1bl2f31.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Skip remap_io_mapping() for
 non-x86 platforms
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Nov 2021, Mullati Siva <siva.mullati@intel.com> wrote:
> The _PAGE_CACHE_MASK macro is not defined in non-x86
> architectures and it's been used in remap_io_mapping().
> Only hw that supports mappable aperture would hit this path
> remap_io_mapping(), So skip this code for non-x86 architectures.

Patch changelog goes here.

> Signed-off-by: Mullati Siva <siva.mullati@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_mm.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
> index 666808cb3a32..d76feeaf3fd1 100644
> --- a/drivers/gpu/drm/i915/i915_mm.c
> +++ b/drivers/gpu/drm/i915/i915_mm.c
> @@ -91,6 +91,7 @@ int remap_io_mapping(struct vm_area_struct *vma,
>  		     unsigned long addr, unsigned long pfn, unsigned long size,
>  		     struct io_mapping *iomap)
>  {
> +#if IS_ENABLED(CONFIG_X86)

My feedback to the previous version was:

Please don't add conditional compilation within functions.

I mean it.

>  	struct remap_pfn r;
>  	int err;
>  
> @@ -108,6 +109,7 @@ int remap_io_mapping(struct vm_area_struct *vma,
>  		zap_vma_ptes(vma, addr, (r.pfn - pfn) << PAGE_SHIFT);
>  		return err;
>  	}
> +#endif
>  
>  	return 0;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
