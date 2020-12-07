Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BDA2D0E6B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 11:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC2D6E5B9;
	Mon,  7 Dec 2020 10:50:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75FAF6E5A3
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 10:50:43 +0000 (UTC)
IronPort-SDR: 5eQn0j8NF4eT+0vjJyOLS4Myt27JG28h4JuMbMmXN5SDeRRw5rhMl1iyhVCTr+K1R55p6ye53e
 s/wrAhonhyNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="170171226"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="170171226"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 02:50:43 -0800
IronPort-SDR: I4DV6bHeGpSMgTe3ryW2YCopu9zB7QEme7xH6jozjwNwP4a3yQMZat7EIh6Dhz8bahuZtwi1cq
 itSKcMy/JLGA==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="317073337"
Received: from tcujba-mobl.ger.corp.intel.com (HELO localhost) ([10.252.9.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 02:50:42 -0800
MIME-Version: 1.0
In-Reply-To: <20201207002134.13731-4-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-4-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160733823922.9322.17600246328526278530@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 07 Dec 2020 12:50:39 +0200
Subject: Re: [Intel-gfx] [RFC-v1 03/16] drm/i915/pxp: Add PXP context for
 logical hardware states.
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

Quoting Huang, Sean Z (2020-12-07 02:21:21)
> Add PXP context which represents combined view
> of driver and logical HW states.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -5,6 +5,7 @@
>  
>  #include "i915_drv.h"
>  #include "intel_pxp.h"
> +#include "intel_pxp_context.h"
>  
>  static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
>  {
> @@ -28,12 +29,28 @@ static void intel_pxp_mask_irq(struct intel_gt *gt, u32 mask)
>  
>  static int intel_pxp_teardown_required_callback(struct drm_i915_private *i915)
>  {
> +       mutex_lock(&i915->pxp.ctx->ctx_mutex);
> +
> +       i915->pxp.ctx->global_state_attacked = true;
> +       i915->pxp.ctx->flag_display_hm_surface_keys = false;
> +
> +       mutex_unlock(&i915->pxp.ctx->ctx_mutex);

This should really have its own function intel_pxp_context_foobar()
that is called from this point. Also, as you see "ctx_mutex" is tautology
and "mutex" is enough when it's member of "ctx".

We seem to have two separate interrupts at the top level handler. Either
we should handle the interrupts separately or just have a single variable
"teardown_requested" that is flagged from here.

The effects of setting these variables can't be reviewed as not even the
initialization sequence has been added by the series, so this should
definitely be much more towards the end of the series.

> +
>         return 0;
>  }
>  
>  static int intel_pxp_global_terminate_complete_callback(struct drm_i915_private *i915)
>  {
> -       return 0;
> +       int ret = 0;
> +
> +       mutex_lock(&i915->pxp.ctx->ctx_mutex);
> +
> +       if (i915->pxp.ctx->global_state_attacked)
> +               i915->pxp.ctx->global_state_attacked = false;

The if() check is pointless. Again, we should not directly poke such
deeply, but wrap it in a function.

> +
> +       mutex_unlock(&i915->pxp.ctx->ctx_mutex);
> +
> +       return ret;
>  }
>  
>  static void intel_pxp_irq_work(struct work_struct *work)
> @@ -69,6 +86,12 @@ int intel_pxp_init(struct drm_i915_private *i915)
>  
>         drm_info(&i915->drm, "i915 PXP is inited with i915=[%p]\n", i915);
>  
> +       i915->pxp.ctx = intel_pxp_create_ctx(i915);
> +       if (!i915->pxp.ctx) {
> +               drm_err(&i915->drm, "Failed to create pxp ctx\n");
> +               return -EFAULT;

I think this should be -ENOMEM.

> +       }

As we only intend to support a single context, we should avoid a pointer
+ alloc here and just use intel_pxp_context_init(&pxp->ctx)

> @@ -80,6 +103,10 @@ int intel_pxp_init(struct drm_i915_private *i915)
>  
>  void intel_pxp_uninit(struct drm_i915_private *i915)
>  {
> +       if (!i915 || INTEL_GEN(i915) < 12)
> +               return;
> +
> +       intel_pxp_destroy_ctx(i915);

intel_pxp_context_fini(&pxp->ctx);

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -12,6 +12,9 @@
>  #define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)
>  #define PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
>  
> +#define MAX_TYPE0_SESSIONS 16
> +#define MAX_TYPE1_SESSIONS 6

These should be prefixed with PXP_ also, we should not need these at all
if we only intend to support single-session.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.c
> @@ -0,0 +1,45 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "intel_pxp_context.h"
> +
> +/**
> + * intel_pxp_create_ctx - To create a new pxp context.
> + * @i915: i915 device handle.
> + *
> + * Return: pointer to new_ctx, NULL for failure
> + */
> +struct pxp_context *intel_pxp_create_ctx(struct drm_i915_private *i915)
> +{
> +       struct pxp_context *new_ctx = NULL;

Adding "new_" is tautology here. Also, we try to separate the allocation
and init to separate functions so that we can embed, like I suggested
above to embed the singleton context to intel_pxp as member, not
pointer.

> +
> +       new_ctx = kzalloc(sizeof(*new_ctx), GFP_KERNEL);
> +       if (!new_ctx)
> +               return NULL;
> +
> +       get_random_bytes(&new_ctx->ctx_id, sizeof(new_ctx->ctx_id));

"ctx_id" is again repeating as it's member of "ctx", so "id" should be
fine for member name.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_CONTEXT_H__
> +#define __INTEL_PXP_CONTEXT_H__
> +
> +#include <linux/list.h>
> +#include "i915_drv.h"
> +#include "pxp/intel_pxp.h"
> +
> +/* struct pxp_context - Represents combined view of driver and logical HW states. */
> +struct pxp_context {
> +       /** @ctx_mutex: mutex to protect the pxp context */
> +       struct mutex ctx_mutex;
> +
> +       struct list_head active_pxp_type0_sessions;
> +       struct list_head active_pxp_type1_sessions;

We shouldn't need any session tracking as we only have single session.

> +       struct list_head user_ctx_list;
> +
> +       u32 type0_session_pxp_tag[MAX_TYPE0_SESSIONS];
> +       u32 type1_session_pxp_tag[MAX_TYPE1_SESSIONS];

We shouldn't need any of these arrays as we only have single session.

> +
> +       int ctx_id;
> +
> +       bool global_state_attacked;
> +       bool global_state_in_suspend;
> +       bool flag_display_hm_surface_keys;

We should only add each variable only when the handler code is
introduced. For now the names don't really give a good hint about
what their usage model will be, so can't recommend better names.

> +};
> +
> +struct pxp_user_ctx {
> +       /** @listhead: linked list infrastructure, do not change its order. */
> +       struct list_head listhead;
> +
> +       /** @user_ctx: user space context id */
> +       u32 user_ctx;
> +};

In this series, there will be no user space context ID, but only a
singleton implicit session. So we should not need any tracking code.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
