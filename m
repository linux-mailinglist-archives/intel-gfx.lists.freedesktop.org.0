Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E0724A2B1
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 17:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A31A6E437;
	Wed, 19 Aug 2020 15:20:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com
 [IPv6:2607:f8b0:4864:20::f42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AE9F6E435
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 15:20:05 +0000 (UTC)
Received: by mail-qv1-xf42.google.com with SMTP id t6so11445061qvw.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 08:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OgiZ6Y/0hox6pi+4Ied7l3tVoiuHB+LCS8FAr/Xzuk8=;
 b=f86P3QVkHyAU4Q9c3x85TaRlwDBm9WyryIioz3ZPnyhB5uJVkxOTFpoSxiOI7mrYTh
 N2xyUoRwFcBj/PozeyH+tZP8DnKfc6/FpuoO6esPL88k1+nIbOZQAQlmj0ORgZZXBrYi
 Ro+kpT/9Ls7ezHWaq6ko3UIsRjY4j2diiFsAvySpNEre3Fws5M6+nhThmlsSlM7OFLVt
 MWC/eB4JCPqZC4TxyT+SwJpwecjybWVi3NPFAYD6v29dl2V2UKZ0kwrF+FX4rxQBoPIM
 aSQaiMvanpvRT8PoShzX+xzqebdpRkPG6vMe6LO3EC1gi/or//TeWYrn6h9Nh3gAX7gO
 fDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OgiZ6Y/0hox6pi+4Ied7l3tVoiuHB+LCS8FAr/Xzuk8=;
 b=UruPCQ0AgqVf4RMSgiDBoAX1PLVFVegPGnIchccUwfpK/HXa9zFniJe6Xucz612QvS
 cH4zbX2FVXjRUqkjMglMOGxc9yV5Kb52vkvLpByzDXiGxvqXY8LodnVuTYVmtW5g611x
 Vsqpjf4po8TFyWMci4t7F0NSgPv+oVM5UfRmMaftYwv5GLXgTxf/NCg+pmpsVq7rDa8y
 pSTD0Z7BhEKV1hRROgr+XBRgTBIT8MQwqEMwaH2vUdTct/4Tl0gpFmwLU9h8gLp4oE0B
 5bDkKQpVMxxq1LDiYy+7LPow3saHeoKogKuP7MNjqZ1tgE10OxgXTqc4Hk8lM+piP0/W
 04LQ==
X-Gm-Message-State: AOAM531azoXezQ3PUNYSlSH5We3J1DuAqeihGY8mcUlxnjjnJ3Ne+eJn
 gZ91QB14jTP3bPO1peYBixuw/w==
X-Google-Smtp-Source: ABdhPJwnbHYuA+KtIZBO6Nnlpq6WTXsQBKkbodAKIsUcXZ+BNv2ajyWZIFO5Rvrb7AJUx0osiT+LVg==
X-Received: by 2002:ad4:510c:: with SMTP id g12mr23880400qvp.106.1597850404626; 
 Wed, 19 Aug 2020 08:20:04 -0700 (PDT)
Received: from localhost (mobile-166-177-185-175.mycingular.net.
 [166.177.185.175])
 by smtp.gmail.com with ESMTPSA id q16sm24874583qkn.115.2020.08.19.08.20.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Aug 2020 08:20:04 -0700 (PDT)
Date: Wed, 19 Aug 2020 11:20:02 -0400
From: Sean Paul <sean@poorly.run>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20200819152002.GC46474@art_vandelay>
References: <20200811200457.134743-1-lyude@redhat.com>
 <20200811200457.134743-16-lyude@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200811200457.134743-16-lyude@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC 15/20] drm/i915/dp: Extract
 drm_dp_has_sink_count()
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
Cc: David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 11, 2020 at 04:04:52PM -0400, Lyude Paul wrote:
> Since other drivers are also going to need to be aware of the sink count
> in order to do proper dongle detection, we might as well steal i915's
> DP_SINK_COUNT helpers and move them into DRM helpers so that other
> dirvers can use them as well.
> 
> Note that this also starts using intel_dp_has_sink_count() in
> intel_dp_detect_dpcd(), which is a functional change.
> 

Reviewed-by: Sean Paul <sean@poorly.run>

> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/drm_dp_helper.c         | 22 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++---------
>  include/drm/drm_dp_helper.h             |  8 +++++++-
>  3 files changed, 41 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
> index 9703b33599c3b..05bb47e589731 100644
> --- a/drivers/gpu/drm/drm_dp_helper.c
> +++ b/drivers/gpu/drm/drm_dp_helper.c
> @@ -700,6 +700,28 @@ void drm_dp_set_subconnector_property(struct drm_connector *connector,
>  }
>  EXPORT_SYMBOL(drm_dp_set_subconnector_property);
>  
> +/**
> + * drm_dp_has_sink_count() - Check whether a given connector has a valid sink
> + * count
> + * @connector: The DRM connector to check
> + * @dpcd: A cached copy of the connector's DPCD RX capabilities
> + * @desc: A cached copy of the connector's DP descriptor
> + *
> + * Returns: %True if the (e)DP connector has a valid sink count that should
> + * be probed, %false otherwise.
> + */
> +bool drm_dp_has_sink_count(struct drm_connector *connector,
> +			   const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> +			   const struct drm_dp_desc *desc)
> +{
> +	/* Some eDP panels don't set a valid value for the sink count */
> +	return connector->connector_type != DRM_MODE_CONNECTOR_eDP &&
> +		dpcd[DP_DPCD_REV] >= DP_DPCD_REV_11 &&
> +		dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT &&
> +		!drm_dp_has_quirk(desc, 0, DP_DPCD_QUIRK_NO_SINK_COUNT);
> +}
> +EXPORT_SYMBOL(drm_dp_has_sink_count);
> +
>  /*
>   * I2C-over-AUX implementation
>   */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 984e49194ca31..35a4779a442e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4634,6 +4634,16 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>  	return true;
>  }
>  
> +static bool
> +intel_dp_has_sink_count(struct intel_dp *intel_dp)
> +{
> +	if (!intel_dp->attached_connector)
> +		return false;
> +
> +	return drm_dp_has_sink_count(&intel_dp->attached_connector->base,
> +				     intel_dp->dpcd,
> +				     &intel_dp->desc);
> +}
>  
>  static bool
>  intel_dp_get_dpcd(struct intel_dp *intel_dp)
> @@ -4653,13 +4663,7 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
>  		intel_dp_set_common_rates(intel_dp);
>  	}
>  
> -	/*
> -	 * Some eDP panels do not set a valid value for sink count, that is why
> -	 * it don't care about read it here and in intel_edp_init_dpcd().
> -	 */
> -	if (!intel_dp_is_edp(intel_dp) &&
> -	    !drm_dp_has_quirk(&intel_dp->desc, 0,
> -			      DP_DPCD_QUIRK_NO_SINK_COUNT)) {
> +	if (intel_dp_has_sink_count(intel_dp)) {
>  		u8 count;
>  		ssize_t r;
>  
> @@ -5939,9 +5943,8 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
>  		return connector_status_connected;
>  
>  	/* If we're HPD-aware, SINK_COUNT changes dynamically */
> -	if (intel_dp->dpcd[DP_DPCD_REV] >= 0x11 &&
> +	if (intel_dp_has_sink_count(intel_dp) &&
>  	    intel_dp->downstream_ports[0] & DP_DS_PORT_HPD) {
> -
>  		return intel_dp->sink_count ?
>  		connector_status_connected : connector_status_disconnected;
>  	}
> diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
> index 1349f16564ace..a1413a531eaf4 100644
> --- a/include/drm/drm_dp_helper.h
> +++ b/include/drm/drm_dp_helper.h
> @@ -1631,6 +1631,11 @@ void drm_dp_set_subconnector_property(struct drm_connector *connector,
>  				      const u8 *dpcd,
>  				      const u8 port_cap[4]);
>  
> +struct drm_dp_desc;
> +bool drm_dp_has_sink_count(struct drm_connector *connector,
> +			   const u8 dpcd[DP_RECEIVER_CAP_SIZE],
> +			   const struct drm_dp_desc *desc);
> +
>  void drm_dp_remote_aux_init(struct drm_dp_aux *aux);
>  void drm_dp_aux_init(struct drm_dp_aux *aux);
>  int drm_dp_aux_register(struct drm_dp_aux *aux);
> @@ -1689,7 +1694,8 @@ enum drm_dp_quirk {
>  	 * @DP_DPCD_QUIRK_NO_SINK_COUNT:
>  	 *
>  	 * The device does not set SINK_COUNT to a non-zero value.
> -	 * The driver should ignore SINK_COUNT during detection.
> +	 * The driver should ignore SINK_COUNT during detection. Note that
> +	 * drm_dp_has_sink_count() automatically checks for this quirk.
>  	 */
>  	DP_DPCD_QUIRK_NO_SINK_COUNT,
>  	/**
> -- 
> 2.26.2
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Sean Paul, Software Engineer, Google / Chromium OS
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
