Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F087222B16A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jul 2020 16:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC6A589144;
	Thu, 23 Jul 2020 14:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E63789144
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 14:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 2484F3F6E8;
 Thu, 23 Jul 2020 16:33:22 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=pgcEbVd4; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GkHlJ0NyOEPK; Thu, 23 Jul 2020 16:33:21 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id D9CD03F5D8;
 Thu, 23 Jul 2020 16:33:19 +0200 (CEST)
Received: from [192.168.0.100] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 933CC362641;
 Thu, 23 Jul 2020 16:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595514800; bh=q9UdyElvkuehu5t001jfoBbHkspkK6vJZ3XznivYsEk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=pgcEbVd4WQozIqmVmd3pDF/vIJLDifhNabm/8F6+uQSBUqQipbLW2SrFWTWij1bH5
 NqnQucXX389Q8dyQLYjsOpx6VJA6wPDvWrY/or49JJ+MEOAYdXV5F9bjNcNIbic4kF
 4z9/L7766VYlcdolMpFq1Wxm47B63pRhmuhLKdGs=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-11-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <ce53a500-4ec1-44f4-17d9-c63fad5aaf21@shipmail.org>
Date: Thu, 23 Jul 2020 16:33:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-11-chris@chris-wilson.co.uk>
Content-Language: en-US
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2020-07-15 13:50, Chris Wilson wrote:
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
> ---
>   .../gpu/drm/i915/gem/i915_gem_client_blt.c    | 11 +--
>   drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 40 ++++-----
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 78 +++++------------
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          | 60 ++++++--------
>   drivers/gpu/drm/i915/gt/intel_gtt.h           | 46 ++++++----
>   drivers/gpu/drm/i915/gt/intel_ppgtt.c         | 83 ++++++++++++++++---
>   drivers/gpu/drm/i915/i915_vma.c               | 27 +++---
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 60 ++++++++------
>   drivers/gpu/drm/i915/selftests/mock_gtt.c     | 22 ++---
>   9 files changed, 237 insertions(+), 190 deletions(-)

Hi, Chris,

Overall looks good, but a question: Why can't we perform page-table 
memory allocation on demand when needed?

Are we then under a mutex that we also take during reclaim?

/Thomas



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
