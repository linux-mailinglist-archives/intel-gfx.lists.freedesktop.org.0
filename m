Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB23E605B52
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 11:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B46910E650;
	Thu, 20 Oct 2022 09:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F92A10E650
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 09:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666258669; x=1697794669;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vGzkSZ3mvo7cGnj5OqtVttPw1lEeg0vaowSYr7VvEcc=;
 b=YZtG+sNY5xqLYOcFUpmFSfyYbixcAWdp5Bd50fqazzu5TbEHoe+H0BrE
 32dUU32qFgrFsJ16GGdqQxG3aV/REvGZyYLW3vDcxNW7M7grhwUBJs8M+
 qPEz07S3q2glbOopbqQUPkgqU4sJU9rZ2W1btPSxXOb/2QOOOCKksWzGx
 VMCUQNzS48Ax5svl+kT00uLnusY8ON2/ss68Mbf4n1xmVDjOpg+kcKUb4
 vM4D/Qi6Jg12o7J+UQWKoT4pPtVwDyQMXLVDMT1QPXDeM2iEoa/YJkDkl
 m700CtZWdp4HRrgUzspIXVZV0/pYE5e7Em2rtmRmbs9kv5Ztmw6hLusIg g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="392965922"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="392965922"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 02:37:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="692877453"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="692877453"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 20 Oct 2022 02:37:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 12:37:45 +0300
Date: Thu, 20 Oct 2022 12:37:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <Y1EW6TdHhpZ4YqHk@intel.com>
References: <20221020092049.857144-1-suraj.kandpal@intel.com>
 <20221020092049.857144-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221020092049.857144-2-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Removing one use macro
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 20, 2022 at 02:50:49PM +0530, Suraj Kandpal wrote:
> Removing one use macro for_each_connector_on_encoder which
> is only being used at intel_encoder_find_connector.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h     |  4 ----
>  .../gpu/drm/i915/display/intel_modeset_setup.c   | 16 +++++++++++++---
>  2 files changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 2af4a1925063..c803330a276d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -469,10 +469,6 @@ enum hpd_pin {
>  	list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
>  		for_each_if((intel_encoder)->base.crtc == (__crtc))
>  
> -#define for_each_connector_on_encoder(dev, __encoder, intel_connector) \
> -	list_for_each_entry((intel_connector), &(dev)->mode_config.connector_list, base.head) \
> -		for_each_if((intel_connector)->base.encoder == (__encoder))
> -
>  #define for_each_old_intel_plane_in_state(__state, plane, old_plane_state, __i) \
>  	for ((__i) = 0; \
>  	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index cbfabd58b75a..31ce4ac4059c 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -205,12 +205,22 @@ static bool intel_crtc_has_encoders(struct intel_crtc *crtc)
>  
>  static struct intel_connector *intel_encoder_find_connector(struct intel_encoder *encoder)
>  {
> -	struct drm_device *dev = encoder->base.dev;
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	bool found_connector = false;
>  
> -	for_each_connector_on_encoder(dev, &encoder->base, connector)
> -		return connector;
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +		for_each_intel_connector_iter(connector, &conn_iter) {

Bogus indentation.

> +			if (&encoder->base == connector->base.encoder) {

Still using the legacy pointers so not great. But I suppse it's
still better than before because the horrors are now better
contained in this file rather than in an official looking macro.

I do have some work in some old branch to get rid of the legacy
pointer crap, but it'll probably need a rewrite by now...

> +				found_connector = true;
> +				break;
> +			}
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
>  
> +	if (found_connector)

I would make that a pointer to the connector, then you can
just return it directly. And as a bonus we don't use the
loop iterator outside the loop anymore, which is a bit
questionable in general.

> +		return connector;
>  	return NULL;
>  }
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
