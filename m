Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3375F43B6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:57:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB9010E5F4;
	Tue,  4 Oct 2022 12:56:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06F6B10E5F4;
 Tue,  4 Oct 2022 12:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888215; x=1696424215;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=flBQ9dEnV0xRD9UVmKe5eJISSpQJuxugos6sYNwF9ko=;
 b=VhmtWHTXGNS27iPbsBK8a0IZWl8k7lrPw/q+JWI263/EkseJUWyKdFxB
 W+jNtPS0IwrcNJZpjZFMez0tiEi6ROmXJd6kxNds83w+I9R/VbLnW6gxQ
 wblYWZgQ/2YsxpBhr6EI0UdHgF/qF2BSkEGu6N3quUir/2yDvce5WoAai
 feRdwvMPOgCniH9ottoOSsjr7qyYCaHk3Q1IgSVQlEuwm+1PbDJLlzQVo
 HgJ1ffjeuuXkPidEmiNva1O9Gc1qOvQc9GZYVCJHBoE52r73lOpkKKW9h
 KOZ2NnEuwNAf6qf9r39ltMYjwzLPmI39XHsjHSEhEpDZZ1A8JhCJDmIor w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="329306437"
X-IronPort-AV: E=Sophos;i="5.95,157,1661842800"; d="scan'208";a="329306437"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:56:52 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="654760423"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="654760423"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:56:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221001004550.3031431-13-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221001004550.3031431-1-matthew.d.roper@intel.com>
 <20221001004550.3031431-13-matthew.d.roper@intel.com>
Date: Tue, 04 Oct 2022 15:56:43 +0300
Message-ID: <87czb7u4qc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 12/14] drm/i915: Define multicast
 registers as a new type
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
Cc: ravi.kumar.vodapalli@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 30 Sep 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
> index 8f486f77609f..e823869b9afd 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -104,22 +104,16 @@ typedef struct {
>  
>  #define _MMIO(r) ((const i915_reg_t){ .reg = (r) })
>  
> -#define INVALID_MMIO_REG _MMIO(0)
> -
> -static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
> -{
> -	return reg.reg;
> -}
> +typedef struct {
> +	u32 reg;
> +} i915_mcr_reg_t;
>  
> -static inline bool i915_mmio_reg_equal(i915_reg_t a, i915_reg_t b)
> -{
> -	return i915_mmio_reg_offset(a) == i915_mmio_reg_offset(b);
> -}
> +#define INVALID_MMIO_REG _MMIO(0)
>  
> -static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> -{
> -	return !i915_mmio_reg_equal(reg, INVALID_MMIO_REG);
> -}
> +/* These macros can be used on either i915_reg_t or i915_mcr_reg_t */
> +#define i915_mmio_reg_offset(r) (r.reg)
> +#define i915_mmio_reg_equal(a, b) (i915_mmio_reg_offset(a) == i915_mmio_reg_offset(b))
> +#define i915_mmio_reg_valid(r) (!i915_mmio_reg_equal(r, INVALID_MMIO_REG))
>  

I don't really like losing the type safety here. The whole and only
purpose of typedeffing i915_reg_t as a struct instead of just u32 was
the strict type safety.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
