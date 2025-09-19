Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D193B88EC2
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 12:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 962AF10E988;
	Fri, 19 Sep 2025 10:27:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="McliW6a3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B1A10E987;
 Fri, 19 Sep 2025 10:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758277654; x=1789813654;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zHP6q2GkgapuSKRIBb7uv+I1RX7/6J9LsvIEoABTwSI=;
 b=McliW6a3ar8y/nfVo4HF3QEDSLTjORPiDReNRqv3RuBgIzF3DMt9csrp
 963sa4A+j6eZFPmpUnC2LC/2utPM+nP6fcOY3j+efTS0uz+wqRcpyKA8l
 i2NuCOgSkVe0ilhrD/eRnssuyQED9fFdOYsaT+JU16TiRnhzEmNcPHOvS
 dLBncSMwysCnfEygprf73TPdQ46aXztxWq2TRJ2nXwp7opsoh6NV4Z0OQ
 7pVT4XWF//7mfTPiaxqMBFts0MwAcUk/XpkvjsVxPM6UYm8WB8IPv6C1H
 TO3Dcn/iPZBxK1sqalTmgctr/zgS5FPc2A15TAKVXt7tX7AYH+1uOHKgq g==;
X-CSE-ConnectionGUID: HXMX7qqWRlCLorGwnwYDIg==
X-CSE-MsgGUID: 4boDnO3lSiuHOPiIypSJWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60569742"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60569742"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 03:27:34 -0700
X-CSE-ConnectionGUID: +DYpuK63QjaJ9qFmKXaR3w==
X-CSE-MsgGUID: PsUd6Kg/RWK7icDWAAXnTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="181076776"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 03:27:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v2] drm/i915/ddi: Guard reg_val against a
 INVALID_TRANSCODER
In-Reply-To: <20250908042208.1011144-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250908042208.1011144-1-suraj.kandpal@intel.com>
Date: Fri, 19 Sep 2025 13:27:28 +0300
Message-ID: <002eef91ca8636d18f6d83482699c59e1e82e02e@intel.com>
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

On Mon, 08 Sep 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Currently we check if the encoder is INVALID or -1 and throw a
> WARN_ON but we still end up writing the temp value which will
> overflow and corrupt the whole programmed value.
>
> --v2
> -Assign a bogus transcoder to master in case we get a INVALID
> TRANSCODER [Jani]
>
> Fixes: 6671c367a9bea ("drm/i915/tgl: Select master transcoder for MST stream")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 46017091bb0b..f67ce35c1c00 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -596,8 +596,9 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  			enum transcoder master;
>  
>  			master = crtc_state->mst_master_transcoder;
> -			drm_WARN_ON(display->drm,
> -				    master == INVALID_TRANSCODER);
> +			if (drm_WARN_ON(display->drm,
> +					master == INVALID_TRANSCODER))
> +				master = TRANSCODER_A;
>  			temp |= TRANS_DDI_MST_TRANSPORT_SELECT(master);
>  		}
>  	} else {

-- 
Jani Nikula, Intel
