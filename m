Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AF5B3806A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 12:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A3C10E0F7;
	Wed, 27 Aug 2025 10:57:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ko9Zua+W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC20B10E0F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 10:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756292246; x=1787828246;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=i1UXopgQzq2kZ6MR3usr9JPUEMlBB5rJpvj+1EP+Dms=;
 b=ko9Zua+W4z6nH3wwQKrgzZZ6tIuxqSvx7COh0xDRfc6A0//4hanjPu7y
 dzw/cqOMDIDSaWQXR2WAKYCXDgHL0v/Qcn+UlahNqa9Zyt5BvDNn97mFK
 t9B5nlgBaPEGc4ehDcGJTc8L+9eQHdMg8OJkM+t2E1KCOY3SeXwlgNYhY
 a3Q8W7dWK4LGhYUBRUkTSnP3JDOeo2YJOi49lyS7C5s53H8IyXq1lDyEm
 VLqiYLxJfbVgZKQfdy+jPMAE2ujtLvzKennie3O4Z3yZvFKMhgzRGuyhg
 6sx39WSzEbOLoT8hffXWSqAc8lwCgEK3qiHhTQzQ6O6H8wVN/ub0tqlJ2 Q==;
X-CSE-ConnectionGUID: ak+3aWFMSK20prjKgfThug==
X-CSE-MsgGUID: 6MzWv9LPTQOuj53SxbPyoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58637094"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58637094"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 03:57:26 -0700
X-CSE-ConnectionGUID: /vRKx4+qTlahIMo6IxczMA==
X-CSE-MsgGUID: ZejeU8lgRRqjsfZTgavtcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200765412"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 03:57:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: make FW_BLC_SELF_* macros type-safe
In-Reply-To: <20250827102522.398646-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250827102522.398646-1-luciano.coelho@intel.com>
Date: Wed, 27 Aug 2025 13:57:20 +0300
Message-ID: <508d5fccab10abc88fc896f895ede1edb098b0e2@intel.com>
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

On Wed, 27 Aug 2025, Luca Coelho <luciano.coelho@intel.com> wrote:
> Add the unsigned suffix to FW_BLC_SELF_* macro definitions to avoid
> potentially typing them as 'int'.
>
> For example, this happens when we pass them to _MASKED_BIT_ENABLE(),
> because of the typeof() construct there.  When we pass 1 << 15 (the
> FW_BLC_SELF_EN macro), we get typeof(1 << 15), which is 'int'.  Then
> the value becomes negative (-2147450880) and we try to assign it to a
> 'u32'.
>
> In practice this is not a problem though, because when we try to
> assign -2147450880 to the u32, that becomes 0x80008000, which was the
> intended result.
>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b283b25d8368..8c8e32b6c662 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -412,9 +412,9 @@
>  #define FW_BLC		_MMIO(0x20d8)
>  #define FW_BLC2		_MMIO(0x20dc)
>  #define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
> -#define   FW_BLC_SELF_EN_MASK      (1 << 31)
> -#define   FW_BLC_SELF_FIFO_MASK    (1 << 16) /* 945 only */
> -#define   FW_BLC_SELF_EN           (1 << 15) /* 945 only */
> +#define   FW_BLC_SELF_EN_MASK      (1U << 31)
> +#define   FW_BLC_SELF_FIFO_MASK    (1U << 16) /* 945 only */
> +#define   FW_BLC_SELF_EN           (1U << 15) /* 945 only */

We have the REG_GENMASK* and REG_BIT* macros for exactly this purpose.

BR,
Jani.


>  #define MM_BURST_LENGTH     0x00700000
>  #define MM_FIFO_WATERMARK   0x0001F000
>  #define LM_BURST_LENGTH     0x00000700

-- 
Jani Nikula, Intel
