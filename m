Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD21986E65
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C7810E00E;
	Thu, 26 Sep 2024 07:59:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SyCLxqpS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C14C110E00E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 07:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727337564; x=1758873564;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=A0QNe9B6MFFu1fq37H0TOXSOZYFsyykiMUqcTFfHE8I=;
 b=SyCLxqpSrykOWWxiii4l0vRzxoj1yQEvi6Eki6TzSFWM/ToQNh256dnx
 44gEFUmCYTWp32fUtp4uXiZiIsrK4AXo60q+HVVTpSmfNNqyd4+XU7Z1m
 kRIpw2j+UXGceDSsMvwnnnQsdcrfidcMNSFcQJwoget1PfgEEK0v5u+nC
 4PQRhQYyxjb52NXG13r4jTGbHQe6/rdz4C5sugVE9WtwlMYSQQQ+DsWah
 H2Lhepfq/y7qJOBUazHyR5VfdmUPIplQABMS4hdXmr/XjiQ/LirkO3cAN
 QASZu1TqHgwJSCTy6t5DzLMs1Dz1JCltENUfVQ/0zgYO5DEYu3RXcdp7e g==;
X-CSE-ConnectionGUID: ob/nwdUGTLaxnausYssVMA==
X-CSE-MsgGUID: OTYd5QMHT9+7jzCnF7w4tA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26229998"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="26229998"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:59:24 -0700
X-CSE-ConnectionGUID: pzngp4Z2R6y9jm0/bqY7uQ==
X-CSE-MsgGUID: kbw0bpQITuScwEbP7MyG2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="109526054"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.124])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:59:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com, chaitanya.kumar.borah@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
In-Reply-To: <20240926053346.1391776-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240926043332.1284692-2-suraj.kandpal@intel.com>
 <20240926053346.1391776-2-suraj.kandpal@intel.com>
Date: Thu, 26 Sep 2024 10:59:18 +0300
Message-ID: <87v7yi26cp.fsf@intel.com>
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

On Thu, 26 Sep 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> DSC does not support bpc under 8 according to DSC 1.2a Section 2
> Requirements. Return an error if that happens to be the case.
>
> --v2
> -should be bits_per_component [Mitul/Chaitanya/Srikanth]
> -Add reference to this restriction [Chaitanya]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 8158e3702ed5..7a30fdea16da 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -306,6 +306,11 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>  
>  	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
>  
> +	if (vdsc_cfg->bits_per_component < 8) {
> +		drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not met\n");

If you hit this warning, what's the absolutely first thing you want to
know...? Maybe log that bits_per_component value here?

BR,
Jani.

> +		return -EINVAL;
> +	}
> +
>  	drm_dsc_set_rc_buf_thresh(vdsc_cfg);
>  
>  	/*

-- 
Jani Nikula, Intel
