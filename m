Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D22779949AA
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 14:26:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7388010E4EB;
	Tue,  8 Oct 2024 12:26:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mGTAZ89Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62EB10E4EB
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 12:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728390385; x=1759926385;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UyQi4se1tseDgs5P0nAPxo40cvcgVoOnD3muO65SvZ4=;
 b=mGTAZ89ZTAKUmOjz/uZmFG8FtD3OJ12PcR3HEMmFC2HFfyKysedhM4pH
 CRg4OMKJ4KWV39y4SZ7UCCt2imwZCmK5wbyY9/LJBD0wdnUwX9XpLS4vB
 LDWm533/GB4V8pBJS9ISplPtmViqnvN/H/9DUAwIorBSy7+HpIaWhHvav
 EzWBBayOajAlH/cRPxB7fGviYPir2ArcZaP/dxLpr8ItICwls/DlqZomj
 otUhzztG0XxtYU6GXIAeOqprOMToavjH2knL1fAYXorVxLovHAQEsOiZV
 Gyrfjr4DJy3O/N4A1sscquiIVFKdWykWefjpyGEutw8GWUYa0wjGk7iMW A==;
X-CSE-ConnectionGUID: Zh2yUUoNQ8yAMGjqpmug4w==
X-CSE-MsgGUID: snGXfZteRXmy6HkA3pgDMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38236375"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="38236375"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 05:26:24 -0700
X-CSE-ConnectionGUID: pEpXYHBHQH+wplAPDHFTFg==
X-CSE-MsgGUID: 6Z7+J2VAS2qRmQTasrhh9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="80605773"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.41])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 05:26:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 2/9] drm/i915/display: create a common function to check
 validity of ELD
In-Reply-To: <20241008082327.342020-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-3-vinod.govindapillai@intel.com>
Date: Tue, 08 Oct 2024 15:26:17 +0300
Message-ID: <87jzeirdau.fsf@intel.com>
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

On Tue, 08 Oct 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> We would need to check the validity of connector ELD from multiple
> places in the follow up patches. So create a separate function to
> check the validity for ELD.
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 1afd3b99e3ea..6946f3b0f8c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -690,13 +690,10 @@ void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
>  			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
>  }
>  
> -bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
> -				struct drm_connector_state *conn_state)
> +static bool intel_audio_eld_valid(struct drm_connector_state *conn_state)
>  {
>  	struct drm_connector *connector = conn_state->connector;
>  	struct drm_i915_private *i915 = to_i915(connector->dev);
> -	const struct drm_display_mode *adjusted_mode =
> -		&crtc_state->hw.adjusted_mode;
>  
>  	if (!connector->eld[0]) {
>  		drm_dbg_kms(&i915->drm,
> @@ -705,6 +702,19 @@ bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
>  		return false;
>  	}
>  
> +	return true;
> +}
> +
> +bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
> +				struct drm_connector_state *conn_state)
> +{
> +	struct drm_connector *connector = conn_state->connector;

We should stop adding new drm_connector local vars and use struct
intel_connector instead.

> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +
> +	if (!intel_audio_eld_valid(conn_state))
> +		return false;
> +
>  	BUILD_BUG_ON(sizeof(crtc_state->eld) != sizeof(connector->eld));
>  	memcpy(crtc_state->eld, connector->eld, sizeof(crtc_state->eld));

-- 
Jani Nikula, Intel
