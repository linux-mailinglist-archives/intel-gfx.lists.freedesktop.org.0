Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4D19D2523
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 12:46:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0BA310E62E;
	Tue, 19 Nov 2024 11:46:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IV15yscZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ED8710E0A9;
 Tue, 19 Nov 2024 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732016813; x=1763552813;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=KACbkemFB37YIOPQKGAbH5NvMgR8ak79NgowQgX5S6E=;
 b=IV15yscZ385uXNx2UShrfxR2F57eaD1xBjPfpC66Z4kNaBEQkHAvmSiV
 ReifZFYeuB5ttrSA6rOaWp7MgWAr8pgqOJOaBdugW6w6hWp4nRWlBWgIA
 FjiXBuLZrORoL0BRwqLKUSExoVJEoBAwmPyuNuSP/P1TLSXKBJy1revzm
 urOTRHdV5knGOjybhaup+C+daaPwGFcgfbnqKzUcpqAVKk8sFjh+C2Xve
 C5J2epzY8gvWszMlHIOcXrNosBknphAhJJIPY7Af1E1t13RWJEOKxIpiY
 mqBqacIhBgAQVKLyGj4jHH3d9t+pAqIh/axIFO1yCmCcHNcY4f2r3rosO A==;
X-CSE-ConnectionGUID: DkBbUABuSLmdvfR0AOAF7g==
X-CSE-MsgGUID: JYsCR5YXT1eeEmRaZZUurQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="31935016"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="31935016"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 03:46:53 -0800
X-CSE-ConnectionGUID: 1++Gda+MQpyLcK3Esnaa4Q==
X-CSE-MsgGUID: ma0Kf1P9QIKGN1uQhKGmSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="90336644"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 03:46:51 -0800
Date: Tue, 19 Nov 2024 13:47:26 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/11] drm/i915/reg: convert DP_TP_CTL/DP_TP_STATUS to
 REG_BIT() and friends
Message-ID: <Zzx6zqUeUzUQlAgc@ideak-desk.fi.intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
 <9c54e8d7a3ff5039e4537cccb97214e63b9805c9.1731941270.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9c54e8d7a3ff5039e4537cccb97214e63b9805c9.1731941270.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 18, 2024 at 04:49:01PM +0200, Jani Nikula wrote:
