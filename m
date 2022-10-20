Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 841CE605DEA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 12:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6398A10EE64;
	Thu, 20 Oct 2022 10:39:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A921E10E6B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 10:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666262293; x=1697798293;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=jpP7BXXQ3TRMCQ/t6YdoZ5vxrEXorEf4oNikgBwCQnY=;
 b=AQR1TFkgmYvkRKu/pARd/hwuGoAZadZyC8jiCHRqPcYibFCBj5iKgpUK
 k3BSr31VtTfYXto1OMsIQFyRjjN0aG6kPCtW0p6bbv61QOyeH3u43zhd4
 pgmfVET/L62FcgnphUUa5Jn/ZM+WoGnSYtK876dwxZ+zyWcab1/UJO0cf
 72NP6c6jV3X1J+3LncmiqOjP+k2u3aCwwSLfC7oqqmGfYdDxcYEAoqRaA
 5OPJGX31/40CFzQey5N7HbN1IV2Kn7IgSDkKG/cxhLd7GAZ3LgmYZczg8
 2bdpbwx+/41IBh+f7cIx/G7sg4G9m1WlVdVcdZMLHUL6OAC1UXze8KQZj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286390955"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="286390955"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 03:38:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="718986040"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="718986040"
Received: from xhallade-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.45.249])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 03:38:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221020100609.868855-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221020100609.868855-1-suraj.kandpal@intel.com>
 <20221020100609.868855-2-suraj.kandpal@intel.com>
Date: Thu, 20 Oct 2022 13:38:06 +0300
Message-ID: <87bkq6hjap.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915: Removing one use macro
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

On Thu, 20 Oct 2022, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Removing one use macro for_each_connector_on_encoder which
> is only being used at intel_encoder_find_connector.

Please use the imperative mood in commit message and subject. "Remove",
not "removing" or "removed".

With that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h     |  4 ----
>  .../gpu/drm/i915/display/intel_modeset_setup.c   | 16 ++++++++++++----
>  2 files changed, 12 insertions(+), 8 deletions(-)
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
> index cbfabd58b75a..5f56e0335ff0 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -205,13 +205,21 @@ static bool intel_crtc_has_encoders(struct intel_crtc *crtc)
>  
>  static struct intel_connector *intel_encoder_find_connector(struct intel_encoder *encoder)
>  {
> -	struct drm_device *dev = encoder->base.dev;
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct drm_connector_list_iter conn_iter;
>  	struct intel_connector *connector;
> +	struct intel_connector *found_connector = NULL;
>  
> -	for_each_connector_on_encoder(dev, &encoder->base, connector)
> -		return connector;
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		if (&encoder->base == connector->base.encoder) {
> +			found_connector = connector;
> +			break;
> +		}
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
>  
> -	return NULL;
> +	return found_connector;
>  }
>  
>  static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state *crtc_state)

-- 
Jani Nikula, Intel Open Source Graphics Center
