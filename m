Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E3A44E836
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 15:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266026E342;
	Fri, 12 Nov 2021 14:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF18B6E342
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 14:09:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="231859536"
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="231859536"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 06:09:56 -0800
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="493015695"
Received: from sbacanu-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.217.145])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 06:09:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Mullati Siva <siva.mullati@intel.com>, intel-gfx@lists.freedesktop.org,
 siva.mullati@intel.com
In-Reply-To: <20211112132456.19800-1-siva.mullati@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112132456.19800-1-siva.mullati@intel.com>
Date: Fri, 12 Nov 2021 16:09:51 +0200
Message-ID: <87tugh31ow.fsf@intel.com>
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
> From: "Mullati, Siva" <siva.mullati@intel.com>
>
> The _PAGE_CACHE_MASK macro is not defined in non-x86
> architectures and it's been used in remap_io_mapping().
> Only hw that supports mappable aperture would hit this path
> remap_io_mapping(), So skip this code for non-x86  architectures.
>
> Signed-off-by: Mullati, Siva <siva.mullati@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_mm.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
> index 666808cb3a32..5e2a1868b957 100644
> --- a/drivers/gpu/drm/i915/i915_mm.c
> +++ b/drivers/gpu/drm/i915/i915_mm.c
> @@ -91,6 +91,7 @@ int remap_io_mapping(struct vm_area_struct *vma,
>  		     unsigned long addr, unsigned long pfn, unsigned long size,
>  		     struct io_mapping *iomap)
>  {
> +#if defined(CONFIG_X86)

Please don't add conditional compilation within functions. Please use
#if IS_ENABLED() instead of #if defined or #ifdef.

BR,
Jani.

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
