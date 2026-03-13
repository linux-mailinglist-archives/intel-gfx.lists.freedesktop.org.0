Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Fo1FF8dtGlLhQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 15:21:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAF7284D40
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 15:21:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3686110EBAA;
	Fri, 13 Mar 2026 14:21:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3ViGpqM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D6FF10EBAA;
 Fri, 13 Mar 2026 14:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773411675; x=1804947675;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=xcIgWhdMuHo6uqJfKQlDIFrQhvNY0mjan0agaOrVC2U=;
 b=k3ViGpqMrnhb+d8K4G4M01vvhPHlvPNXnVlbwYFvgDR4zJnhWgSTs2AM
 tGk+JCEegmrPgJVum/VcznjWPgwDKanmoZQL0BEhN3joIlHn8UtCRitVq
 2ZYB4+8xQos7Oj2CZLKrpc2CkusacqbeO/48Jig1LByJjcoAMdWp0Y+Ch
 zaSuBdbJx265gkpX2VR9MnKgYQnN2ppRPoVPa7O1iW02FY5vMwZtKaS27
 aFM2u4db18bTMWV+6n0bfc072FCZxXAGe1v31wBxLayg4VVbwiVqBKEgt
 XXCT3uTiXGFFk3NuW2Ppy4EEe4lUfNKOEXhVJ1KAcsFhCqe0xpj7/k2TL Q==;
X-CSE-ConnectionGUID: 0odNc3NVReu80fKV+HQ97w==
X-CSE-MsgGUID: JwoHhu6kSrSjJWVGq+jBFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="84836395"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="84836395"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 07:21:15 -0700
X-CSE-ConnectionGUID: p0tiiiIfRTOwPY4ZwrXExg==
X-CSE-MsgGUID: 7EnVPeHVRC+z2DOq8jJbtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="220430235"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 07:21:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/de: Introduce intel_de.c and move
 intel_de_{read, write}8() there
In-Reply-To: <20260313111028.25159-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260313111028.25159-1-ville.syrjala@linux.intel.com>
 <20260313111028.25159-2-ville.syrjala@linux.intel.com>
Date: Fri, 13 Mar 2026 16:21:10 +0200
Message-ID: <38f45520e854fc2644a885fe4e96e8f5bd0e278b@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3DAF7284D40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_de_{read,write}() aren't performance critical so having them
> as static inline is pointless. Introduce intel_de.c and move the
> implementation there.

I was surprised only the 8-bit read/write functions were moved. It's
only the 8 in the subject line that conveys that, while the commit
message implies all of them are.

What gets moved when is neither here nor there, I get that this is the
simple change to create the file, and also drops a dependency on
drm_print.h from the header.

But the commit message could be slightly more elaborate here. Can be
fixed whole applying.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile           |  1 +
>  drivers/gpu/drm/i915/display/intel_de.c | 23 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_de.h | 22 +++-------------------
>  drivers/gpu/drm/xe/Makefile             |  1 +
>  4 files changed, 28 insertions(+), 19 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_de.c
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 7e9d9b666511..099f7b68bb30 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -253,6 +253,7 @@ i915-y +=3D \
>  	display/intel_crtc_state_dump.o \
>  	display/intel_cursor.o \
>  	display/intel_dbuf_bw.o \
> +	display/intel_de.o \
>  	display/intel_display.o \
>  	display/intel_display_conversion.o \
>  	display/intel_display_driver.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i9=
15/display/intel_de.c
> new file mode 100644
> index 000000000000..5348c1d51eb8
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_de.c
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2026 Intel Corporation
> + */
> +
> +#include <drm/drm_print.h>
> +
> +#include "intel_de.h"
> +
> +u8 intel_de_read8(struct intel_display *display, i915_reg_t reg)
> +{
> +	/* this is only used on VGA registers (possible on pre-g4x) */
> +	drm_WARN_ON(display->drm, DISPLAY_VER(display) >=3D 5 || display->platf=
orm.g4x);
> +
> +	return intel_uncore_read8(__to_uncore(display), reg);
> +}
> +
> +void intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 v=
al)
> +{
> +	drm_WARN_ON(display->drm, DISPLAY_VER(display) >=3D 5 || display->platf=
orm.g4x);
> +
> +	intel_uncore_write8(__to_uncore(display), reg, val);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i9=
15/display/intel_de.h
> index f30f3f8ebee1..8ca5904ba84e 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -6,8 +6,6 @@
>  #ifndef __INTEL_DE_H__
>  #define __INTEL_DE_H__
>=20=20
> -#include <drm/drm_print.h>
> -
>  #include "intel_display_core.h"
>  #include "intel_dmc_wl.h"
>  #include "intel_dsb.h"
> @@ -19,6 +17,9 @@ static inline struct intel_uncore *__to_uncore(struct i=
ntel_display *display)
>  	return to_intel_uncore(display->drm);
>  }
>=20=20
> +u8 intel_de_read8(struct intel_display *display, i915_reg_t reg);
> +void intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 v=
al);
> +
>  static inline u32
>  intel_de_read(struct intel_display *display, i915_reg_t reg)
>  {
> @@ -33,23 +34,6 @@ intel_de_read(struct intel_display *display, i915_reg_=
t reg)
>  	return val;
>  }
>=20=20
> -static inline u8
> -intel_de_read8(struct intel_display *display, i915_reg_t reg)
> -{
> -	/* this is only used on VGA registers (possible on pre-g4x) */
> -	drm_WARN_ON(display->drm, DISPLAY_VER(display) >=3D 5 || display->platf=
orm.g4x);
> -
> -	return intel_uncore_read8(__to_uncore(display), reg);
> -}
> -
> -static inline void
> -intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 val)
> -{
> -	drm_WARN_ON(display->drm, DISPLAY_VER(display) >=3D 5 || display->platf=
orm.g4x);
> -
> -	intel_uncore_write8(__to_uncore(display), reg, val);
> -}
> -
>  static inline u64
>  intel_de_read64_2x32(struct intel_display *display,
>  		     i915_reg_t lower_reg, i915_reg_t upper_reg)
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 50608312bc66..0399a5f9a107 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -251,6 +251,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_dbuf_bw.o \
>  	i915-display/intel_ddi.o \
>  	i915-display/intel_ddi_buf_trans.o \
> +	i915-display/intel_de.o \
>  	i915-display/intel_display.o \
>  	i915-display/intel_display_conversion.o \
>  	i915-display/intel_display_device.o \

--=20
Jani Nikula, Intel
