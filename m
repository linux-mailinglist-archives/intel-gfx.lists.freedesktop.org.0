Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2319B3085
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 13:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF07E10E498;
	Mon, 28 Oct 2024 12:40:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I+E5DKmz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51C310E498
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 12:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730119228; x=1761655228;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=P8ujdvhx/0Ltcj3RiET9rx87fnBPQZBaT0eGTyGlfw8=;
 b=I+E5DKmzgW3vu9guLdU+TxRCdg8mZcppKTMxZwPgzRzCzdWPfe3OAfXF
 sRw6BkI3nF4C/zgg5J/qEty9kTRPU6hZ6IWBR0YpnVLPSawxok/fHTItK
 Ffij4tp2AAal27ForwuTpG+z8uyNnolqHJY3W7g2VtpVKRK/o/fdgR+H2
 9Hh/P5berfi4qupn8MyY2pemorlLeyIXE19rSsL1GwUqMQuyBF7jxONqx
 g+O0lVXJjNZHnOTEl+ErxV6Rr8mlHackzCYdZCJl1tY721zr8kmbipE6v
 fCODbJVIkLKprL3AHn281UiB7NGqk1Ob1m9QJ2s0EFZjkF1pO1nuEz8aw Q==;
X-CSE-ConnectionGUID: cT6CDy+9QBa1Ucqe3WP7Hg==
X-CSE-MsgGUID: +fv/td6RSPGbH/R0fZW3BA==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="17346868"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="17346868"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:40:28 -0700
X-CSE-ConnectionGUID: ID5NrpBoT4a1iWbBpfxuVA==
X-CSE-MsgGUID: fM9CWGQtQqe4bN3oYovHSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="119067863"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.245.177.235])
 ([10.245.177.235])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:40:27 -0700
Message-ID: <bb778db8-71d1-4ded-be52-f5dc32052ae2@linux.intel.com>
Date: Mon, 28 Oct 2024 13:40:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/xe: Add trace to lrc timestamp update
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20241026062658.28060-1-lucas.demarchi@intel.com>
 <20241026062658.28060-2-lucas.demarchi@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20241026062658.28060-2-lucas.demarchi@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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


On 10/26/2024 8:26 AM, Lucas De Marchi wrote:
> Help debugging when LRC timestamp is updated for a exec queue.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>


Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>  drivers/gpu/drm/xe/Makefile       |  1 +
>  drivers/gpu/drm/xe/xe_lrc.c       |  3 ++
>  drivers/gpu/drm/xe/xe_trace_lrc.c |  9 ++++++
>  drivers/gpu/drm/xe/xe_trace_lrc.h | 52 +++++++++++++++++++++++++++++++
>  4 files changed, 65 insertions(+)
>  create mode 100644 drivers/gpu/drm/xe/xe_trace_lrc.c
>  create mode 100644 drivers/gpu/drm/xe/xe_trace_lrc.h
>
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index bc7a04ce69fd..21d69935c336 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -101,6 +101,7 @@ xe-y += xe_bb.o \
>  	xe_trace.o \
>  	xe_trace_bo.o \
>  	xe_trace_guc.o \
> +	xe_trace_lrc.o \
>  	xe_ttm_sys_mgr.o \
>  	xe_ttm_stolen_mgr.o \
>  	xe_ttm_vram_mgr.o \
> diff --git a/drivers/gpu/drm/xe/xe_lrc.c b/drivers/gpu/drm/xe/xe_lrc.c
> index 4f64c7f4e68d..4b65da77c6e0 100644
> --- a/drivers/gpu/drm/xe/xe_lrc.c
> +++ b/drivers/gpu/drm/xe/xe_lrc.c
> @@ -25,6 +25,7 @@
>  #include "xe_map.h"
>  #include "xe_memirq.h"
>  #include "xe_sriov.h"
> +#include "xe_trace_lrc.h"
>  #include "xe_vm.h"
>  #include "xe_wa.h"
>  
> @@ -1758,5 +1759,7 @@ u32 xe_lrc_update_timestamp(struct xe_lrc *lrc, u32 *old_ts)
>  
>  	lrc->ctx_timestamp = xe_lrc_ctx_timestamp(lrc);
>  
> +	trace_xe_lrc_update_timestamp(lrc, *old_ts);
> +
>  	return lrc->ctx_timestamp;
>  }
> diff --git a/drivers/gpu/drm/xe/xe_trace_lrc.c b/drivers/gpu/drm/xe/xe_trace_lrc.c
> new file mode 100644
> index 000000000000..ab9b7e2970bc
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/xe_trace_lrc.c
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef __CHECKER__
> +#define CREATE_TRACE_POINTS
> +#include "xe_trace_lrc.h"
> +#endif
> diff --git a/drivers/gpu/drm/xe/xe_trace_lrc.h b/drivers/gpu/drm/xe/xe_trace_lrc.h
> new file mode 100644
> index 000000000000..5c669a0b2180
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/xe_trace_lrc.h
> @@ -0,0 +1,52 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#undef TRACE_SYSTEM
> +#define TRACE_SYSTEM xe
> +
> +#if !defined(_XE_TRACE_LRC_H_) || defined(TRACE_HEADER_MULTI_READ)
> +#define _XE_TRACE_LRC_H_
> +
> +#include <linux/tracepoint.h>
> +#include <linux/types.h>
> +
> +#include "xe_gt_types.h"
> +#include "xe_lrc.h"
> +#include "xe_lrc_types.h"
> +
> +#define __dev_name_lrc(lrc)	dev_name(gt_to_xe((lrc)->fence_ctx.gt)->drm.dev)
> +
> +TRACE_EVENT(xe_lrc_update_timestamp,
> +	    TP_PROTO(struct xe_lrc *lrc, uint32_t old),
> +	    TP_ARGS(lrc, old),
> +	    TP_STRUCT__entry(
> +		     __field(struct xe_lrc *, lrc)
> +		     __field(u32, old)
> +		     __field(u32, new)
> +		     __string(name, lrc->fence_ctx.name)
> +		     __string(device_id, __dev_name_lrc(lrc))
> +	    ),
> +
> +	    TP_fast_assign(
> +		   __entry->lrc	= lrc;
> +		   __entry->old = old;
> +		   __entry->new = lrc->ctx_timestamp;
> +		   __assign_str(name);
> +		   __assign_str(device_id);
> +		   ),
> +	    TP_printk("lrc=:%p lrc->name=%s old=%u new=%u device_id:%s",
> +		      __entry->lrc, __get_str(name),
> +		      __entry->old, __entry->new,
> +		      __get_str(device_id))
> +);
> +
> +#endif
> +
> +/* This part must be outside protection */
> +#undef TRACE_INCLUDE_PATH
> +#undef TRACE_INCLUDE_FILE
> +#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/xe
> +#define TRACE_INCLUDE_FILE xe_trace_lrc
> +#include <trace/define_trace.h>
