Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7528C89EFB4
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 12:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4274810FFEE;
	Wed, 10 Apr 2024 10:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LSJsGYUL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63EA10FFEE;
 Wed, 10 Apr 2024 10:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712744239; x=1744280239;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WJJFxk5YCq61lAJ0z5SnQC2Wn3NHzTm/oza5b/KmLhc=;
 b=LSJsGYUL8xgKs4cOjGMXxMjIFwiXSTylXzpU4lzzcCKdbEQxiHqyu30k
 U7iYTvqteehLg6LrVSVvNJ1SZu4TmHanxGFLV2q7qWU5EOGHLXH6zfSBy
 F4mubcFMDgjMsEX4emUV3WDQ1OuedpdkaA0hzjswLbDnE3zznt4vtvncE
 7GUdMUdBKMw7dai7mBok4BMWXyG9qYpeLckMTvmLbRHiJ4O9pAOUd+MwJ
 eZS286xtpIWrgMMAQAOuXdzIizeMJxqfwKkZR5sFo/sxd6wzNl9NQ8LjA
 hTEejEeNSONBOCCna4WL1cRWbpKcCQYvjqzGc4lXHC9nEpiEt2Ctva2p/ Q==;
X-CSE-ConnectionGUID: wZoiNpbgQuSwWmHff08yTw==
X-CSE-MsgGUID: dBQ13y8LQ4KRRiL++OZx2Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11870446"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11870446"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 03:17:19 -0700
X-CSE-ConnectionGUID: 5Gvv2d6tSyS85Rayhl9HRQ==
X-CSE-MsgGUID: S5MM8d+tSJ6Hd6PIPO7meA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="43756617"
Received: from oakasatk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.54])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 03:17:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915: Implement Audio WA_14020863754
In-Reply-To: <20240410081159.915205-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240410081159.915205-1-uma.shankar@intel.com>
Date: Wed, 10 Apr 2024 13:17:14 +0300
Message-ID: <875xwp8qtx.fsf@intel.com>
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

On Wed, 10 Apr 2024, Uma Shankar <uma.shankar@intel.com> wrote:
> WA_14020863754: Corner case with Min Hblank Fix can cause
> audio hang
>
> Issue: Previously a fix was made to avoid issues with extremely
> small hblanks, called the "Min Hblank Fix". However, this can
> potentially cause an audio hang.
>
> Workaround :
> During "Audio Programming Sequence" Audio Enabling -
> When DP mode is enabled Set mmio offset 0x65F1C bit 18 = 1b,
> before step #1 "Enable audio Presence Detect"
>
> During "Audio Programming Sequence" Audio Disabling -
> When DP mode is enabled Clear mmio offset 0x65F1C bit 18 = 0b,
> after step #6 "Disable Audio PD (Presence Detect)"
> If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave = 1b)

hsw_audio_codec_disable/enable get called on hsw and display ver >= 8,
but a lot of those platforms have the bit reserved MBZ. I didn't go
through all the platforms in bspec, but enough to notice this needs some
platform check.

BR,
Jani.

>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c      | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_audio_regs.h |  3 +++
>  2 files changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 07e0c73204f3..a8e3e515aaa0 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -512,6 +512,12 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
>  
> +	/*
> +	 * WA_14020863754: Implement Audio Workaround
> +	 * Corner case with Min Hblank Fix can cause audio hang
> +	 */
> +	intel_de_rmw(i915, AUD_CHICKENBIT_REG3, CHICKEN3_SPARE18, 0);
> +
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
>  
> @@ -637,6 +643,12 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
>  		enable_audio_dsc_wa(encoder, crtc_state);
>  
> +	/*
> +	 * WA_14020863754: Implement Audio Workaround
> +	 * Corner case with Min Hblank Fix can cause audio hang
> +	 */
> +	intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0, CHICKEN3_SPARE18);
> +
>  	/* Enable audio presence detect */
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> index 616e7b1275c4..6f8d33299ecd 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -148,4 +148,7 @@
>  #define HBLANK_START_COUNT_96	4
>  #define HBLANK_START_COUNT_128	5
>  
> +#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
> +#define  CHICKEN3_SPARE18		REG_BIT(18)
> +
>  #endif /* __INTEL_AUDIO_REGS_H__ */

-- 
Jani Nikula, Intel
