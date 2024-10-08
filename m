Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16412994989
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 14:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B295510E4E1;
	Tue,  8 Oct 2024 12:25:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bMYxMfuG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8465C10E4E1
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 12:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728390304; x=1759926304;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=91PuE5+ZShL4d97+rkNW9ieOXuI4ceOa0V6MZqMoAjw=;
 b=bMYxMfuG0VC52Gs5V6XF8ZsyL8gLSKDo791Q07HQuWsFi3UEB3SMOxLY
 2n/dUbNvNgMxO3SrfJr5AsPlQlS1syoVDtQH9sLL5pj+O4cUP6ydepj6W
 /Po1vTSm0UFTrAWnq90nf4d+rzTsEGcJPtTq4xk6S05nRXhKiVwg715hV
 5ny0btLJit28iTt9+ydRWeI6fxUFPcRXTc4BHYIjnOG7HFJi1MITpJgeH
 iayQXYO4xgWBmeQC8CVWRYG32wgEYvZJGy0Ng4N9P2rZ9zxn0NZUvWoRh
 301LutrvooXBMJbbulQGCBfU36aVhv4rudNx46DdSslOQH8t9Fn+ZUzsj A==;
X-CSE-ConnectionGUID: PMSu+0EMSRaXlUvkYyzVRg==
X-CSE-MsgGUID: pM5vneOoQQKtx3KwFSYj3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27468291"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="27468291"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 05:25:04 -0700
X-CSE-ConnectionGUID: HQYJhsn6TkqkUSnGph5W/w==
X-CSE-MsgGUID: CBEawri9QziwxlZYPSmnNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75785972"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.41])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 05:25:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 7/9] drm/i915/display: update audio support based on the
 available frequencies
In-Reply-To: <20241008082327.342020-8-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-8-vinod.govindapillai@intel.com>
Date: Tue, 08 Oct 2024 15:24:58 +0300
Message-ID: <87msjerdd1.fsf@intel.com>
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
> After pruning the sad audio frequency list, if there are no
> supported audio frequencies left, audio cannot be supported.
> So mark has_audio accordingly.
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 14fabbcbf5da..bd135c1f2c07 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -796,6 +796,7 @@ bool intel_audio_compute_eld_config(struct drm_connector_state *conn_state,
>  {
>  	struct drm_connector *connector = conn_state->connector;
>  	struct drm_i915_private *i915 = to_i915(connector->dev);
> +	bool audio_supported = false;
>  	u8 *eld;
>  
>  	if (!intel_audio_eld_valid(conn_state))
> @@ -823,9 +824,13 @@ bool intel_audio_compute_eld_config(struct drm_connector_state *conn_state,
>  				    "SAD updated. Freq: 0x%x(0x%x) Channels: %d(%d)\n",
>  				    sad.freq, sad_freq, sad.channels, sad_channels);
>  		}
> +
> +		/* If no supported freq in any sads, make audio support to false */
> +		audio_supported |= sad.freq;

Please don't do bitwise operations on booleans.

>  	}
>  
> -	return true;
> +	drm_dbg_kms(&i915->drm, "audio supported: %d\n", audio_supported);

Having the encoder here would be great for [ENCODER...] logging.

Please don't use %d for bools. Maybe str_yes_no().

> +	return audio_supported;
>  }
>  
>  bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,

-- 
Jani Nikula, Intel
