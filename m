Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D883364CBF0
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 15:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D18D10E409;
	Wed, 14 Dec 2022 14:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B5410E409
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 14:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671027382; x=1702563382;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IXmrO+Oa5an/yjAoReIpYjxFRNxDK6UmxYnVID6EvPo=;
 b=Ri6XqfqO2QHFEGvqM9pntoUdvPxUpofvjOndgIbMhEN1cfMzPqt2MCRz
 qM//f5kPS3ilLKMZ/Zb6l6I3SfMFQDVDg3Ivfj+zYS553hfgBE8B9Dmw1
 /4qNKf1rYGvatD2988fZfBZFyCXMGWgQJMAT+ZCC9G8ECqqva14mWlvG8
 RFRl3jqzqXgG5uz988bDGlqoa99byVRdtm4DssKkSJaZI33oQenhpVWEb
 MohDD863iExI5XzFQ+03dcQDQmelf/DH45PWCWf+EIQwrnqpqdrZ6T4ug
 tdUB2uA7Oa5kQPrhseoDi8u8HVyC6OWkIr2NVeWv/FX/n37cEawEtmeO6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="318455553"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="318455553"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 06:16:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="681518597"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="681518597"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 14 Dec 2022 06:16:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Dec 2022 16:16:18 +0200
Date: Wed, 14 Dec 2022 16:16:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y5nasjYBDglQdxK8@intel.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
 <8b7e188de7b6cd8bf9e9849e315d51751f9d2b14.1670855299.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8b7e188de7b6cd8bf9e9849e315d51751f9d2b14.1670855299.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/hdmi: abstract scanline range
 wait into intel_vblank.[ch]
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

On Mon, Dec 12, 2022 at 04:29:22PM +0200, Jani Nikula wrote:
> Let's not have scanline waits inline in hdmi code.
> 
> This kind of waits should really have timeouts; add a FIXME comment.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c   |  9 ++-------
>  drivers/gpu/drm/i915/display/intel_vblank.c | 14 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vblank.h |  1 +
>  3 files changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index e82f8a07e2b0..af6ef665368e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -56,6 +56,7 @@
>  #include "intel_lspcon.h"
>  #include "intel_panel.h"
>  #include "intel_snps_phy.h"
> +#include "intel_vblank.h"
>  
>  static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
>  {
> @@ -1476,15 +1477,9 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector,
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct intel_crtc *crtc = to_intel_crtc(connector->base.state->crtc);
> -	u32 scanline;
>  	int ret;
>  
> -	for (;;) {
> -		scanline = intel_de_read(dev_priv, PIPEDSL(crtc->pipe));
> -		if (scanline > 100 && scanline < 200)
> -			break;
> -		usleep_range(25, 50);
> -	}
> +	intel_wait_for_pipe_scanline_range(crtc, 100, 200);
>  
>  	ret = intel_ddi_toggle_hdcp_bits(&dig_port->base, cpu_transcoder,
>  					 false, TRANS_DDI_HDCP_SIGNALLING);
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index f25ec643a0a3..aec7758ef917 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -452,3 +452,17 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
>  {
>  	wait_for_pipe_scanline_moving(crtc, true);
>  }
> +
> +void intel_wait_for_pipe_scanline_range(struct intel_crtc *crtc, u32 start, u32 end)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	u32 scanline;
> +
> +	/* FIXME: This needs to timeout and/or check that scanline is moving. */
> +	for (;;) {
> +		scanline = intel_de_read(dev_priv, PIPEDSL(crtc->pipe));

If we want to advertise this as any kind of official thing then 
it should really use intel_get_crtc_scanline() which eg. accounts
for crtc->scanline_offset.

But I have no solid idea what this thing is even trying to do.
There is one workaround I see that says some hdcp bits must be
toggled during a single frame, and if this is that then it
should probably be rewritten to make proper sense, or at least
it should have a comment stating what the heck it's trying to do.

> +		if (scanline > start && scanline < end)
> +			break;
> +		usleep_range(25, 50);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
> index 54870cabd734..e88addfccea8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -19,5 +19,6 @@ bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
>  int intel_get_crtc_scanline(struct intel_crtc *crtc);
>  void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
>  void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
> +void intel_wait_for_pipe_scanline_range(struct intel_crtc *crtc, u32 start, u32 end);
>  
>  #endif /* __INTEL_VBLANK_H__ */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
