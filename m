Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFTxGOq7qmkuWAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 12:35:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9C821FB6A
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 12:35:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DF4010ECF6;
	Fri,  6 Mar 2026 11:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V1vwydlz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 653F110ECF6;
 Fri,  6 Mar 2026 11:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772796903; x=1804332903;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=arJoHuZUAzipaXfTlA4j44mOZgS1YHP+uQfnthM0lpU=;
 b=V1vwydlzojoLyZmVxhfkHJ1EdawvlXeyHrZSbXKrgPX9oBL9St5mQ6lD
 GphjUbcFPeMHjjwfmw4Bt2PcA8iijL7YO4T45VqKqAN0spUhi5CRuMypm
 zCe/4nvttC25BsxAzWWTA+YeDtj6LC8nJ7ukjcW1jukl/iECOwYImAtVs
 5YqL9XQ6qmGI8GeZ7blOBrIk+sP+HjcPOK5F6+i+6kA+ulhQgKNttOhHz
 NQl8kc3jsBmgYiLPR3U1b5DVtHqBUVM/T6vnHimmum+oonSsmczeLeLZq
 rB5QlLZ2Ok+J5q85X+K2H+cmga5NZYKGadECILaRlAjdN3UNKnWGzGQFW w==;
X-CSE-ConnectionGUID: r+KvdxlVTee71yHY73sP2A==
X-CSE-MsgGUID: oNneM+xAQfmuU+nf25UNyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="73094159"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="73094159"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 03:35:03 -0800
X-CSE-ConnectionGUID: BGH12IEtSwWSsxFX+6xkKA==
X-CSE-MsgGUID: xfBT7Y1URK2e8eEyTF7WcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="215683452"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.191])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 03:35:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com
Subject: Re: [PATCH v5 02/16] drm/i915/display: convert audio workaround to
 new framework
In-Reply-To: <20260305100100.332956-3-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260305100100.332956-1-luciano.coelho@intel.com>
 <20260305100100.332956-3-luciano.coelho@intel.com>
Date: Fri, 06 Mar 2026 13:34:58 +0200
Message-ID: <04cd0f0f763c9b3b5b23bcc213ef24f9bcff2e98@intel.com>
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
X-Rspamd-Queue-Id: CA9C821FB6A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

On Thu, 05 Mar 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the
> workarounds all over, concentrate the checks in intel_display_wa.c.
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 24 +++++++++----------
>  .../gpu/drm/i915/display/intel_display_wa.c   |  4 ++++
>  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
>  3 files changed, 16 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 5f3c175afdd2..081627e0d917 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -37,6 +37,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_display_wa.h"
>  #include "intel_lpe_audio.h"
>  
>  /**
> @@ -184,17 +185,6 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
>  	{ 192000, TMDS_445_5M, 20480, 371250 },
>  };
>  
> -/*
> - * WA_14020863754: Implement Audio Workaround
> - * Corner case with Min Hblank Fix can cause audio hang
> - */
> -static bool needs_wa_14020863754(struct intel_display *display)
> -{
> -	return DISPLAY_VERx100(display) == 3000 ||
> -		DISPLAY_VERx100(display) == 2000 ||
> -		DISPLAY_VERx100(display) == 1401;
> -}
> -
>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
>  static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_state)
>  {
> @@ -440,7 +430,11 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  	intel_de_rmw(display, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
>  
> -	if (needs_wa_14020863754(display))
> +	/*
> +	 * WA_14020863754: Implement Audio Workaround
> +	 * Corner case with Min Hblank Fix can cause audio hang
> +	 */

I'm not going to ask you to change anything now, just musing here.

What's the point of having the WA_14020863754 in the comment when it's
duplicated in the INTEL_DISPLAY_WA_14020863754 below?

What's the point of duplicating the wa text in multiple places? Is it
better to have it where the context is (i.e. here) or centralized in
intel_display_wa.c?

Again, just thinking aloud, let's go with what you have here now.

BR,
Jani.


> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14020863754))
>  		intel_de_rmw(display, AUD_CHICKENBIT_REG3, DACBE_DISABLE_MIN_HBLANK_FIX, 0);
>  
>  	intel_audio_sdp_split_update(old_crtc_state, false);
> @@ -572,7 +566,11 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  
>  	intel_audio_sdp_split_update(crtc_state, true);
>  
> -	if (needs_wa_14020863754(display))
> +	/*
> +	 * WA_14020863754: Implement Audio Workaround
> +	 * Corner case with Min Hblank Fix can cause audio hang
> +	 */
> +	if (intel_display_wa(display, INTEL_DISPLAY_WA_14020863754))
>  		intel_de_rmw(display, AUD_CHICKENBIT_REG3, 0, DACBE_DISABLE_MIN_HBLANK_FIX);
>  
>  	/* Enable audio presence detect */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 1d8340b36c01..b383bfad3af6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -74,6 +74,10 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  			DISPLAY_VERx100(display) == 3500;
>  	case INTEL_DISPLAY_WA_14011503117:
>  		return DISPLAY_VER(display) == 13;
> +	case INTEL_DISPLAY_WA_14020863754:
> +		return DISPLAY_VERx100(display) == 3000 ||
> +			DISPLAY_VERx100(display) == 2000 ||
> +			DISPLAY_VERx100(display) == 1401;
>  	case INTEL_DISPLAY_WA_14025769978:
>  		return DISPLAY_VER(display) == 35;
>  	case INTEL_DISPLAY_WA_15018326506:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 06c1f62c0f6d..b1bcc18dd2c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -29,6 +29,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
>  enum intel_display_wa {
>  	INTEL_DISPLAY_WA_13012396614,
>  	INTEL_DISPLAY_WA_14011503117,
> +	INTEL_DISPLAY_WA_14020863754,
>  	INTEL_DISPLAY_WA_14025769978,
>  	INTEL_DISPLAY_WA_15018326506,
>  	INTEL_DISPLAY_WA_16023588340,

-- 
Jani Nikula, Intel
