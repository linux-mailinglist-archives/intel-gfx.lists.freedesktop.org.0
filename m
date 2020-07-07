Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8BA216D89
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 15:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4339389DA4;
	Tue,  7 Jul 2020 13:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9642489DA4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 13:15:45 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200707131543euoutp025288a13bae569db4925b13d9daa26a21~ferygLWRz2795127951euoutp020
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 13:15:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200707131543euoutp025288a13bae569db4925b13d9daa26a21~ferygLWRz2795127951euoutp020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1594127743;
 bh=VsX78FeeOp0XUEwvGgfWQfAIoM5XjNqPBzua+SpxUH0=;
 h=Subject:To:From:Cc:Date:In-Reply-To:References:From;
 b=M/PnSBeBd1inKnFEnZEzaxG64esJ24BXOwEdKsPxGmXpNkcLqnXf8vCdy+CortPzC
 caqqlkzQK54TYrs3x/YhM5QBn6SatnwSYiyVHCPmynUJ9pSFxCdAezH0yl+oNiXT77
 M9V59yRZQJe/kLsib5sYcekA7XFDvFavMcBZlvRc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200707131543eucas1p2938f2b19495fc00fa9a1ffd95dcf82ba~feryByjSh2804728047eucas1p2T;
 Tue,  7 Jul 2020 13:15:43 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A9.79.05997.F75740F5; Tue,  7
 Jul 2020 14:15:43 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200707131542eucas1p2b7bddaad64ad9ff716bd4215c22dde92~ferxtjqzy1511515115eucas1p2H;
 Tue,  7 Jul 2020 13:15:42 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200707131542eusmtrp1a5eef4d0e12449722bd9dc7f802c1b47~ferxs_Tmy0669706697eusmtrp1u;
 Tue,  7 Jul 2020 13:15:42 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-25-5f04757fe462
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 0D.B8.06017.E75740F5; Tue,  7
 Jul 2020 14:15:42 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200707131542eusmtip1bf9faf86392e2358f689f2d5ab04fa66~ferxWF9hD0313703137eusmtip1G;
 Tue,  7 Jul 2020 13:15:42 +0000 (GMT)
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <bfc18207-88df-b865-3601-d7bf801a741f@samsung.com>
Date: Tue, 7 Jul 2020 15:15:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200619103636.11974-10-m.szyprowski@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDKsWRmVeSWpSXmKPExsWy7djPc7r1pSzxBtfvcFjMnrCZyWL55fWM
 FnsXMlmsPXKX3WL/rGvsDqwei/e8ZPKYdzLQ4373cSaPvi2rGANYorhsUlJzMstSi/TtErgy
 /p1YwFYwTb7iYqNSA+MSyS5GTg4JAROJd9vOsHYxcnEICaxglLi6+jIjhPOFUeLcx1/sEM5n
 Ron1CyaxwbR8OLKSGSKxnFFi+t4mqP73jBIvFvQwgVQJC4RIdH+fB1YlInCSUeLIn+vMIAk2
 AUOJrrddYKOYBfQl1i3cCtbAK2AnsfHlI7AaFgEViTsrdzOC2KICcRLrX26HqhGUODnzCQuI
 zSlgL9HW084KMUdeYvvbOcwQtrjErSfzmUAWSwjMY5d4fvEDM8TdLhLnl/5lh7CFJV4d3wJl
 y0icntzDAtHQzCjx8Nxadginh1HictMMRogqa4k7534Bnc0BtEJTYv0ufYiwo8SCuV+YQcIS
 AnwSN94KQhzBJzFp23SoMK9ER5sQRLWaxKzj6+DWHrxwiXkCo9IsJK/NQvLOLCTvzELYu4CR
 ZRWjeGppcW56arFRXmq5XnFibnFpXrpecn7uJkZgmjn97/iXHYy7/iQdYhTgYFTi4c1IZIkX
 Yk0sK67MPcQowcGsJMLrdPZ0nBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXFe40UvY4UE0hNLUrNT
 UwtSi2CyTBycUg2MqcuaDzP5+DLdurZAup4vVJvnaYKlR2obr+/vD/Nv7Sw1aGSryb++aGJC
 38r4gFX5mqGNKhO7eYoOLRR/Hvn0oa3pTZ10/nlX+TICz05PlBHZYv/Qt2xHyDfr1JlcZYnH
 1cL3a3rYWK3axs4XkXXKPjRENFvpXf+rR3oWGxXNfx9lXFims1iJpTgj0VCLuag4EQD75i/V
 LwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLIsWRmVeSWpSXmKPExsVy+t/xu7p1pSzxBo/uGljMnrCZyWL55fWM
 FnsXMlmsPXKX3WL/rGvsDqwei/e8ZPKYdzLQ4373cSaPvi2rGANYovRsivJLS1IVMvKLS2yV
 og0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQy/p1YwFYwTb7iYqNSA+MSyS5G
 Tg4JAROJD0dWMoPYQgJLGSV2vkmEiMtInJzWwAphC0v8udbF1sXIBVTzllHi5ucP7CAJYYEQ
 ie7v85hBEiICpxklWtc9YIKoOsYose/IZiaQKjYBQ4mutyDtnBzMAvoS6xZuBYvzCthJbHz5
 CGw1i4CKxJ2VuxlBbFGBOInlW+azQ9QISpyc+YQFxOYUsJdo62lnhZhjJjFv80NmCFteYvvb
 OVC2uMStJ/OZJjAKzULSPgtJyywkLbOQtCxgZFnFKJJaWpybnltspFecmFtcmpeul5yfu4kR
 GFXbjv3csoOx613wIUYBDkYlHt6MRJZ4IdbEsuLK3EOMEhzMSiK8TmdPxwnxpiRWVqUW5ccX
 leakFh9iNAV6biKzlGhyPjDi80riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB
 9DFxcEo1MIZeX/T1wZ4p1xLb1ysVLlzdr1X2oOuBp+f7xAsxIr27LJ5ySLuc8drTfL335hp7
 RxXzQ7lXph3oyCvQcH/5rS82svHtvJfcfZfyjhnZL+9f8vOQ4OGTMarTn14wZTNJe7JRvKpU
 7YvRXu2b/G43VpzdYGF3a8uxHX5ffurlns77ci/0TUyWZ4USS3FGoqEWc1FxIgAkcVRjwAIA
 AA==
