Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 323A6AA49B2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 13:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F9F810E73F;
	Wed, 30 Apr 2025 11:20:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QM+bkjbo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC4B10E294
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Apr 2025 11:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746012010; x=1777548010;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EF01kkqV58wp6RAxtOeYWzYzYSD4HksIbDbTbhiLyCg=;
 b=QM+bkjboXU+AJ0yIUbN+qAXLx7gtncMLcn4ydmVcgSqGSe6a0yG22xJY
 Le3bPEiK2cg17j28xhyseTsYoLQJ2k46Fl1VoIET/+LahMs/Ixcd0qqqE
 fjpwCHrQJY4gXEcJdZ/LS5O2x+27tjyFtoUUDKsNiHLRkJNHiWUTWe4kD
 z4IijLDVNsuYhts8qncwiCvdq8J6w4Tw5/GwgzozcmROq31HwzzhpkOPU
 YtCHokpaD2/+7cz2+vC0IE/oA7Y4HRbdXz4YjR8cfjHeuDkd4AIIJ3New
 Fs62ldBdJGDU2WGfz1kj4PQOCCRi97Sl5fWNBc8U4F9HcZtivpldLc+P/ g==;
X-CSE-ConnectionGUID: WrhSnk1GT7i+iyHc00nBsw==
X-CSE-MsgGUID: DavkLxBbQmeaeG8QBIinsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="58324929"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="58324929"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 04:20:09 -0700
X-CSE-ConnectionGUID: B4W/LccOQpyqnhDeH4uUWA==
X-CSE-MsgGUID: +WRh437uRJyCd4LKnyOlpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="139275736"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 30 Apr 2025 04:20:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Apr 2025 14:20:02 +0300
Date: Wed, 30 Apr 2025 14:20:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Baolin Wang <baolin.wang@linux.alibaba.com>
Cc: akpm@linux-foundation.org, hughd@google.com, willy@infradead.org,
 david@redhat.com, wangkefeng.wang@huawei.com, 21cnbao@gmail.com,
 ryan.roberts@arm.com, ioworker0@gmail.com, da.gomez@samsung.com,
 linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 regressions@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 Eero Tamminen <eero.t.tamminen@intel.com>
Subject: Re: [REGRESSION] Re: [PATCH v3 3/6] mm: shmem: add large folio
 support for tmpfs
Message-ID: <aBIHYqzar5J8uxGO@intel.com>
References: <cover.1732779148.git.baolin.wang@linux.alibaba.com>
 <035bf55fbdebeff65f5cb2cdb9907b7d632c3228.1732779148.git.baolin.wang@linux.alibaba.com>
 <aBEP-6iFhIC87zmb@intel.com>
 <ac8cbd8d-44e9-4a88-b88b-e29e9f30a2fd@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ac8cbd8d-44e9-4a88-b88b-e29e9f30a2fd@linux.alibaba.com>
X-Patchwork-Hint: comment
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

On Wed, Apr 30, 2025 at 02:32:39PM +0800, Baolin Wang wrote:
> Hi,
> 
> On 2025/4/30 01:44, Ville Syrjälä wrote:
> > On Thu, Nov 28, 2024 at 03:40:41PM +0800, Baolin Wang wrote:
> >> Add large folio support for tmpfs write and fallocate paths matching the
> >> same high order preference mechanism used in the iomap buffered IO path
> >> as used in __filemap_get_folio().
> >>
> >> Add shmem_mapping_size_orders() to get a hint for the orders of the folio
> >> based on the file size which takes care of the mapping requirements.
> >>
> >> Traditionally, tmpfs only supported PMD-sized large folios. However nowadays
> >> with other file systems supporting any sized large folios, and extending
> >> anonymous to support mTHP, we should not restrict tmpfs to allocating only
> >> PMD-sized large folios, making it more special. Instead, we should allow
> >> tmpfs can allocate any sized large folios.
> >>
> >> Considering that tmpfs already has the 'huge=' option to control the PMD-sized
> >> large folios allocation, we can extend the 'huge=' option to allow any sized
> >> large folios. The semantics of the 'huge=' mount option are:
> >>
> >> huge=never: no any sized large folios
> >> huge=always: any sized large folios
> >> huge=within_size: like 'always' but respect the i_size
> >> huge=advise: like 'always' if requested with madvise()
> >>
> >> Note: for tmpfs mmap() faults, due to the lack of a write size hint, still
> >> allocate the PMD-sized huge folios if huge=always/within_size/advise is set.
> >>
> >> Moreover, the 'deny' and 'force' testing options controlled by
> >> '/sys/kernel/mm/transparent_hugepage/shmem_enabled', still retain the same
> >> semantics. The 'deny' can disable any sized large folios for tmpfs, while
> >> the 'force' can enable PMD sized large folios for tmpfs.
> >>
> >> Co-developed-by: Daniel Gomez <da.gomez@samsung.com>
> >> Signed-off-by: Daniel Gomez <da.gomez@samsung.com>
> >> Signed-off-by: Baolin Wang <baolin.wang@linux.alibaba.com>
> > 
> > Hi,
> > 
> > This causes a huge regression in Intel iGPU texturing performance.
> 
> Unfortunately, I don't have such platform to test it.
> 
> > 
> > I haven't had time to look at this in detail, but presumably the
> > problem is that we're no longer getting huge pages from our
> > private tmpfs mount (done in i915_gemfs_init()).
> 
> IIUC, the i915 driver still limits the maximum write size to PAGE_SIZE 
> in the shmem_pwrite(),

pwrite is just one random way to write to objects, and probably
not something that's even used by current Mesa.

> which prevents tmpfs from allocating large 
> folios. As mentioned in the comments below, tmpfs like other file 
> systems that support large folios, will allow getting a highest order 
> hint based on the size of the write and fallocate paths, and then will 
> attempt each allowable huge order.
> 
> Therefore, I think the shmem_pwrite() function should be changed to 
> remove the limitation that the write size cannot exceed PAGE_SIZE.
> 
> Something like the following code (untested):
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c 
> b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index ae3343c81a64..97eefb73c5d2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -420,6 +420,7 @@ shmem_pwrite(struct drm_i915_gem_object *obj,
>          struct address_space *mapping = obj->base.filp->f_mapping;
>          const struct address_space_operations *aops = mapping->a_ops;
>          char __user *user_data = u64_to_user_ptr(arg->data_ptr);
> +       size_t chunk = mapping_max_folio_size(mapping);
>          u64 remain;
>          loff_t pos;
>          unsigned int pg;
> @@ -463,10 +464,10 @@ shmem_pwrite(struct drm_i915_gem_object *obj,
>                  void *data, *vaddr;
>                  int err;
>                  char __maybe_unused c;
> +               size_t offset;
> 
> -               len = PAGE_SIZE - pg;
> -               if (len > remain)
> -                       len = remain;
> +               offset = pos & (chunk - 1);
> +               len = min(chunk - offset, remain);
> 
>                  /* Prefault the user page to reduce potential recursion */
>                  err = __get_user(c, user_data);

-- 
Ville Syrjälä
Intel
