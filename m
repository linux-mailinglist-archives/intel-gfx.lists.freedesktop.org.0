Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7444C707F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 16:23:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14FB010E224;
	Mon, 28 Feb 2022 15:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E1910E224
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 15:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646061788; x=1677597788;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=elAF9uxdJ26B+EekI1ClyfjxR79MdUOYAnphz8AS2WU=;
 b=bmAw6kOOBACpAaDrfegCEcXNSzqAhgv1I/7wIWk9frsxQARjXt4t3eNL
 OgrZA2O3KMKbDbojLsYhXZEKlihVIbWLecvsBaR9bs7AirUpVytNFE3T9
 WzPGeMTC1hgtICZMuI12ZSTX9Me3w+NExkj6tJLuOpOypb4c68mpmcp0A
 5Du80JHP1L+3y6ZZqxxK12KvhDzjPJhfmsH3tV+byEsR++Jv1L8oHkEKO
 CGbhtawhWno0Ip/rYY0RhZeSmZpoJmpHAL9/c1p0QqglMn+PYrTRbW8xl
 CQrGkJDCD73mGN7TcIVf58ngdAUt+6AI/txQ8XzUnZEDkDVwvx1KZrIv0 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="251737265"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="251737265"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 07:23:08 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="534481884"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.50.250])
 ([10.252.50.250])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 07:23:07 -0800
Message-ID: <773ee2fc-8035-64c7-e30d-d1adec692763@linux.intel.com>
Date: Mon, 28 Feb 2022 16:23:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220225131316.1433515-1-gwan-gyeong.mun@intel.com>
 <20220225131316.1433515-2-gwan-gyeong.mun@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220225131316.1433515-2-gwan-gyeong.mun@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dmabuf: Update
 dma_buf_ops.unmap_dma_buf callback to use drm_gem_unmap_dma_buf()
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

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 25/02/2022 14:13, Gwan-gyeong Mun wrote:
> The dma_buf_ops.unmap_dma_buf callback used in i915,
> i915_gem_unmap_dma_buf(), has the same code as drm_gem_unmap_dma_buf().
> In order to eliminate defining and using duplicate function, it updates
> the dma_buf_ops.unmap_dma_buf callback to use drm_gem_unmap_dma_buf().
>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 11 +----------
>   1 file changed, 1 insertion(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index 13917231ae81..af899ae1f3c7 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -66,15 +66,6 @@ static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attachme
>   	return ERR_PTR(ret);
>   }
>   
> -static void i915_gem_unmap_dma_buf(struct dma_buf_attachment *attachment,
> -				   struct sg_table *sg,
> -				   enum dma_data_direction dir)
> -{
> -	dma_unmap_sgtable(attachment->dev, sg, dir, DMA_ATTR_SKIP_CPU_SYNC);
> -	sg_free_table(sg);
> -	kfree(sg);
> -}
> -
>   static int i915_gem_dmabuf_vmap(struct dma_buf *dma_buf,
>   				struct iosys_map *map)
>   {
> @@ -209,7 +200,7 @@ static const struct dma_buf_ops i915_dmabuf_ops =  {
>   	.attach = i915_gem_dmabuf_attach,
>   	.detach = i915_gem_dmabuf_detach,
>   	.map_dma_buf = i915_gem_map_dma_buf,
> -	.unmap_dma_buf = i915_gem_unmap_dma_buf,
> +	.unmap_dma_buf = drm_gem_unmap_dma_buf,
>   	.release = drm_gem_dmabuf_release,
>   	.mmap = i915_gem_dmabuf_mmap,
>   	.vmap = i915_gem_dmabuf_vmap,
