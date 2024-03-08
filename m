Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A20687658B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 14:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4A2112596;
	Fri,  8 Mar 2024 13:46:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OHG7Pnfr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82003112225
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 13:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709905581; x=1741441581;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sGl9aK8v77edPNuWaz5o+oHJbqrOE6jPg9RowQSa/EE=;
 b=OHG7PnfrcEI3w7jjHfWGnQ7JDLK4jH22S2XN/NsLDOflQ5FEWhkpqWt2
 z3jpQ4xAAP6nY19RpZQfgVxALg9SauiIRG32qJy1iSJaSqCRBGkIw4aHz
 Hb4Fi4Q+lB8Gzps5KwV95igRWdStxNz7VC3bibcxY62qGaM2uOC1cnZ+0
 Ep0KDtHYLVQKl9EZPlHpbeEcY1Bq0Gw70/4kvi80M9YLEJVbyc7qSN69B
 vHnkpS0XdgoOXS8Gy1u6AGXffz5t0w83nSVSLF/kOqmXPIM/kSYWBWxvx
 zEBj5ZqsHUK6Yh6tCAg79h74FcsZYoBXgm9OmfrnR8Sl5g85kfErGNZo7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="27095186"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="27095186"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 05:46:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15164334"
Received: from unknown (HELO localhost) ([10.252.34.187])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 05:46:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Kent Overstreet <kent.overstreet@linux.dev>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-fsdevel@vger.kernel.org
Cc: Kent Overstreet <kent.overstreet@linux.dev>, tglx@linutronix.de,
 x86@kernel.org, tj@kernel.org, peterz@infradead.org,
 mathieu.desnoyers@efficios.com, paulmck@kernel.org, keescook@chromium.org,
 dave.hansen@linux.intel.com, mingo@redhat.com, will@kernel.org,
 longman@redhat.com, boqun.feng@gmail.com, brauner@kernel.org,
 intel-gfx@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>, Daniel
 Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 01/50] drivers/gpu/drm/i915/i915_memcpy.c: fix missing
 includes
In-Reply-To: <20231216024834.3510073-2-kent.overstreet@linux.dev>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231216024834.3510073-1-kent.overstreet@linux.dev>
 <20231216024834.3510073-2-kent.overstreet@linux.dev>
Date: Fri, 08 Mar 2024 15:46:10 +0200
Message-ID: <8734t0vntp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 15 Dec 2023, Kent Overstreet <kent.overstreet@linux.dev> wrote:
> Signed-off-by: Kent Overstreet <kent.overstreet@linux.dev>

This seems to have been merged to v6.8-rc1 as commit 86b9357c1bbe
("drivers/gpu/drm/i915/i915_memcpy.c: fix missing includes") without
Cc'ing the relevant lists or people, with no commit message or reviews,
or the CI we mandate for every single patch.

Sure it's trivial, but please extend the same courtesy to us as you'd
expect everyone else to extend to you before just merging stuff in the
trees you maintain.


Thanks,
Jani.


> ---
>  drivers/gpu/drm/i915/i915_memcpy.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
> index 1b021a4902de..40b288136841 100644
> --- a/drivers/gpu/drm/i915/i915_memcpy.c
> +++ b/drivers/gpu/drm/i915/i915_memcpy.c
> @@ -23,6 +23,8 @@
>   */
>  
>  #include <linux/kernel.h>
> +#include <linux/string.h>
> +#include <asm/cpufeature.h>
>  #include <asm/fpu/api.h>
>  
>  #include "i915_memcpy.h"

-- 
Jani Nikula, Intel
