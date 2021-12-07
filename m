Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A2246B34C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 07:57:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73BD78B5C7;
	Tue,  7 Dec 2021 06:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440BE8B5C9
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 06:57:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="217536914"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="217536914"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 22:56:04 -0800
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="600019350"
Received: from gangshe-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.113.238])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 22:56:04 -0800
Date: Mon, 6 Dec 2021 22:56:04 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Michael Cheng <michael.cheng@intel.com>
Message-ID: <20211207065604.sde7ekqrg5dkqfsr@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211206215245.513677-1-michael.cheng@intel.com>
 <20211206215245.513677-2-michael.cheng@intel.com>
 <20211207033639.2j5vfetcgy5shjhh@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211207033639.2j5vfetcgy5shjhh@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH v6 1/1] drm/i915: Introduce new macros for
 i915 PTE
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
Cc: jani.nikula@intel.com, siva.mullati@intel.com,
 intel-gfx@lists.freedesktop.org, wayne.boyer@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 06, 2021 at 07:36:39PM -0800, Lucas De Marchi wrote:
>On Mon, Dec 06, 2021 at 01:52:45PM -0800, Michael Cheng wrote:
>>Certain functions within i915 uses macros that are defined for
>>specific architectures by the mmu, such as _PAGE_RW and _PAGE_PRESENT
>>(Some architectures don't even have these macros defined, like ARM64).
>>
>>Instead of re-using bits defined for the CPU, we should use bits
>>defined for i915. This patch introduces two new 64 bit macros,
>>GEN8_PAGE_PRESENT and GEN8_PAGE_RW, to check for bits 0 and 1 and, to
>>replace all occurrences of _PAGE_RW and _PAGE_PRESENT within i915.
>>
>>v2(Michael Cheng): Use GEN8_ instead of I915_
>>
>>Signed-off-by: Michael Cheng <michael.cheng@intel.com>
>>---
>>drivers/gpu/drm/i915/gt/gen8_ppgtt.c |  6 +++---
>>drivers/gpu/drm/i915/gt/intel_ggtt.c |  2 +-
>>drivers/gpu/drm/i915/gt/intel_gtt.h  |  3 +++
>>drivers/gpu/drm/i915/gvt/gtt.c       | 12 ++++++------
>>4 files changed, 13 insertions(+), 10 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>index 9966e9dc5218..95c02096a61b 100644
>>--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>@@ -18,7 +18,7 @@
>>static u64 gen8_pde_encode(const dma_addr_t addr,
>>			   const enum i915_cache_level level)
>>{
>>-	u64 pde = addr | _PAGE_PRESENT | _PAGE_RW;
>>+	u64 pde = addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
>>
>>	if (level != I915_CACHE_NONE)
>>		pde |= PPAT_CACHED_PDE;
>>@@ -32,10 +32,10 @@ static u64 gen8_pte_encode(dma_addr_t addr,
>>			   enum i915_cache_level level,
>>			   u32 flags)
>>{
>>-	gen8_pte_t pte = addr | _PAGE_PRESENT | _PAGE_RW;
>>+	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
>>
>>	if (unlikely(flags & PTE_READ_ONLY))
>>-		pte &= ~_PAGE_RW;
>>+		pte &= ~GEN8_PAGE_RW;
>>
>>	if (flags & PTE_LM)
>>		pte |= GEN12_PPGTT_PTE_LM;
>>diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>index 110d3944f9a2..cbc6d2b1fd9e 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>>@@ -209,7 +209,7 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>			 enum i915_cache_level level,
>>			 u32 flags)
>>{
>>-	gen8_pte_t pte = addr | _PAGE_PRESENT;
>>+	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT;
>>
>>	if (flags & PTE_LM)
>>		pte |= GEN12_GGTT_PTE_LM;
>>diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>index dfeaef680aac..228fbfe33cb7 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>@@ -39,6 +39,9 @@
>>
>>#define NALLOC 3 /* 1 normal, 1 for concurrent threads, 1 for preallocation */
>>
>>+#define GEN8_PAGE_PRESENT BIT_ULL(0)
>>+#define GEN8_PAGE_RW BIT_ULL(1)
>
>ideally this would be together with other GEN8 defines, but this is
>minor.
>
>Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

and pushed, thanks

Lucas De Marchi
