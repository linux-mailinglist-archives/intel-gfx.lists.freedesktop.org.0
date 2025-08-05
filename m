Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 884F5B1B558
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 15:55:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 131D410E122;
	Tue,  5 Aug 2025 13:55:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZSWS5pQk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183C410E122;
 Tue,  5 Aug 2025 13:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754402148; x=1785938148;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MbFt0O8dea0vBuwTtce0ijqpriW2ioDHraV/W6LhokI=;
 b=ZSWS5pQk/EwVjnI6r7vMJWU6xc6UzTQSwQS6qbjpaqNu2cfruOssY4Qi
 juCBLAzC9C8d4FS/C3xlvwyL+PnT7phdpeAcFMge/9sRrycd5LXAjHLyF
 uxcSm+j5H/XIa5JYwAp+M7TCW0pMKDCI927V8BKne4GtpEhqSX8sIDQd9
 TIwh8q9QGLnArTpH8sn1IcueExQZrekzOZ0AnNMquwHUpGl7/GaDnIbka
 OdICznNrsNRBOLdudCBnmN/SalPFF/EYgWHMGrzsMk8zv/OdI9Fq/VqPd
 4NSjwiMsVm2bJSODrap8pNn3rShV37tdHZArBV2iC8MSMKykNW1x7bdrm g==;
X-CSE-ConnectionGUID: TusLhEzzT3aEomrC3KE3Hw==
X-CSE-MsgGUID: NMUKSUs9RWGkKxzZxCRj5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="82144598"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="82144598"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:55:47 -0700
X-CSE-ConnectionGUID: FKC6F+bxT6u9xbcUzfYdkQ==
X-CSE-MsgGUID: L/5nDY5BRICM3sDyVL6kMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="168681188"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:55:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 02/13] drm/i915/skl_watermark: Add bounds check for
 scaler array access
In-Reply-To: <20250805132016.1250202-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
 <20250805132016.1250202-3-ankit.k.nautiyal@intel.com>
Date: Tue, 05 Aug 2025 16:55:42 +0300
Message-ID: <bc9fd888b7a7572c7861c9ed3bdb0af9151f11d5@intel.com>
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

On Tue, 05 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Ensure num_scaler_users does not exceed the size of scaler_state->scalers[]
> before accessing scaler parameters in dsc_prefill_latency.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 5a120c1f66f4..9d52727b81b1 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2191,7 +2191,8 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
>  
>  	if (!crtc_state->dsc.compression_enable ||
>  	    !num_scaler_users ||
> -	    num_scaler_users > crtc->num_scalers)
> +	    num_scaler_users > crtc->num_scalers ||
> +	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))

Currently this can't happen. crtc->num_scalers is initialized from
num_scalers[pipe] member of display runtime data, which gets initialized
in __intel_display_device_info_runtime_init().

The only way this could happen is if some platform gains more scalers
per pipe than SKL_NUM_SCALERS. But if that happens, we really want to
fail loudly instead of silently falling back to dsc_prefill_latency,
right?

I'd rather see

	drm_WARN_ON(display->drm, crtc->num_scalers > SKL_NUM_SCALERS);

in intel_crtc_init() than this change.

>  		return dsc_prefill_latency;
>  
>  	dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * chroma_downscaling_factor, 10);

-- 
Jani Nikula, Intel
