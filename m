Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7376D8AE0D4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 11:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F8B11324B;
	Tue, 23 Apr 2024 09:17:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HNA8Ka46";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 125A411325C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713863829; x=1745399829;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=BERNNwuGHcy+YBoRbVtHuuUd8r1UJYs94hnkaiNoX0I=;
 b=HNA8Ka46x5loJ6hMhQh/8DD4+JVJG9HYMSdKQyd5PQAoPwYe3Dm4h5sb
 iZHTpqMSgbGjYrNW8z9Dq5yXYHkvX3e7hEZlz6HtnHsMk6BCSLKfFWlFG
 CmEytv/I1SVVmFbk9p89ZXJF5n5ozT6YWtOKJmbrrZBo44q2a2QsBSFaK
 UdYaQXPajg/cDwHzhlq9XH2bZyIen7OihIsGKb0wG12SNE7DTfcQ+1l3p
 XzLIJBcCE7rwCVeFPhpR7p/mqNceSYe7RGNYmVwDmWrd30DNt6HBB/J0L
 chmx07hRKIJZmgTXkns04NjjBcBBvMWzXFkVi/4loEO9NhlkANEnAYHGq A==;
X-CSE-ConnectionGUID: DRbAC8luTKaLgX6neneJRg==
X-CSE-MsgGUID: JyWtInX3R2iqR1EFSI0Beg==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="9976229"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; 
   d="scan'208";a="9976229"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 02:17:08 -0700
X-CSE-ConnectionGUID: zpCNrqO1Sb6gghTIHC8YDw==
X-CSE-MsgGUID: vAinCMbkTt2Z2iCbRKN5fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="61765987"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.94.248.3])
 ([10.94.248.3])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 02:17:06 -0700
Message-ID: <dec83fc1-def8-4005-9f0d-dad4dc2f17b1@linux.intel.com>
Date: Tue, 23 Apr 2024 11:17:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] drm/i915/gem: Increment vma offset when mapping fb
 objects
To: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andi Shyti <andi.shyti@kernel.org>
References: <20240412004808.288130-1-andi.shyti@linux.intel.com>
 <20240412004808.288130-2-andi.shyti@linux.intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240412004808.288130-2-andi.shyti@linux.intel.com>
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

Hi Andi,

On 4/12/2024 2:48 AM, Andi Shyti wrote:
> Until now the "vm_pgoff" was not used and there has been no need
> to set its offset.
>
> But now, because we want to support partial mappings with a given
> offset, we need it to be set.
>
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>

Do we have a IGT for partial FB mmap test ? Would be nice to have one 
but this patch looks good to me.


Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


Regards,

Nirmoy

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index a2195e28b625..ce10dd259812 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -1084,6 +1084,8 @@ int i915_gem_fb_mmap(struct drm_i915_gem_object *obj, struct vm_area_struct *vma
>   		mmo = mmap_offset_attach(obj, mmap_type, NULL);
>   		if (IS_ERR(mmo))
>   			return PTR_ERR(mmo);
> +
> +		vma->vm_pgoff += drm_vma_node_start(&mmo->vma_node);
>   	}
>   
>   	/*
