Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 083509C567F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 12:29:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA5810E5CC;
	Tue, 12 Nov 2024 11:29:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MavXoR+1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D417F10E5CC;
 Tue, 12 Nov 2024 11:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731410991; x=1762946991;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lqm5l55xgbABgvbYOREoO8elOeWlq+hrb0uBtRJB9ts=;
 b=MavXoR+1A/ZnHf+ZSN5VWYdwQFtKp8edSXrFmhB3mbIrWAEjDA2gSehy
 fROclcdEAmPTBOcla3yqrTTPLEYinvpWxWjyHctNWRm+s+lTq7Jz5+WaG
 VX1/OL0So9XZJ44qnyQ9zkstwUEH7JZYD8VXPNkKn2wFh2wJHoPjqlFPt
 YSi2kE48xSGZwS5LZN2dkLsthC35rHpm9FcOCWCjlZHi39jk/7a10Vcvd
 7t6y+Z/Gk4FB3psKsaLD0YZNAfm0+cC+gnoF+VbtyQRObX3MD1Rv+xdpv
 Zep0QNpBpMV4jH9wokXKMzvw1eri5SeXHww5Ftrj4sgkuGvdgXJVRxQZJ A==;
X-CSE-ConnectionGUID: dHoLm7fpQI6yftjaMUnsyw==
X-CSE-MsgGUID: DJcD4X5nQhapeE78WM0oGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48694248"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48694248"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:29:51 -0800
X-CSE-ConnectionGUID: ymY9Jk1XSIGrN2BWftghmg==
X-CSE-MsgGUID: PV4QCXEVSTCD1+XBTCtAmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87576518"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:29:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 07/23] drm/i915/display: Add vrr mode to crtc_state dump
In-Reply-To: <20241111091221.2992818-8-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <20241111091221.2992818-8-ankit.k.nautiyal@intel.com>
Date: Tue, 12 Nov 2024 13:29:45 +0200
Message-ID: <87a5e4d712.fsf@intel.com>
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

On Mon, 11 Nov 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Print Vrr mode along with other vrr members in crtc_state dump.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index e2ce417b1990..abec61bb4334 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -296,8 +296,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  		intel_dump_buffer("ELD: ", pipe_config->eld,
>  				  drm_eld_size(pipe_config->eld));
>  
> -	drm_printf(&p, "vrr_tg: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> +	drm_printf(&p, "vrr_tg: %s, mode: %d vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
>  		   str_yes_no(pipe_config->vrr.tg_enable),
> +		   pipe_config->vrr.mode,

The int in the output is meaningless. Please add a small helper to
return the string.

BR,
Jani.

>  		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
>  		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
>  		   pipe_config->vrr.flipline,

-- 
Jani Nikula, Intel
