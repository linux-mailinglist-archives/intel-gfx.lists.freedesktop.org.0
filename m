Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8560897CE6C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 22:19:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C511D10E24D;
	Thu, 19 Sep 2024 20:19:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L9rC75iU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97BAA10E24D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 20:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726777196; x=1758313196;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=MtYqywXIE7b4eqUjL4MR+pIJRVQSza8mLp1GvVGagho=;
 b=L9rC75iUB33S7XBIcsAtG8Max20nMRoqBwRwGvXNuiYwMYNc8vXEW8oI
 kMQHlBG+NpersF6a+1H4Mjl9NuS0nB3SdzjuaXmZX7OlhHHeFVtoBOXGf
 7+Sc4UyuMIwXvZ1cpNU9qaBmlBcRSMpOA6csayeolzgE+Lw4iPg7E9Aj3
 uMZbNXz3iitTrEN8unCi1IE4HnMb9tQxvl2zJwzMznhzGgXcOXyPOfIEL
 cdggBFnF/QWaJdN3ykmvDbIAcIbwoWB8JGNyLpZqTqGsnC7fsBkZcWC01
 Nr48cjXTPjcuCeehTV6fZFwwtt1hzSdeuxl0O2txuoEGxlNujAYNhCzCq A==;
X-CSE-ConnectionGUID: 73TccaWfSX67iNrwizcwHQ==
X-CSE-MsgGUID: VAKq88PoRfORPptB/z1/FA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="48299565"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="48299565"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 13:19:56 -0700
X-CSE-ConnectionGUID: Ti8dh8bxT0+YjJFtLaxzXQ==
X-CSE-MsgGUID: kTkp3QNGQcOF1Uz3LWYwwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70354848"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.127])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 13:19:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Ville =?utf-8?B?U3lyasOk?=
 =?utf-8?B?bMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [RFC 1/2] drm/i915/display: add improved crtc iterators
In-Reply-To: <3566e03bd3e10402f980e0a623f2ce893032f107.1726776703.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1726776703.git.jani.nikula@intel.com>
 <3566e03bd3e10402f980e0a623f2ce893032f107.1726776703.git.jani.nikula@intel.com>
Date: Thu, 19 Sep 2024 23:19:49 +0300
Message-ID: <87msk38kgq.fsf@intel.com>
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

