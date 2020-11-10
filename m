Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 994622ADB3E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 17:07:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C25289B62;
	Tue, 10 Nov 2020 16:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41AB98970B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Nov 2020 16:07:04 +0000 (UTC)
IronPort-SDR: 7pvBNyreyYMx5TZMHgcSY0RKCh1JzAvvoG5nuEgu5MJ3622TJ3oNAsr6alJYLmSqSyXXQKeHAi
 40HTLv09LJgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="167415529"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="167415529"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 08:06:54 -0800
IronPort-SDR: pp4qiQOgONXMCXKi3fg39S6dO3OsmY8OQYKKCV/Dew3dus+xH7Jel7XGOgCuLMj3mfZPhJd8F/
 +9FAIKJJDk4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="365905706"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 10 Nov 2020 08:06:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Nov 2020 18:06:49 +0200
Date: Tue, 10 Nov 2020 18:06:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201110160649.GT6112@intel.com>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-3-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022222709.29386-3-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/display/vrr: Create VRR file
 and add VRR capability check
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

On Thu, Oct 22, 2020 at 03:27:00PM -0700, Manasi Navare wrote:
> We create a new file for all VRR related helpers.
> Also add a function to check vrr capability based on
> platform support, DPCD bits and EDID monitor range.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile            |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c | 28 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.h | 19 ++++++++++++++++
>  3 files changed, 48 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_vrr.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_vrr.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index e5574e506a5c..3beeaf517191 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -249,6 +249,7 @@ i915-y +=3D \
>  	display/intel_sdvo.o \
>  	display/intel_tv.o \
>  	display/intel_vdsc.o \
> +	display/intel_vrr.o \
>  	display/vlv_dsi.o \
>  	display/vlv_dsi_pll.o
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> new file mode 100644
> index 000000000000..0c8a91fabb64
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + *
> + * Author: Manasi Navare <manasi.d.navare@intel.com>
> + */
> +
> +#include "i915_drv.h"
> +#include "intel_display_types.h"
> +#include "intel_vrr.h"
> +
> +bool intel_is_vrr_capable(struct drm_connector *connector)
> +{
> +	struct intel_dp *intel_dp =3D intel_attached_dp(to_intel_connector(conn=
ector));
> +	const struct drm_display_info *info =3D &connector->display_info;
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> +
> +	/*
> +	 * DP Sink is capable of Variable refresh video timings if
> +	 * Ignore MSA bit is set in DPCD.
> +	 * EDID monitor range also should be atleast 10 for reasonable
> +	 * Adaptive sync/ VRR end user experience.
> +	 */
> +	return INTEL_GEN(dev_priv) >=3D 12 &&
> +		drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd) &&
> +		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
> +}

A whole new file for vrr seems overkill. There's probably
not going to be much to put in there.

> +
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i=
915/display/intel_vrr.h
> new file mode 100644
> index 000000000000..755746c7525c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2019 Intel Corporation
> +*/
> +
> +#ifndef __INTEL_VRR_H__
> +#define __INTEL_VRR_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_connector;
> +struct drm_i915_private;
> +struct intel_crtc_state;
> +struct intel_encoder;
> +struct intel_dp;
> +
> +bool intel_is_vrr_capable(struct drm_connector *connector);
> +
> +#endif /* __INTEL_VRR_H__ */
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
