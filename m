Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED3BA22CAF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 12:48:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15F1910E943;
	Thu, 30 Jan 2025 11:48:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fNKmNySn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8742610E93E;
 Thu, 30 Jan 2025 11:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738237685; x=1769773685;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=zPRKYSkSIp1B597dOBZGSw48PZBo7z7JREirRyHtzoo=;
 b=fNKmNySneu7DB5FF2psA/OAHYH8fLIfkQ+Y8H6MlONKTUnTd0Yz3Y8Yj
 byQfgsXCWhNoGAFzKNWQxaa/iQNPUPCKUVgaUKdquCA2qaVamgO5b7U+t
 oT70uVE8dgw50FxWjfEC+DmN4CmMx7M0HC2silhVtU+IbEAL/nCijMmHp
 LgThAQy1xdQL7zrG0Hox5bBHIeMHUt2RE093/Wjlle8CRjn9GF7uX44E3
 o8g+rVUnd28XtsKMKMvFA+o/9QjdrGAExtT9vWnQTxqz/XOxXZF8jbB/r
 eHOTk3+uHNBRAyNfbSw31xRBN8bd7r1dTXfrvxjIoV5RsDnBfzDbQVf9J A==;
X-CSE-ConnectionGUID: GlHFZGHYTDGju/qFspBl1g==
X-CSE-MsgGUID: /xtNv50CTrWufK9igzFkSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="26380638"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="26380638"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:47:54 -0800
X-CSE-ConnectionGUID: NOiYoa8cRm+bYw5dV1USqg==
X-CSE-MsgGUID: CGEM7uXOSOef8l6i7irgzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="109112439"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:47:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 01/17] drm/i915/dsi: Use TRANS_DDI_FUNC_CTL's own port
 width macro
In-Reply-To: <20250129200221.2508101-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-2-imre.deak@intel.com>
Date: Thu, 30 Jan 2025 13:47:49 +0200
Message-ID: <87ed0k8qvu.fsf@intel.com>
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

On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> The format of the port width field in the DDI_BUF_CTL and the
> TRANS_DDI_FUNC_CTL registers are different starting with MTL, where the
> x3 lane mode for HDMI FRL has a different encoding in the two registers.
> To account for this use the TRANS_DDI_FUNC_CTL's own port width macro.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ee1c3fb500a73..11bfb357508b7 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -809,8 +809,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
>  		/* select data lane width */
>  		tmp = intel_de_read(display,
>  				    TRANS_DDI_FUNC_CTL(display, dsi_trans));
> -		tmp &= ~DDI_PORT_WIDTH_MASK;
> -		tmp |= DDI_PORT_WIDTH(intel_dsi->lane_count);
> +		tmp &= ~TRANS_DDI_PORT_WIDTH_MASK;
> +		tmp |= TRANS_DDI_PORT_WIDTH(intel_dsi->lane_count);
>  
>  		/* select input pipe */
>  		tmp &= ~TRANS_DDI_EDP_INPUT_MASK;

-- 
Jani Nikula, Intel
