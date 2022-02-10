Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B59BD4B0504
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 06:27:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D80310E712;
	Thu, 10 Feb 2022 05:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B12E10E712
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 05:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644470864; x=1676006864;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=j0wg1PqaRgR7BGaiVkABkr0fRyuDJESw/gDe2Yr0i3I=;
 b=XbXZ2HTPXnE3F/NC+49ht0kkjfhQqn+4lV6NzSgXwuZpM97WDLZE6WoG
 Fn1jK6Uok0KLKLdD4y1VrPrrcogfzFRjcYFuRhDWKvWw348iuY/xE3UH0
 f0igMxtlAGoP3lpoore2qEMUlIVjkfwGu1Z6MKgpbLnMaFuQDKQ6LgZb6
 DPjrXtnPW1VjYJnj/mqPDfkvabrxA0TonJ5NoLNsj+BrZKug5RADUqBjb
 GzQXGieAAGkCfVwvUIFtOt/N/TqPntJcccr4m+WhuovomEFtpbLGaTE2Z
 tqLxSS2rVGMRg1tw7uiDBfYtOhdb7gTIDjG2vG5pEtAATwSXs1ZAl0/pw w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="335826877"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="335826877"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 21:27:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="679028788"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 21:27:32 -0800
Date: Wed, 9 Feb 2022 21:27:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Chuansheng Liu <chuansheng.liu@intel.com>
Message-ID: <YgSiQ9cnhGDSteBi@mdroper-desk1.amr.corp.intel.com>
References: <20220210050501.87795-1-chuansheng.liu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220210050501.87795-1-chuansheng.liu@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 10, 2022 at 01:05:01PM +0800, Chuansheng Liu wrote:
> Current DMC_DEBUG3(_MMIO(0x101090)) address is for TGL,
> it is not wrong for DG1. Just like commit 5bcc95ca382e
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

It looks like some future igpu platforms will likely also use this new
register offset, but those are a bit down the road; we can cross that
bridge when we get to it.  This change looks correct for now.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

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
> -- 
> 2.25.0.rc2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
