Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E82AF2B4076
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 11:09:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A785689DC2;
	Mon, 16 Nov 2020 10:09:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06FD389DC2
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 10:09:10 +0000 (UTC)
IronPort-SDR: yAGt1mKKlHP+HWAqFI6OxwniAjcr237s6XVo76vdeP2VZdJ6KvCX+tROUTf7N8Wyr/BDI4GVWS
 Y3eXxNmsySug==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="188768249"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="188768249"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:09:10 -0800
IronPort-SDR: 8onY6cYa/If9ZyYr512/4ZGpvUpE2r48YReOyk0R0OvMaQz4oeKJ3h0RdJlxEluBePyDMgwi7o
 BqSdjBq2qigw==
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="475470867"
Received: from joejam1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.39])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:09:09 -0800
MIME-Version: 1.0
In-Reply-To: <20201115210815.5272-1-sean.z.huang@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160552134613.10586.5521215213795517036@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 16 Nov 2020 12:09:06 +0200
Subject: Re: [Intel-gfx] [PATCH 01/27] drm/i915/pxp: Introduce Intel PXP
 component
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Huang, Sean Z (2020-11-15 23:07:49)
> PXP (Protected Xe Path) is an i915 componment, that
> helps ring3 to establish the hardware protected session and
> manage the status of each alive software session, as well as
> the life cycle of each session.
> 
> By design PXP will expose ioctl so allow ring3 to create, set,
> and destroy each session. It will also provide the communication
> chanel to TEE (Trusted Execution Environment) for the protected
> hardware session creation.

We should add a link and/or description here to the Open Source
userspace component that will be using this.

> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -254,6 +254,10 @@ i915-y += \
>  
>  i915-y += i915_perf.o
>  
> +# Protected execution platform (PXP) support
> +i915-y += \
> +       pxp/intel_pxp.o

This should be a compile-time option, preferrably a sub-module
like GVT is trending.

> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -105,6 +105,8 @@
>  
>  #include "intel_region_lmem.h"
>  
> +#include "pxp/intel_pxp.h"

Only include the file in a more scoped fashion where it is needed,
we're trying to avoid everything to be included everywhere through
i915_drv.h header.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020 Intel Corporation.
> + */
> +
> +#include "i915_drv.h"
> +#include "intel_pxp.h"
> +
> +int intel_pxp_init(struct drm_i915_private *i915)
> +{
> +       int ret;
> +
> +       drm_info(&i915->drm, "i915_pxp_init\n");

The messages should be human readable and bit informative.

> +++ b/include/uapi/drm/i915_drm.h
> @@ -1898,6 +1898,11 @@ struct drm_i915_gem_vm_control {
>         __u32 vm_id;
>  };
>  
> +struct drm_i915_pxp_ops {
> +       __u64 pxp_info_ptr;
> +       __u32 pxp_info_size;
> +};

This hunk is somewhat premature to add in uAPI header without any IOCTL.
The uAPI bits should always be added by the last patches in the series
so that bisecting will not break.

Based on the commit message, this aims to be a general purpose multiplexer
IOCTL which is discouraged.

PS. "pxp_" is tautology in variable naming when the struct is pxp_ops.

Regards, Joonas

> +
>  struct drm_i915_reg_read {
>         /*
>          * Register offset.
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
