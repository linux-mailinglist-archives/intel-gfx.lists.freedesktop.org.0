Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E579D3B1B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:50:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35B410E75B;
	Wed, 20 Nov 2024 12:50:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CLEdEBMO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6BB910E758
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 12:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732107026; x=1763643026;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OJY0LAi2rHhbL4wMIMEbtxHjr7Er2UN7PzCSlsMa56o=;
 b=CLEdEBMOc6e/sVP27KM1dkl88/k+4pYllxMJTuQsqKmAFyToFnOR1bf3
 UpKojZTGKloApI1tt+s6PbHxMsPYgdEF8zusmbOqHaSjdVyDOPCzYq56d
 8Bbgc1jjpqqd+Hlnf1fQq+2N79cEZZngg0899iqdZOKReThUY+giLD3oQ
 GwAhrDd0YGuoopOtlQpj9YZ4Iq82fLymYHprazpFhBMzC2c8tpn/J+8eZ
 mZLR4T5E/sUgewEDNxEXxfPovd9yRAxxZJoV/OaFPJQn5jmu6RvhG+nls
 9P1VZT3lehhHFmZyS4Isd9hOc8jeceMDFxuNwAPyXE7BqAyrI0EH/tQ1O Q==;
X-CSE-ConnectionGUID: Xfuf/fxASdqJGQzLElbORQ==
X-CSE-MsgGUID: rBK4NFJFRPyfMPDza4qSMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="49589763"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="49589763"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:50:26 -0800
X-CSE-ConnectionGUID: G7Ypp+hWRYWiidY63zNG2Q==
X-CSE-MsgGUID: /JznTh65SiilPjD0N0VwqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89859369"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:50:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v4 1/5] drm/i915/vrr: Add crtc_state dump for vrr.vsync
 params
In-Reply-To: <20241120084948.1834306-2-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241120084948.1834306-2-mitulkumar.ajitkumar.golani@intel.com>
Date: Wed, 20 Nov 2024 14:50:20 +0200
Message-ID: <87ttc2133n.fsf@intel.com>
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

On Wed, 20 Nov 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add crtc_state dump for vrr.vsync_{start/end} params to track the
> state correctly.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 705ec5ad385c..92dbf2cc150c 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -296,11 +296,13 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  		intel_dump_buffer("ELD: ", pipe_config->eld,
>  				  drm_eld_size(pipe_config->eld));
>  
> -	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> +	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vrr_vsync_start: %d, vrr_vsync_end: %d, vmin vblank: %d, vmax vblank: %d\n",

Please look around you, and follow the patterns.

All the other fields here have spaces instead of underscores.

The whole line is all about VRR, there's no need to duplicate vrr in the
individual fields.

BR,
Jani.


>  		   str_yes_no(pipe_config->vrr.enable),
>  		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
>  		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
>  		   pipe_config->vrr.flipline,
> +		   pipe_config->vrr.vsync_start,
> +		   pipe_config->vrr.vsync_end,
>  		   intel_vrr_vmin_vblank_start(pipe_config),
>  		   intel_vrr_vmax_vblank_start(pipe_config));

-- 
Jani Nikula, Intel
