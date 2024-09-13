Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 898AA977F30
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 14:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E49D510ECFF;
	Fri, 13 Sep 2024 12:04:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RLawHzTO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D2410ECFF;
 Fri, 13 Sep 2024 12:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726229045; x=1757765045;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8VkaZh3ntG6V8fMwjCUwnHHqaEbfXJYG+OrZwXVHNbc=;
 b=RLawHzTOVYyrWXvkHhKbOJ4O8oRrmOnB7fpFtdRyUCQHtfzKtznc9+yV
 kqEj1nEHdBSmo2N4xW63O6pI23GvosN4Kdtt+Zi+tvOkaBa4bPQJpqRBP
 CEkp0YF2RFOq2NhCoJmCHxLuaFHOkFziQNhGf8IgJfTGXpLrJn8rxpnx2
 5HRPZMhSVIsm3O1GF2sF87wh4MYivw+RFX8eQxbRUci2lTEJ9+8N3Z74u
 ReSqAGnFucKJsvuFaJdWvjM8eK5MlgbHrZnS/nQedXUV6IPcd+uiBQurs
 KSjWYHd7+PqMaXXx/0L4rcHc+N46Go8nmunISLIzHBFw7adYwVKCKPPyV A==;
X-CSE-ConnectionGUID: L8vpidJVTca1Jy1v4Z+AmQ==
X-CSE-MsgGUID: DY9IJVI1SzWc3RrzGZvPhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="24995862"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="24995862"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 05:04:05 -0700
X-CSE-ConnectionGUID: S2ZuriroQsSMp96caw8kew==
X-CSE-MsgGUID: JPv18hyJSw2QWGeiW6btBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="67738875"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO [10.245.245.158])
 ([10.245.245.158])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 05:04:03 -0700
Message-ID: <41a9a2c5-91c6-4079-b73d-087ebc8d68c5@intel.com>
Date: Fri, 13 Sep 2024 13:04:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/xe: Fix DSB buffer coherency
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
References: <20240913114754.7956-1-maarten.lankhorst@linux.intel.com>
 <20240913114754.7956-2-maarten.lankhorst@linux.intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20240913114754.7956-2-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 13/09/2024 12:47, Maarten Lankhorst wrote:
> Add the scanout flag to force WC caching, and add the memory barrier
> where needed.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_dsb_buffer.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> index f99d901a3214f..f7949bf5426af 100644
> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> @@ -48,11 +48,12 @@ bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *d
>   	if (!vma)
>   		return false;
>   
> +	/* Set scanout flag for WC mapping */
>   	obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
>   				   NULL, PAGE_ALIGN(size),
>   				   ttm_bo_type_kernel,
>   				   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
> -				   XE_BO_FLAG_GGTT);
> +				   XE_BO_FLAG_SCANOUT | XE_BO_FLAG_GGTT);
>   	if (IS_ERR(obj)) {
>   		kfree(vma);
>   		return false;
> @@ -73,5 +74,5 @@ void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
>   
>   void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
>   {
> -	/* TODO: add xe specific flush_map() for dsb buffer object. */
> +	xe_device_wmb(dsb_buf->vma->bo->tile->xe);

Kind of orthogonal, but we could maybe also move the l2 flush here? I 
assume it's better to flush once at the end.

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

>   }
