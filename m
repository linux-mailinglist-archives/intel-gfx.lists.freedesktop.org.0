Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3679A230E27
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 17:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC62E6E129;
	Tue, 28 Jul 2020 15:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 260666E129
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 15:41:12 +0000 (UTC)
IronPort-SDR: DlqN/23er7vLWcHBbfZXbCTvaq6FX2NKRb0/PCf/UyItkcOiJenO8hTxM1+AViHi/C+RN4t3Rd
 x1O0bV2DPS+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9695"; a="215759901"
X-IronPort-AV: E=Sophos;i="5.75,406,1589266800"; d="scan'208";a="215759901"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 08:41:11 -0700
IronPort-SDR: 5tPMN1PNWhdrtupcqyh1CHTFOA/+hKhd2rl6+a5jhc9ubaOyJBj2VJTSHfGGMjgQ90zpGKKiUY
 +JQlHwkAxH6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,406,1589266800"; d="scan'208";a="464515853"
Received: from yroei-mobl1.ger.corp.intel.com (HELO [10.254.146.32])
 ([10.254.146.32])
 by orsmga005.jf.intel.com with ESMTP; 28 Jul 2020 08:41:09 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200728153157.27969-1-chris@chris-wilson.co.uk>
 <20200728153157.27969-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <3280876a-ad70-eec3-f851-bf9f14572c0e@intel.com>
Date: Tue, 28 Jul 2020 16:41:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200728153157.27969-3-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Shrink
 i915_page_directory's slab bucket
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28/07/2020 16:31, Chris Wilson wrote:
> kmalloc uses power-of-two slab buckets for small allocations (up to a
> few pages). Since i915_page_directory is a page of pointers, plus a
> couple more, this is rounded up to 8K, and we waste nearly 50% of that
> allocation. Long terms this leads to poor memory utilisation, bloating
> the kernel footpoint, but the problem is excerbated by our conservative

footprint 		exacerbated

> preallocation scheme for binding VMA. As we require to allocate all
> levels for each vma just in case we need to insert them upon binding,
> this leads to a large multiplication factor for single page vma. By
> halving the allocation we need for the page directory structure, we
> halve the multipliation factor, bringing workloads that once fitted into

multiplication

> memory, hopefully back to fitting into memory.
> 
> We maintain the split between i915_page_directory and i915_page_table as
> we only need half the allocation for the lowest, most populous, level.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>

Nice find,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
