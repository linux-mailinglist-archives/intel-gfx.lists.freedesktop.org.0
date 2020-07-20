Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F24A6225CAB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 12:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFB7899DC;
	Mon, 20 Jul 2020 10:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06CD8899DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 10:34:12 +0000 (UTC)
IronPort-SDR: 6iDxsQclsYqIGccTu6rYcYDQrg8C/mlUg64ERStr09TrgAr5fTKRIRG5x7vHO/+Lhel2RNsrgj
 qWtEy4PrxmNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="147384367"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="147384367"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 03:34:12 -0700
IronPort-SDR: L8Z+TTPUwD7oVTJ+B2l0MHASSIC8u1t5+yuVzBTPk0V9TRnQwf/q6uQIbPqYs1pbakwr+XKLWd
 Bb2EkFu529dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="326025932"
Received: from nirgilbo-mobl1.ger.corp.intel.com (HELO [10.251.168.123])
 ([10.251.168.123])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jul 2020 03:34:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-12-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <d89649f1-4025-e347-8d52-f4ecb34aaf77@intel.com>
Date: Mon, 20 Jul 2020 11:34:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-12-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 12/66] drm/i915: Switch to object
 allocations for page directories
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15/07/2020 12:50, Chris Wilson wrote:
> The GEM object is grossly overweight for the practicality of tracking
> large numbers of individual pages, yet it is currently our only
> abstraction for tracking DMA allocations. Since those allocations need
> to be reserved upfront before an operation, and that we need to break
> away from simple system memory, we need to ditch using plain struct page
> wrappers.
> 
> In the process, we drop the WC mapping as we ended up clflushing
> everything anyway due to various issues across a wider range of
> platforms. Though in a future step, we need to drop the kmap_atomic
> approach which suggests we need to pre-map all the pages and keep them
> mapped.
> 
> v2: Verify our large scratch page is suitably DMA aligned; and manually
> clear the scratch since we are allocating random struct pages.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---

<snip>

> -
> -static struct page *vm_alloc_page(struct i915_address_space *vm, gfp_t gfp)
> -{
> -	struct pagevec stack;
> -	struct page *page;
> -
> -	if (I915_SELFTEST_ONLY(should_fail(&vm->fault_attr, 1)))
> -		i915_gem_shrink_all(vm->i915);


I guess shrink_boom et al are now mostly irrelevant in this new scheme.

Fwiw,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
