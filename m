Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A928DC15690
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 16:23:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF4F10E0F2;
	Tue, 28 Oct 2025 15:23:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aas9GVLS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 898D110E0F2;
 Tue, 28 Oct 2025 15:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761665037; x=1793201037;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gNOnZdvETRdRPnjz08GZaIXNGUeDjNFZDpdqrkQIVSQ=;
 b=aas9GVLSc/T9kAgVPLpWGlT/oH1Fow3hLJ2ttzSb/aIwim5rtHbGajCL
 frPS8rOdREZWPWFsmKzH4+jq7q9AeXEJ7qrO/NVV0clqHfHouqtLEf5L5
 76QLuErBZMcCAwM7tDE57aZy4L27kVDIs+KjEZO15tZKFJyxpm8nu07+h
 w/yDnXVQ5MqIeyG9fqv4PBMt0FEDAw8zX2s0zV11tp23kgzXrYQ5SudHW
 W5B7xRNuzv+ipMdpd/b295qTkTUYoJtqvP9VBcTFyKyjAWjXazaNs1tRF
 qz00WrQ7kLPpwx/xIj1qiYq8lXtInbnRf7zFx3RVtkmlWmaGj0x5v8Sc6 g==;
X-CSE-ConnectionGUID: UNK9HwImSDmvNKhhhFKYQA==
X-CSE-MsgGUID: u94yYqm7Re+lbJNorP6tVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="89239122"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="89239122"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 08:23:56 -0700
X-CSE-ConnectionGUID: fIkcqY2OQ5CNojP1zK4ylw==
X-CSE-MsgGUID: RWbqYjMuTluNpsSfVDErDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="189727572"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.169])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 08:23:54 -0700
Date: Tue, 28 Oct 2025 17:23:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [PATCH 1/3] drm/i915/dp: Move computation of as_sdp_after psr
 and lobf
Message-ID: <aQDgB9k8YlGTTyKQ@intel.com>
References: <20251028043502.2977803-1-ankit.k.nautiyal@intel.com>
 <20251028043502.2977803-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251028043502.2977803-2-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Oct 28, 2025 at 10:05:00AM +0530, Ankit Nautiyal wrote:
> To configure adaptive-sync SDP for Panel replay and LOBF features, move
> the intel_dp_compute_as_sdp() after configuration for PSR/PR and LOBF.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 475518b4048b..ee113e118fed 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3413,9 +3413,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
>  
>  	intel_vrr_compute_config(pipe_config, conn_state);
> -	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
>  	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);

Looks like intel_alpm_lobf_compute_config() still has some nonsense
SCL/guardband stuff in it. Someone needs to take a good look at it
and figure out how to fix it.

> +	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>  	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
