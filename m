Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A45A99A201
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 12:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BDD310E079;
	Fri, 11 Oct 2024 10:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MEpaE9H0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D2810E079
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 10:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728643940; x=1760179940;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=a0Jr/HSmwTMcrzqD5iVt/kH98zip4xRnBg0i4Q8g9jQ=;
 b=MEpaE9H0vMz5x9RCqflsP0Rit0jGT2OuaDsG79mokT9/GzwyO3G0ccT6
 tiuNMUQ8mNe47/Ghqxeaemier9bSCQwLpsgOYFa9inL6wzg3cpu9eLxJH
 cC/ZnoUxJS2RjPWlKC3NI9lydUhbbZNr62IFg1d+hZr3pVU9WKYBnnaNW
 iawYohCO9hX3YttOdSFrvEHPV1fWCycsPb6hKc4zyyyORYZyZ0leSvjIb
 l6mnUCRCG9yRIaW35+dJGl6+nF+krYKiNcFFd/ENkX5VLDh86uzbX9E5r
 AtGyERMNl9uC7C3LoBMpOfaox8yBdKet9M9EfevScmCgi7Q971C/gN+ym w==;
X-CSE-ConnectionGUID: b4MlPMExTaKrH7uAuSFTVQ==
X-CSE-MsgGUID: BsQE7CkETLOAf34UDErbNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="50581172"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="50581172"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:52:20 -0700
X-CSE-ConnectionGUID: dE0hthjFQeG5+FbtV1unsQ==
X-CSE-MsgGUID: JMUTvjy7TWiLowSuu+NdIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="81495068"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:52:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com, Raag Jadav
 <raag.jadav@intel.com>
Subject: Re: [PATCH v2 3/4] drm/i915/wa: Introduce intel_wa_cpu.c for CPU
 specific workarounds
In-Reply-To: <20241011103250.1035316-4-raag.jadav@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241011103250.1035316-1-raag.jadav@intel.com>
 <20241011103250.1035316-4-raag.jadav@intel.com>
Date: Fri, 11 Oct 2024 13:52:10 +0300
Message-ID: <87frp26het.fsf@intel.com>
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

On Fri, 11 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> Having similar naming convention in intel-family.h and intel_device_info.h
> results in redefinition of a few platforms. Define CPU IDs in its own file
> to avoid this.
>
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile               |  1 +
>  drivers/gpu/drm/i915/gt/intel_wa_cpu.c      | 34 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_workarounds.h |  2 ++
>  3 files changed, 37 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_wa_cpu.c
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index c63fa2133ccb..1f9b503ab976 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -121,6 +121,7 @@ gt-y +=3D \
>  	gt/intel_timeline.o \
>  	gt/intel_tlb.o \
>  	gt/intel_wopcm.o \
> +	gt/intel_wa_cpu.o \
>  	gt/intel_workarounds.o \
>  	gt/shmem_utils.o \
>  	gt/sysfs_engines.o
> diff --git a/drivers/gpu/drm/i915/gt/intel_wa_cpu.c b/drivers/gpu/drm/i91=
5/gt/intel_wa_cpu.c
> new file mode 100644
> index 000000000000..cbdab13e9db6
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/intel_wa_cpu.c
> @@ -0,0 +1,34 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + *
> + * This file is introduced to avoid platform redefinition from
> + * intel_device_info.h :(

I think the comment is good to have, but please be more specific and
direct, and leave out the emoticons.

"Avoid INTEL_<PLATFORM> name collisions between asm/intel-family.h and
intel_device_info.h by having a separate file."

Or something like that. Spells out exactly what the problem is, instead
of leaving the reader guessing.

> + */
> +
> +#include "intel_workarounds.h"
> +
> +#ifdef CONFIG_X86
> +#include <asm/cpu_device_id.h>
> +#include <asm/intel-family.h>
> +
> +static const struct x86_cpu_id wa_cpu_ids[] =3D {
> +	X86_MATCH_VFM(INTEL_ALDERLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_ALDERLAKE_L,	NULL),
> +	X86_MATCH_VFM(INTEL_COMETLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_KABYLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_KABYLAKE_L,		NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	NULL),
> +	X86_MATCH_VFM(INTEL_ROCKETLAKE,		NULL),
> +	{}
> +};
> +
> +bool intel_match_wa_cpu(void)

IMO the name's too generic.

> +{
> +	return x86_match_cpu(wa_cpu_ids);
> +}
> +#else
> +bool intel_match_wa_cpu(void) { return false; }
> +#endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.h b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.h
> index 9beaab77c7f0..12f24fb31363 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.h
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.h
> @@ -21,6 +21,8 @@ static inline void intel_wa_list_free(struct i915_wa_li=
st *wal)
>  	memset(wal, 0, sizeof(*wal));
>  }
>=20=20
> +bool intel_match_wa_cpu(void);
> +
>  void intel_engine_init_ctx_wa(struct intel_engine_cs *engine);
>  int intel_engine_emit_ctx_wa(struct i915_request *rq);

--=20
Jani Nikula, Intel
