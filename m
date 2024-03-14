Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6690987C16F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 17:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F2510FC08;
	Thu, 14 Mar 2024 16:41:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WeHS8z23";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F76A10FC06
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Mar 2024 16:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710434471; x=1741970471;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mku4u2Vz39tVHtODXtBa4irzQu3Utw7KDVbFWBeKmH4=;
 b=WeHS8z23AvS+d5r7Hvrebs7NqDU9DLEesdRLuF9/2tIRXhuxxryH1qI5
 BJUGi8fJ/zMfaje2mZCm2UErhsTyJFbMrBxfmf5XC9WVD+0LM7tykx5Mx
 2zefZQ4LDWFxcIAEy8kIEUWqYnHBvNNexyxq69pfKDoSM6H8XJbTGLfmr
 8MtXzdcOzpcV8CxZSSWb9S7Gg8TbcYCS3sketHXyFk55QLPCiS5cF1ROT
 +eScu21g8cbztPTN2MphN8IIYWwDu7N3UAuqjF00I9DPk4su3CV0Q+4Gq
 3pEGHkbpcMuv80LOQ0icGnbK1uGt9fjEs5wVhR08fOd8V5EDLNdXsMEIh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="9046039"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="9046039"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 09:41:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12287831"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.35.115])
 ([10.246.35.115])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 09:41:07 -0700
Message-ID: <0cd869bd-9281-4595-9390-2a0dc2a99f51@linux.intel.com>
Date: Thu, 14 Mar 2024 17:41:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/gem: Execbuffer objects must have struct
 pages.
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, matthew.d.roper@intel.com,
 lionel.g.landwerlin@intel.com, chris.p.wilson@linux.intel.com,
 brian.welty@intel.com
References: <20240312145506.3091929-1-jonathan.cavitt@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240312145506.3091929-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 3/12/2024 3:55 PM, Jonathan Cavitt wrote:
> We cannot write requests to objects without struct pages, so escape
> early if the requests are bound to objects that lack them.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>
> v2: s/vma-obj/vma->obj
>
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index d3a771afb083e..adb4f9e78cb49 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -3313,6 +3313,13 @@ eb_requests_create(struct i915_execbuffer *eb, struct dma_fence *in_fence,
>   	unsigned int i;
>   
>   	for_each_batch_create_order(eb, i) {
> +		/* Do not write requests to objects without struct pages. */
> +		if (eb->batches[i]->vma &&
> +		    !i915_gem_object_has_struct_page(eb->batches[i]->vma->obj)) {

As far as I understand, motivation of this patch is to avoid doing 
execbuf on dmabuf imported BO which are in error state of something. 
i915_gem_object_has_struct_page()  checks "obj->mem_flags & 
I915_BO_FLAG_STRUCT_PAGE" which is very i915 specific.

So I think this will not work and will cause regression in existing 
program which are trying to do the same with valid BO. Unfortunately I 
don't have any idea how to better detect that at this moment.


Regards,

Nirmoy

> +			out_fence = ERR_PTR(-EINVAL);
> +			return out_fence;
> +		}
> +
>   		/* Allocate a request for this batch buffer nice and early. */
>   		eb->requests[i] = i915_request_create(eb_find_context(eb, i));
>   		if (IS_ERR(eb->requests[i])) {
