Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5974CA44B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 12:57:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1554510EEA1;
	Wed,  2 Mar 2022 11:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9976F10EEA1
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 11:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646222222; x=1677758222;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=FN965YJ7OWGQtJarsTRGOssmE0TW0AR/BpvtfyUvvbU=;
 b=Gr7Pk17gfvmaPFJS1HO2manyJ8UDhYhUe2XPomZ6uOiRDYn04E5iJbEt
 Q3X9z2gQrKPbqEmmmU7n8izH2TaP3ZebL8tTLuz4pAlMK1BwpPKlV8JOL
 Bj4WKLsB/17DLXvCE5PsGAacRUuR4c515oNDkQLfP4qDE1CjIp3dKueh6
 Fmox3F4Sbq5ivnFcRuTSVw5nYLFVGUabg+iZ+jmgsEYkEUgcFOn/ib1EU
 YGd9AuZ8PJxk0HhylDztm/0kH3k4semn/C04RrrX1oKKU3Asz19ku+Xfg
 l0lPCZa0bDlymxqopSWg5mrqNBXp6czgzU33Y/yhsayf4bpu+s4tANob6 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="339812428"
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="339812428"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 03:56:49 -0800
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="551215203"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.52.58])
 ([10.252.52.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 03:56:47 -0800
Message-ID: <91f4f6b1-8ac8-c761-921f-dcf7afaa30fe@linux.intel.com>
Date: Wed, 2 Mar 2022 12:56:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220225131316.1433515-1-gwan-gyeong.mun@intel.com>
 <20220225131316.1433515-3-gwan-gyeong.mun@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220225131316.1433515-3-gwan-gyeong.mun@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dmabuf: Fix prime_mmap to work
 when using LMEM
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
Cc: thomas.hellstrom@linux.intel.com, matthew.auld@intel.com,
 daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LGTM Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 25/02/2022 14:13, Gwan-gyeong Mun wrote:
> The current implementation of i915 prime mmap only works when initializing
> drm_i915_gem_object with shmem_region.
> When using LMEM, drm_i915_gem_object is initialized with ttm_system_region.
> In order to make prime mmap work even this case, when using LMEM
> (when using ttm in i915), dma_buf_ops.mmap callback function calls
> drm_gem_prime_mmap(). drm_gem_prime_mmap() of drm core calls internally
> i915_gem_mmap() so that prime mmap can perform normally.
> The fake offset is processed inside drm_gem_prime_mmap().
>
> Testcase: igt/prime_mmap
>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index af899ae1f3c7..f5062d0c6333 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -93,11 +93,15 @@ static void i915_gem_dmabuf_vunmap(struct dma_buf *dma_buf,
>   static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *vma)
>   {
>   	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   	int ret;
>   
>   	if (obj->base.size < vma->vm_end - vma->vm_start)
>   		return -EINVAL;
>   
> +	if (HAS_LMEM(i915))
> +		return drm_gem_prime_mmap(&obj->base, vma);
> +
>   	if (!obj->base.filp)
>   		return -ENODEV;
>   
