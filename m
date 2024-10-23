Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 613A19AC66B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 11:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB6810E7A0;
	Wed, 23 Oct 2024 09:28:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P+tN31qh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F6510E7A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 09:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729675696; x=1761211696;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YIVryWcv9e3snr0cCJaHlHmZUMIAtvddVorSWinorDI=;
 b=P+tN31qhtZh+7yVOvbv+faTy5LwSD234dLARLKjwqSo1pYs2DECoa7C+
 3CyZ9BsSPWpJ4LdqwC39xrgSdX+BlJheHH+lSSYiTpb7m0dTdhh17i9dH
 av+wSBC5oDP21X4auRZoedaCgzbL1+9mobEa35ot29MVN3WfAcvkKtGW9
 7mIqoc3mkjps8oER722LSpSsOrAlMPMwtIwVa7CXc1ICHUOryePnVtWFB
 8bmzN7UljoyFPn3bTGn8VEcdFpNQ5G5nS/SVy5YC0UvHyIifGoAvO9PX7
 I8ktK8EbDAi8lXva4tv1uBdTcWTdAstva8weGobZZpUMamYbxSU/sYrKi g==;
X-CSE-ConnectionGUID: MoroFxP0TV669hcYd+W38w==
X-CSE-MsgGUID: Vb+h2yvMQp2zJJZQ85S1XQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29366724"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29366724"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 02:28:15 -0700
X-CSE-ConnectionGUID: R+tjncf2SOG7LMC6xm2FFA==
X-CSE-MsgGUID: Rf3v4/sGSTyCxgwh/2rOVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="110940056"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 02:28:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: Re: [PATCH] drm/i915: Use string enable/disable choice helpers
In-Reply-To: <20241023054655.4017489-1-sai.teja.pottumuttu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241023054655.4017489-1-sai.teja.pottumuttu@intel.com>
Date: Wed, 23 Oct 2024 12:28:10 +0300
Message-ID: <871q07uq1h.fsf@intel.com>
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

On Wed, 23 Oct 2024, Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com> wrote:
> Replace the last few remaining instances of string enable(d)/disable(d)
> choices with the linux string choice helpers to avoid further
> cocci warnings.
>
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_pps.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_tc.c      | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index dce645a07cdb..6a09b93742ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -784,7 +784,7 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
>  			  stream_enc_status, enable ? stream_enc_status : 0,
>  			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
>  		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
> -			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
> +			transcoder_name(cpu_transcoder), str_enabled_disabled(enable));
>  		return -ETIMEDOUT;
>  	}
>  
> @@ -818,7 +818,7 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
>  			  enable ? STREAM_ENCRYPTION_STATUS : 0,
>  			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
>  		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
> -			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
> +			transcoder_name(cpu_transcoder), str_enabled_disabled(enable));
>  		return -ETIMEDOUT;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index ffeee9daa568..5bea6404491f 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1148,7 +1148,7 @@ void intel_pps_backlight_power(struct intel_connector *connector, bool enable)
>  		return;
>  
>  	drm_dbg_kms(display->drm, "panel power control backlight %s\n",
> -		    enable ? "enable" : "disable");
> +		    str_enable_disable(enable));
>  
>  	if (enable)
>  		intel_pps_backlight_on(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 6f2ee7dbc43b..b16c4d2d4077 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1005,7 +1005,7 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
>  	if (wait_for(xelpdp_tc_phy_tcss_power_is_enabled(tc) == enabled, 5)) {
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %s: timeout waiting for TCSS power to get %s\n",
> -			    enabled ? "enabled" : "disabled",
> +			    str_enabled_disabled(enabled),
>  			    tc->port_name);
>  		return false;
>  	}

-- 
Jani Nikula, Intel
