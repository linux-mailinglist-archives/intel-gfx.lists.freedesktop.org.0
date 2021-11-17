Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A694549D4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 16:21:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C1C6E973;
	Wed, 17 Nov 2021 15:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4346E973
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 15:21:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="257733834"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="257733834"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 07:21:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="645902160"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 17 Nov 2021 07:21:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Nov 2021 17:21:43 +0200
Date: Wed, 17 Nov 2021 17:21:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YZUeB01L6HBXxGTT@intel.com>
References: <20211116154234.15696-1-jani.nikula@intel.com>
 <20211116154234.15696-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211116154234.15696-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/trace: split out display trace
 to a separate file
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

On Tue, Nov 16, 2021 at 05:42:34PM +0200, Jani Nikula wrote:
> Add display/intel_display_trace.[ch] for defining display
> tracepoints. The main goal is to reduce cross-includes between gem and
> display. It would be possible split up tracing even further, but that
> would lead to more boilerplate.
> 
> There should be no changes to tracepoints.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   5 +-
>  .../drm/i915/display/intel_display_trace.c    |   9 +
>  .../drm/i915/display/intel_display_trace.h    | 588 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
>  .../gpu/drm/i915/display/intel_frontbuffer.c  |   7 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   |   1 -
>  drivers/gpu/drm/i915/i915_debugfs.c           |   1 -
>  drivers/gpu/drm/i915/i915_drv.c               |   1 -
>  drivers/gpu/drm/i915/i915_irq.c               |   2 +-
>  drivers/gpu/drm/i915/i915_trace.h             | 567 -----------------
>  drivers/gpu/drm/i915/intel_pm.c               |   2 +-
>  14 files changed, 610 insertions(+), 583 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_trace.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_trace.h
> 
<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.c b/drivers/gpu/drm/i915/display/intel_display_trace.c
> new file mode 100644
> index 000000000000..737979ada869
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.c
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#ifndef __CHECKER__
> +#define CREATE_TRACE_POINTS
> +#include "intel_display_trace.h"
> +#endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> new file mode 100644
> index 000000000000..8608f5a6ff32
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -0,0 +1,588 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#undef TRACE_SYSTEM
> +#define TRACE_SYSTEM i915
> +
> +#if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
> +#define __INTEL_DISPLAY_TRACE_H__
> +
> +#include <linux/types.h>
> +#include <linux/tracepoint.h>
> +
> +#include "i915_drv.h"
> +#include "intel_crtc.h"
> +#include "intel_display_types.h"
> +
> +/* watermark/fifo updates */

That comment is a bit misplaced. I guess it already was like that in the
old file. Maybe just nuke all these comments? I don't think they really
serve any useful purpose.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
