Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA184B0B5F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 11:50:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9009110E7F5;
	Thu, 10 Feb 2022 10:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1389710E7F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 10:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644490214; x=1676026214;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=F0zZ9FXJT/e5xqD2e9FywvyCi1xqXIlCFFMcHsyA2eQ=;
 b=kxuuD+nzSU96bfKa+xE5OlRvcwKC7ldlt2gAfq+cfhnUect1+WX/oRf3
 Ak0msfglGuIq++FMaKPJyyMzZ22M0UcEXS+pSsjheMaGI+PxfEPzWtrrL
 NKguou0TYWu9j93HQFMUCyN9P7KqlC+9Zpr+OxvCQjdsz2cuhqY9oHpj8
 VuVfqx6q6vZldd7viknsXS6GFHGw7+Hzx+vRde1tSoWqu899Xx822Cx0R
 UvQ5bUIwqD+e8/9leTNFwAq2hVpktP9wgFvOcemer0NmqfzM+muBFmetK
 Tw4KHZ9UrhsN0n3w81JnlgzBjVl6MW3H78AnojRsswI8a18VemHtlUZOD A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="229432215"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="229432215"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:50:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="526432452"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:50:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chuansheng Liu <chuansheng.liu@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220210050501.87795-1-chuansheng.liu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220210050501.87795-1-chuansheng.liu@intel.com>
Date: Thu, 10 Feb 2022 12:50:08 +0200
Message-ID: <87k0e3807z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 10 Feb 2022, Chuansheng Liu <chuansheng.liu@intel.com> wrote:
> Current DMC_DEBUG3(_MMIO(0x101090)) address is for TGL,
> it is not wrong for DG1. Just like commit 5bcc95ca382e

wrong, not "not wrong".

BR,
Jani.

> ("drm/i915/dg1: Update DMC_DEBUG register"), correct
> this issue for DG1 platform to avoid wrong register
> being read.
>
> BSpec: 49788
>
> Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h                      | 3 ++-
>  2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index f4de004d470f..f6c4ad8fce19 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -474,8 +474,8 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
>  		 * reg for DC3CO debugging and validation,
>  		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
>  		 */
> -		seq_printf(m, "DC3CO count: %d\n",
> -			   intel_de_read(dev_priv, DMC_DEBUG3));
> +		seq_printf(m, "DC3CO count: %d\n", intel_de_read(dev_priv, IS_DGFX(dev_priv) ?
> +					DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
>  	} else {
>  		dc5_reg = IS_BROXTON(dev_priv) ? BXT_DMC_DC3_DC5_COUNT :
>  						 SKL_DMC_DC3_DC5_COUNT;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 87c92314ee26..9c215a6df659 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5632,7 +5632,8 @@
>  #define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
>  #define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
>  
> -#define DMC_DEBUG3		_MMIO(0x101090)
> +#define TGL_DMC_DEBUG3		_MMIO(0x101090)
> +#define DG1_DMC_DEBUG3		_MMIO(0x13415c)
>  
>  /* Display Internal Timeout Register */
>  #define RM_TIMEOUT		_MMIO(0x42060)

-- 
Jani Nikula, Intel Open Source Graphics Center
