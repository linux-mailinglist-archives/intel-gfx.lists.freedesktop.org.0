Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6637277D0D1
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6631A10E1A9;
	Tue, 15 Aug 2023 17:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 561B410E256
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692120029; x=1723656029;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=HGkePNKbX1iAPATzmFtjlpE9tVVtb5LTQlkM5aigayY=;
 b=NZs4F3HJwwhlISq3vI4qGH9YJPP88QsYFEl8dQ1WbTXVwNPZXHVZUy+0
 vHgnTXydrCElFxCmWKTddmb+uBSsr4SURlU1MptGlkgNS+2Egm+63BVLq
 CMb6J2e4/78lstXgHQYpbnhioKIhHA4BDuCdeXDEM88W8NoeYdBjLn1+1
 PCCACqCdBew/GuaIZBtUPcCbtEsst+lpdX2VR92fyihHK7sUIGEsE9Sn1
 mw17ufYYqDm8PMXdoAijuKbm7bIb1QO0Xv8Q6AgefT6Z72dlgxLqMyMQs
 7Lyv5yi0V0QzpAzwIlRVKHZXz3SxbkHWus5ANQRBBQQiEbjSppJP+Zz64 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="362488910"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="362488910"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:20:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="1064533490"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="1064533490"
Received: from zlukwins-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.48])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:20:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230815142921.404127-2-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230815142921.404127-1-vinod.govindapillai@intel.com>
 <20230815142921.404127-2-vinod.govindapillai@intel.com>
Date: Tue, 15 Aug 2023 20:20:23 +0300
Message-ID: <87v8dgb4tk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/display: remove redundant
 parameter from sdp split update
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

On Tue, 15 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> The needed functionality can be performed using crtc_state here.
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_audio.h | 3 +--
>  drivers/gpu/drm/i915/display/intel_ddi.c   | 2 +-
>  3 files changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 3d9c9b4f27f8..19605264a35c 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -759,10 +759,10 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
>  
> -void intel_audio_sdp_split_update(struct intel_encoder *encoder,
> -				  const struct intel_crtc_state *crtc_state)
> +void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	enum transcoder trans = crtc_state->cpu_transcoder;
>  
>  	if (HAS_DP20(i915))
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index 07d034a981e9..9327954b801e 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -29,7 +29,6 @@ void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
>  void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
>  void intel_audio_init(struct drm_i915_private *dev_priv);
>  void intel_audio_deinit(struct drm_i915_private *dev_priv);
> -void intel_audio_sdp_split_update(struct intel_encoder *encoder,
> -				  const struct intel_crtc_state *crtc_state);
> +void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_AUDIO_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 84bbf854337a..b7f4281b8658 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3248,7 +3248,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  		intel_ddi_enable_transcoder_func(encoder, crtc_state);
>  
>  	/* Enable/Disable DP2.0 SDP split config before transcoder */
> -	intel_audio_sdp_split_update(encoder, crtc_state);
> +	intel_audio_sdp_split_update(crtc_state);
>  
>  	intel_enable_transcoder(crtc_state);

-- 
Jani Nikula, Intel Open Source Graphics Center
