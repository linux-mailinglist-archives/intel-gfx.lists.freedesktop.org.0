Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A4336CC71
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 22:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B9D6E5B6;
	Tue, 27 Apr 2021 20:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8193A6E5B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 20:39:51 +0000 (UTC)
IronPort-SDR: Rfvr+jmrd1cqmpuMJBHlppOD7NUs1/T6Tdwc9I1WWZhuj/QY6kGeaeVqCv75wp2t9Ytx077q0G
 WGbWFajDBO3g==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="193400556"
X-IronPort-AV: E=Sophos;i="5.82,255,1613462400"; d="scan'208";a="193400556"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 13:39:50 -0700
IronPort-SDR: IvKOWED2Hu0fo8Y/4O6cFYyFKGn9kKe635iGyyclhhK3BxqHZW31Tg8uYgRyzuTfPm0av1uNRJ
 x3ZI1F+CYlxg==
X-IronPort-AV: E=Sophos;i="5.82,255,1613462400"; d="scan'208";a="447717997"
Received: from btutuevx-desk.amr.corp.intel.com (HELO intel.com)
 ([10.254.5.146])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 13:39:50 -0700
Date: Tue, 27 Apr 2021 16:39:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YIh2lJVAAIWCw+jl@intel.com>
References: <20210427114520.4740-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427114520.4740-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: add intel_dp_hdcp.h and
 rename init accordingly
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 27, 2021 at 02:45:20PM +0300, Jani Nikula wrote:
> Add separate intel_dp_hdcp.h to go with intel_dp_hdcp.c, and rename the
> init function intel_dp_hdcp_init() to follow naming where function
> prefix matches the file name.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c      |  5 +++--
>  drivers/gpu/drm/i915/display/intel_dp.h      |  3 ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c |  5 +++--
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.h | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  5 +++--
>  5 files changed, 24 insertions(+), 9 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dp_hdcp.h
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 4ad12dde5938..dfa7da928ae5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -49,10 +49,11 @@
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> +#include "intel_dp_hdcp.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dp_mst.h"
> -#include "intel_dpll.h"
>  #include "intel_dpio_phy.h"
> +#include "intel_dpll.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_hdcp.h"
>  #include "intel_hdmi.h"
> @@ -5348,7 +5349,7 @@ intel_dp_init_connector(struct intel_digital_port *=
dig_port,
>  	intel_dp_add_properties(intel_dp, connector);
>  =

>  	if (is_hdcp_supported(dev_priv, port) && !intel_dp_is_edp(intel_dp)) {
> -		int ret =3D intel_dp_init_hdcp(dig_port, intel_connector);
> +		int ret =3D intel_dp_hdcp_init(dig_port, intel_connector);
>  		if (ret)
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "HDCP init failed, skipping.\n");
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 8db5062f6c4a..680631b5b437 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -119,9 +119,6 @@ void intel_ddi_update_pipe(struct intel_atomic_state =
*state,
>  			   const struct intel_crtc_state *crtc_state,
>  			   const struct drm_connector_state *conn_state);
>  =

> -int intel_dp_init_hdcp(struct intel_digital_port *dig_port,
> -		       struct intel_connector *intel_connector);
> -
>  bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
>  				    struct intel_crtc_state *crtc_state);
>  void intel_dp_sync_state(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/d=
rm/i915/display/intel_dp_hdcp.c
> index 2dd9360bdf9a..d7c3a74b81a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -11,9 +11,10 @@
>  #include <drm/drm_hdcp.h>
>  #include <drm/drm_print.h>
>  =

> -#include "intel_display_types.h"
>  #include "intel_ddi.h"
> +#include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_dp_hdcp.h"
>  #include "intel_hdcp.h"
>  =

>  static unsigned int transcoder_to_stream_enc_status(enum transcoder cpu_=
transcoder)
> @@ -835,7 +836,7 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp=
_shim =3D {
>  	.protocol =3D HDCP_PROTOCOL_DP,
>  };
>  =

> -int intel_dp_init_hdcp(struct intel_digital_port *dig_port,
> +int intel_dp_hdcp_init(struct intel_digital_port *dig_port,
>  		       struct intel_connector *intel_connector)
>  {
>  	struct drm_device *dev =3D intel_connector->base.dev;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.h b/drivers/gpu/d=
rm/i915/display/intel_dp_hdcp.h
> new file mode 100644
> index 000000000000..eff5ec5c5021
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2021 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DP_HDCP___
> +#define __INTEL_DP_HDCP___
> +
> +struct intel_connector;
> +struct intel_digital_port;
> +
> +int intel_dp_hdcp_init(struct intel_digital_port *dig_port,
> +		       struct intel_connector *intel_connector);
> +
> +#endif /* __INTEL_DP_HDCP___ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 180f97cd74cb..3558bce242ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -34,11 +34,12 @@
>  #include "intel_connector.h"
>  #include "intel_ddi.h"
>  #include "intel_display_types.h"
> -#include "intel_hotplug.h"
>  #include "intel_dp.h"
> +#include "intel_dp_hdcp.h"
>  #include "intel_dp_mst.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_hdcp.h"
> +#include "intel_hotplug.h"
>  #include "skl_scaler.h"
>  =

>  static int intel_dp_mst_compute_link_config(struct intel_encoder *encode=
r,
> @@ -832,7 +833,7 @@ static struct drm_connector *intel_dp_add_mst_connect=
or(struct drm_dp_mst_topolo
>  	intel_attach_broadcast_rgb_property(connector);
>  =

>  	if (DISPLAY_VER(dev_priv) <=3D 12) {
> -		ret =3D intel_dp_init_hdcp(dig_port, intel_connector);
> +		ret =3D intel_dp_hdcp_init(dig_port, intel_connector);
>  		if (ret)
>  			drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP MST init failed, skipping.\=
n",
>  				    connector->name, connector->base.id);
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
