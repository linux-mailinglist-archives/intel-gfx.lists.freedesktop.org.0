Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB59A34E45
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:14:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D5D10EB7E;
	Thu, 13 Feb 2025 19:14:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DT8l+xzE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D1BE10EB7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739474067; x=1771010067;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=iq1MLrE1TL4oqPRSmrorldiNWuDE6nn1KaR4lcTOlqo=;
 b=DT8l+xzEBh+KdiakQbwUGaiKYNFnHJ2BDzCHtCfm3ruPY7FBxN3D5nwy
 8frvY4b4SOTnxhgk+OJ2pouM8IvvgB87zaWD3BA+Izn3/j33ePSuO6XQ4
 ISNpKBQmbjPf4S+lQehci59OwuSrV0DTdyCY4xTXeLi+9Z4R4puZOkjnR
 9/JBHMrF65/3Zo+d/YgVCIfRnTNv9rDXg2EedB+Pq3u52WUyaE1cEJBHi
 aTOkLCbJPIPZ5EsdNXZRAr3MvWuRAIpDEzAQOCwZjGW1dsweITUVfnUK8
 wkqi7C/zudomw6/75JTVtBFUW9YpviptBYMR+X777xTTCpSp79hCvoTVv w==;
X-CSE-ConnectionGUID: ECRRJhz6TH6bSFee6N+zyg==
X-CSE-MsgGUID: 4pP8cOf0RKSv55Gbdy1uWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="44130799"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="44130799"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:14:26 -0800
X-CSE-ConnectionGUID: 96Eug8iFQuGdJJAqI39vKw==
X-CSE-MsgGUID: uv/NgIHXSYKwLV6buUYmkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="112982344"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:14:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/12] drm/i915: Extract intel_hdcp_cancel_works()
In-Reply-To: <20250213150220.13580-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-5-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:14:21 +0200
Message-ID: <878qq9y7w2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 13 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Hide the annoying HDCP implementation details better by
> providing a intel_hdcp_cancel_works().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Somehow the "cancel works" reads funny to me, but it's accurate.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++----
>  drivers/gpu/drm/i915/display/intel_hdcp.c    | 9 +++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp.h    | 1 +
>  3 files changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 93392752b470..d3f8af9c75ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -93,6 +93,7 @@
>  #include "intel_fdi.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_frontbuffer.h"
> +#include "intel_hdcp.h"
>  #include "intel_hdmi.h"
>  #include "intel_hotplug.h"
>  #include "intel_link_bw.h"
> @@ -8789,10 +8790,7 @@ void intel_hpd_poll_fini(struct drm_i915_private *=
i915)
>  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
>  		intel_connector_cancel_modeset_retry_work(connector);
> -		if (connector->hdcp.shim) {
> -			cancel_delayed_work_sync(&connector->hdcp.check_work);
> -			cancel_work_sync(&connector->hdcp.prop_work);
> -		}
> +		intel_hdcp_cancel_works(connector);
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/=
i915/display/intel_hdcp.c
> index 1aa4c0fd216f..591851954114 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2615,6 +2615,15 @@ void intel_hdcp_update_pipe(struct intel_atomic_st=
ate *state,
>  		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>  }
>=20=20
> +void intel_hdcp_cancel_works(struct intel_connector *connector)
> +{
> +	if (!connector->hdcp.shim)
> +		return;
> +
> +	cancel_delayed_work_sync(&connector->hdcp.check_work);
> +	cancel_work_sync(&connector->hdcp.prop_work);
> +}
> +
>  void intel_hdcp_component_fini(struct intel_display *display)
>  {
>  	mutex_lock(&display->hdcp.hdcp_mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/=
i915/display/intel_hdcp.h
> index 3a7905551051..efe86808e17e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -33,6 +33,7 @@ void intel_hdcp_enable(struct intel_atomic_state *state,
>  		       const struct intel_crtc_state *pipe_config,
>  		       const struct drm_connector_state *conn_state);
>  int intel_hdcp_disable(struct intel_connector *connector);
> +void intel_hdcp_cancel_works(struct intel_connector *connector);
>  void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  			    struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *crtc_state,

--=20
Jani Nikula, Intel
