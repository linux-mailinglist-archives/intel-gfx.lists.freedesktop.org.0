Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76571437B0F
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 18:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4846089D5B;
	Fri, 22 Oct 2021 16:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F3D89D5B
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 16:42:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="290177759"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="290177759"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:42:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="633386552"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 22 Oct 2021 09:42:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Oct 2021 19:42:26 +0300
Date: Fri, 22 Oct 2021 19:42:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, airlied@gmail.com, daniel@ffwll.ch,
 lucas.demarchi@intel.com, Dave Airlie <airlied@redhat.com>
Message-ID: <YXLp8ky4WehjANzc@intel.com>
References: <cover.1634918767.git.jani.nikula@intel.com>
 <7db2cecd528e01ad9fe89585189b171bfaa0b565.1634918767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7db2cecd528e01ad9fe89585189b171bfaa0b565.1634918767.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/audio: name the audio
 sub-struct in drm_i915_private
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

On Fri, Oct 22, 2021 at 07:27:56PM +0300, Jani Nikula wrote:
> Add name to the audio sub-struct in drm_i915_private, and remove the
> tautologies and other inconsistencies in the member names.
> 
> Cc: Dave Airlie <airlied@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 90 +++++++++----------
>  .../gpu/drm/i915/display/intel_lpe_audio.c    | 42 ++++-----
>  drivers/gpu/drm/i915/i915_drv.c               |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 22 +++--
>  4 files changed, 77 insertions(+), 79 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 03e8c05a74f6..b46f6539b9ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -388,7 +388,7 @@ hsw_dp_audio_config_update(struct intel_encoder *encoder,
>  			   const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp = dev_priv->audio_component;
> +	struct i915_audio_component *acomp = dev_priv->audio.component;
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	enum port port = encoder->port;
>  	const struct dp_aud_n_m *nm;
> @@ -436,7 +436,7 @@ hsw_hdmi_audio_config_update(struct intel_encoder *encoder,
>  			     const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	struct i915_audio_component *acomp = dev_priv->audio_component;
> +	struct i915_audio_component *acomp = dev_priv->audio.component;
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	enum port port = encoder->port;
>  	int n, rate;
> @@ -494,7 +494,7 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  	drm_dbg_kms(&dev_priv->drm, "Disable audio codec on transcoder %s\n",
>  		    transcoder_name(cpu_transcoder));
>  
> -	mutex_lock(&dev_priv->av_mutex);
> +	mutex_lock(&dev_priv->audio.lock);

Maybe we should try to be consistent in our lock names and
call mutexes 'mutex' and spinlocks 'lock'?

-- 
Ville Syrjälä
Intel
