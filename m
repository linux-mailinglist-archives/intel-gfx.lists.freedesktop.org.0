Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A7EA38B22
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 19:14:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFCBE10E59D;
	Mon, 17 Feb 2025 18:14:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bZmwpadM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D2A510E598;
 Mon, 17 Feb 2025 18:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739816076; x=1771352076;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Mi2jcZtp3ieR8ieW1ewSV+QKlzoQtD3WL4kvKfONVbs=;
 b=bZmwpadMs4Un1HnNDFhb+ZriEIjtRyDepmYfmlZNXnDmUYHCNVC7anOV
 WeG4RG9JHqpfLRE5gWLkC7GAhNGrCy0FYMZ6c0wbCuRtkc5sGb3wez3nm
 KYRAzZWVKJX73EkaZH6DVhP8TU2MNb+G3m6uqCf5FjrU8zw2HDqfpJcb+
 0RnWTXqDhFTw3EbrZYm7ASbbe46RMQdJfMBbKd6GEgssqSFuSSdgi7FUJ
 HU8xkJGszX9Oke3zLG1L7JZRMkuMrrz4KpZDdhuNSfZ+Pj50F+bd5/+Zu
 WaK+yFwn+dg7gjTgQd/qQLaMhZO50+awk/dv2UYtYI3IljkMtQ6eR5pKw w==;
X-CSE-ConnectionGUID: /Tgnr1pqQaCk4ZTtd70sbg==
X-CSE-MsgGUID: bTbyZbAjS+Gg9DPqJbIKGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="57907442"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="57907442"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 10:14:36 -0800
X-CSE-ConnectionGUID: BsciG2sXRQuZxuMQKkVeFA==
X-CSE-MsgGUID: sDkRe90SQoWlaq2G40Skiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114382981"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Feb 2025 10:14:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 20:14:31 +0200
Date: Mon, 17 Feb 2025 20:14:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 08/19] drm/i915/dp: Avoid vrr compute config for HDMI sink
Message-ID: <Z7N8h_4fKfiGZPIc@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-9-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250214121130.1808451-9-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Feb 14, 2025 at 05:41:18PM +0530, Ankit Nautiyal wrote:
> Currently we do not support VRR with HDMI so skip vrr compute
> config step for DP with HDMI sink.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9ed7d46143e9..bdf53d255d91 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3199,7 +3199,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (pipe_config->splitter.enable)
>  		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
>  
> -	intel_vrr_compute_config(pipe_config, conn_state);
> +	/*
> +	 * VRR via PCON is currently unsupported.
> +	 * TODO: Add support for VRR for DP HDMI2.1 PCON.
> +	 */
> +	if (!intel_dp_has_hdmi_sink(intel_dp))
> +		intel_vrr_compute_config(pipe_config, conn_state);

I thought the AS SDP was pretty much for this, but I guess 
we're missing somehting else still?

> +
>  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
>  	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
