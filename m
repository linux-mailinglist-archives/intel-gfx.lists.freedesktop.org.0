Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56E993F9E3
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 17:56:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C04510E43A;
	Mon, 29 Jul 2024 15:56:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S1KROtfE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB5010E04F
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 15:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722268581; x=1753804581;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cggkAHpy+El3eM4TxuHFk7TN/H8L3wi9MqKb/Kbd+fE=;
 b=S1KROtfEC9SMCxceibl14Jm+IrtkeT2o/Hy+v84L7dMJb0nnk4p7//CG
 FxMLKoX4rfZK4lktcsl02b4H4/mMkw2SYjGoV59TzNKRflqQsSUze3umu
 F5x8oC4F2gVqZ/JjP87vzmU0iNxOFafbSMWataFuuThv4fvbhQUfrExI7
 QCzhAlcVfTSBlAsbu1tUmb9MqH4ofQk0voiV+zzuxVChyE7iPwXOxA1cD
 VLEsdHdYXG+fz9M3jY/wKSRg0rECOeBRsLQVMfYwybLNFZlF0i10zYIl+
 w8/4BwS1xPh/BMjK9wENVDr09s3RCZbQFeNaYM+HEt3cfdsUbSdvtWjvP g==;
X-CSE-ConnectionGUID: RKVo9wO0QW+DHIrOd1Hffw==
X-CSE-MsgGUID: JYBVcO49TfeYvG/2xaYdOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="20163810"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="20163810"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 08:56:20 -0700
X-CSE-ConnectionGUID: tc0lIcWzQtWZdV0WlrIwRQ==
X-CSE-MsgGUID: UTjr/N4oReGHB/BEYp5SLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53991449"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 08:56:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
In-Reply-To: <20240416093730.625486-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240416093730.625486-2-suraj.kandpal@intel.com>
Date: Mon, 29 Jul 2024 18:56:14 +0300
Message-ID: <87msm0xkdd.fsf@intel.com>
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

On Tue, 16 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Disable bit 29 of SCLKGATE_DIS register around pps sequence
> when we turn panel power on.
>
> --v2
> -Squash two commit together [Jani]
> -Use IS_DISPLAY_VER [Jani]
> -Fix multiline comment [Jani]
>
> Bspec: 49304
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
>  2 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 3078dfac7817..2b2cead22a7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -948,6 +948,14 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  		intel_de_posting_read(dev_priv, pp_ctrl_reg);
>  	}
>  
> +	/*
> +	 * WA: 16023567976
> +	 * Disable DPLS gating around power sequence.
> +	 */
> +	if (IS_DISPLAY_VER(dev_priv, 12, 14))
> +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> +			     DPLS_GATING_DISABLE, 1);
> +
>  	pp |= PANEL_POWER_ON;
>  	if (!IS_IRONLAKE(dev_priv))
>  		pp |= PANEL_POWER_RESET;
> @@ -958,6 +966,10 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  	wait_panel_on(intel_dp);
>  	intel_dp->pps.last_power_on = jiffies;
>  
> +	if (IS_DISPLAY_VER(dev_priv, 12, 14))
> +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> +			     DPLS_GATING_DISABLE, 0);
> +
>  	if (IS_IRONLAKE(dev_priv)) {
>  		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
>  		intel_de_write(dev_priv, pp_ctrl_reg, pp);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3f34efcd7d6c..1c2cd6cc254f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6250,6 +6250,10 @@ enum skl_power_gate {
>  #define  SFUSE_STRAP_DDIC_DETECTED	(1 << 1)
>  #define  SFUSE_STRAP_DDID_DETECTED	(1 << 0)
>  
> +/* SCLKGATE_DIS */

How is that comment helpful?

Can we find another file under display/ for this register?

BR,
Jani.

> +#define SCLKGATE_DIS			_MMIO(0xc2020)
> +#define  DPLS_GATING_DISABLE		REG_BIT(29)
> +
>  #define WM_MISC				_MMIO(0x45260)
>  #define  WM_MISC_DATA_PARTITION_5_6	(1 << 0)

-- 
Jani Nikula, Intel
