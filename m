Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEB95B95B1
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 09:49:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC08510EAAA;
	Thu, 15 Sep 2022 07:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E039A10EAAA
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 07:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663228160; x=1694764160;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=phiUAMFEGXHLVElA68VKp6QySEGdpVSndc1yGTCevf0=;
 b=KJq8BSkR63DflC3QJj1rLzRdXWJGRU8rGEH4foyF4BbOem5Hwk3EuTGD
 jecf3+JQvjt3YmNtRndLhWi/h+EeKhRU6LoBSjFBXnhZxpFEaAd/QQGQH
 BVMtvPZp5FCgfs+1FsJX/Vh7FGEJn2qryyKjtv1CwRi/3C6au5BtZzX5b
 +M2LA4fDLi0n9U/uwTqZLgjRofvk7pWiliNFMog2mtVqZyQywzc7zIO3D
 LEz1BxUZg/VCaRatCs66wZ7p++ko39HRnPAGspr9tKoQ9h9JJqlivuNDf
 cmbaU2uaIED3LZ/BTejmX1jbYmKnUwbSK6q3VD00t+3iNB8ua3mGQm0f7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="300002370"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="300002370"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:49:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="945844196"
Received: from alishana-mobl1.ger.corp.intel.com (HELO [10.213.218.26])
 ([10.213.218.26])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:49:19 -0700
Message-ID: <d0545b60-65b5-a59f-0fe4-87d3a55ab811@linux.intel.com>
Date: Thu, 15 Sep 2022 08:49:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220914163514.1837467-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220914163514.1837467-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: move i915_coherent_map_type() to
 i915_gem_pages.c and un-inline
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/09/2022 17:35, Jani Nikula wrote:
> The inline function has no place in i915_drv.h. Move it away, un-inline,
> and untangle some header dependencies while at it.
> 
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> I don't know where this belongs, I just know it doesn't belong in
> i915_drv.h.

Don't know either.. it straddles the line between objects and platforms 
by definition. Maybe Matt will have an idea or opinion.

Regards,

Tvrtko

> I first tried moving it as inline, but it's really annoying as an inline
> because it needs to pull in i915_drv.h, i915_gem_lmem.h, and
> i915_gem_object_types.h.
> ---
>   drivers/gpu/drm/i915/display/intel_dpt.c           |  1 +
>   drivers/gpu/drm/i915/gem/i915_gem_object.h         |  4 ++++
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c          | 12 ++++++++++++
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c |  1 +
>   drivers/gpu/drm/i915/gt/intel_gsc.c                |  1 +
>   drivers/gpu/drm/i915/gt/intel_migrate.c            |  1 +
>   drivers/gpu/drm/i915/gt/selftest_migrate.c         |  1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c         |  1 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c  |  1 +
>   drivers/gpu/drm/i915/i915_drv.h                    | 13 -------------
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c      |  1 +
>   11 files changed, 24 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index ac587647e1f5..ad1a37b515fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -5,6 +5,7 @@
>   
>   #include "gem/i915_gem_domain.h"
>   #include "gem/i915_gem_internal.h"
> +#include "gem/i915_gem_lmem.h"
>   #include "gt/gen8_ppgtt.h"
>   
>   #include "i915_drv.h"
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 7317d4102955..a3b7551a57fc 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -482,6 +482,10 @@ void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>   void *__must_check i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
>   						    enum i915_map_type type);
>   
> +enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> +					  struct drm_i915_gem_object *obj,
> +					  bool always_coherent);
> +
>   void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>   				 unsigned long offset,
>   				 unsigned long size);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index 4df50b049cea..16f845663ff2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -466,6 +466,18 @@ void *i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
>   	return ret;
>   }
>   
> +enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> +					  struct drm_i915_gem_object *obj,
> +					  bool always_coherent)
> +{
> +	if (i915_gem_object_is_lmem(obj))
> +		return I915_MAP_WC;
> +	if (HAS_LLC(i915) || always_coherent)
> +		return I915_MAP_WB;
> +	else
> +		return I915_MAP_WC;
> +}
> +
>   void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>   				 unsigned long offset,
>   				 unsigned long size)
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index b73c91aa5450..1cae24349a96 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -8,6 +8,7 @@
>   #include <linux/prime_numbers.h>
>   
>   #include "gem/i915_gem_internal.h"
> +#include "gem/i915_gem_lmem.h"
>   #include "gem/i915_gem_region.h"
>   #include "gem/i915_gem_ttm.h"
>   #include "gem/i915_gem_ttm_move.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
> index 7af6db3194dd..d56f75b605d8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
> @@ -7,6 +7,7 @@
>   #include <linux/mei_aux.h>
>   #include "i915_drv.h"
>   #include "i915_reg.h"
> +#include "gem/i915_gem_lmem.h"
>   #include "gem/i915_gem_region.h"
>   #include "gt/intel_gsc.h"
>   #include "gt/intel_gt.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index aaaf1906026c..b405a04135ca 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -10,6 +10,7 @@
>   #include "intel_gtt.h"
>   #include "intel_migrate.h"
>   #include "intel_ring.h"
> +#include "gem/i915_gem_lmem.h"
>   
>   struct insert_pte_data {
>   	u64 offset;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> index 2b0c87999949..0dc5309c90a4 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> @@ -6,6 +6,7 @@
>   #include <linux/sort.h>
>   
>   #include "gem/i915_gem_internal.h"
> +#include "gem/i915_gem_lmem.h"
>   
>   #include "selftests/i915_random.h"
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 74cbe8eaf531..657f0beb8e06 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -5,6 +5,7 @@
>   
>   #include <linux/bsearch.h>
>   
> +#include "gem/i915_gem_lmem.h"
>   #include "gt/intel_engine_regs.h"
>   #include "gt/intel_gt.h"
>   #include "gt/intel_gt_mcr.h"
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 22ba66e48a9b..ca6f47496869 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -6,6 +6,7 @@
>   #include <linux/circ_buf.h>
>   
>   #include "gem/i915_gem_context.h"
> +#include "gem/i915_gem_lmem.h"
>   #include "gt/gen8_engine_cs.h"
>   #include "gt/intel_breadcrumbs.h"
>   #include "gt/intel_context.h"
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 9f9372931fd2..524b5ee495be 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -40,7 +40,6 @@
>   #include "display/intel_display_core.h"
>   
>   #include "gem/i915_gem_context_types.h"
> -#include "gem/i915_gem_lmem.h"
>   #include "gem/i915_gem_shrinker.h"
>   #include "gem/i915_gem_stolen.h"
>   
> @@ -985,16 +984,4 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
>   	return (struct intel_device_info *)INTEL_INFO(dev_priv);
>   }
>   
> -static inline enum i915_map_type
> -i915_coherent_map_type(struct drm_i915_private *i915,
> -		       struct drm_i915_gem_object *obj, bool always_coherent)
> -{
> -	if (i915_gem_object_is_lmem(obj))
> -		return I915_MAP_WC;
> -	if (HAS_LLC(i915) || always_coherent)
> -		return I915_MAP_WB;
> -	else
> -		return I915_MAP_WC;
> -}
> -
>   #endif
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index e050a2de5fd1..ea2cf1080979 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -27,6 +27,7 @@
>   
>   #include "gem/i915_gem_context.h"
>   #include "gem/i915_gem_internal.h"
> +#include "gem/i915_gem_lmem.h"
>   #include "gem/i915_gem_region.h"
>   #include "gem/selftests/mock_context.h"
>   #include "gt/intel_context.h"