X-CMS-MailID: 20200707131542eucas1p2b7bddaad64ad9ff716bd4215c22dde92
X-Msg-Generator: CA
X-RootMTR: 20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103659eucas1p27ece9865ea4cdd82d4ca4df06edef7e6@eucas1p2.samsung.com>
 <20200619103636.11974-10-m.szyprowski@samsung.com>
Subject: Re: [Intel-gfx] [PATCH v7 09/36] drm: i915: fix common struct
 sg_table related issues
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
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

On 19.06.2020 12:36, Marek Szyprowski wrote:
> The Documentation/DMA-API-HOWTO.txt states that the dma_map_sg() function
> returns the number of the created entries in the DMA address space.
> However the subsequent calls to the dma_sync_sg_for_{device,cpu}() and
> dma_unmap_sg must be called with the original number of the entries
> passed to the dma_map_sg().
>
> struct sg_table is a common structure used for describing a non-contiguous
> memory buffer, used commonly in the DRM and graphics subsystems. It
> consists of a scatterlist with memory pages and DMA addresses (sgl entry),
> as well as the number of scatterlist entries: CPU pages (orig_nents entry)
> and DMA mapped pages (nents entry).
>
> It turned out that it was a common mistake to misuse nents and orig_nents
> entries, calling DMA-mapping functions with a wrong number of entries or
> ignoring the number of mapped entries returned by the dma_map_sg()
> function.
>
> This driver creatively uses sg_table->orig_nents to store the size of the
> allocated scatterlist and ignores the number of the entries returned by
> dma_map_sg function. The sg_table->orig_nents is (mis)used to properly
> free the (over)allocated scatterlist.
>
> This patch only introduces the common DMA-mapping wrappers operating
> directly on the struct sg_table objects to the dmabuf related functions,
> so the other drivers, which might share buffers with i915 could rely on
> the properly set nents and orig_nents values.
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>


May I ask for a review/ack/comment for this patch?


> ---
>   drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c       | 11 +++--------
>   drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c |  7 +++----
>   2 files changed, 6 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index 2679380159fc..8a988592715b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -48,12 +48,9 @@ static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attachme
>   		src = sg_next(src);
>   	}
>   
> -	if (!dma_map_sg_attrs(attachment->dev,
> -			      st->sgl, st->nents, dir,
> -			      DMA_ATTR_SKIP_CPU_SYNC)) {
> -		ret = -ENOMEM;
> +	ret = dma_map_sgtable(attachment->dev, st, dir, DMA_ATTR_SKIP_CPU_SYNC);
> +	if (ret)
>   		goto err_free_sg;
> -	}
>   
>   	return st;
>   
> @@ -73,9 +70,7 @@ static void i915_gem_unmap_dma_buf(struct dma_buf_attachment *attachment,
>   {
>   	struct drm_i915_gem_object *obj = dma_buf_to_obj(attachment->dmabuf);
>   
> -	dma_unmap_sg_attrs(attachment->dev,
> -			   sg->sgl, sg->nents, dir,
> -			   DMA_ATTR_SKIP_CPU_SYNC);
> +	dma_unmap_sgtable(attachment->dev, sg, dir, DMA_ATTR_SKIP_CPU_SYNC);
>   	sg_free_table(sg);
>   	kfree(sg);
>   
> diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
> index debaf7b18ab5..be30b27e2926 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/mock_dmabuf.c
> @@ -28,10 +28,9 @@ static struct sg_table *mock_map_dma_buf(struct dma_buf_attachment *attachment,
>   		sg = sg_next(sg);
>   	}
>   
> -	if (!dma_map_sg(attachment->dev, st->sgl, st->nents, dir)) {
> -		err = -ENOMEM;
> +	err = dma_map_sgtable(attachment->dev, st, dir, 0);
> +	if (err)
>   		goto err_st;
> -	}
>   
>   	return st;
>   
> @@ -46,7 +45,7 @@ static void mock_unmap_dma_buf(struct dma_buf_attachment *attachment,
>   			       struct sg_table *st,
>   			       enum dma_data_direction dir)
>   {
> -	dma_unmap_sg(attachment->dev, st->sgl, st->nents, dir);
> +	dma_unmap_sgtable(attachment->dev, st, dir, 0);
>   	sg_free_table(st);
>   	kfree(st);
>   }

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
