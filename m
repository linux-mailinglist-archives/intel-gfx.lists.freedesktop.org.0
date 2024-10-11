Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE52999ED8
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 10:21:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3340810E013;
	Fri, 11 Oct 2024 08:21:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bXRHqy5e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A8410E013;
 Fri, 11 Oct 2024 08:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728634861; x=1760170861;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vpxtSJnF9W17BvaBGieMV9WRLcm7/2iscnti8lX75bc=;
 b=bXRHqy5erXpIVMaHNpvUtOYYVeKoENWJbxZawhd2zf5V6PekyYKgYUkj
 b04Ib0Lz8C/IxE8/a6eMw+G6e3BQPw62evEXc1vAXcXGGcR4D5b9sBKAO
 sDML4/yt3INNw+CSWRJyahhvbBuJtaPajEMvTebKM5MRVr4kYWjkzstQl
 pAtqg2Z2ECLPW9yk416XDPwbez66nFxnL/lNQuFHXvyQcuq9ZPe8DG5M0
 zrQInGdOcIITB2b+ZjBBZHXnCXl4cR8ZVVJ3xoHK5pY2pv4YlRFaOqWSp
 HtMTOSex2+Qsot4zm0rFtkibvqHTZGioAAE6lGAUs3f7yt6xkhCV4IpDt g==;
X-CSE-ConnectionGUID: j6Awj3+GSbe3YouUxnEkmw==
X-CSE-MsgGUID: MQ+6yeroTniTd8HIvZ02Rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="45501506"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="45501506"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:20:51 -0700
X-CSE-ConnectionGUID: QBb6p3CFTGSr+yiFyYuFRQ==
X-CSE-MsgGUID: aGORzykFQqWl8Q3gvhH1Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="76492462"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:20:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
Subject: Re: [PATCH v2 06/10] drm/i915/xe3lpd: Include hblank restriction
 for xe3lpd
In-Reply-To: <20241010224311.50133-7-matthew.s.atwood@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
 <20241010224311.50133-7-matthew.s.atwood@intel.com>
Date: Fri, 11 Oct 2024 11:20:34 +0300
Message-ID: <87h69j6ofh.fsf@intel.com>
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

On Thu, 10 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>
> hblank restriction now includes all of xe3.
>
> v2: add additional definition instead of function, commit message typo
> fix and update.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
>  drivers/gpu/drm/i915/i915_reg.h           | 1 +
>  2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..46d5019499a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -47,10 +47,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
>  				     0, HDCP_LINE_REKEY_DISABLE);
>  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
> -			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
> +			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER) ||
> +			 DISPLAY_VER(display) >= 30)
>  			intel_de_rmw(display,
>  				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> -				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);

This now uses bit 15 also for display version < 30.

>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d30459f8d1cb..fc30e0056b07 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3833,6 +3833,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
>  #define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
> +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)

-- 
Jani Nikula, Intel
