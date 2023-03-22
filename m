Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C506C4CCE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 15:03:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC9110E366;
	Wed, 22 Mar 2023 14:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 920A410E366
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679493833; x=1711029833;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=W8cwuFVhLxFaC1lPr5+X5I1AkgJHpLnFUbyGXrwl9Nw=;
 b=Rvs3JduHLydQpY/yjGFC8bUZ36Yj6Y/9jJ1B5LXrFCw/pTpmROAlBlbD
 fJdDvBFtCXBJL9MRY8vQf9/6d/42l7YVwProyJQOgYZcA17danK6XjnJ/
 bd7R5k1bHEUuzHbW28SbN7f2xIqjZpPXOyzXkdZGMaLfzfj6A8Ts3dTQP
 roA/o4/u16ObXxCLZkYoUt6xSzuXhmHiFjRny5f8xWS3D9DBc1S9dVb/G
 Qrs/6iIxhh2cjmo72t5GF2RAznBr4uhiDIlHExO3PC3bf9/noYFp7Ib0+
 tY26NI7xZo/WiI7xDMN6CHOxLkwo7+LPD5fYf96MaG+NVnOdauspiQPVk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="404101388"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="404101388"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 07:03:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="684317767"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="684317767"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 22 Mar 2023 07:03:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Mar 2023 16:03:49 +0200
Date: Wed, 22 Mar 2023 16:03:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZBsKxeHrz8ejK8p3@intel.com>
References: <20230322010138.663264-1-vinod.govindapillai@intel.com>
 <20230322010138.663264-3-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230322010138.663264-3-vinod.govindapillai@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v1 2/2] drm/i915/reg: use the correct
 register to access SAGV block time
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 22, 2023 at 03:01:38AM +0200, Vinod Govindapillai wrote:
> Wrong register address is used to read the SAG block time. Fix
> the register address according to the bspec.
> 
> Bspec: 64608
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index ae8ba090c0f4..b2ed3c0fee4c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7716,7 +7716,7 @@ enum skl_power_gate {
>  #define  MTL_LATENCY_LEVEL_EVEN_MASK	REG_GENMASK(12, 0)
>  #define  MTL_LATENCY_LEVEL_ODD_MASK	REG_GENMASK(28, 16)
>  
> -#define MTL_LATENCY_SAGV		_MMIO(0x4578b)

I'm again thinking that it would nice to have the code validate
that our register offsets are actually sane. We had one other
case like this in the past, which was an FBC registers where
bspec had basically an ocr bug (B vs. 8).

> +#define MTL_LATENCY_SAGV		_MMIO(0x4578c)
>  #define   MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
>  
>  #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
