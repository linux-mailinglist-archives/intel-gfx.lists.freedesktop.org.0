Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3FEA34E3E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:12:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C4F10E134;
	Thu, 13 Feb 2025 19:12:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vf28BnEQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1301510E134
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739473957; x=1771009957;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=m4Q++5hJLfmHuLzPhWAeaGKYU7/llM24AXQZmx7q00g=;
 b=Vf28BnEQlSkvzrZT807T2HWfN/yZdBp40AHJVWjtwy+Ytj/uQmWxz/t+
 t8wfL4lBEfVbkG4cFwKpoLGjW6Gqhms7mby3gdnOb6t3asllPhFOfNGmq
 83nlNbjHbr0gMxIcSTuXbciSAsSg4x+NQvsSEhUtdpXvWQ+DkmiAd1zkL
 pLzW+uVcRu8xz1yc+iXDon44pVNlIKH7Xga1rP7Dko9GG4+ZfhbzLHo6D
 kZs1CawSl2pLOuUKu3vULZ6WV/t2QzsLsxK+Xggtdd5n+HqBFLZn3z7bh
 n92tRlK+wenVFC0DaJ/uSFbAoDUe1f5KZpVSGutQjVb7/q5neVzE+VK0/ Q==;
X-CSE-ConnectionGUID: W1FdWWc3SMyHH7G4QWmi0g==
X-CSE-MsgGUID: jCdLKhqxS1+oVhRaxvGxMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="50845235"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50845235"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:12:36 -0800
X-CSE-ConnectionGUID: zFN+frP0TXKCqAYI0tx/TQ==
X-CSE-MsgGUID: 6uvbUo3PQCCwXvKNzblGvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136466670"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:12:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 03/12] drm/i915: Extract
 intel_connector_cancel_modeset_retry_work()
In-Reply-To: <20250213150220.13580-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-4-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:12:31 +0200
Message-ID: <87ed01y7z4.fsf@intel.com>
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
> Hide the implementation details of the modeset retry work
> better.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

With the declaration moved from patch 1 to here,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_connector.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_display.c   | 4 ++--
>  2 files changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu=
/drm/i915/display/intel_connector.c
> index b1240be2ec6d..358965fc7f55 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -70,6 +70,12 @@ void intel_connector_queue_modeset_retry_work(struct i=
ntel_connector *connector)
>  		drm_connector_put(&connector->base);
>  }
>=20=20
> +void intel_connector_cancel_modeset_retry_work(struct intel_connector *c=
onnector)
> +{
> +	if (cancel_work_sync(&connector->modeset_retry_work))
> +		drm_connector_put(&connector->base);
> +}
> +
>  int intel_connector_init(struct intel_connector *connector)
>  {
>  	struct intel_digital_connector_state *conn_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 858886eea6cc..93392752b470 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -62,6 +62,7 @@
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
> +#include "intel_connector.h"
>  #include "intel_color.h"
>  #include "intel_crt.h"
>  #include "intel_crtc.h"
> @@ -8787,8 +8788,7 @@ void intel_hpd_poll_fini(struct drm_i915_private *i=
915)
>  	/* Kill all the work that may have been queued by hpd. */
>  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
> -		if (cancel_work_sync(&connector->modeset_retry_work))
> -			drm_connector_put(&connector->base);
> +		intel_connector_cancel_modeset_retry_work(connector);
>  		if (connector->hdcp.shim) {
>  			cancel_delayed_work_sync(&connector->hdcp.check_work);
>  			cancel_work_sync(&connector->hdcp.prop_work);

--=20
Jani Nikula, Intel
