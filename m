Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D8E6F6DFB
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 16:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C584A10E120;
	Thu,  4 May 2023 14:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2735410E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 14:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683211716; x=1714747716;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HRTl4XHn+MdccK3l+eQZxZuyQHwq9oQVdahwkXivwyE=;
 b=Gm2Tqp6hjdYRiEQq2pFjt1P8obXP7ialXRnsjAwTnuG+IgGB1ni9Az+z
 StTVzu9WaPVZbWdzX8jZQJ5meWjnPXIOO14s1ZMcT26yJiY3oCD/0kUfe
 7BCcVkkzFOk6hIi0bYf+4PunZUPkFrua1zbRQnEQcsLntq0oBZvaHVOGC
 OUNs8vF3ifWME1dTwzOGFKhiNqwnZhaxxJKTQb0c8a7/5dC+EnPFunLeC
 hMXoJgPkxJOC4Hr8CZafYun71i/fZOF7sYrSMFf4V3Jo8BHMK0ujZ7GXi
 kkQKQ5GUJADfW5v2A5YN0merQECChuR5ujzof09cS5D0m+FoiL0CEgL2N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="377018849"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="377018849"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 07:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="841207379"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="841207379"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 04 May 2023 07:48:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 May 2023 17:48:31 +0300
Date: Thu, 4 May 2023 17:48:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZFPFv4D2cEf9fsL0@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-6-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230503231048.432368-6-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 05/12] drm/i915: Factor out
 set_encoder_for_connector()
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

On Thu, May 04, 2023 at 02:10:41AM +0300, Imre Deak wrote:
> Factor out a function setting the encoder and CRTC in the connector
> atomic state, required by a follow up patch.
> 
> No functional changes.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../drm/i915/display/intel_modeset_setup.c    | 28 +++++++++++++------
>  1 file changed, 19 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 922ea5ddd0c5b..9848d20582963 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -87,6 +87,24 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
>  	}
>  }
>  
> +static void set_encoder_for_connector(struct intel_connector *connector,
> +				      struct intel_encoder *encoder)
> +{
> +	struct drm_connector_state *conn_state = connector->base.state;
> +
> +	if (conn_state->crtc)
> +		drm_connector_put(&connector->base);
> +
> +	if (encoder) {
> +		conn_state->best_encoder = &encoder->base;
> +		conn_state->crtc = encoder->base.crtc;
> +		drm_connector_get(&connector->base);
> +	} else {
> +		conn_state->best_encoder = NULL;
> +		conn_state->crtc = NULL;
> +	}
> +}
> +
>  static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
>  {
>  	struct intel_encoder *encoder;
> @@ -141,8 +159,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
>  		struct intel_encoder *encoder =
>  			to_intel_encoder(connector->base.encoder);
>  
> -		if (conn_state->crtc)
> -			drm_connector_put(&connector->base);
> +		set_encoder_for_connector(connector, encoder);
>  
>  		if (encoder) {
>  			struct intel_crtc *crtc =
> @@ -150,14 +167,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
>  			const struct intel_crtc_state *crtc_state =
>  				to_intel_crtc_state(crtc->base.state);
>  
> -			conn_state->best_encoder = &encoder->base;
> -			conn_state->crtc = &crtc->base;
>  			conn_state->max_bpc = (crtc_state->pipe_bpp ?: 24) / 3;
> -
> -			drm_connector_get(&connector->base);
> -		} else {
> -			conn_state->best_encoder = NULL;
> -			conn_state->crtc = NULL;
>  		}
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
