Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F383499610B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 09:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ECD410E669;
	Wed,  9 Oct 2024 07:39:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KSwTYLOt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 141FD10E668;
 Wed,  9 Oct 2024 07:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728459564; x=1759995564;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ofhlZXFTJPkjuRFFPFDIW3i/XXFLKCPu3K5sMd+75Fc=;
 b=KSwTYLOtaK60mmvyTG8bXn/teru7knWa9lgAJwr5Y4pos+zARBnSncWm
 o95LL4uSkQXq+pP9QHTFrk87BJmB4L4RIMJKe4NwV0JHN6D4oOCjctPjJ
 znB0GAbJOHcBPeS+aiFAUhYOIlY8OBgd3PTc9sl+100PSWkytEaWeoYjt
 oXOYwR+Fnx+G4h0plu0SybiE2k9vgapDXRANwKVfezRJQTU5GuYK1EgKt
 /FzN7i6ErYyqQH1RBJsd8fLfqCrjTHPiK8UBAKxyeKjt/5TQFtHYkvWB8
 PgYrsarbp5g9/RcVrI5D0CXU7g7XE35nsKJb8MV1kMsS47hFkppUhRTX4 Q==;
X-CSE-ConnectionGUID: m+MtiWhgSLOdAYb4gEyk1A==
X-CSE-MsgGUID: GR8DiqbQRoOed4gKpGkHVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27621216"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27621216"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:39:23 -0700
X-CSE-ConnectionGUID: 7qyigyLxSkioIi38RwlyxA==
X-CSE-MsgGUID: qpA70XrVRT+XNh/bmOYb+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="99485072"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:39:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
Subject: Re: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose
 HDCP_LINE_REKEY bit
In-Reply-To: <20241008223741.82790-7-matthew.s.atwood@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-7-matthew.s.atwood@intel.com>
Date: Wed, 09 Oct 2024 10:39:18 +0300
Message-ID: <87plo9bu8p.fsf@intel.com>
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
> DISPLAY_VER() >= 30 has the HDCP_LINE_REKEY bit redefined from
> bit 12 to bit 14. Create a macro to choose the correct bit based
> on DISPLAY_VER().
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
>  drivers/gpu/drm/i915/i915_reg.h           | 2 +-
>  2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..e9b0414590ce 100644
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
> +				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display));
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d30459f8d1cb..da65500cd0c8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3832,7 +3832,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
>  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> -#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
> +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display)	(DISPLAY_VER(display) >= 30 ? REG_BIT(15) : REG_BIT(12))

Do we really want to extend this style to individual bits?

BR,
Jani.

>  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)

-- 
Jani Nikula, Intel