On Thu, 19 Sep 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> The macros for iterating crtcs have become unweildy. Add a more generic
> solution.
>
> This is extensible via new initialization functions, more pipe_masks,
> and dedicated .get_next() functions.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/display/intel_crtc_iter.c    | 94 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_crtc_iter.h    | 87 +++++++++++++++++
>  drivers/gpu/drm/xe/Makefile                   |  1 +
>  4 files changed, 183 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_iter.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_crtc_iter.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index bb67bad839ea..7a370cc91dcb 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -232,6 +232,7 @@ i915-y +=3D \
>  	display/intel_combo_phy.o \
>  	display/intel_connector.o \
>  	display/intel_crtc.o \
> +	display/intel_crtc_iter.o \
>  	display/intel_crtc_state_dump.o \
>  	display/intel_cursor.o \
>  	display/intel_display.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_iter.c b/drivers/gpu=
/drm/i915/display/intel_crtc_iter.c
> new file mode 100644
> index 000000000000..27f16b565a67
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_iter.c
> @@ -0,0 +1,94 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright =C2=A9 2024 Intel Corporation */
> +
> +#include <linux/list.h>
> +#include <linux/kernel.h>
> +
> +#include "intel_crtc_iter.h"
> +#include "intel_display.h"
> +#include "intel_display_core.h"
> +#include "intel_display_types.h"
> +
> +static void reset_pos(struct intel_crtc_iter *iter)
> +{
> +	if (iter->reverse)
> +		iter->pos =3D list_last_entry(iter->crtc_list, typeof(*iter->pos), bas=
e.head);
> +	else
> +		iter->pos =3D list_first_entry(iter->crtc_list, typeof(*iter->pos), ba=
se.head);
> +}
> +
> +static struct intel_crtc *get_next(struct intel_crtc_iter *iter)
> +{
> +	if (iter->reverse) {
> +		list_for_each_entry_from(iter->pos, iter->crtc_list, base.head) {
> +			if (iter->pipe_mask[iter->pipe_mask_index] & BIT(iter->pos->pipe))
> +				return iter->pos;
> +		}
> +	} else {
> +		list_for_each_entry_from_reverse(iter->pos, iter->crtc_list, base.head=
) {
> +			if (iter->pipe_mask[iter->pipe_mask_index] & BIT(iter->pos->pipe))
> +				return iter->pos;
> +		}
> +	}

It's getting late, the blocks for the above are the wrong way around.

> +
> +	/* List exhausted, start over with the next pipe mask, if any. */
> +	iter->pipe_mask_index++;
> +	if (iter->pipe_mask_index < ARRAY_SIZE(iter->pipe_mask) &&
> +	    iter->pipe_mask[iter->pipe_mask_index]) {
> +		reset_pos(iter);
> +		return get_next(iter);
> +	}
> +
> +	return NULL;
> +}
> +
> +/*
> + * Iterate all CRTCs in forward or reverse CRTC initialization order, de=
pending
> + * on reverse parameter, first matching pipes in pipe_mask0, then the pi=
pes in
> + * pipe_mask1.
> + */
> +void __intel_crtc_iter_begin(struct intel_display *display,
> +			     struct intel_crtc_iter *iter,
> +			     unsigned long pipe_mask0,
> +			     unsigned long pipe_mask1,
> +			     bool reverse)
> +{
> +	iter->crtc_list =3D &display->drm->mode_config.crtc_list;
> +	iter->reverse =3D reverse;
> +	reset_pos(iter);
> +	iter->get_next =3D get_next;
> +	iter->pipe_mask_index =3D 0;
> +	iter->pipe_mask[0] =3D pipe_mask0;
> +	iter->pipe_mask[1] =3D pipe_mask1;
> +
> +	/* It's an error to match the same pipe twice. */
> +	drm_WARN_ON(display->drm, pipe_mask0 & pipe_mask1);
> +}
> +
> +
> +void intel_crtc_iter_end(struct intel_crtc_iter *iter)
> +{
> +	memset(iter, 0, sizeof(*iter));
> +}
> +
> +void intel_crtc_iter_begin_modeset_enable(struct intel_display *display,
> +					  struct intel_crtc_iter *iter,
> +					  const struct intel_crtc_state *crtc_state)
> +{
> +	/* Enable secondary pipes first, then the primary pipes. */
> +	__intel_crtc_iter_begin(display, iter,
> +				_intel_modeset_secondary_pipes(crtc_state),
> +				_intel_modeset_primary_pipes(crtc_state),
> +				false);
> +}
> +
> +void intel_crtc_iter_begin_modeset_disable(struct intel_display *display,
> +					   struct intel_crtc_iter *iter,
> +					   const struct intel_crtc_state *crtc_state)
> +{
> +	/* Disable primary pipes first, then the secondary pipes. */
> +	__intel_crtc_iter_begin(display, iter,
> +				_intel_modeset_primary_pipes(crtc_state),
> +				_intel_modeset_secondary_pipes(crtc_state),
> +				true);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_iter.h b/drivers/gpu=
/drm/i915/display/intel_crtc_iter.h
> new file mode 100644
> index 000000000000..ec8d7ea3d595
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_iter.h
> @@ -0,0 +1,87 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2024 Intel Corporation */
> +
> +/*
> + * struct intel_crtc iterators for various needs.
> + *
> + * Usage:
> + *
> + *	struct intel_crtc *crtc;
> + *	struct intel_crtc_iter iter;
> + *
> + *	intel_crtc_iter_begin(display, &iter);
> + *	intel_crtc_iter_for_each(crtc, &iter) {
> + *		...
> + *	}
> + *	intel_crtc_iter_end(&iter);
> + *
> + * There are various alternatives to intel_crtc_iter_begin() that change=
 the
> + * iteration behaviour, but the rest remains the same in all cases.
> + */
> +
> +#ifndef __INTEL_CRTC_ITER_H__
> +#define __INTEL_CRTC_ITER_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_crtc;
> +struct intel_crtc_state;
> +struct intel_display;
> +struct list_head;
> +
> +/* This is private. Do not look insde. */
> +struct intel_crtc_iter {
> +	struct list_head *crtc_list;
> +	struct intel_crtc *pos;
> +	struct intel_crtc *(*get_next)(struct intel_crtc_iter *iter);
> +	int pipe_mask_index;
> +	u32 pipe_mask[2];
> +	bool reverse;
> +};
> +
> +void __intel_crtc_iter_begin(struct intel_display *display,
> +			     struct intel_crtc_iter *iter,
> +			     unsigned long pipe_mask0,
> +			     unsigned long pipe_mask1,
> +			     bool reverse);
> +
> +static inline void intel_crtc_iter_begin(struct intel_display *display,
> +					 struct intel_crtc_iter *iter)
> +{
> +	__intel_crtc_iter_begin(display, iter, ~0UL, 0, false);
> +}
> +
> +static inline void intel_crtc_iter_begin_reverse(struct intel_display *d=
isplay,
> +						 struct intel_crtc_iter *iter)
> +{
> +	__intel_crtc_iter_begin(display, iter, ~0UL, 0, true);
> +}
> +
> +static inline void intel_crtc_iter_begin_pipe_mask(struct intel_display =
*display,
> +						   struct intel_crtc_iter *iter,
> +						   unsigned long pipe_mask)
> +{
> +	__intel_crtc_iter_begin(display, iter, pipe_mask, 0, false);
> +}
> +
> +static inline void intel_crtc_iter_begin_pipe_mask_reverse(struct intel_=
display *display,
> +							   struct intel_crtc_iter *iter,
> +							   unsigned long pipe_mask)
> +{
> +	__intel_crtc_iter_begin(display, iter, pipe_mask, 0, true);
> +}
> +
> +void intel_crtc_iter_begin_modeset_enable(struct intel_display *display,
> +					  struct intel_crtc_iter *iter,
> +					  const struct intel_crtc_state *crtc_state);
> +
> +void intel_crtc_iter_begin_modeset_disable(struct intel_display *display,
> +					   struct intel_crtc_iter *iter,
> +					   const struct intel_crtc_state *crtc_state);
> +
> +#define intel_crtc_iter_for_each(crtc, iter) \
> +	while (((crtc) =3D (iter)->get_next(iter)))
> +
> +void intel_crtc_iter_end(struct intel_crtc_iter *iter);
> +
> +#endif /* __INTEL_CRTC_ITER_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index ae245fbd91ee..e1c8111b2528 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -198,6 +198,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_combo_phy.o \
>  	i915-display/intel_connector.o \
>  	i915-display/intel_crtc.o \
> +	i915-display/intel_crtc_iter.o \
>  	i915-display/intel_crtc_state_dump.o \
>  	i915-display/intel_cursor.o \
>  	i915-display/intel_cx0_phy.o \

--=20
Jani Nikula, Intel
