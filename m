Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AB75253C0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 19:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7201D10E474;
	Thu, 12 May 2022 17:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CB010E474
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 17:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652376904; x=1683912904;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GKxi56fCtVoHZC4q7KSv8gyE1s9wsrlLKzKTd4ZXPmc=;
 b=c2kWcJ8kL+GuHDMeewcSZKY0IA8VwxwiX66gNp5K8+Y/5yp0AMN0TtaM
 +gVhNAuN+bEBpGAIW+5Pvlmhq//JhZhgzIDZfouXhY45ZNv/9upG57wWD
 ZzyeeE4MNYJSJSbvahxJi55QqnejCGFk8ZEzCkwjFlPLLp4sDdgpc2gZ6
 W5ySfqT2LzG+2Ksd1Q7W3xtpOCUGNH28ITC+R1ZhVL27429DiEhht5pdb
 XQJBNqdLrvvVk6EBoyt6G3/CNRj5Pm9NFbAPllCkKp80KI6WoWmL8+3nZ
 Y4sa+J1aswe7Ixp85i+fUIawkVxJoW5Cx6GoXdeZweUSM8vtmghyoMz7e w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="270022949"
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="270022949"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 10:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="712017499"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 12 May 2022 10:27:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 May 2022 20:27:00 +0300
Date: Thu, 12 May 2022 20:27:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yn1DZHCr/xccSUbP@intel.com>
References: <20220512161638.272601-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220512161638.272601-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: fix audio code
 enable/disable pipe logging
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

On Thu, May 12, 2022 at 07:16:38PM +0300, Jani Nikula wrote:
> Need to use pipe_name(pipe) instead of pipe directly.
> 
> Fixes: 1f31e35f2e88 ("drm/i915/audio: unify audio codec enable/disable debug logging")
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 1c87bf66b092..f0f0dfce27ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -827,7 +827,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on pipe %c, %u bytes ELD\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.base.id, encoder->base.name,
> -		    pipe, drm_eld_size(connector->eld));
> +		    pipe_name(pipe), drm_eld_size(connector->eld));
>  
>  	/* FIXME precompute the ELD in .compute_config() */
>  	if (!connector->eld[0])
> @@ -888,7 +888,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  
>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on pipe %c\n",
>  		    connector->base.id, connector->name,
> -		    encoder->base.base.id, encoder->base.name, pipe);
> +		    encoder->base.base.id, encoder->base.name, pipe_name(pipe));
>  
>  	if (dev_priv->audio.funcs)
>  		dev_priv->audio.funcs->audio_codec_disable(encoder,
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
