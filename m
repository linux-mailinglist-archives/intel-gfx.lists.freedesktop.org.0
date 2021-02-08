Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4A2313F56
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 20:43:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2B46E9DB;
	Mon,  8 Feb 2021 19:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F33E66E9DB
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 19:43:26 +0000 (UTC)
IronPort-SDR: /x1Q28Ae0Hfah1UuEUxjUzgpErZY+dYAlqtG3kArofderyPG9fLYHEbo7sliGemwRUpOrKqKZl
 oJ9lx1Bli6Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="178259179"
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="178259179"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 11:43:26 -0800
IronPort-SDR: Zm8qhoaXdVNuSOukyGs3MWn4BbrShuX/1K6GU310JsdrPx74y/p2mhCYKy0XfC2lmHP7DJuu/s
 MRCILq5WJbkA==
X-IronPort-AV: E=Sophos;i="5.81,163,1610438400"; d="scan'208";a="361538259"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.95.207])
 ([10.212.95.207])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 11:43:26 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <20210206020925.36729-9-daniele.ceraolospurio@intel.com>
 <161261636706.12021.3736940066271164943@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <5f2f642c-1292-59b3-c9e7-30f0a5a1c871@intel.com>
Date: Mon, 8 Feb 2021 11:43:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <161261636706.12021.3736940066271164943@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 08/14] drm/i915/pxp: Implement arb session
 teardown
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2/6/2021 4:59 AM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-02-06 02:09:19)
>> From: "Huang, Sean Z" <sean.z.huang@intel.com>
>>
>> Teardown is triggered when the display topology changes and no
>> long meets the secure playback requirement, and hardware trashes
>> all the encryption keys for display. Additionally, we want to emit a
>> teardown operation to make sure we're clean on boot and resume
>>
>> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> ---
>>   drivers/gpu/drm/i915/Makefile                |   1 +
>>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     | 227 +++++++++++++++++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h     |  15 ++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  40 ++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.h |   1 +
>>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |   5 +-
>>   6 files changed, 288 insertions(+), 1 deletion(-)
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index 8519abcf6515..9698fec810ae 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -271,6 +271,7 @@ i915-y += i915_perf.o
>>   # Protected execution platform (PXP) support
>>   i915-$(CONFIG_DRM_I915_PXP) += \
>>          pxp/intel_pxp.o \
>> +       pxp/intel_pxp_cmd.o \
>>          pxp/intel_pxp_session.o \
>>          pxp/intel_pxp_tee.o
>>   
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>> new file mode 100644
>> index 000000000000..3e2c3580cb1b
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>> @@ -0,0 +1,227 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
>> + */
>> +
>> +#include "intel_pxp.h"
>> +#include "intel_pxp_session.h"
>> +#include "gt/intel_context.h"
>> +#include "gt/intel_engine_pm.h"
>> +#include "gt/intel_gpu_commands.h"
>> +#include "gt/intel_gt_buffer_pool.h"
>> +
>> +/* PXP GPU command definitions */
>> +
>> +/* MI_SET_APPID */
>> +#define   MI_SET_APPID_SESSION_ID(x)    ((x) << 0)
>> +
>> +/* MI_FLUSH_DW */
>> +#define   MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE   BIT(22)
>> +
>> +/* MI_WAIT */
>> +#define   MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG BIT(9)
>> +#define   MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG  BIT(8)
>> +
>> +/* CRYPTO_KEY_EXCHANGE */
>> +#define CRYPTO_KEY_EXCHANGE ((0x3 << 29) | (0x01609 << 16))
>> +
>> +static struct i915_vma *intel_pxp_get_batch(struct intel_context *ce,
>> +                                           struct i915_gem_ww_ctx *ww,
>> +                                           u32 size)
>> +{
>> +       struct intel_gt_buffer_pool_node *pool;
>> +       struct i915_vma *batch;
>> +       int err;
>> +
>> +       intel_engine_pm_get(ce->engine);
>> +
>> +retry:
>> +       err = intel_context_pin_ww(ce, ww);
>> +       if (err)
>> +               goto out;
>> +
>> +       pool = intel_gt_get_buffer_pool(ce->engine->gt, size, I915_MAP_WC);
>> +       if (IS_ERR(pool)) {
>> +               err = PTR_ERR(pool);
>> +               goto out_ctx;
>> +       }
>> +
>> +       batch = i915_vma_instance(pool->obj, ce->vm, NULL);
>> +       if (IS_ERR(batch)) {
>> +               err = PTR_ERR(batch);
>> +               goto out_put;
>> +       }
>> +
>> +       err = i915_vma_pin_ww(batch, ww, 0, 0, PIN_USER);
>> +       if (unlikely(err))
>> +               goto out_put;
>> +
>> +       err = i915_gem_object_lock(pool->obj, ww);
>> +       if (err)
>> +               goto out_unpin;
>> +
>> +       batch->private = pool;
>> +
>> +       return batch;
>> +
>> +out_unpin:
>> +       i915_vma_unpin(batch);
>> +out_put:
>> +       intel_gt_buffer_pool_put(pool);
>> +out_ctx:
>> +       intel_context_unpin(ce);
>> +out:
>> +       if (err == -EDEADLK) {
>> +               err = i915_gem_ww_ctx_backoff(ww);
>> +               if (!err)
>> +                       goto retry;
>> +       }
>> +       intel_engine_pm_put(ce->engine);
>> +       return ERR_PTR(err);
>> +}
>> +
>> +static void intel_pxp_put_batch(struct intel_context *ce,
>> +                               struct i915_vma *batch)
>> +{
>> +       i915_vma_unpin(batch);
>> +       intel_gt_buffer_pool_put(batch->private);
>> +       intel_context_unpin(ce);
>> +       intel_engine_pm_put(ce->engine);
>> +}
>> +
>> +static int intel_pxp_submit_batch(struct intel_context *ce,
>> +                                 struct i915_vma *batch)
>> +{
>> +       struct i915_request *rq;
>> +       int err;
>> +
>> +       rq = i915_request_create(ce);
>> +       if (IS_ERR(rq))
>> +               return PTR_ERR(rq);
>> +
>> +       err = i915_request_await_object(rq, batch->obj, false);
>> +       if (!err)
>> +               err = i915_vma_move_to_active(batch, rq, 0);
>> +       if (err)
>> +               goto out_rq;
>> +
>> +       err = intel_gt_buffer_pool_mark_active(batch->private, rq);
>> +       if (err)
>> +               goto out_rq;
>> +
>> +       if (ce->engine->emit_init_breadcrumb) {
>> +               err = ce->engine->emit_init_breadcrumb(rq);
>> +               if (err)
>> +                       goto out_rq;
>> +       }
>> +
>> +       err = ce->engine->emit_bb_start(rq, batch->node.start,
>> +                                       batch->node.size, 0);
>> +       if (err)
>> +               goto out_rq;
>> +
>> +out_rq:
>> +       i915_request_get(rq);
>> +
>> +       if (unlikely(err))
>> +               i915_request_set_error_once(rq, err);
>> +
>> +       i915_request_add(rq);
>> +
>> +       if (!err && i915_request_wait(rq, 0, HZ / 5) < 0)
>> +               err = -ETIME;
>> +
>> +       i915_request_put(rq);
>> +
>> +       return err;
>> +}
>> +
>> +/* stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
>> +#define MFX_WAIT_PXP \
>> +       MFX_WAIT | \
>> +       MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
>> +       MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG;
>> +
>> +static u32 *pxp_emit_session_selection(u32 *cmd, u32 idx)
>> +{
>> +       *cmd++ = MFX_WAIT_PXP;
>> +
>> +       /* pxp off */
>> +       *cmd++ = MI_FLUSH_DW;
>> +       *cmd++ = 0;
>> +       *cmd++ = 0;
>> +
>> +       /* select session */
>> +       *cmd++ = MI_SET_APPID | MI_SET_APPID_SESSION_ID(idx);
>> +
>> +       *cmd++ = MFX_WAIT_PXP;
>> +
>> +       /* pxp on */
>> +       *cmd++ = MI_FLUSH_DW | MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE;
>> +       *cmd++ = 0;
>> +       *cmd++ = 0;
>> +
>> +       *cmd++ = MFX_WAIT_PXP;
>> +
>> +       return cmd;
>> +}
>> +
>> +static u32 *pxp_emit_inline_termination(u32 *cmd)
>> +{
>> +       /* session inline termination */
>> +       *cmd++ = CRYPTO_KEY_EXCHANGE;
>> +       *cmd++ = 0;
>> +
>> +       return cmd;
>> +}
>> +
>> +static u32 *pxp_emit_batch_end(u32 *cmd)
>> +{
>> +       /* wait for cmds to go through */
>> +       *cmd++ = MFX_WAIT_PXP;
>> +
>> +       *cmd++ = MI_BATCH_BUFFER_END;
>> +
>> +       return cmd;
>> +}
>> +
>> +int intel_pxp_submit_session_termination(struct intel_pxp *pxp, u32 id)
>> +{
>> +       struct i915_vma *batch;
>> +       struct i915_gem_ww_ctx ww;
>> +       u32 *cmd;
>> +       int err;
>> +
>> +       if (!intel_pxp_is_enabled(pxp))
>> +               return 0;
>> +
>> +       i915_gem_ww_ctx_init(&ww, false);
>> +
>> +       batch = intel_pxp_get_batch(pxp->ce, &ww, PAGE_SIZE);
> Is there any reason at all to use the batch and not just emit directly
> into the ring? The command sequence is short. And you probably want to
> disable arbitration.

Future proofing - with multiple sessions in place we'd need to emit a 
termination for each of them (pxp_emit_session_selection + 
pxp_emit_inline_termination), so the sequence would be longer. It'd 
still be below a page, so it should still be possible to fit it in the 
ring if you believe that works better.

>
> Does this invalidation need priority for immediate execution?

Not spec-wise, but probably better to still do it to get the session 
back-up ASAP.

Daniele

> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
