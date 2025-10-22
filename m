Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC64BFB1E4
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 11:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA5A10E70D;
	Wed, 22 Oct 2025 09:17:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aQ33mvAG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D9310E70D;
 Wed, 22 Oct 2025 09:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761124674; x=1792660674;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kQV3Lor1mgKCbxRZQeCP6pbzm+7fcIA55eXllKv0G3Y=;
 b=aQ33mvAGbG+54PsQ0t/yuD/GSexT+AiNsWkDcVMFdgVHwANpwNHd8ubS
 pF47+fCROrqv7G7Ica5zB+wqb1Q/YrxZ+G9VTMm7J0+2gbg5k+2GcJRHD
 qDoX0XFaZrD3InRtqkofNe3eUZ7rtJ9zSvWlc+jZv3YTe6h0jLuJ7iF/f
 XcJ/dmRE/d5PGcW9lKKxpPk6fesDlDnYcVNtdF5afivJ2VPB3k6Zd1lU5
 GefyZgdBdOZ56bVDqZaTPcPGPk7ypId0YK9ql85j+pJZ8MdOc8pbfjrQW
 tgl3isqOizF2MAOW/7W0SGjoV1d8PtKcZFfiMBf0J5chvjomjBVXDKFwx A==;
X-CSE-ConnectionGUID: 2SaaWc2PSuilrHJJ3moxhw==
X-CSE-MsgGUID: FX2sshQoTf+XYb8TMJO56A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74704913"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="74704913"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:17:53 -0700
X-CSE-ConnectionGUID: bIDa9nB0SOWzew74KAoY3g==
X-CSE-MsgGUID: LtIdWTMPQnGGQhs3Pjk0PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188100360"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:17:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/6] drm/{i915,xe}/display: pass parent interface to
 display probe
In-Reply-To: <20251022085548.876150-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251022085548.876150-1-jouni.hogander@intel.com>
 <20251022085548.876150-2-jouni.hogander@intel.com>
Date: Wed, 22 Oct 2025 12:17:47 +0300
Message-ID: <cfea7985302e14e381118d11ff6c11d361d205e0@intel.com>
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

On Wed, 22 Oct 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> From: Jani Nikula <jani.nikula@intel.com>
>
> Let's gradually start calling i915 and xe parent, or core, drivers from
> display via function pointers passed at display probe.
>
> Going forward, the struct intel_display_parent_interface is expected to
> include const pointers to sub-structs by functionality, for example:
>
> struct intel_display_rpm {
> 	struct ref_tracker *(*get)(struct drm_device *drm);
> 	/* ... */
> };
>
> struct intel_display_parent_interface {
> 	/* ... */
> 	const struct intel_display_rpm *rpm;
> };
>
> This is a baby step towards not building display as part of both i915
> and xe drivers, but rather making it an independent driver interfacing
> with the two.
>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

You do need you add your own Signed-off-by even when sending someone
else's patches unmodified.

> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/=
gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 7c657ea98a441..3e79a74ff7def 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -12,7 +12,6 @@
>=20=20
>  #include <drm/drm_drv.h>
>=20=20
> -#include "xe_device.h" /* for xe_device_has_flat_ccs() */
>  #include "xe_device_types.h"
>=20=20

This hunk doesn't belong here, it's my rebase fail.


BR,
Jani.


--=20
Jani Nikula, Intel
