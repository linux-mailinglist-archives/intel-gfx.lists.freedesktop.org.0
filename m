Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DD59E58A7
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 15:39:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D6FB10EE94;
	Thu,  5 Dec 2024 14:39:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VwWGRQSx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB9110EE94
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 14:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733409570; x=1764945570;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=h6zFrTLaABDrD5S/GWUnwHNFf0mv7xF/zikb/aFP2AE=;
 b=VwWGRQSxvXrnGjroldE93gvBbHt6yeoyb0jVomEd7haElc8GY068e+sy
 FLbmITR727JFO/T+NylUXnfKmnp/kZtDmb6y0L3lXmX2gWvT3UxnIc2rU
 z2lRR5vlzeCeXbGA76V/89iSkk6nWUMSsfGfUadO2mDVbBWqz1qs9pHEW
 K2yimTHFtB43M5tZzDYukQ4Nc58zPREPwRxPkg5AcGptGEFoJD9iDHy7i
 ZkKSI1WMYfqEQg/AZqj6wIwmeAq7BfiOEpbtVK4XFcJh+/hUNVsX34EIV
 vdQEC5sv/8vn3Hx32agTpNgWKiqDj3KOR6Jm16ixBjeJGS4aljAi/fIGg Q==;
X-CSE-ConnectionGUID: 0X//fUpJS9KDOteTSauDmQ==
X-CSE-MsgGUID: 8+CIk2UgTzi+XBN6Y2DiCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="33966226"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="33966226"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:39:29 -0800
X-CSE-ConnectionGUID: 8ZvNqM1mQByZjLTnlTenNg==
X-CSE-MsgGUID: 9gpQSb/USs+7yTDbKdC5Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="99074101"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.41])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:39:27 -0800
Date: Thu, 5 Dec 2024 15:39:23 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com
Subject: Re: [PATCH v5] drm/i915: ensure segment offset never exceeds allowed
 max
Message-ID: <Z1G7G-p6L5mgqwR5@ashyti-mobl2.lan>
References: <upbjdavlbcxku63ns4vstp5kgbn2anxwewpmnppszgb67fn66t@tfclfgkqijue>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <upbjdavlbcxku63ns4vstp5kgbn2anxwewpmnppszgb67fn66t@tfclfgkqijue>
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

Hi Krzysztof,

On Mon, Nov 18, 2024 at 12:19:22PM +0000, Krzysztof Karas wrote:
> Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for
> partial memory mapping") introduced a new offset, which accounts for
> userspace mapping not starting from the beginning of object's scatterlist.
> 
> This works fine for cases where first object pte is larger than the new
> offset - "r->sgt.curr" counter is set to the offset to match the difference
> in the number of total pages. However, if object's first pte's size is
> equal to or smaller than the offset, then information about the offset
> in userspace is covered up by moving "r->sgt" pointer in remap_sg():
> 
> 	r->sgt.curr += PAGE_SIZE;
> 	if (r->sgt.curr >= r->sgt.max)
> 		r->sgt = __sgt_iter(__sg_next(r->sgt.sgp), use_dma(r->iobase));
> 
> This means that two or more pages from virtual memory are counted for
> only one page in object's memory, because after moving "r->sgt" pointer
> "r->sgt.curr" will be 0.
> 
> We should account for this mismatch by moving "r->sgt" pointer to the
> next pte. For that we may use "r.sgt.max", which already holds the max
> allowed size. This change also eliminates possible confusion, when
> looking at i915_scatterlist.h and remap_io_sg() code: former has
> scatterlist pointer definition, which differentiates "s.max" value
> based on "dma" flag (sg_dma_len() is used only when the flag is
> enabled), while latter uses sg_dma_len() indiscriminately.
> 
> This patch aims to resolve issue:
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
> 
> 
> v3:
>  - instead of checking if r.sgt.curr would exceed allowed max, changed
> the value in the while loop to be aligned with `dma` value
> 
> v4:
>  - remove unnecessary parent relation
> 
> v5:
>  - update commit message with explanation about page counting mismatch
>  and link to the issue
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

thanks for your patch, merged to drm-intel-gt-next.

Thanks,
Andi
