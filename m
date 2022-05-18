Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B21D52BB40
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 14:54:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32BDE10E19E;
	Wed, 18 May 2022 12:53:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40A810E19E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 12:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652878436; x=1684414436;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fF2aRdNASMDRbhvKtOXgxfAP3tzckkMF/TprPvkkpsk=;
 b=CXAzLBP9oc2pFYoIdtG5rrSusrPHvc9hME3+V5KLEYjERc8XZ5yADok1
 /5EUb1kYnfkt7ejDo4MGWkx1i0+0nzRHAoR49bkzrrNJFzki3q7yY6ukP
 8ryd7JCHTV1X33oUtjm4su8Q0y2KiK5GzXtC30TDQzpm5r0SgEtCUpYdV
 yj6CH/aUWYNXOl0VLZ/FrPMZLHrrFVQZWhvMjKJWWoqnA2w4UEjZSjrEB
 lUtGyc/MPCd0vkugXZ+bRAHksF1GHXZwsCA2uSoRciCyOTFmk8w5GyDLn
 yarf5hVgJ+HDwjLub76CrJAgS/i5ahamYLc+HPuPoxsEir8dIjClpdjHk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="259224265"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="259224265"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 05:53:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="575061858"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga007.fm.intel.com with SMTP; 18 May 2022 05:53:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 May 2022 15:53:41 +0300
Date: Wed, 18 May 2022 15:53:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YoTsVS5AaJfNe9hE@intel.com>
References: <20220518113315.1305027-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220518113315.1305027-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/reg: fix undefined behavior
 due to shift overflowing the constant
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
Cc: intel-gfx@lists.freedesktop.org, Borislav Petkov <bp@suse.de>,
 Randy Dunlap <rdunlap@infradead.org>, Ruiqi GONG <gongruiqi1@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 18, 2022 at 02:33:14PM +0300, Jani Nikula wrote:
> Use REG_GENMASK() and REG_FIELD_PREP() to avoid errors due to
> -fsanitize=shift.

I presume it's just unhappy about shifting into the sign bit?

Changes look correct:
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> References: https://lore.kernel.org/r/20220405151517.29753-12-bp@alien8.de
> Reported-by: Borislav Petkov <bp@suse.de>
> Reported-by: Ruiqi GONG <gongruiqi1@huawei.com>
> Cc: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 321a08281a3f..dff3f88d8090 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7607,25 +7607,25 @@ enum skl_power_gate {
>  #define _PORT_CLK_SEL_A			0x46100
>  #define _PORT_CLK_SEL_B			0x46104
>  #define PORT_CLK_SEL(port) _MMIO_PORT(port, _PORT_CLK_SEL_A, _PORT_CLK_SEL_B)
> -#define  PORT_CLK_SEL_LCPLL_2700	(0 << 29)
> -#define  PORT_CLK_SEL_LCPLL_1350	(1 << 29)
> -#define  PORT_CLK_SEL_LCPLL_810		(2 << 29)
> -#define  PORT_CLK_SEL_SPLL		(3 << 29)
> -#define  PORT_CLK_SEL_WRPLL(pll)	(((pll) + 4) << 29)
> -#define  PORT_CLK_SEL_WRPLL1		(4 << 29)
> -#define  PORT_CLK_SEL_WRPLL2		(5 << 29)
> -#define  PORT_CLK_SEL_NONE		(7 << 29)
> -#define  PORT_CLK_SEL_MASK		(7 << 29)
> +#define  PORT_CLK_SEL_MASK		REG_GENMASK(31, 29)
> +#define  PORT_CLK_SEL_LCPLL_2700	REG_FIELD_PREP(PORT_CLK_SEL_MASK, 0)
> +#define  PORT_CLK_SEL_LCPLL_1350	REG_FIELD_PREP(PORT_CLK_SEL_MASK, 1)
> +#define  PORT_CLK_SEL_LCPLL_810		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 2)
> +#define  PORT_CLK_SEL_SPLL		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 3)
> +#define  PORT_CLK_SEL_WRPLL(pll)	REG_FIELD_PREP(PORT_CLK_SEL_MASK, 4 + (pll))
> +#define  PORT_CLK_SEL_WRPLL1		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 4)
> +#define  PORT_CLK_SEL_WRPLL2		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 5)
> +#define  PORT_CLK_SEL_NONE		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 7)
>  
>  /* On ICL+ this is the same as PORT_CLK_SEL, but all bits change. */
>  #define DDI_CLK_SEL(port)		PORT_CLK_SEL(port)
> -#define  DDI_CLK_SEL_NONE		(0x0 << 28)
> -#define  DDI_CLK_SEL_MG			(0x8 << 28)
> -#define  DDI_CLK_SEL_TBT_162		(0xC << 28)
> -#define  DDI_CLK_SEL_TBT_270		(0xD << 28)
> -#define  DDI_CLK_SEL_TBT_540		(0xE << 28)
> -#define  DDI_CLK_SEL_TBT_810		(0xF << 28)
> -#define  DDI_CLK_SEL_MASK		(0xF << 28)
> +#define  DDI_CLK_SEL_MASK		REG_GENMASK(31, 28)
> +#define  DDI_CLK_SEL_NONE		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x0)
> +#define  DDI_CLK_SEL_MG			REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x8)
> +#define  DDI_CLK_SEL_TBT_162		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xC)
> +#define  DDI_CLK_SEL_TBT_270		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xD)
> +#define  DDI_CLK_SEL_TBT_540		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xE)
> +#define  DDI_CLK_SEL_TBT_810		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xF)
>  
>  /* Transcoder clock selection */
>  #define _TRANS_CLK_SEL_A		0x46140
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
