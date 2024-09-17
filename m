Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9E297B01A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 14:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C89510E478;
	Tue, 17 Sep 2024 12:27:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OxpdhwjS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B96210E489;
 Tue, 17 Sep 2024 12:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726576051; x=1758112051;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=C388/p0KkfFSczWDhC+oM8+M0fwsTF4om3mrCuBaRCQ=;
 b=OxpdhwjSTl1d59oNGEJVEm84pBESewZ6YE91z6oeqQLkX5KI/QmuIshx
 AG/Y3sPXBzhbjvsw6EDpFCZa9D2TK/m0rhj/0CS5d4UayCO9mI1yKe1QQ
 /aiJrBx99yDB8HH3KoZt+qU+Zl6U3R0iXMUs7o+0gd5aWtBk5tOxDENgL
 aGVzxHFM06IQMjk3OsDlAEMWT3CL+Z+wLv2J//1MUqxazI628GFcAh3yq
 qoc+Xd7zcQQEbojs2YSq3F2z+aGHBN2NQdPhcCeAWJXtMlLe+d1puTCKR
 n/rqEe/eKGRB/ZS5XUGCy4rY1CXPN3sr+n0NHJk3U5VGyQBX3JKM9HZK4 A==;
X-CSE-ConnectionGUID: SEYPk8ktQKWKJ7myAk/Yfg==
X-CSE-MsgGUID: whlmkhi4QHWkweRPRurtLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="50840167"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="50840167"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 05:27:31 -0700
X-CSE-ConnectionGUID: iOU+OWzsQZeK/qDa10Fu0g==
X-CSE-MsgGUID: O5ppqt9eRHiWE6YrR15YZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69264104"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Sep 2024 05:27:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Sep 2024 15:27:28 +0300
Date: Tue, 17 Sep 2024 15:27:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 1/2] drm/i915: Add some essential functionality for joiners
Message-ID: <Zul1sJjHUEyCWa_b@intel.com>
References: <20240917082359.2383204-1-ankit.k.nautiyal@intel.com>
 <20240917082359.2383204-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240917082359.2383204-2-ankit.k.nautiyal@intel.com>
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

On Tue, Sep 17, 2024 at 01:53:57PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> In most of the cases we now try to avoid mentioning things like
> "bigjoiner" or "ultrajoiner" trying to unify the API and refer
> mostly to all this functionality as "joiner".
> In majority cases that should be way to go.
> However in some cases we still need to distinguish between
> bigjoiner primaries and secondaries(such as DSC register programming).
> 
> Create correspondent helper functions and start using them,
> in order be prepared for adding ultrajoiner functionality.
> 
> v2: Fixed checkpatch warnings (Ankit)
> v3: Introduce ultrajoiner helpers in next patch.
> v4: Streamline the helpers and add few more. (Ville)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 41 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  2 +
>  drivers/gpu/drm/i915/display/intel_vdsc.c    |  4 +-
>  3 files changed, 45 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d4a371edfcdd..deacdf82e143 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -254,6 +254,47 @@ static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
>  	return ffs(crtc_state->joiner_pipes) - 1;
>  }
>  
> +static bool is_bigjoiner(const struct intel_crtc_state *crtc_state)
> +{
> +	return hweight8(crtc_state->joiner_pipes) >= 2;
> +}
> +
> +static u8 bigjoiner_primary_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	if (!is_bigjoiner(crtc_state))
> +		return 0;
> +
> +	return crtc_state->joiner_pipes & (0b01010101 << joiner_primary_pipe(crtc_state));
> +}
> +
> +static unsigned int bigjoiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	if (!is_bigjoiner(crtc_state))
> +		return 0;
> +
> +	return crtc_state->joiner_pipes & (0b10101010 << joiner_primary_pipe(crtc_state));
> +}
> +
> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (!is_bigjoiner(crtc_state))
> +		return false;
> +
> +	return BIT(crtc->pipe) & bigjoiner_primary_pipes(crtc_state);
> +}
> +
> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (!is_bigjoiner(crtc_state))
> +		return false;
> +
> +	return BIT(crtc->pipe) & bigjoiner_secondary_pipes(crtc_state);
> +}

We probably want a comment around these somewhere indicating that
(despite the name) these apply to both bigjoiner and uncompressed
joiner.

Unless someone can come up with a better term to use instead of
"bigjoiner" in these? I'm drawing a blank myself.

Anyways, with some clarification added this is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
>  {
>  	if (crtc_state->joiner_pipes)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 7ca26e5cb20e..894f58ead279 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -426,6 +426,8 @@ bool is_trans_port_sync_master(const struct intel_crtc_state *state);
>  u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>  struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 2e849b015e74..8158e3702ed5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -742,7 +742,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>  	u32 dss_ctl1_val = 0;
>  
>  	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
> -		if (intel_crtc_is_joiner_secondary(crtc_state))
> +		if (intel_crtc_is_bigjoiner_secondary(crtc_state))
>  			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
>  		else
>  			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
> @@ -771,7 +771,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>  	}
>  	if (crtc_state->joiner_pipes) {
>  		dss_ctl1_val |= BIG_JOINER_ENABLE;
> -		if (!intel_crtc_is_joiner_secondary(crtc_state))
> +		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>  			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>  	}
>  	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
