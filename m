Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE169F8F14
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 10:36:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3547D10EF4A;
	Fri, 20 Dec 2024 09:36:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UoxxJAp2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8DC10EF4A;
 Fri, 20 Dec 2024 09:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734687374; x=1766223374;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J9PB6LoWnEE33eYaGCMVZmpsbiBQNqStRMGWq5uIq30=;
 b=UoxxJAp2VCGhoOGFF600+rnF7NYbBwO9guy+4BbWKGKAf2ys9vihKW54
 1oRDZCytWtAnk15Tk7QZIH/DoCpejL7JwCR2U4lUlpLgfvPWJ6G7aarGC
 QOvHH1FHqrtXd9lH8r95dx+BGMgbf3Zt0rKNpDqL0tswLhixWafshKVD5
 3KX6dt9Jyl64Q0XtGoKl1QINvL45SSBVJ4AghXhQSJS3NFXO3dtfAtORf
 sslF76+ax8D4Xm33QVYNW0vdDLn+H+ooyFZZXActxwflwQSgyvss/Q7cZ
 2bfQn56QwLKyzLsyfn+u+WHUh/YAVN1l8cBnYPDTYskFdrwRWMxAlH83y Q==;
X-CSE-ConnectionGUID: iwYtWBV4S8WcRff9vH1qXg==
X-CSE-MsgGUID: 6r+3pQDMTYqi1m8ZsRpXgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="45838836"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="45838836"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 01:36:14 -0800
X-CSE-ConnectionGUID: 2GRqCSOpRWKO4s+Sz5y1fw==
X-CSE-MsgGUID: n+urxKeVTV+qjBqTW9NeSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98663144"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Dec 2024 01:36:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2024 11:36:10 +0200
Date: Fri, 20 Dec 2024 11:36:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/10] drm/i915/psr: Add register definitions for SFF_CTL
 and CFF_CTL registers
Message-ID: <Z2U6ij6MggV1iptS@intel.com>
References: <20241213063528.2759659-1-jouni.hogander@intel.com>
 <20241213063528.2759659-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241213063528.2759659-5-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Dec 13, 2024 at 08:35:22AM +0200, Jouni Högander wrote:
> Add register definitions for SFF_CTL and CFF_CTL registers. Name them as
> LNL_SFF_CTL and LNL_CFF_CTL.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 9ad7611506e8..a24f4d76c98a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -251,6 +251,14 @@
>  #define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)
>  
> +#define _LNL_SFF_CTL_A						0x60918
> +#define LNL_SFF_CTL(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _LNL_SFF_CTL_A)

I don't think we have any funky offset transcoders on new
hardware do we? In that case you can just use the simpler
_MMIO_TRANS().

> +#define  LNL_SFF_CTL_SF_SINGLE_FULL_FRAME			REG_BIT(1)
> +
> +#define _LNL_CFF_CTL_A						0x6091c
> +#define LNL_CFF_CTL(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _LNL_CFF_CTL_A)
> +#define  LNL_CFF_CTL_SF_CONTINUOUS_FULL_FRAME			REG_BIT(1)
> +
>  /* PSR2 Early transport */
>  #define _PIPE_SRCSZ_ERLY_TPT_A	0x70074
>  #define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
