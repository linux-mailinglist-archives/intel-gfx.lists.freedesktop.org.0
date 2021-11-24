Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAC045B804
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 11:06:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 415E46EA6A;
	Wed, 24 Nov 2021 10:06:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2EB06EA6A
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 10:06:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="298653315"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="298653315"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:06:46 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="650356189"
Received: from moconno1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.40])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:06:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211122230402.2023576-3-alan.previn.teres.alexis@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-3-alan.previn.teres.alexis@intel.com>
Date: Wed, 24 Nov 2021 12:06:42 +0200
Message-ID: <87czmpn9zh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [RFC 2/7] drm/i915/guc: Update GuC ADS size for
 error capture lists
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 22 Nov 2021, Alan Previn <alan.previn.teres.alexis@intel.com> wrote:
> +	{
> +		.list =3D gen12lp_vec_class_regs,
> +		.num_regs =3D (sizeof(gen12lp_vec_class_regs) / sizeof(struct __guc_mm=
io_reg_descr)),
> +		.owner =3D GUC_CAPTURE_LIST_INDEX_PF,
> +		.type =3D GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
> +		.engine =3D VIDEO_ENHANCEMENT_CLASS
> +	},
> +	{

Usually }, { on the same line

> +		.list =3D gen12lp_vec_inst_regs,
> +		.num_regs =3D (sizeof(gen12lp_vec_inst_regs) / sizeof(struct __guc_mmi=
o_reg_descr)),
> +		.owner =3D GUC_CAPTURE_LIST_INDEX_PF,
> +		.type =3D GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
> +		.engine =3D VIDEO_ENHANCEMENT_CLASS
> +	},
> +	{NULL, 0, 0, 0, 0}

Just {}  should work as a sentinel.

> +};
> +
> +/************ FIXME: Populate tables for other devices in subsequent pat=
ch ************/

Please don't add any of this ******* nonsense.

> +
> +static struct __guc_mmio_reg_descr_group *
> +guc_capture_get_device_reglist(struct drm_i915_private *dev_priv)
> +{
> +	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> +	    IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) {
> +		return gen12lp_lists;
> +	}
> +
> +	return NULL;
> +}
> +
> +static inline struct __guc_mmio_reg_descr_group *
> +guc_capture_get_one_list(struct __guc_mmio_reg_descr_group *reglists, u3=
2 owner, u32 type, u32 id)

Please don't use inlines in .c files. Let the compiler decide.

> +{
> +	int i =3D 0;
> +
> +	if (!reglists)
> +		return NULL;
> +	while (reglists[i].list) {
> +		if (reglists[i].owner =3D=3D owner &&
> +		    reglists[i].type =3D=3D type) {
> +			if (reglists[i].type =3D=3D GUC_CAPTURE_LIST_TYPE_GLOBAL ||
> +			    reglists[i].engine =3D=3D id) {
> +				return &reglists[i];
> +			}
> +		}
> +		++i;
> +	}

That's a for loop right there.

> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu=
/drm/i915/gt/uc/intel_guc_capture.h
> new file mode 100644
> index 000000000000..352940b8bc87
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
> @@ -0,0 +1,47 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2021-2021 Intel Corporation
> + */
> +
> +#ifndef _INTEL_GUC_CAPTURE_H
> +#define _INTEL_GUC_CAPTURE_H
> +
> +#include <linux/mutex.h>
> +#include <linux/workqueue.h>

Both of these seem random and completely unnecessary. linux/types.h is
required but it's not here.

> +#include "intel_guc_fwif.h"

I've been trying hard to reduce includes from headers throughout the
driver, to clean up and clarify the interfaces and dependencies. I don't
know how the guc headers have grown the kind of interdependencies that
they all pull in almost everything.

This one line pulls in another 19 headers. Just to get
GUC_CAPTURE_LIST_INDEX_MAX and GUC_MAX_ENGINE_CLASSES. Everything else
could be solved through forward declarations.

BR,
Jani.


> +
> +struct intel_guc;
> +
> +struct __guc_mmio_reg_descr {
> +	i915_reg_t reg;
> +	u32 flags;
> +	u32 mask;
> +	char *regname;
> +};
> +
> +struct __guc_mmio_reg_descr_group {
> +	struct __guc_mmio_reg_descr *list;
> +	u32 num_regs;
> +	u32 owner; /* see enum guc_capture_owner */
> +	u32 type; /* see enum guc_capture_type */
> +	u32 engine; /* as per MAX_ENGINE_CLASS */
> +};
> +
> +struct intel_guc_state_capture {
> +	struct __guc_mmio_reg_descr_group *reglists;
> +	u16 num_instance_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSE=
S];
> +	u16 num_class_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
> +	u16 num_global_regs[GUC_CAPTURE_LIST_INDEX_MAX];
> +	int instance_list_size;
> +	int class_list_size;
> +	int global_list_size;
> +};
> +
> +int intel_guc_capture_list_count(struct intel_guc *guc, u32 owner, u32 t=
ype, u32 class,
> +				 u16 *num_entries);
> +int intel_guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 ty=
pe, u32 class,
> +				struct guc_mmio_reg *ptr, u16 num_entries);
> +void intel_guc_capture_destroy(struct intel_guc *guc);
> +int intel_guc_capture_init(struct intel_guc *guc);
> +
> +#endif /* _INTEL_GUC_CAPTURE_H */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/dr=
m/i915/gt/uc/intel_guc_fwif.h
> index 767684b6af67..1a1d2271c7e9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -285,13 +285,30 @@ struct guc_gt_system_info {
>  } __packed;
>=20=20
>  /* Capture-types of GuC capture register lists */
> -enum
> +enum guc_capture_owner
>  {
>  	GUC_CAPTURE_LIST_INDEX_PF =3D 0,
>  	GUC_CAPTURE_LIST_INDEX_VF =3D 1,
>  	GUC_CAPTURE_LIST_INDEX_MAX =3D 2,
>  };
>=20=20
> +/*Register-types of GuC capture register lists */
> +enum guc_capture_type {
> +	GUC_CAPTURE_LIST_TYPE_GLOBAL =3D 0,
> +	GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
> +	GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
> +	GUC_CAPTURE_LIST_TYPE_MAX,
> +};
> +
> +struct guc_debug_capture_list_header {
> +	u32 info;
> +		#define GUC_CAPTURELISTHDR_NUMDESCR GENMASK(15, 0)
> +};
> +
> +struct guc_debug_capture_list {
> +	struct guc_debug_capture_list_header header;
> +};
> +
>  /* GuC Additional Data Struct */
>  struct guc_ads {
>  	struct guc_mmio_reg_set reg_state_list[GUC_MAX_ENGINE_CLASSES][GUC_MAX_=
INSTANCES_PER_CLASS];

--=20
Jani Nikula, Intel Open Source Graphics Center
