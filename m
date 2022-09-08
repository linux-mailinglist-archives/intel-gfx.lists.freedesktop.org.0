Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA25A5B18EE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 11:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F56E10E9EE;
	Thu,  8 Sep 2022 09:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30C3910E9EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 09:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662630049; x=1694166049;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=sQ7djiQY2gmgXGbEyBtfDZfPrttx06NCF226OcUr7WI=;
 b=EDu13g53Zu9bp8ftxcFDZLM0YrOdvgX4xwuHM+pwl1I3bPHd3P9DmGHV
 KtlmPh5+QjBgPnRUrtJdO0RULmTdygj3E8e2btmEP4DHeGLWgg6sVwe96
 tnB297Uq1+knDAHdS9X0Lqf5L54/rM2nQa4Pn1f3XMCW0AZz/KThZ5lW+
 RjCBB4R2Ry+tXasZ4f4/5o7cvjknexLPLcpiVGGqQr2dJ1v7c+yXKiATy
 DPZJiVAhCdplrnTupKIdSXlPmq0wcmTYYolyajBfxgPzhbbpsKiyR2g11
 G2hDzra6d0VS1HPvT63DQd91f10mvfyPd6NX5xbi5qKl+Mg7t4XAjggNB A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="298460998"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="298460998"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:40:48 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="943273912"
Received: from donalmur-mobl.ger.corp.intel.com (HELO [10.252.31.184])
 ([10.252.31.184])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:40:46 -0700
Message-ID: <99f197d9-0b00-8b7d-011f-cb6318a99c66@intel.com>
Date: Thu, 8 Sep 2022 10:40:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
Content-Language: en-GB
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220907172641.12555-1-nirmoy.das@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220907172641.12555-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Set correct domains values at
 _i915_vma_move_to_active
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
Cc: andrzej.hajda@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 07/09/2022 18:26, Nirmoy Das wrote:
> Fix regression introduced by commit:
> "drm/i915: Individualize fences before adding to dma_resv obj"
> which sets obj->read_domains to 0 for both read and write paths.
> Also set obj->write_domain to 0 on read path which was removed by
> the commit.
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6639
> Fixes: 842d9346b2fd ("drm/i915: Individualize fences before adding to dma_resv obj")
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Cc: <stable@vger.kernel.org> # v5.16+
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>

Should I go ahead and push this?

> ---
>   drivers/gpu/drm/i915/i915_vma.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 260371716490..373582cfd8f3 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1882,12 +1882,13 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
>   		enum dma_resv_usage usage;
>   		int idx;
>   
> -		obj->read_domains = 0;
>   		if (flags & EXEC_OBJECT_WRITE) {
>   			usage = DMA_RESV_USAGE_WRITE;
>   			obj->write_domain = I915_GEM_DOMAIN_RENDER;
> +			obj->read_domains = 0;
>   		} else {
>   			usage = DMA_RESV_USAGE_READ;
> +			obj->write_domain = 0;
>   		}
>   
>   		dma_fence_array_for_each(curr, idx, fence)