> Use the modern style for defining register contents. Expand the status
> register contents a bit.
> 
> TODO: The payload mapping fields have more bits on more recent
> platforms.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 57 +++++++++++++++++----------------
>  1 file changed, 30 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7a35be56b7ef..9c198405349d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3823,25 +3823,26 @@ enum skl_power_gate {
>  #define _TGL_DP_TP_CTL_A		0x60540
>  #define DP_TP_CTL(port) _MMIO_PORT(port, _DP_TP_CTL_A, _DP_TP_CTL_B)
>  #define TGL_DP_TP_CTL(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_CTL_A)
> -#define  DP_TP_CTL_ENABLE			(1 << 31)
> -#define  DP_TP_CTL_FEC_ENABLE			(1 << 30)
> -#define  DP_TP_CTL_MODE_SST			(0 << 27)
> -#define  DP_TP_CTL_MODE_MST			(1 << 27)
> -#define  DP_TP_CTL_FORCE_ACT			(1 << 25)
> -#define  DP_TP_CTL_TRAIN_PAT4_SEL_MASK		(3 << 19)
> -#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4A		(0 << 19)
> -#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4B		(1 << 19)
> -#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4C		(2 << 19)
> -#define  DP_TP_CTL_ENHANCED_FRAME_ENABLE	(1 << 18)
> -#define  DP_TP_CTL_FDI_AUTOTRAIN		(1 << 15)
> -#define  DP_TP_CTL_LINK_TRAIN_MASK		(7 << 8)
> -#define  DP_TP_CTL_LINK_TRAIN_PAT1		(0 << 8)
> -#define  DP_TP_CTL_LINK_TRAIN_PAT2		(1 << 8)
> -#define  DP_TP_CTL_LINK_TRAIN_PAT3		(4 << 8)
> -#define  DP_TP_CTL_LINK_TRAIN_PAT4		(5 << 8)
> -#define  DP_TP_CTL_LINK_TRAIN_IDLE		(2 << 8)
> -#define  DP_TP_CTL_LINK_TRAIN_NORMAL		(3 << 8)
> -#define  DP_TP_CTL_SCRAMBLE_DISABLE		(1 << 7)
> +#define   DP_TP_CTL_ENABLE			REG_BIT(31)
> +#define   DP_TP_CTL_FEC_ENABLE			REG_BIT(30)
> +#define   DP_TP_CTL_MODE_MASK			REG_BIT(27)
> +#define   DP_TP_CTL_MODE_SST			REG_FIELD_PREP(DP_TP_CTL_MODE_MASK, 0)
> +#define   DP_TP_CTL_MODE_MST			REG_FIELD_PREP(DP_TP_CTL_MODE_MASK, 1)
> +#define   DP_TP_CTL_FORCE_ACT			REG_BIT(25)
> +#define   DP_TP_CTL_TRAIN_PAT4_SEL_MASK		REG_GENMASK(20, 19)
> +#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4A		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 0)
> +#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4B		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 1)
> +#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4C		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 2)
> +#define   DP_TP_CTL_ENHANCED_FRAME_ENABLE	REG_BIT(18)
> +#define   DP_TP_CTL_FDI_AUTOTRAIN		REG_BIT(15)
> +#define   DP_TP_CTL_LINK_TRAIN_MASK		REG_GENMASK(10, 8)
> +#define   DP_TP_CTL_LINK_TRAIN_PAT1		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 0)
> +#define   DP_TP_CTL_LINK_TRAIN_PAT2		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 1)
> +#define   DP_TP_CTL_LINK_TRAIN_PAT3		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 4)
> +#define   DP_TP_CTL_LINK_TRAIN_PAT4		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 5)
> +#define   DP_TP_CTL_LINK_TRAIN_IDLE		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 2)
> +#define   DP_TP_CTL_LINK_TRAIN_NORMAL		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 3)
> +#define   DP_TP_CTL_SCRAMBLE_DISABLE		REG_BIT(7)
>  
>  /* DisplayPort Transport Status */
>  #define _DP_TP_STATUS_A			0x64044
> @@ -3849,14 +3850,16 @@ enum skl_power_gate {
>  #define _TGL_DP_TP_STATUS_A		0x60544
>  #define DP_TP_STATUS(port) _MMIO_PORT(port, _DP_TP_STATUS_A, _DP_TP_STATUS_B)
>  #define TGL_DP_TP_STATUS(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_STATUS_A)
> -#define  DP_TP_STATUS_FEC_ENABLE_LIVE		(1 << 28)
> -#define  DP_TP_STATUS_IDLE_DONE			(1 << 25)
> -#define  DP_TP_STATUS_ACT_SENT			(1 << 24)
> -#define  DP_TP_STATUS_MODE_STATUS_MST		(1 << 23)
> -#define  DP_TP_STATUS_AUTOTRAIN_DONE		(1 << 12)
> -#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC2	(3 << 8)
> -#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC1	(3 << 4)
> -#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC0	(3 << 0)
> +#define   DP_TP_STATUS_FEC_ENABLE_LIVE		REG_BIT(28)
> +#define   DP_TP_STATUS_IDLE_DONE		REG_BIT(25)
> +#define   DP_TP_STATUS_ACT_SENT			REG_BIT(24)
> +#define   DP_TP_STATUS_MODE_STATUS_MST		REG_BIT(23)
> +#define   DP_TP_STATUS_AUTOTRAIN_DONE		REG_BIT(12)
> +#define   DP_TP_STATUS_STREAMS_ENABLED_MASK	REG_GENMASK(21, 19)

I assume the above is the 'Streams Enabled' field and that is bits 18:16
on the platforms I checked. Bits 21:19 is 'DP Init Status'.

> +#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC3_MASK REG_GENMASK(13, 12)
> +#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC2_MASK REG_GENMASK(9, 8)
> +#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC1_MASK	REG_GENMASK(5, 4)
> +#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC0_MASK	REG_GENMASK(1, 0)
>  
>  /* DDI Buffer Control */
>  #define _DDI_BUF_CTL_A				0x64000
> -- 
> 2.39.5
> 
