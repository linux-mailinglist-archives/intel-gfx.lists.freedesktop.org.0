Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E0E300D8E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 21:19:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D12C89E7B;
	Fri, 22 Jan 2021 20:19:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8AC289E7B
 for <Intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 20:19:09 +0000 (UTC)
IronPort-SDR: JtZXnh5MCwgRo9Oc27MxDsAns1RyXNFR6Jwkpfr0bYJc3YrFZHlooVmWDyF2KLAm8rnNpH9q0m
 1sjTuUBjSzKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="198261749"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="198261749"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 12:19:08 -0800
IronPort-SDR: oKhqfZviZK+HGuaVvQZH58Js+t/N0BNr/6dTIkuthuqmPjf8kM5ubLTGJthVIEfaEPq68Lkjyf
 RZ3rIe78UQZQ==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="400947584"
Received: from kpadakan-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.252.131.204])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 12:19:05 -0800
Date: Fri, 22 Jan 2021 12:19:02 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20210122201902.spd5nkf2nyyrjnyu@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210121161936.746591-1-tvrtko.ursulin@linux.intel.com>
 <20210121161936.746591-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210121161936.746591-2-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Decrease number of
 subplatform bits
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
Cc: Intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 21, 2021 at 04:19:36PM +0000, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Commit 6ce1c33d6c36 ("drm/i915: Kill INTEL_SUBPLATFORM_AML") removed the
>only platform which used bit 2 so could also decrease the
>INTEL_SUBPLATFORM_BITS definition.
>
>This is not a fixes material but still lets make it precise.
>
>v2:
> * Fix assert in intel_device_info_subplatform_init by introducing
>   INTEL_SUBPLATFORM_MASK. (Chris)
> * Update intel_subplatform().
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>References: 6ce1c33d6c36 ("drm/i915: Kill INTEL_SUBPLATFORM_AML")
>Cc: Chris Wilson <chris@chris-wilson.co.uk>
>---
> drivers/gpu/drm/i915/i915_drv.h          | 2 +-
> drivers/gpu/drm/i915/intel_device_info.c | 2 +-
> drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
> 3 files changed, 4 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index c31d2776134a..7efb501e22d2 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1343,7 +1343,7 @@ intel_subplatform(const struct intel_runtime_info *info, enum intel_platform p)
> {
> 	const unsigned int pi = __platform_mask_index(info, p);
>
>-	return info->platform_mask[pi] & ((1 << INTEL_SUBPLATFORM_BITS) - 1);
>+	return info->platform_mask[pi] & INTEL_SUBPLATFORM_MASK;
> }
>
> static __always_inline bool
>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>index 699412c14c1d..7d98a718a051 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.c
>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>@@ -223,7 +223,7 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
> 		}
> 	}
>
>-	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_BITS);
>+	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
>
> 	RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
> }
>diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>index 79dab5a6f272..e6ca1023ffcf 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.h
>+++ b/drivers/gpu/drm/i915/intel_device_info.h
>@@ -93,7 +93,8 @@ enum intel_platform {
>  * it is fine for the same bit to be used on multiple parent platforms.
>  */
>
>-#define INTEL_SUBPLATFORM_BITS (3)
>+#define INTEL_SUBPLATFORM_BITS (2)
>+#define INTEL_SUBPLATFORM_MASK (BIT(INTEL_SUBPLATFORM_BITS) - 1)

not sure if it's better, but: GENMASK(INTEL_SUBPLATFORM_BITS - 1, 0)

in either case:


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
> /* HSW/BDW/SKL/KBL/CFL */
> #define INTEL_SUBPLATFORM_ULT	(0)
>-- 
>2.27.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
