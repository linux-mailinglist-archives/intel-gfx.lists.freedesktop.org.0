Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A3F2D56A9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 10:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E2576EA47;
	Thu, 10 Dec 2020 09:18:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B406EA47
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 09:18:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23276816-1500050 for multiple; Thu, 10 Dec 2020 09:18:39 +0000
MIME-Version: 1.0
In-Reply-To: <20201210072435.24066-6-sean.z.huang@intel.com>
References: <20201210072435.24066-1-sean.z.huang@intel.com>
 <20201210072435.24066-6-sean.z.huang@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 09:18:39 +0000
Message-ID: <160759191903.595.11455610929447185588@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC-v4 05/21] drm/i915/pxp: Func to send hardware
 session termination
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

Quoting Huang, Sean Z (2020-12-10 07:24:19)
> Implement the functions to allow PXP to send a GPU command, in
> order to terminate the hardware session, so hardware can recycle
> this session slot for the next usage.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile            |   1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c | 156 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h |  18 +++
>  3 files changed, 175 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 0710cc522f38..2da904cda49f 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -258,6 +258,7 @@ i915-y += i915_perf.o
>  i915-$(CONFIG_DRM_I915_PXP) += \
>         pxp/intel_pxp.o \
>         pxp/intel_pxp_arb.o \
> +       pxp/intel_pxp_cmd.o \
>         pxp/intel_pxp_context.o \
>         pxp/intel_pxp_tee.o
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> new file mode 100644
> index 000000000000..e531ea9f3cdc
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> @@ -0,0 +1,156 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "intel_pxp_cmd.h"
> +#include "i915_drv.h"
> +#include "gt/intel_context.h"
> +#include "gt/intel_engine_pm.h"
> +
> +struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
> +                                        struct intel_context *ce,
> +                                        struct intel_gt_buffer_pool_node *pool,
> +                                        u32 *cmd_buf, int cmd_size_in_dw)
> +{
> +       struct i915_vma *batch = ERR_PTR(-EINVAL);
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> +       u32 *cmd;
> +
> +       if (!ce || !ce->engine || !cmd_buf)
> +               return ERR_PTR(-EINVAL);

Really?

> +       if (cmd_size_in_dw * 4 > PAGE_SIZE) {

Pardon?

> +               drm_err(&gt->i915->drm, "Failed to %s, invalid cmd_size_id_dw=[%d]\n",
> +                       __func__, cmd_size_in_dw);
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
> +       if (IS_ERR(cmd)) {
> +               drm_err(&gt->i915->drm, "Failed to i915_gem_object_pin_map()\n");
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       memcpy(cmd, cmd_buf, cmd_size_in_dw * 4);

Why did you bother creating a temporary?
[memcpy32]

> +       if (drm_debug_enabled(DRM_UT_DRIVER)) {
> +               print_hex_dump(KERN_DEBUG, "cmd binaries:",
> +                              DUMP_PREFIX_OFFSET, 4, 4, cmd, cmd_size_in_dw * 4, true);

More sillyness again.

> +       }
> +

Flush the map after a write

> +       i915_gem_object_unpin_map(pool->obj);
> +
> +       batch = i915_vma_instance(pool->obj, ce->vm, NULL);
> +       if (IS_ERR(batch)) {
> +               drm_err(&gt->i915->drm, "Failed to i915_vma_instance()\n");
> +               return batch;
> +       }
> +
> +       return batch;
> +}
> +
> +int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw)
> +{
> +       int err = -EINVAL;
> +       struct i915_vma *batch;
> +       struct i915_request *rq;
> +       struct intel_context *ce = NULL;
> +       bool is_engine_pm_get = false;
> +       bool is_batch_vma_pin = false;
> +       bool is_skip_req_on_err = false;
> +       bool is_engine_get_pool = false;

Please implement onion unwind correctly.

And a general plea to be consistent with the rest of the code in laying
out locals.

> +       struct intel_gt_buffer_pool_node *pool = NULL;
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> +
> +       if (!HAS_ENGINE(gt, VCS0) ||
> +           !gt->engine[VCS0]->kernel_context) {

What are you doing here if you don't have a VCS? Surely you should not
have even bothered to bind PXP in that case?

Don't assume the first available VCS engine has the HW instance id of 0.

The kernel_context exists if the engine exists.

> +               err = -EINVAL;
> +               goto end;
> +       }
> +
> +       if (!cmd || (cmd_size_in_dw * 4) > PAGE_SIZE) {

Fix your debug code.

> +               drm_err(&gt->i915->drm, "Failed to %s bad params\n", __func__);
> +               return -EINVAL;
> +       }
> +
> +       ce = gt->engine[VCS0]->kernel_context;

DO NOT USE THE KERNEL CONTEXT. Unless you really know what you are
doing and can guarantee that under no circumstances does it break.

> +       intel_engine_pm_get(ce->engine);
> +       is_engine_pm_get = true;
> +
> +       pool = intel_gt_get_buffer_pool(gt, PAGE_SIZE);

If only you knew what the desired size actually was.

> +       if (IS_ERR(pool)) {
> +               drm_err(&gt->i915->drm, "Failed to intel_engine_get_pool()\n");
> +               goto end;
> +       }
> +       is_engine_get_pool = true;
> +
> +       batch = intel_pxp_cmd_get_batch(pxp, ce, pool, cmd, cmd_size_in_dw);
> +       if (IS_ERR(batch)) {
> +               drm_err(&gt->i915->drm, "Failed to intel_pxp_cmd_get_batch()\n");
> +               goto end;
> +       }
> +
> +       err = i915_vma_pin(batch, 0, 0, PIN_USER);
> +       if (err) {
> +               drm_err(&gt->i915->drm, "Failed to i915_vma_pin()\n");
> +               goto end;
> +       }
> +       is_batch_vma_pin = true;
> +
> +       rq = intel_context_create_request(ce);
> +       if (IS_ERR(rq)) {
> +               drm_err(&gt->i915->drm, "Failed to intel_context_create_request()\n");
> +               goto end;
> +       }
> +       is_skip_req_on_err = true;
> +
> +       err = intel_gt_buffer_pool_mark_active(pool, rq);
> +       if (err) {
> +               drm_err(&gt->i915->drm, "Failed to intel_engine_pool_mark_active()\n");
> +               goto end;
> +       }
> +
> +       i915_vma_lock(batch);
> +       err = i915_request_await_object(rq, batch->obj, false);
> +       if (!err)
> +               err = i915_vma_move_to_active(batch, rq, 0);
> +       i915_vma_unlock(batch);
> +       if (err) {
> +               drm_err(&gt->i915->drm, "Failed to i915_request_await_object()\n");
> +               goto end;
> +       }
> +
> +       if (ce->engine->emit_init_breadcrumb) {
> +               err = ce->engine->emit_init_breadcrumb(rq);
> +               if (err) {
> +                       drm_err(&gt->i915->drm, "Failed to emit_init_breadcrumb()\n");
> +                       goto end;
> +               }
> +       }
> +
> +       err = ce->engine->emit_bb_start(rq, batch->node.start,
> +               batch->node.size, 0);

If this is not privileged, why is it done in the kernel? What prevents
everyone else from issuing the very same commands to give themselves
control?

> +       if (err) {
> +               drm_err(&gt->i915->drm, "Failed to emit_bb_start()\n");
> +               goto end;
> +       }
> +
> +       i915_request_add(rq);
> +
> +end:

Consistency would be to use out:

> +       if (unlikely(err) && is_skip_req_on_err)
> +               i915_request_set_error_once(rq, err);

Why?

> +       if (is_batch_vma_pin)
> +               i915_vma_unpin(batch);
> +
> +       if (is_engine_get_pool)
> +               intel_gt_buffer_pool_put(pool);
> +
> +       if (is_engine_pm_get)
> +               intel_engine_pm_put(ce->engine);

Style wise, highly inconsistent. Just use labels, spare the locals.

> +       return err;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> new file mode 100644
> index 000000000000..d04463962421
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_CMD_H__
> +#define __INTEL_PXP_CMD_H__
> +
> +#include "gt/intel_gt_buffer_pool.h"
> +#include "intel_pxp.h"
> +
> +struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
> +                                        struct intel_context *ce,
> +                                        struct intel_gt_buffer_pool_node *pool,
> +                                        u32 *cmd_buf, int cmd_size_in_dw);
> +
> +int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw);
> +#endif /* __INTEL_PXP_SM_H__ */
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
