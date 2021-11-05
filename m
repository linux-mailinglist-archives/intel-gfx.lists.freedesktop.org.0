Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A0C446223
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 11:21:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFFB46E10B;
	Fri,  5 Nov 2021 10:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F1056E086
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 10:21:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="292710467"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="292710467"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 03:21:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="639734138"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 05 Nov 2021 03:21:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Nov 2021 12:21:14 +0200
Date: Fri, 5 Nov 2021 12:21:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YYUFmkGqEIDpkH8N@intel.com>
References: <20211104161858.21786-1-jani.nikula@intel.com>
 <20211104161858.21786-5-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211104161858.21786-5-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 5/6] drm/i915/audio: clean up LPE audio
 init/cleanup calls
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

On Thu, Nov 04, 2021 at 06:18:57PM +0200, Jani Nikula wrote:
> Unify audio init/cleanup paths wrt LPE audio, and base the logic on the
> return values from LPE audio calls. Move the platform device check on
> cleanup to intel_lpe_audio.c, thereby limiting all audio.lpe substruct
> access to that file.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c     | 14 ++++++++------
>  drivers/gpu/drm/i915/display/intel_lpe_audio.c |  6 ++++--
>  drivers/gpu/drm/i915/display/intel_lpe_audio.h |  4 ++--
>  3 files changed, 14 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 24e76657d561..aa7037021376 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -1403,8 +1403,10 @@ static void i915_audio_component_cleanup(struct drm_i915_private *dev_priv)
>   */
>  void intel_audio_init(struct drm_i915_private *dev_priv)
>  {
> -	if (intel_lpe_audio_init(dev_priv) < 0)
> -		i915_audio_component_init(dev_priv);
> +	if (!intel_lpe_audio_init(dev_priv))
> +		return;
> +
> +	i915_audio_component_init(dev_priv);

The logic here is already a bit funky. Technically we should not
init the component stuff except when LPE audio is not present.
Ie. we should only do it when intel_lpe_audio_init() returns
-ENODEV.

>  }
>  
>  /**
> @@ -1414,8 +1416,8 @@ void intel_audio_init(struct drm_i915_private *dev_priv)
>   */
>  void intel_audio_deinit(struct drm_i915_private *dev_priv)
>  {
> -	if ((dev_priv)->audio.lpe.platdev != NULL)
> -		intel_lpe_audio_teardown(dev_priv);
> -	else
> -		i915_audio_component_cleanup(dev_priv);
> +	if (!intel_lpe_audio_teardown(dev_priv))
> +		return;
> +
> +	i915_audio_component_cleanup(dev_priv);

Here it would probably make more sense to just call both
unconditionally so we don't have to care what happened during
init.

>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 4970bf146c4a..a2984718d136 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -296,10 +296,10 @@ int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
>   *
>   * release all the resources for LPE audio <-> i915 bridge.
>   */
> -void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
> +int intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
>  {
>  	if (!HAS_LPE_AUDIO(dev_priv))
> -		return;
> +		return -ENODEV;
>  
>  	lpe_audio_platdev_destroy(dev_priv);
>  
> @@ -307,6 +307,8 @@ void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
>  
>  	dev_priv->audio.lpe.irq = -1;
>  	dev_priv->audio.lpe.platdev = NULL;
> +
> +	return 0;
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.h b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
> index f848c5038714..030874623872 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
> @@ -12,8 +12,8 @@ enum pipe;
>  enum port;
>  struct drm_i915_private;
>  
> -int  intel_lpe_audio_init(struct drm_i915_private *dev_priv);
> -void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);
> +int intel_lpe_audio_init(struct drm_i915_private *dev_priv);
> +int intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);
>  void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv);
>  void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
>  			    enum pipe pipe, enum port port,
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
