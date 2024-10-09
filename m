Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD699996120
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 09:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441D810E66B;
	Wed,  9 Oct 2024 07:41:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FaIG9fsP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82C5B10E66B;
 Wed,  9 Oct 2024 07:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728459718; x=1759995718;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PvmsdmhwhOI3J9rbhKcF9dLB0UKfeWdeNDuQm1fmM/Q=;
 b=FaIG9fsPgX4f7toIDaaIUoPTBc9aYhW72EMFM4zAaaaj3bdL3Z8GyCD4
 9d73J5oPQ05KiwItslWeHMRN7jRIhBR6ssXkcKbYUEv0RsuoWG/wTFaoR
 TUFxhCeesWaLmY9TK+8xX+sxufU9u0Cz+mTCAex2DpwY/pH+fgSbv+zWr
 5RA5YmOw8Jxm937LSQFaZ+69yyB9C/0voa+cOoBVEG3K0GW2GqhlwNeq0
 gF6SkYibYHYTeeipPWzuqPR8jm0BVn1KSzuRLmXaGEwYrtcqt9ZMX0whG
 CTLjMZ4FfT+cqa02m58qErNCj/BZ26TcHtTH88xZJkQVmAJNDGv6H37bA Q==;
X-CSE-ConnectionGUID: BMhufP1QRkyQj1q/9pVUYQ==
X-CSE-MsgGUID: PfcdxWCWRxykhHLmBmpIcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27190905"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27190905"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:41:58 -0700
X-CSE-ConnectionGUID: rx2xBQCiQzW+w2KJOqukJg==
X-CSE-MsgGUID: m9zgO5lSSbSWb/m1eU/RNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="75750374"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:41:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
Subject: Re: [PATCH 08/10] drm/i915/xe3lpd: Add new bit range of MAX swing
 setup
In-Reply-To: <20241008223741.82790-9-matthew.s.atwood@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-9-matthew.s.atwood@intel.com>
Date: Wed, 09 Oct 2024 10:41:52 +0300
Message-ID: <87msjdbu4f.fsf@intel.com>
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

On Tue, 08 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Add new bit range for Max PHY Swing Setup in PORT_ALPM_CTL
> register for DISPLAY_VER >= 30.
>
> Bspec: 70277
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 +++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 55f3ae1e68c9..100ce776a203 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -334,7 +334,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  		intel_de_write(display,
>  			       PORT_ALPM_CTL(port),
>  			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
> -			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
> +			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(display, 15) |
>  			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
>  			       PORT_ALPM_CTL_SILENCE_PERIOD(
>  				       intel_dp->alpm_parameters.silence_period_sym_clocks));
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 0841242543ca..046e400704e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -299,7 +299,9 @@
>  #define PORT_ALPM_CTL(port)			_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
>  #define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
>  #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
> -#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
> +#define  PTL_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(25, 20)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(display, val)	(DISPLAY_VER(display) >= 30 ? REG_FIELD_PREP(PTL_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val) :\
> +							 REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val))

I'm inclined to think this is not a good direction. Please define
separate macros for different platforms.

BR,
Jani.


>  #define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK	REG_GENMASK(19, 16)
>  #define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)
>  #define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK	REG_GENMASK(7, 0)

-- 
Jani Nikula, Intel
