Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B75AA458FEF
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 15:04:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6518C89C1C;
	Mon, 22 Nov 2021 14:04:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF5389C1C;
 Mon, 22 Nov 2021 14:04:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="222010151"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="222010151"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 06:04:49 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="739218117"
Received: from djcarton-mobl.ger.corp.intel.com (HELO [10.252.21.92])
 ([10.252.21.92])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 06:04:47 -0800
Message-ID: <c95fe70e-1ce0-5f86-4248-39571c2b0782@intel.com>
Date: Mon, 22 Nov 2021 14:04:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20211122135758.85444-1-tvrtko.ursulin@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20211122135758.85444-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/dmabuf: fix broken build"
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 22/11/2021 13:57, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> This reverts commit 777226dac058d119286b4081953cb5aa2cb7394b.
> 
> Approach taken in the patch was rejected by Linus and the upstream tree
> now already contains the required include directive via 304ac8032d3f
> ("Merge tag 'drm-next-2021-11-12' of git://anongit.freedesktop.org/drm/drm").
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: 777226dac058 ("drm/i915/dmabuf: fix broken build")
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>

Acked-by: Matthew Auld <matthew.auld@intel.com>

This was copy-paste from gem/i915_gem_pm.c, does that need a similar patch?

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 7 -------
>   1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index f291cf4c3886..1b526039a60d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -17,13 +17,6 @@
>   
>   MODULE_IMPORT_NS(DMA_BUF);
>   
> -#if defined(CONFIG_X86)
> -#include <asm/smp.h>
> -#else
> -#define wbinvd_on_all_cpus() \
> -	pr_warn(DRIVER_NAME ": Missing cache flush in %s\n", __func__)
> -#endif
> -
>   I915_SELFTEST_DECLARE(static bool force_different_devices;)
>   
>   static struct drm_i915_gem_object *dma_buf_to_obj(struct dma_buf *buf)
> 
