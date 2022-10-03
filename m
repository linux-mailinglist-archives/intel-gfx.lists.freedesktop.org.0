Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4843F5F33D2
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 18:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F69910E1B2;
	Mon,  3 Oct 2022 16:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B537E10E1B2
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 16:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664815528; x=1696351528;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dwpYORMMqfPBXBlV6PkbFuvnUvI0vodpVfMeErULiDg=;
 b=IyVbJwhVxuy9J1q24Cw/JZSNT/eC7jEYqcbhbaOAah5MnDpzmh6fORWl
 4yY25UDxcrsnYy81xmOAOblF5puFNRPZ9OwH5uyG3tOy8c2WumQiYDTB9
 2Rv0TxjZDg00VawDoqzmW4BInaGNR8zny00o+4aYuvBVJAwTwD5wg7Xdk
 bDJMqzLA0QpK8lxWyui0exkxSTPNtVIXJUzghPjNPEkLXHqooBjw58Wi0
 tmWdGPpU8JsxMI/FxeGu44VqMTlkyguI029wrJKq441O+xVbFjopqfqyK
 WWRFgsYkD3bDYzBKsN2AA8IWfSXmV5a3IC4hBvg08iDpWLLffsPhXPXfo g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="282400315"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="282400315"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 09:45:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="798795921"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="798795921"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.81])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 09:45:06 -0700
Date: Mon, 3 Oct 2022 18:45:04 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YzsRkMCop0IDWeOh@ashyti-mobl2.lan>
References: <20221003151936.74462-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003151936.74462-1-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/ttm: implement access_memory
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

[...]

> +static int i915_ttm_access_memory(struct ttm_buffer_object *bo,
> +				  unsigned long offset, void *buf,
> +				  int len, int write)
> +{
> +	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> +	resource_size_t iomap = obj->mm.region->iomap.base -
> +		obj->mm.region->region.start;
> +	unsigned long page = offset >> PAGE_SHIFT;
> +	unsigned long bytes_left = len;
> +
> +	/*
> +	 * TODO: For now just let it fail if the resource is non-mappable,
> +	 * otherwise we need to perform the memcpy from the gpu here, without
> +	 * interfering with the object (like moving the entire thing).
> +	 */
> +	if (!i915_ttm_resource_mappable(bo->resource))
> +		return -EIO;
> +
> +	offset -= page << PAGE_SHIFT;
> +	do {
> +		unsigned long bytes = min(bytes_left, PAGE_SIZE - offset);
> +		void __iomem *ptr;
> +		dma_addr_t daddr;
> +
> +		daddr = i915_gem_object_get_dma_address(obj, page);
> +		ptr = ioremap_wc(iomap + daddr + offset, PAGE_SIZE);

PAGE_SIZE or bytes? We don't know what there is after "bytes".

Andi

> +		if (!ptr)
> +			return -EIO;
> +
> +		if (write)
> +			memcpy_toio(ptr, buf, bytes);
> +		else
> +			memcpy_fromio(buf, ptr, bytes);
> +		iounmap(ptr);
> +
> +		page++;
> +		buf += bytes;
> +		bytes_left -= bytes;
> +		offset = 0;
> +	} while (bytes_left);
> +
> +	return len;
> +}
