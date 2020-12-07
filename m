Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8072D107C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 13:21:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95BB86E7EF;
	Mon,  7 Dec 2020 12:21:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62B6A6E7EF
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 12:21:15 +0000 (UTC)
IronPort-SDR: T+NYIH3tZvUa80A7bIWwaUPw8P7BvKIWUVt3uYC+r1D4SmauNGV81GM5eXYWgY7zcZ4WJXruY5
 NdrODRxZDhug==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="173798636"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="173798636"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 04:21:13 -0800
IronPort-SDR: lkAqUJegZZqHR4BjJJWVwrTzrIYaVpUu0ZaEHyQbFcxiuWfN6BAv++mmaiOoSY6eKfmkX6zpEt
 ipRd8/GzNqmA==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="363117475"
Received: from tcujba-mobl.ger.corp.intel.com (HELO localhost) ([10.252.9.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 04:21:12 -0800
MIME-Version: 1.0
In-Reply-To: <20201207002134.13731-10-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-10-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160734366944.9322.3216167551541536930@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 07 Dec 2020 14:21:09 +0200
Subject: Re: [Intel-gfx] [RFC-v1 09/16] drm/i915/pxp: Func to send hardware
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

Quoting Huang, Sean Z (2020-12-07 02:21:27)
> Implement the functions to allow PXP to send a GPU command, in
> order to terminate the hardware session, so hardware can recycle
> this session slot for the next usage.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

As we only have a singleton session support in this series, maybe this
patch is not needed?

I don't think we should add functions to arbitarily inject commands to VCS0
from another driver. We should add proper functions for the commands in i915
and call them on demand and add EXPORT_SYMBOL for them.

Regards, Joonas

> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 150 ++++++++++++++++++++++++
>  1 file changed, 150 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> index 056f65fbaf4e..c88243e02a3c 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> @@ -3,13 +3,163 @@
>   * Copyright(c) 2020, Intel Corporation. All rights reserved.
>   */
>  
> +#include "gt/intel_gpu_commands.h"
> +#include "gt/intel_gt.h"
>  #include "gt/intel_context.h"
> +#include "gt/intel_gt_buffer_pool.h"
>  #include "gt/intel_engine_pm.h"
>  
>  #include "intel_pxp.h"
>  #include "intel_pxp_sm.h"
>  #include "intel_pxp_context.h"
>  
> +static struct i915_vma *pxp_get_batch(struct drm_i915_private *i915,
> +                                     struct intel_context *ce,
> +                                     struct intel_gt_buffer_pool_node *pool,
> +                                     u32 *cmd_buf, int cmd_size_in_dw)
> +{
> +       struct i915_vma *batch = ERR_PTR(-EINVAL);
> +       u32 *cmd;
> +
> +       if (!ce || !ce->engine || !cmd_buf)
> +               return ERR_PTR(-EINVAL);
> +
> +       if (cmd_size_in_dw * 4 > PAGE_SIZE) {
> +               drm_err(&i915->drm, "Failed to %s, invalid cmd_size_id_dw=[%d]\n",
> +                       __func__, cmd_size_in_dw);
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
> +       if (IS_ERR(cmd)) {
> +               drm_err(&i915->drm, "Failed to i915_gem_object_pin_map()\n");
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       memcpy(cmd, cmd_buf, cmd_size_in_dw * 4);
> +
> +       if (drm_debug_enabled(DRM_UT_DRIVER)) {
> +               print_hex_dump(KERN_DEBUG, "cmd binaries:",
> +                              DUMP_PREFIX_OFFSET, 4, 4, cmd, cmd_size_in_dw * 4, true);
> +       }
> +
> +       i915_gem_object_unpin_map(pool->obj);
> +
> +       batch = i915_vma_instance(pool->obj, ce->vm, NULL);
> +       if (IS_ERR(batch)) {
> +               drm_err(&i915->drm, "Failed to i915_vma_instance()\n");
> +               return batch;
> +       }
> +
> +       return batch;
> +}
> +
> +static int pxp_submit_cmd(struct drm_i915_private *i915, u32 *cmd, int cmd_size_in_dw)
> +{
> +       int err = -EINVAL;
> +       struct i915_vma *batch;
> +       struct i915_request *rq;
> +       struct intel_context *ce = NULL;
> +       bool is_engine_pm_get = false;
> +       bool is_batch_vma_pin = false;
> +       bool is_skip_req_on_err = false;
> +       bool is_engine_get_pool = false;
> +       struct intel_gt_buffer_pool_node *pool = NULL;
> +       struct intel_gt *gt = NULL;
> +
> +       if (!i915 || !HAS_ENGINE(&i915->gt, VCS0) ||
> +           !i915->gt.engine[VCS0]->kernel_context) {
> +               err = -EINVAL;
> +               goto end;
> +       }
> +
> +       if (!cmd || (cmd_size_in_dw * 4) > PAGE_SIZE) {
> +               drm_err(&i915->drm, "Failed to %s bad params\n", __func__);
> +               return -EINVAL;
> +       }
> +
> +       gt = &i915->gt;
> +       ce = i915->gt.engine[VCS0]->kernel_context;
> +
> +       intel_engine_pm_get(ce->engine);
> +       is_engine_pm_get = true;
> +
> +       pool = intel_gt_get_buffer_pool(gt, PAGE_SIZE);
> +       if (IS_ERR(pool)) {
> +               drm_err(&i915->drm, "Failed to intel_engine_get_pool()\n");
> +               goto end;
> +       }
> +       is_engine_get_pool = true;
> +
> +       batch = pxp_get_batch(i915, ce, pool, cmd, cmd_size_in_dw);
> +       if (IS_ERR(batch)) {
> +               drm_err(&i915->drm, "Failed to pxp_get_batch()\n");
> +               goto end;
> +       }
> +
> +       err = i915_vma_pin(batch, 0, 0, PIN_USER);
> +       if (err) {
> +               drm_err(&i915->drm, "Failed to i915_vma_pin()\n");
> +               goto end;
> +       }
> +       is_batch_vma_pin = true;
> +
> +       rq = intel_context_create_request(ce);
> +       if (IS_ERR(rq)) {
> +               drm_err(&i915->drm, "Failed to intel_context_create_request()\n");
> +               goto end;
> +       }
> +       is_skip_req_on_err = true;
> +
> +       err = intel_gt_buffer_pool_mark_active(pool, rq);
> +       if (err) {
> +               drm_err(&i915->drm, "Failed to intel_engine_pool_mark_active()\n");
> +               goto end;
> +       }
> +
> +       i915_vma_lock(batch);
> +       err = i915_request_await_object(rq, batch->obj, false);
> +       if (!err)
> +               err = i915_vma_move_to_active(batch, rq, 0);
> +       i915_vma_unlock(batch);
> +       if (err) {
> +               drm_err(&i915->drm, "Failed to i915_request_await_object()\n");
> +               goto end;
> +       }
> +
> +       if (ce->engine->emit_init_breadcrumb) {
> +               err = ce->engine->emit_init_breadcrumb(rq);
> +               if (err) {
> +                       drm_err(&i915->drm, "Failed to emit_init_breadcrumb()\n");
> +                       goto end;
> +               }
> +       }
> +
> +       err = ce->engine->emit_bb_start(rq, batch->node.start,
> +               batch->node.size, 0);
> +       if (err) {
> +               drm_err(&i915->drm, "Failed to emit_bb_start()\n");
> +               goto end;
> +       }
> +
> +       i915_request_add(rq);
> +
> +end:
> +       if (unlikely(err) && is_skip_req_on_err)
> +               i915_request_set_error_once(rq, err);
> +
> +       if (is_batch_vma_pin)
> +               i915_vma_unpin(batch);
> +
> +       if (is_engine_get_pool)
> +               intel_gt_buffer_pool_put(pool);
> +
> +       if (is_engine_pm_get)
> +               intel_engine_pm_put(ce->engine);
> +
> +       return err;
> +}
> +
>  static int pxp_sm_reg_read(struct drm_i915_private *i915, u32 offset, u32 *regval)
>  {
>         intel_wakeref_t wakeref;
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
