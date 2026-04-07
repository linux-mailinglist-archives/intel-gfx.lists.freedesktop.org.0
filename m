Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKFdBB7B1GmWwwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 10:32:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2F13AB62E
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 10:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C4CB10E378;
	Tue,  7 Apr 2026 08:32:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OkQ9QySV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D2F10E374;
 Tue,  7 Apr 2026 08:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775550745; x=1807086745;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=fStCz+HYx6OnRlMSbyDvEl118EFVHszWL52PqeBbIqY=;
 b=OkQ9QySVFIkMYoHyckN12Jrb4lzrcsDr9B4u8aj8efbkN9MrxvizJOSz
 aPRG8nHWUkB6VxVbj9Brfl9sHVW4Clq2M1iA84r9jPoV5emd4lv1jHbYR
 PXL/FJa7tyC9s5vc6dVfYERyX7zhgFWBP6WKeCP30gTROEICnoKjFJo+F
 EOTQu6ox/dVAthl7IUFzac7pT8f1Ll//aExhKzyOfQMDd9HZg2owCd6hK
 +pY1u9kxT7wrh1UocNf0OfPGB5KIRn4uo1a/EMJ3X5mmkfKMEe8goUlYl
 kChs8K4RKA8CdOV2Z/g09jfK1b2xyAGztbXV03+pHbL6ORllKurQ5FhNs Q==;
X-CSE-ConnectionGUID: 1FvGJcJ2Rfu7g68K4+rh+w==
X-CSE-MsgGUID: uIGUqJYGQmiIO07E0dyQIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="79098544"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="79098544"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 01:32:25 -0700
X-CSE-ConnectionGUID: pWDZLkFJQRO6NZFLlEt3XA==
X-CSE-MsgGUID: U5lE0/uoQ5y8bj/1e/h0yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="228018691"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 01:32:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 19/26] drm/{i915/xe}/writeback: Add a writeback
 helper to get ggtt address
In-Reply-To: <20260325110744.1096786-20-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-20-suraj.kandpal@intel.com>
Date: Tue, 07 Apr 2026 11:32:18 +0300
Message-ID: <6322edeaa307d98e1463a0bc07d687edbdffde71@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 5A2F13AB62E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> We need the ggtt address offset to write in the WD_SURF register.
> With i915_vma being defined in xe and i915 and both having different
> ways to extract the address this poses an issue.
> Add a helper so that correct function is called to extract address
> depending on xe/i915 driver.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                       |  1 +
>  drivers/gpu/drm/i915/display/intel_writeback.c      |  3 ++-
>  .../gpu/drm/i915/display/intel_writeback_helper.c   | 12 ++++++++++++
>  .../gpu/drm/i915/display/intel_writeback_helper.h   |  8 ++++++++
>  drivers/gpu/drm/xe/Makefile                         |  3 ++-
>  drivers/gpu/drm/xe/display/xe_writeback_helper.c    | 13 +++++++++++++
>  6 files changed, 38 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_helper.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_helper.h
>  create mode 100644 drivers/gpu/drm/xe/display/xe_writeback_helper.c
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 1e9140e7713c..a1023de728e5 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -316,6 +316,7 @@ i915-y +=3D \
>  	display/intel_vga.o \
>  	display/intel_wm.o \
>  	display/intel_writeback.o \
> +	display/intel_writeback_helper.o \
>  	display/skl_prefill.o \
>  	display/skl_scaler.o \
>  	display/skl_universal_plane.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu=
/drm/i915/display/intel_writeback.c
> index c79e7330b81c..d3c3716a28a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: MIT
>  /*
> - * Copyright =C2=A9 2025 Intel Corporation
> + * Copyright =C2=A9 2026 Intel Corporation

You need to set this once, correctly, instead of changing mid-series.

>   */
>=20=20
>  #include <linux/slab.h>
> @@ -25,6 +25,7 @@
>  #include "intel_display_utils.h"
>  #include "intel_fb_pin.h"
>  #include "intel_writeback.h"
> +#include "intel_writeback_helper.h"
>  #include "intel_writeback_reg.h"
>=20=20
>  struct intel_writeback_connector {
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback_helper.c b/driv=
ers/gpu/drm/i915/display/intel_writeback_helper.c
> new file mode 100644
> index 000000000000..f483ed6ffc6b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_writeback_helper.c
> @@ -0,0 +1,12 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2026 Intel Corporation
> + */
> +
> +#include "i915_vma.h"
> +#include "intel_writeback_helper.h"
> +
> +u32 intel_get_ggtt_addr(struct i915_vma *vma)
> +{
> +	return i915_ggtt_offset(vma);
> +}

Please let's not add more stuff that we need to fix up later. This is
counter-productive to separating display from i915 and xe.

> diff --git a/drivers/gpu/drm/i915/display/intel_writeback_helper.h b/driv=
ers/gpu/drm/i915/display/intel_writeback_helper.h
> new file mode 100644
> index 000000000000..b46f437c3875
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_writeback_helper.h
> @@ -0,0 +1,8 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2026 Intel Corporation
> + */
> +
> +struct i915_vma;
> +
> +u32 intel_get_ggtt_addr(struct i915_vma *vma);
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 2e456070895a..4483e97153ba 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -224,7 +224,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	display/xe_initial_plane.o \
>  	display/xe_panic.o \
>  	display/xe_stolen.o \
> -	display/xe_tdf.o
> +	display/xe_tdf.o \
> +	display/xe_writeback_helper.o
>=20=20
>  # Display code shared with i915
>  xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
> diff --git a/drivers/gpu/drm/xe/display/xe_writeback_helper.c b/drivers/g=
pu/drm/xe/display/xe_writeback_helper.c
> new file mode 100644
> index 000000000000..5898984b129c
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/display/xe_writeback_helper.c
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2026 Intel Corporation
> + */
> +
> +#include "xe_ggtt.h"
> +#include "xe_display_vma.h"
> +#include "intel_writeback_helper.h"
> +
> +u32 intel_get_ggtt_addr(struct i915_vma *vma)
> +{
> +	return lower_32_bits(xe_ggtt_node_addr(vma->node));
> +}

--=20
Jani Nikula, Intel
