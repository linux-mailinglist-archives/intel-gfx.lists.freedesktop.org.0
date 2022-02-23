Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CBA4C1C1E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 20:24:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1918D10E16C;
	Wed, 23 Feb 2022 19:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5482E10E16C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 19:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645644295; x=1677180295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OLckanexy+psaAJnl07U+gdxoTmcUuZmodmVAZCJQ80=;
 b=H1RVtXSXn4duxuiK7Szsuwi0bAuGDPXloVxY9TWhF4+y5FTs1c/p0Wg6
 qLpDx0lHaSkNC/U8aORsGyviWV4uHHtFnTf503EAYXSYcXkLTsDlfAKgx
 SaIoBprjlgXifBSYIbwDI7vTvd8hhO9h9aeGXUey3S7NHYOy1khPdgU/x
 /874l2iBO1jSZOf0n93g1GAQWSA8cqpEwHslhYqYvRRHNKC4D2NzJuNsq
 mG8+auY78VzBU45QYR849CjfHilTGfC7f6GSdfKXVLMTa3jjDhYJTK8Qz
 GU765DNRC3w4f6OBcDBrMKmgDHDN+ef+mYF22nEuAPwKPQUo+VUTwxViZ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="232037428"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="232037428"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:24:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="532816897"
Received: from scjha-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.66.247])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:24:54 -0800
Date: Wed, 23 Feb 2022 11:24:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20220223192452.qrp3jvcwthmq6kzf@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220223191256.698239-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220223191256.698239-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check stolen memory size before
 calling drm_mm_init
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
Cc: Steve Carbonari <steven.carbonari@intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 23, 2022 at 11:12:56AM -0800, Jose Souza wrote:
>Add check for zero usable stolen memory before calling drm_mm_init
>to support configurations where stolen memory exists but is fully
>reserved.
>
>Also skip memory test in such case.
>
>Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Steve Carbonari <steven.carbonari@intel.com>
>---
> drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 9 ++++++---
> drivers/gpu/drm/i915/intel_memory_region.c | 8 ++++++--
> 2 files changed, 12 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>index b9c3196b91cab..636cdf8a73b0a 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>@@ -497,13 +497,16 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
> 	 * memory, so just consider the start. */
> 	reserved_total = stolen_top - reserved_base;
>
>+	i915->stolen_usable_size =
>+		resource_size(&i915->dsm) - reserved_total;
>+
> 	drm_dbg(&i915->drm,
> 		"Memory reserved for graphics device: %lluK, usable: %lluK\n",
> 		(u64)resource_size(&i915->dsm) >> 10,
>-		((u64)resource_size(&i915->dsm) - reserved_total) >> 10);
>+		(u64)i915->stolen_usable_size >> 10);
>
>-	i915->stolen_usable_size =
>-		resource_size(&i915->dsm) - reserved_total;
>+	if (i915->stolen_usable_size == 0)
>+		return 0;
>
> 	/* Basic memrange allocator for stolen space. */
> 	drm_mm_init(&i915->mm.stolen, 0, i915->stolen_usable_size);
>diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
>index c70d7e286a512..1cbe194e01f6b 100644
>--- a/drivers/gpu/drm/i915/intel_memory_region.c
>+++ b/drivers/gpu/drm/i915/intel_memory_region.c
>@@ -97,10 +97,14 @@ static int iomemtest(struct intel_memory_region *mem,
> 		     bool test_all,
> 		     const void *caller)
> {
>-	resource_size_t last = resource_size(&mem->region) - PAGE_SIZE;
>-	resource_size_t page;
>+	resource_size_t last, page;
> 	int err;
>
>+	if (resource_size(&mem->region) == 0)

shouldn't this check be like below?

	if (resource_size(&mem->region) < PAGE_SIZE)

Lucas De Marchi

>+		return 0;
>+
>+	last = resource_size(&mem->region) - PAGE_SIZE;
>+
> 	/*
> 	 * Quick test to check read/write access to the iomap (backing store).
> 	 *
>-- 
>2.35.1
>
