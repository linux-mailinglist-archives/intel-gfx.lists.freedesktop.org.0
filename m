Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5E1225CAE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 12:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201A989A32;
	Mon, 20 Jul 2020 10:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9798C89A32
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 10:35:16 +0000 (UTC)
IronPort-SDR: WZqjj8FOH33IhStMyNVAW2lXHQKT1P6f5TtzsVX8qDAWKDkSiuJzwqEev1rU6Mn6IJ/7HeDkhW
 Pl7tSimO4pFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="149040930"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="149040930"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 03:35:16 -0700
IronPort-SDR: I001Ld/rIggkcRVhl6fcNTcJeH/H7TR9/7XKI6NgOseH6XEeoWDyF9p6wER/fFuA2v3SI3LLKd
 MLrFZ+2mnO+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="326026092"
Received: from nirgilbo-mobl1.ger.corp.intel.com (HELO [10.251.168.123])
 ([10.251.168.123])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jul 2020 03:35:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-11-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <10523b2b-fc58-3fd7-ac7f-ca8ec74434ae@intel.com>
Date: Mon, 20 Jul 2020 11:35:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-11-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 11/66] drm/i915: Preallocate stashes for vma
 page-directories
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
> We need to make the DMA allocations used for page directories to be
> performed up front so that we can include those allocations in our
> memory reservation pass. The downside is that we have to assume the
> worst case, even before we know the final layout, and always allocate
> enough page directories for this object, even when there will be overlap.
> This unfortunately can be quite expensive, especially as we have to
> clear/reset the page directories and DMA pages, but it should only be
> required during early phases of a workload when new objects are being
> discovered, or after memory/eviction pressure when we need to rebind.
> Once we reach steady state, the objects should not be moved and we no
> longer need to preallocating the pages tables.
> 
> It should be noted that the lifetime for the page directories DMA is
> more or less decoupled from individual fences as they will be shared
> across objects across timelines.
> 
> v2: Only allocate enough PD space for the PTE we may use, we do not need
> to allocate PD that will be left as scratch.
> v3: Store the shift unto the first PD level to encapsulate the different
> PTE counts for gen6/gen8.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>

Fwiw,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
