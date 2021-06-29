Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092163B700A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 11:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140C689FCC;
	Tue, 29 Jun 2021 09:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82BE789FCC
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 09:21:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="195265273"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="195265273"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 02:21:45 -0700
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="492631383"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 02:21:43 -0700
Date: Tue, 29 Jun 2021 14:53:18 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Message-ID: <20210629092318.GC29108@intel.com>
References: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
 <20210628143829.22995-3-krishnaiah.bommu@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628143829.22995-3-krishnaiah.bommu@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/4] Klock work Fix for NULL dereferencing
 in i915_gem_mman.c
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-06-28 at 20:08:27 +0530, Bommu Krishnaiah wrote:
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index a90f796e85c03..cad33cd49ba95 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -961,6 +961,8 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
>  
>  	vma->vm_private_data = mmo;
>  
> +	GEM_BUG_ON(!mmo);
> +
This also looks false positive to me. As mmo is dereferenced only when
the if (!node->driver_private && !obj->ops->mmap_ops)

 when node->driver_private is true but obj->ops->mmap_ops is not true
 then mmo will be NULL. Which is already captured as GEM_BUG_ON(obj && !obj->ops->mmap_ops);

 So we can ignore this too.

 Ram


>  	switch (mmo->mmap_type) {
>  	case I915_MMAP_TYPE_WC:
>  		vma->vm_page_prot =
> -- 
> 2.25.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
