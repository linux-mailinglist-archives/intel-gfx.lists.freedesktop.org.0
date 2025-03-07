Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1716A56A52
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 15:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5635610E19E;
	Fri,  7 Mar 2025 14:26:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DYCIkfM6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A1CA10E19E;
 Fri,  7 Mar 2025 14:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741357609; x=1772893609;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xQij2/xaFqj7ZpGuRMKx7BdZEi2BtBSGX+xW2+MLAJk=;
 b=DYCIkfM6wN8i059iiMidUPD6zbVAhcXuh1IKyE+sKuEeomw7FRVk5uys
 BqH30QRJtgN5BH1EoqIOcn6AduTXQ5LqGPaTXIkIMJ2W+kzr6UtR8LRs7
 l94KAP4RluWxtEyMLZc+KaWVyMRXUgc/D/sckC0Owgu7JBlm9uO+XztBT
 vr7qVcdOes4mr7jSK8TGCAU9c9Q7tuh076P7obci27e5/R/WJ1+wnrb3W
 H5fIyHG8Sdg8unzK+hblRrXwygQiNf9fAcLUyu8tSLHEMolR+Z1h1yZMd
 uJxtMAux+kBdQ8CxV8hOdXCHuDLrwoxZF1aB99BnRyktQnPS3K1dkNPgp g==;
X-CSE-ConnectionGUID: j8u1pLDXTfOX9a8LhJfH+w==
X-CSE-MsgGUID: n+EViJ7eQ1uv1ENknFOJxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42547590"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42547590"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:26:45 -0800
X-CSE-ConnectionGUID: AOilzxoWQAuOFF+iXt7mOQ==
X-CSE-MsgGUID: iNC0rJt+QAOPnWpEzlpENg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124559330"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 06:26:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 16:26:41 +0200
Date: Fri, 7 Mar 2025 16:26:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 17/21] drm/i915/display: Move vrr.guardband/pipeline_full
 out of !fastset block
Message-ID: <Z8sCIb37gtdczFtx@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
 <20250306131100.3989503-18-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250306131100.3989503-18-ankit.k.nautiyal@intel.com>
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

On Thu, Mar 06, 2025 at 06:40:56PM +0530, Ankit Nautiyal wrote:
> The vrr.guardband/pipeline_full depend on the vrr.vmin. Since we have
> set vrr.vmin to adjusted_mode->crtc_vtotal, this shouldn't change on the
> fly. With this we can move vrr.guardband/pipeline_full out from !fastset
> block.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 322a05648f58..a642496e366c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5393,8 +5393,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_I(vrr.vmin);
>  		PIPE_CONF_CHECK_I(vrr.vmax);
>  		PIPE_CONF_CHECK_I(vrr.flipline);
> -		PIPE_CONF_CHECK_I(vrr.pipeline_full);
> -		PIPE_CONF_CHECK_I(vrr.guardband);
>  		PIPE_CONF_CHECK_I(vrr.vsync_start);
>  		PIPE_CONF_CHECK_I(vrr.vsync_end);
>  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
> @@ -5402,6 +5400,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>  	}
>  
> +	PIPE_CONF_CHECK_I(vrr.pipeline_full);
> +	PIPE_CONF_CHECK_I(vrr.guardband);


Assuming we can't reprogram the guardband safely live 
I think this would have to become 

if (!fastset || always_use_vrr_tg()) {
        ...
}

which avoids breaking the LRR fastset on older platforms.

Whether we can still risk the fastboot exception for the new
platforms I don't know. I guess leave it out for now and
ponder it further later.

In the future I guess one option to resurrecting the fastsets
would be to somehow use a more fixed size gurdband instead of
the full vblank length, but that would need a lot of thought
and work, so definitely not something we can just do right
now.

> +
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
>  #undef PIPE_CONF_CHECK_LLI
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
