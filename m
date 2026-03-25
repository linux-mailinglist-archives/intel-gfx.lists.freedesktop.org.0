Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDW2LeLRw2lLuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:15:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34478324A6A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9797410E8A0;
	Wed, 25 Mar 2026 12:15:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZQLAGTQW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FCEB10E89F;
 Wed, 25 Mar 2026 12:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774440928; x=1805976928;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9qw0VjiMuPkUo1YnRiwvH4Y/RE9OH3dyiKQUDwC+GRI=;
 b=ZQLAGTQWqU7QphU0O9c8BVTWoM3G4IaYQsXOSwD/JhmeB/K5HqBw7SXh
 MMmJ2INKRBXIZlST1h7zobAcl0sBWI9Am3BGzYSaTeAPOxyAFZdPl5KVQ
 ZctmwtQvaX0QnaSGikNU42GpOJvUtXbdNnp79VyPTYb6HMrmAEcwD2RJr
 ZWxCuiapKRq4zBd6hl3diFTSdFIg8BFvNMvQ2xEnQUjAofmE7QNKfOdOC
 WqKB++NweY+8FzBpylx/uVDyNWTiqTRQ+Y4127Ddv6SVNMNNgp/i67h2h
 uchmRO/k3/F29IXrQLDU1epmCRFKIwqWKxBiGuTV+8Jg3kIa86NAk0atR g==;
X-CSE-ConnectionGUID: LcJL1P6JSOGXuwfd4SbZCA==
X-CSE-MsgGUID: 2WcibOvbRR2F2R1xAH7SwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75497157"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75497157"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:15:27 -0700
X-CSE-ConnectionGUID: Yz5SgdHVSJGJ/2AVNIklLw==
X-CSE-MsgGUID: Ro872MfeSryQyGdPZ6I0vw==
X-ExtLoop1: 1
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:15:23 -0700
Date: Wed, 25 Mar 2026 14:15:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 05/26] drm/i915/writeback: Init writeback connector
Message-ID: <acPR2C5-z1-jeuxU@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-6-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-6-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 34478324A6A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:23PM +0530, Suraj Kandpal wrote:
> Initialize writeback connector initialising the virtual encoder
> and intel connector. We also allocate memory for drm_writeback_connector
> but not the drm_connector within it due to a constraint
> we need all connectors to be an intel_connector.
> The writeback_format arrays is used to tell the user which
> drm formats are supported by us.
> 
> Bspec: 49275
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../gpu/drm/i915/display/intel_writeback.c    | 126 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_writeback.h    |  17 +++
>  3 files changed, 144 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index b677720a1c2d..1e9140e7713c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -315,6 +315,7 @@ i915-y += \
>  	display/intel_vblank.o \
>  	display/intel_vga.o \
>  	display/intel_wm.o \
> +	display/intel_writeback.o \
>  	display/skl_prefill.o \
>  	display/skl_scaler.o \
>  	display/skl_universal_plane.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> new file mode 100644
> index 000000000000..73101ee17d74
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -0,0 +1,126 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#include <linux/slab.h>
> +#include <drm/drm_atomic_state_helper.h>
> +#include <drm/drm_writeback.h>
> +#include <drm/drm_modeset_helper_vtables.h>
> +#include <drm/drm_probe_helper.h>
> +#include <drm/drm_fourcc.h>
> +#include <drm/drm_encoder.h>
> +
> +#include "intel_atomic.h"
> +#include "intel_connector.h"
> +#include "intel_de.h"
> +#include "intel_display_driver.h"
> +#include "intel_display_types.h"
> +#include "intel_writeback.h"
> +
> +struct intel_writeback_connector {
> +	struct intel_connector connector;
> +	struct intel_encoder encoder;
> +	enum transcoder trans;

We don't call it 'trans' anywhere else.

> +	int frame_num;

This and 'trans' are unused. Please introduce them when needed, not
here.

> +};
> +
> +static const u32 writeback_formats[] = {
> +	DRM_FORMAT_XYUV8888,
> +	DRM_FORMAT_YUYV,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_XVYU2101010,
> +	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_XBGR2101010,
> +};
> +
> +static int intel_writeback_connector_init(struct intel_connector *connector)
> +{
> +	struct intel_digital_connector_state *conn_state;
> +
> +	conn_state = kzalloc(sizeof(*conn_state), GFP_KERNEL);
> +	if (!conn_state)
> +		return -ENOMEM;
> +
> +	__drm_atomic_helper_connector_reset(&connector->base,
> +					    &conn_state->base);
> +	return 0;
> +}
> +
> +static int
> +intel_writeback_connector_alloc(struct intel_connector *connector)
> +{
> +	if (intel_writeback_connector_init(connector) < 0) {
> +		kfree(connector);
> +		return -ENOMEM;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
> +	.destroy = drm_encoder_cleanup,
> +};
> +
> +const struct drm_connector_funcs conn_funcs = {
> +	.fill_modes = drm_helper_probe_single_connector_modes,
> +	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
> +	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> +};
> +
> +static const struct drm_connector_helper_funcs conn_helper_funcs = {
> +};
> +
> +int intel_writeback_init(struct intel_display *display)
> +{
> +	struct intel_encoder *encoder;
> +	struct intel_writeback_connector *writeback_conn;
> +	struct intel_connector *connector;
> +	int ret;
> +
> +	writeback_conn = kzalloc(sizeof(*writeback_conn), GFP_KERNEL);
> +	if (!writeback_conn)
> +		return -ENOSPC;
> +
> +	encoder = &writeback_conn->encoder;
> +	encoder->base.possible_crtcs = 0xf;

We have code that takes care of that.

> +	ret = drm_encoder_init(display->drm, &encoder->base,
> +			       &drm_writeback_encoder_funcs,
> +			       DRM_MODE_ENCODER_VIRTUAL, NULL);
> +	if (ret) {
> +		kfree(writeback_conn);
> +		return ret;
> +	}
> +
> +	encoder->type = INTEL_OUTPUT_WRITEBACK;
> +	encoder->pipe_mask = ~0;
> +	encoder->cloneable = 0;

We should probably just nuke all the redundant cloneable=0 assignments
from all the encoders.

> +
> +	connector = &writeback_conn->connector;
> +	ret = intel_writeback_connector_alloc(connector);
> +	if (ret) {
> +		kfree(writeback_conn);
> +		return ret;
> +	}
> +
> +	connector->base.interlace_allowed = 0;

redundant

> +	drm_connector_helper_add(&connector->base, &conn_helper_funcs);
> +	ret = drm_writeback_connector_init(display->drm, &connector->base,
> +					   &conn_funcs, &encoder->base,
> +					   writeback_formats,
> +					   ARRAY_SIZE(writeback_formats));
> +	if (ret) {
> +		intel_connector_free(connector);
> +		drm_encoder_cleanup(&encoder->base);
> +		kfree(&writeback_conn->encoder);
> +		kfree(writeback_conn);
> +		return ret;
> +	}
> +
> +	intel_connector_attach_encoder(connector, encoder);
> +	connector->get_hw_state = intel_connector_get_hw_state;
> +	connector->base.status = connector_status_disconnected;
> +	writeback_conn->frame_num = 1;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h b/drivers/gpu/drm/i915/display/intel_writeback.h
> new file mode 100644
> index 000000000000..5911684cb81a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_WRITEBACK_H__
> +#define __INTEL_WRITEBACK_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_display;
> +struct intel_writeback_connector;
> +
> +int intel_writeback_init(struct intel_display *display);
> +
> +#endif /* __INTEL_WRITEBACK_H__ */
> +
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
