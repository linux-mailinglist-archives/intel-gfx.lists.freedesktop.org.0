Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 499184A800E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 08:59:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA51E10ECE6;
	Thu,  3 Feb 2022 07:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 294B510EC70;
 Thu,  3 Feb 2022 07:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643875179; x=1675411179;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0EamO7d3QnYFEbY41yZh+BS81kdXzv5LYJsqameNzTg=;
 b=kSB1Y/kZRPDvQNDRVGsVRtdwDQ6HmirdjUlI+gwPVvziXrDG3mgRCcv6
 izx3TJ8OqBxpkcth8dTu2mzQZGlR71NtlWft+Inttc0Bln1tOI3XNYCX8
 cTARiRpjYPXJ5Iq8jpkFTwAyOkR5nt9XWTcC+RFV5jmwF0AsVTAAM1rS9
 CN4YVSMzlU3194HtnvdKXBVyFI3/6izza0ThVgtZSekWqEfvVgjaJrCeA
 HWUMEOmxgePNZ+dMtYYQP0FlVOT/1AjcvQsl54voHfKVLvrYpMlOzp/iz
 NziQLAlfGleeVRisw0O5vpqTzAz+PLVEjA2NjliXDdSMZ58ggPmPdAaAo A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="247860086"
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="247860086"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 23:59:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="620420615"
Received: from cmathias-mobl1.ger.corp.intel.com (HELO [10.249.254.246])
 ([10.249.254.246])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 23:59:37 -0800
Message-ID: <48489f90-5ba9-f7db-147a-44a92fba39f0@linux.intel.com>
Date: Thu, 3 Feb 2022 08:59:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220126152155.3070602-1-matthew.auld@intel.com>
 <20220126152155.3070602-14-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220126152155.3070602-14-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 13/20] drm/i915/ttm: mappable migration on
 fault
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/26/22 16:21, Matthew Auld wrote:
> The end goal is to have userspace tell the kernel what buffers will
> require CPU access, however if we ever reach the CPU fault handler, and
> the current resource is not mappable, then we should attempt to migrate
> the buffer to the mappable portion of LMEM, or even system memory, if the
> allowable placements permit it.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 58 ++++++++++++++++++++++---
>   1 file changed, 52 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 8376e4c3d290..7299053fb1ec 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -636,11 +636,25 @@ static void i915_ttm_swap_notify(struct ttm_buffer_object *bo)
>   		i915_ttm_purge(obj);
>   }
>   
> +static bool i915_ttm_resource_mappable(struct ttm_resource *res)
> +{
> +	struct i915_ttm_buddy_resource *bman_res = to_ttm_buddy_resource(res);
> +
> +	if (!i915_ttm_cpu_maps_iomem(res))
> +		return true;
> +
> +	return bman_res->used_visible_size == bman_res->base.num_pages;
> +}
> +
>   static int i915_ttm_io_mem_reserve(struct ttm_device *bdev, struct ttm_resource *mem)
>   {
> +

Stray line.

Otherwise LGTM.

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

