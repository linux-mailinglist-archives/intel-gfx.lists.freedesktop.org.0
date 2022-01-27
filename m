Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D49C149EE0F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 23:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A5A10E839;
	Thu, 27 Jan 2022 22:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA25510E839
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 22:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643322431; x=1674858431;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DFD6DTmCY8gllT9JYJeAvRmQ1JOyPKL07DPGPY7ZyI4=;
 b=A/W9xB1bsu12w3PHtZxdSFR1qp39grVLJvZwcqn0BJ7rjuYkheD+RzdQ
 Z8UVqHquEuWFyQ7jLkos9w0br1XGRDOjxVslLjwavGd44sEtGnboXsv7V
 m8CY0eOs227vhYTvXXO5Q2zSSp7V9AJ0KdVIYkDuDtTRFb1JmLghLgIbn
 S4EubFbEK/M1aLzumQtbujToq/w0IlqtTuhC0qilh1OE+hxnZQnoyb3Y5
 eaHgNSRJDEW9XL8b24J/m7glIazorl6iRuv4DHCNeZysIT6TxO1fOZwoY
 d1c82cW0QH0VXsMASclzdXpLyhDPlNq51KatSO4mHTkZ03O2ip5sJPu8x Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="226958614"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="226958614"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 14:26:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="535860787"
Received: from jhbabine-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.34.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 14:26:13 -0800
Date: Thu, 27 Jan 2022 17:26:11 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <YfMcAzJgjeqzLVEB@intel.com>
References: <20220127085115.GD25644@kili>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220127085115.GD25644@kili>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: delete shadow "ret" variable
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
Cc: David Airlie <airlied@linux.ie>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 27, 2022 at 11:51:15AM +0300, Dan Carpenter wrote:
> This "ret" declaration shadows an existing "ret" variable at the top of
> the function.  Delete it.
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

and pushing right now

> ---
>  drivers/gpu/drm/i915/i915_vma.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 0026e85a0a0d..b66591d6e436 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -505,8 +505,6 @@ int i915_vma_bind(struct i915_vma *vma,
>  			work->pinned = i915_gem_object_get(vma->obj);
>  	} else {
>  		if (vma->obj) {
> -			int ret;
> -
>  			ret = i915_gem_object_wait_moving_fence(vma->obj, true);
>  			if (ret) {
>  				i915_vma_resource_free(vma->resource);
> -- 
> 2.20.1
> 
