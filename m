Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KB5pAHr5xGmC5QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 10:16:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8403321E1
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 10:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C93D010EA08;
	Thu, 26 Mar 2026 09:16:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JmzFgSHo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 245E510EA01;
 Thu, 26 Mar 2026 09:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774516599; x=1806052599;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uASz2FQGEvdbnYjDqt4GtNgCvPe0xwH84f7Yu9oEUOc=;
 b=JmzFgSHorOiTcjGz0CjnvER01fgjhGNHq9k+KaDp/gS/nUSi8G+RplKl
 jt/mHEgrb2HPNZ8TcH1ovuHmP3oC1OlQbDLpU4LzYa8bHaBLmt0hNuJUi
 s6tuo7eyvWIs94lAkwDmgNAIf0sPA7N7eOBkDJhbyE6Ov1wfiRx8qapiI
 6vwGFzDj+HNc4R/btYf+O0FCuXHzmf2nhFkW0OgII3wk2ZU10AGn6yFwA
 aVNi2QVKXGb0buycnAELVNMuZhbfPni7XaZx5bHMjK6diXzjCIlxziBns
 ifeO8t1Mqw5k5Dcm+Ae4wxwGR5frP+b/HKJzWFVuEVHLjhK+m3LAkxGDi g==;
X-CSE-ConnectionGUID: H1mCBj6tSlOAJAurb4rEPA==
X-CSE-MsgGUID: 1KmDTopmTzO6D0N0+j5z1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75763906"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75763906"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 02:16:38 -0700
X-CSE-ConnectionGUID: HzzNoF/XQ9eenWzXH+fgzw==
X-CSE-MsgGUID: /ZB15rGOQMuHvIJuZegKUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="224132003"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.169])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 02:16:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/12] drm/i915/mchbar: Provide intel_mchbar_read*()
 abstraction
In-Reply-To: <20260325185342.11482-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <20260325185342.11482-3-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 11:16:32 +0200
Message-ID: <87aa3f7918281f5b6a4f90b693c5a80afc47f4f2@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 5E8403321E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> MCHBAR registers are a bit special in that:
> - we access them through the mirror
> - the mirror is read only on HSW+
> - the mirror requires the actual MCHBAR to be enabled in device 0:0.0
> - the mirror is gone on MTL+
>
> So I'd prefer to treat MCHBAR registers as a bit special in
> the code as well, and do all accesses to them via dedicated
> functions. Prodive such functions in the form of
> intel_mchbar_read*().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile               |  1 +
>  drivers/gpu/drm/i915/display/intel_mchbar.c | 32 +++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_mchbar.h | 22 ++++++++++++++
>  drivers/gpu/drm/xe/Makefile                 |  1 +
>  4 files changed, 56 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index b677720a1c2d..0e48305df8b2 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -295,6 +295,7 @@ i915-y +=3D \
>  	display/intel_link_bw.o \
>  	display/intel_load_detect.o \
>  	display/intel_lpe_audio.o \
> +	display/intel_mchbar.o \
>  	display/intel_modeset_lock.o \
>  	display/intel_modeset_setup.o \
>  	display/intel_modeset_verify.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/dr=
m/i915/display/intel_mchbar.c
> new file mode 100644
> index 000000000000..950a36d586c3
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_mchbar.c
> @@ -0,0 +1,32 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2026 Intel Corporation
> + */
> +
> +#include "intel_display_core.h"
> +#include "intel_mchbar.h"
> +#include "intel_uncore.h"
> +
> +u16 intel_mchbar_read16(struct intel_display *display,
> +			i915_reg_t reg)

Throughout the patch, surely these would fit on one line?

Regardless,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +{
> +	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
> +
> +	return intel_uncore_read16(uncore, reg);
> +}
> +
> +u32 intel_mchbar_read(struct intel_display *display,
> +		      i915_reg_t reg)
> +{
> +	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
> +
> +	return intel_uncore_read(uncore, reg);
> +}
> +
> +u64 intel_mchbar_read64(struct intel_display *display,
> +			i915_reg_t reg)
> +{
> +	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
> +
> +	return intel_uncore_read64(uncore, reg);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.h b/drivers/gpu/dr=
m/i915/display/intel_mchbar.h
> new file mode 100644
> index 000000000000..ced5023c4522
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_mchbar.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2026 Intel Corporation
> + */
> +
> +#ifndef __INTEL_MCHBAR_H__
> +#define __INTEL_MCHBAR_H__
> +
> +#include <linux/types.h>
> +
> +#include "i915_reg_defs.h"
> +
> +struct intel_display;
> +
> +u16 intel_mchbar_read16(struct intel_display *display,
> +			i915_reg_t reg);
> +u32 intel_mchbar_read(struct intel_display *display,
> +		      i915_reg_t reg);
> +u64 intel_mchbar_read64(struct intel_display *display,
> +			i915_reg_t reg);
> +
> +#endif /* __INTEL_MCHBAR_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 49de1c22a469..6ae190316b95 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -304,6 +304,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_link_bw.o \
>  	i915-display/intel_lspcon.o \
>  	i915-display/intel_lt_phy.o \
> +	i915-display/intel_mchbar.o \
>  	i915-display/intel_modeset_lock.o \
>  	i915-display/intel_modeset_setup.o \
>  	i915-display/intel_modeset_verify.o \

--=20
Jani Nikula, Intel
