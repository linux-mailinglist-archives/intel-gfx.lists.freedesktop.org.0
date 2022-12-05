Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0851A643601
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 21:48:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99E7410E299;
	Mon,  5 Dec 2022 20:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7071210E299
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670273313; x=1701809313;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8ieRpU+TBb52oDKP1kfSG2URp7s5ip1n3HWepy+B40E=;
 b=D1NyAmxl/2JDWl7hJ2pYvimk6Rt9EDc7zdYE0orxQW/JjiCsn0QH5wVI
 BH7CLweX5Rkz2EBn+DBCVe0nYtGPnNx80i/jAtN8xS1X3ONBblqsE8gb6
 5pPn2orcgC+1GCJVE06IwBsF67VF92emI4MI56uwokFIlW9xZAklyyelI
 wkFys6QKqoZUWOSZhY4q9t4lAJHXBZ3/GRNUOLLtaVLzfxgxmmQf/uY62
 QU4EZVKZQDIpXLMbuz/Zz2NFcvaMBbczjwbyJBYMDkc69bgFc3WVj3dT5
 ERP+5/LNtUkVFqLR4NYILDml06DesZ+v8dvxRpsFKgJ16rxYwWY7sqFU6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317602596"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317602596"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 12:48:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="639626300"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="639626300"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 12:48:31 -0800
Date: Mon, 5 Dec 2022 12:48:43 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20221205204843.GA1209860@mdnavare-mobl1.jf.intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
 <20221202134412.21943-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221202134412.21943-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/vrr: Reorder transcoder vs.
 vrr enable/disable
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 02, 2022 at 03:44:11PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On mtl it looks like disabling VRR after the transcoder has
> been disabled can cause the pipe/transcoder to get stuck
> when re-enabled in non-vrr mode. Reversing the order seems to
> help.
> 
> Bspec is extremely confused about the VRR enable/disable sequence
> anyway, and this now more closely matches the non-modeset VRR
> sequence, whereas the full modeset sequence still claims that
> the original order is fine. But since we eventually want to toggle
> VRR without a full modeset anyway this seems like the better order
> to follow.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 5f9a2410fc4c..69595cbb2766 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2726,10 +2726,10 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>  	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
>  		intel_crtc_vblank_off(old_crtc_state);
>  
> -		intel_disable_transcoder(old_crtc_state);
> -
>  		intel_vrr_disable(old_crtc_state);
>  
> +		intel_disable_transcoder(old_crtc_state);
> +
>  		intel_ddi_disable_transcoder_func(old_crtc_state);
>  
>  		intel_dsc_disable(old_crtc_state);
> @@ -2946,13 +2946,13 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
>  		intel_ddi_enable_transcoder_func(encoder, crtc_state);
>  
> -	intel_vrr_enable(encoder, crtc_state);
> -
>  	/* Enable/Disable DP2.0 SDP split config before transcoder */
>  	intel_audio_sdp_split_update(encoder, crtc_state);
>  
>  	intel_enable_transcoder(crtc_state);
>  
> +	intel_vrr_enable(encoder, crtc_state);
> +
>  	intel_crtc_vblank_on(crtc_state);
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -- 
> 2.37.4
> 
