Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DC1B38176
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 13:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D4610E7DE;
	Wed, 27 Aug 2025 11:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WHfe3YXl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E287910E7E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 11:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756294905; x=1787830905;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=udVoQTdkTcXIeNYGkLzg9TZjGXCs2NY3sd/JwstbJuU=;
 b=WHfe3YXlIhM5B+TCPD1MhcrvLWhu9rFaDWFRBKiBJzjNR7uFSan6Qwwo
 joLDNOJyj7feWp/TBbCBd4/bRlImNm5Rc/pzX4JJfACBxjMWCpIjOVTCP
 sdNFEm75NVXuxQkQUfRYik30rdhGjgoAkt3fpSbXcwqFjlLOw+uzRnvku
 r2RXMU1LPx1bkH/3goczem1ZxlbcSBeropaUZuV7NwA9Y747UHxjiNMCe
 BOj2gX3PzmVh4EOxW4K/8b3jf9dn86pm2O9xvXuv33Xc47VDZlRaDh1Os
 j3qv4Xiq/tY0XkYvf73gvzhG92bzM96zHZ9VxBTAoAbbi35cp+GNcVBna w==;
X-CSE-ConnectionGUID: iK8nsbCTSJe0l+BeLY+CTA==
X-CSE-MsgGUID: mYcv+F6oQ86mJlCiSvDG9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="68814513"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="68814513"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 04:41:43 -0700
X-CSE-ConnectionGUID: c2ZSD6xxRWO0EeNNOim9+A==
X-CSE-MsgGUID: usp09K0fSwqPJGgjFzMBug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="175119857"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 04:41:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915: use REG_BIT on FW_BLC_SELF_* macros
In-Reply-To: <20250827111109.401604-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250827111109.401604-1-luciano.coelho@intel.com>
Date: Wed, 27 Aug 2025 14:41:38 +0300
Message-ID: <dda50e90d75d1d3f767be0c89857032c7bd91328@intel.com>
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
> Use REG_BIT() instead of open coding the shift in the FW_BLC_SELF_*
> macro definitions to avoid potentially typing them as 'int'.
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>
> In v2:
>    * changed to use REG_BIT() instead (Jani)
>
>
>  drivers/gpu/drm/i915/i915_reg.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b283b25d8368..b4188e94c9a2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -412,9 +412,9 @@
>  #define FW_BLC		_MMIO(0x20d8)
>  #define FW_BLC2		_MMIO(0x20dc)
>  #define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
> -#define   FW_BLC_SELF_EN_MASK      (1 << 31)
> -#define   FW_BLC_SELF_FIFO_MASK    (1 << 16) /* 945 only */
> -#define   FW_BLC_SELF_EN           (1 << 15) /* 945 only */
> +#define   FW_BLC_SELF_EN_MASK      REG_BIT((31)
> +#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
> +#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
>  #define MM_BURST_LENGTH     0x00700000
>  #define MM_FIFO_WATERMARK   0x0001F000
>  #define LM_BURST_LENGTH     0x00000700

-- 
Jani Nikula, Intel
