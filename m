Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE4146601D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 10:06:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1846E9D9;
	Thu,  2 Dec 2021 09:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76FAE6E9D9
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 09:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 69A3B3F4F9;
 Thu,  2 Dec 2021 10:06:38 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.738
X-Spam-Level: 
X-Spam-Status: No, score=-2.738 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.639,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-pvt-msa1.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SpxUe3VITwH5; Thu,  2 Dec 2021 10:06:37 +0100 (CET)
Received: by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 9C5503F37F;
 Thu,  2 Dec 2021 10:06:36 +0100 (CET)
Received: from [192.168.0.209] (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 by mail1.shipmail.org (Postfix) with ESMTPSA id DBB7E360B69;
 Thu,  2 Dec 2021 10:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1638435996; bh=+SKF5KJ1wqldnG4HAuM5boIKT1PUxv5P2d3j4af5VnY=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=SvJ+UB4fNUADuxPB/3lLfWiyXptbXZ2k34O6jHTxRi00AzXG989owDjCxQekiuP7A
 ONGLYmW+OEZcNX+Nn9lTyP7/+dTfxhw4ZPkVP0/qPJzld7kXH0jefFUuJVjXKU5acs
 6ypr8n9CNJnSt6gkWboNAz8l8KhBBQGAyEMcfdEQ=
Message-ID: <50e75755-0730-5cfa-36cb-35756d416b0f@shipmail.org>
Date: Thu, 2 Dec 2021 10:06:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Pallavi Mishra <pallavi.mishra@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211202043849.40094-1-pallavi.mishra@intel.com>
 <20211202043849.40094-2-pallavi.mishra@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
In-Reply-To: <20211202043849.40094-2-pallavi.mishra@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/1] static analysis failure
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


On 12/2/21 05:38, Pallavi Mishra wrote:
> fix for null ptr dereferences.

Please describe the change as per the patch submission guidelines:

https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes

In particular, describe the *real* problems and the fixes, and not only 
that this silences a
static analysis tool. If the problems were found with such a tool, then 
that can be added as as a side note.


>
> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 3 +++
>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 4 +++-
>   2 files changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 218a9b3037c7..997fe73c205b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -906,6 +906,8 @@ vm_access_ttm(struct vm_area_struct *area, unsigned long addr,
>   	struct drm_i915_gem_object *obj =
>   		i915_ttm_to_gem(area->vm_private_data);
>   
> +	GEM_BUG_ON(!obj);
> +
>   	if (i915_gem_object_is_readonly(obj) && write)
>   		return -EACCES;
>   
> @@ -966,6 +968,7 @@ static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
>   void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
>   {
>   	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> +	GEM_BUG_ON(!obj);
>   
>   	i915_gem_object_release_memory_region(obj);
>   	mutex_destroy(&obj->ttm.get_io_page.lock);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> index 80df9f592407..12ba05d44d0f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -369,8 +369,10 @@ void i915_ttm_adjust_gem_after_move(struct drm_i915_gem_object *obj)
>   int i915_ttm_move_notify(struct ttm_buffer_object *bo)
>   {
>   	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> +
Stray blank line change.
>   	int ret;
>   
> +	GEM_BUG_ON(!obj);
>   	ret = i915_gem_object_unbind(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
>   	if (ret)
>   		return ret;
> @@ -506,7 +508,7 @@ static void i915_ttm_memcpy_init(struct i915_ttm_memcpy_arg *arg,
>   
>   	dst_reg = i915_ttm_region(bo->bdev, dst_mem->mem_type);
>   	src_reg = i915_ttm_region(bo->bdev, bo->resource->mem_type);
> -	GEM_BUG_ON(!dst_reg || !src_reg);
> +	GEM_BUG_ON(!dst_reg || !src_reg || !obj);
>   
>   	arg->dst_iter = !i915_ttm_cpu_maps_iomem(dst_mem) ?
>   		ttm_kmap_iter_tt_init(&arg->_dst_iter.tt, dst_ttm) :

Thanks,

Thomas



