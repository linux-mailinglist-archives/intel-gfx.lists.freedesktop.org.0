Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 253F86F6E64
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 16:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 841F710E120;
	Thu,  4 May 2023 14:57:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A41AD10E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 14:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683212273; x=1714748273;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+fj0Gio4VIGUPfIFVhIgbTGsi8KEhf37Y9vzw+Rj0KQ=;
 b=d4OCAM8Wx7b8zi/Zk47D2OOLtt+ZkMXDhJh/3zCKTPEBslN1yIg0sBCk
 jN9ZGCuWag9X9KkGUKL4dOGrBeMPeCEx+bzpBU+KK/m1MyHaAog1DITJ7
 K2cfAqGHaA9djfbWQs/+rVE8fgl1yCCZmgiUjzbGiTO6uQRZ1kCcXB0Hg
 4M1N1xwId7qgwaeLseHKMdH5/2SWAyEU7I5GuId5V3FkQL3p3BldblurV
 TZ4kbo1Mnt4/2vst75n4JgvyZ8+7R9MthhivBvmgdMjzNnEvFkB/xCbWc
 uH/OAxG6Z7+dJO15kDVCIC93jvHtIxFupd5r/MPlWeGaZ7NO73+qkVODr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="351069258"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="351069258"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 07:54:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821200983"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="821200983"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 04 May 2023 07:54:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 May 2023 17:54:44 +0300
Date: Thu, 4 May 2023 17:54:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZFPHNDGPE56sxrp+@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230503231048.432368-10-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 09/12] drm/i915/dp: Prevent link training
 fallback on disconnected port
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

On Thu, May 04, 2023 at 02:10:45AM +0300, Imre Deak wrote:
> Prevent downgrading the link training maximum lane count/rate if the
> sink is disconnected - and so the link training failure is expected. In
> such cases modeset failures due to the reduced max link params would be
> just confusing for user space (instead of which the correct thing it
> should act on is the sink disconnect signaled by a hotplug event,
> requiring a disabling modeset).
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.h               | 1 +
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 +++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 488da392fafe5..ca12a1733df6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -102,6 +102,7 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
>  void intel_read_dp_sdp(struct intel_encoder *encoder,
>  		       struct intel_crtc_state *crtc_state,
>  		       unsigned int type);
> +bool intel_dp_is_connected(struct intel_dp *intel_dp);
>  bool intel_digital_port_connected(struct intel_encoder *encoder);
>  int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>  u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 2fe076e2d64b3..fcccf410f7693 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1088,6 +1088,11 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
>  {
>  	struct intel_connector *intel_connector = intel_dp->attached_connector;
>  
> +	if (!intel_dp_is_connected(intel_dp)) {
> +		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
> +		return;
> +	}
> +
>  	if (intel_dp->hobl_active) {
>  		lt_dbg(intel_dp, DP_PHY_DPRX,
>  		       "Link Training failed with HOBL active, not enabling it from now on\n");
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
