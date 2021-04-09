Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AA13598F7
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Apr 2021 11:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 590186E489;
	Fri,  9 Apr 2021 09:16:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BCA66E489
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Apr 2021 09:16:12 +0000 (UTC)
IronPort-SDR: x5+sBV+bF1RjZbbglH0e34D2GAtQPJjDa1FjBlUerKRebCDSY6iDUJxAUz2/JIyl2Vs8ZqIt8U
 7JA6ocq5a+/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="191574362"
X-IronPort-AV: E=Sophos;i="5.82,209,1613462400"; d="scan'208";a="191574362"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 02:16:11 -0700
IronPort-SDR: 7tjuiSKR+e9DD5+5JNwL9mp4qB/X3dZ1SjneFY/4qC74Z+LBej8klCTSZ3Nkkg1s/6mwlP08UL
 KUH+kvvt3WoA==
X-IronPort-AV: E=Sophos;i="5.82,209,1613462400"; d="scan'208";a="448998372"
Received: from carlstax-mobl4.amr.corp.intel.com (HELO intel.com)
 ([10.212.45.152])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 02:16:11 -0700
Date: Fri, 9 Apr 2021 05:16:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <YHAbWTfWihXLlV33@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-9-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210328225709.18541-9-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 08/16] drm/i915/pxp: Implement arb
 session teardown
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
Cc: Huang@freedesktop.org, intel-gfx@lists.freedesktop.org, "Huang,
 Sean Z" <sean.z.huang@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 28, 2021 at 03:57:00PM -0700, Daniele Ceraolo Spurio wrote:
> From: "Huang, Sean Z" <sean.z.huang@intel.com>
> 
> Teardown is triggered when the display topology changes and no
> long meets the secure playback requirement, and hardware trashes
> all the encryption keys for display. Additionally, we want to emit a
> teardown operation to make sure we're clean on boot and resume
> 
> v2: emit in the ring, use high prio request (Chris)
> v3: better defines, stalling flush, cleaned up and renamed submission
>     funcs (Chris)
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/Makefile                |   1 +
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  22 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         |   7 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     | 140 +++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h     |  15 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp_session.c |  29 ++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_session.h |   1 +
>  7 files changed, 211 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 219095d9b42c..87a6145b4ae8 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -273,6 +273,7 @@ i915-y += i915_perf.o
>  # Protected execution platform (PXP) support
>  i915-$(CONFIG_DRM_I915_PXP) += \
>  	pxp/intel_pxp.o \
> +	pxp/intel_pxp_cmd.o \
>  	pxp/intel_pxp_session.o \
>  	pxp/intel_pxp_tee.o
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 14e2ffb6c0e5..a73f46db4910 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -28,10 +28,13 @@
>  #define INSTR_26_TO_24_MASK	0x7000000
>  #define   INSTR_26_TO_24_SHIFT	24
>  
> +#define __INSTR(client) ((client) << INSTR_CLIENT_SHIFT)
> +
>  /*
>   * Memory interface instructions used by the kernel
>   */
> -#define MI_INSTR(opcode, flags) (((opcode) << 23) | (flags))
> +#define MI_INSTR(opcode, flags) \
> +	(__INSTR(INSTR_MI_CLIENT) | (opcode) << 23 | (flags))
>  /* Many MI commands use bit 22 of the header dword for GGTT vs PPGTT */
>  #define  MI_GLOBAL_GTT    (1<<22)
>  
> @@ -57,6 +60,7 @@
>  #define MI_SUSPEND_FLUSH	MI_INSTR(0x0b, 0)
>  #define   MI_SUSPEND_FLUSH_EN	(1<<0)
>  #define MI_SET_APPID		MI_INSTR(0x0e, 0)
> +#define   MI_SET_APPID_SESSION_ID(x)	((x) << 0)
>  #define MI_OVERLAY_FLIP		MI_INSTR(0x11, 0)
>  #define   MI_OVERLAY_CONTINUE	(0x0<<21)
>  #define   MI_OVERLAY_ON		(0x1<<21)
> @@ -144,6 +148,7 @@
>  #define MI_STORE_REGISTER_MEM_GEN8   MI_INSTR(0x24, 2)
>  #define   MI_SRM_LRM_GLOBAL_GTT		(1<<22)
>  #define MI_FLUSH_DW		MI_INSTR(0x26, 1) /* for GEN6 */
> +#define   MI_FLUSH_DW_PROTECTED_MEM_EN	(1<<22)
>  #define   MI_FLUSH_DW_STORE_INDEX	(1<<21)
>  #define   MI_INVALIDATE_TLB		(1<<18)
>  #define   MI_FLUSH_DW_OP_STOREDW	(1<<14)
> @@ -270,6 +275,19 @@
>  #define   MI_MATH_REG_ZF		0x32
>  #define   MI_MATH_REG_CF		0x33
>  
> +/*
> + * Media instructions used by the kernel
> + */
> +#define MEDIA_INSTR(pipe, op, sub_op, flags) \
> +	(__INSTR(INSTR_RC_CLIENT) | (pipe) << INSTR_SUBCLIENT_SHIFT | \
> +	(op) << INSTR_26_TO_24_SHIFT | (sub_op) << 16 | (flags))
> +
> +#define MFX_WAIT				MEDIA_INSTR(1, 0, 0, 0)
> +#define  MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG	REG_BIT(8)
> +#define  MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG	REG_BIT(9)
> +
> +#define CRYPTO_KEY_EXCHANGE			MEDIA_INSTR(2, 6, 9, 0)
> +
>  /*
>   * Commands used only by the command parser
>   */
> @@ -326,8 +344,6 @@
>  #define GFX_OP_3DSTATE_BINDING_TABLE_EDIT_PS \
>  	((0x3<<29)|(0x3<<27)|(0x0<<24)|(0x47<<16))
>  
> -#define MFX_WAIT  ((0x3<<29)|(0x1<<27)|(0x0<<16))
> -
>  #define COLOR_BLT     ((0x2<<29)|(0x40<<22))
>  #define SRC_COPY_BLT  ((0x2<<29)|(0x43<<22))
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index e496fc4ccf0a..2a5099034946 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -94,9 +94,14 @@ void intel_pxp_fini(struct intel_pxp *pxp)
>  
>  void intel_pxp_init_hw(struct intel_pxp *pxp)
>  {
> +	int ret;
> +
>  	kcr_pxp_enable(pxp_to_gt(pxp));
>  
> -	intel_pxp_create_arb_session(pxp);
> +	/* always emit a full termination to clean the state */
> +	ret = intel_pxp_terminate_arb_session_and_global(pxp);
> +	if (!ret)
> +		intel_pxp_create_arb_session(pxp);
>  }
>  
>  void intel_pxp_fini_hw(struct intel_pxp *pxp)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> new file mode 100644
> index 000000000000..c577f1fbee55
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> @@ -0,0 +1,140 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "intel_pxp.h"
> +#include "intel_pxp_session.h"
> +#include "gt/intel_context.h"
> +#include "gt/intel_engine_pm.h"
> +#include "gt/intel_gpu_commands.h"
> +#include "gt/intel_ring.h"
> +
> +#include "i915_trace.h"
> +
> +/* stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
> +#define MFX_WAIT_PXP (MFX_WAIT | \
> +		      MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
> +	              MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG)
> +
> +static u32 *pxp_emit_session_selection(u32 *cs, u32 idx)
> +{
> +	*cs++ = MFX_WAIT_PXP;
> +
> +	/* pxp off */
> +	*cs++ = MI_FLUSH_DW;
> +	*cs++ = 0;
> +	*cs++ = 0;
> +
> +	/* select session */
> +	*cs++ = MI_SET_APPID | MI_SET_APPID_SESSION_ID(idx);
> +
> +	*cs++ = MFX_WAIT_PXP;
> +
> +	/* pxp on */
> +	*cs++ = MI_FLUSH_DW | MI_FLUSH_DW_PROTECTED_MEM_EN |
> +		MI_FLUSH_DW_OP_STOREDW | MI_FLUSH_DW_STORE_INDEX;
> +	*cs++ = I915_GEM_HWS_PXP_ADDR | MI_FLUSH_DW_USE_GTT;
> +	*cs++ = 0;
> +
> +	*cs++ = MFX_WAIT_PXP;
> +
> +	return cs;
> +}
> +
> +static u32 *pxp_emit_inline_termination(u32 *cs)
> +{
> +	/* session inline termination */
> +	*cs++ = CRYPTO_KEY_EXCHANGE;
> +	*cs++ = 0;
> +
> +	return cs;
> +}
> +
> +static u32 *pxp_emit_session_termination(u32 *cs, u32 idx)
> +{
> +	cs = pxp_emit_session_selection(cs, idx);
> +	cs = pxp_emit_inline_termination(cs);
> +
> +	return cs;
> +}
> +
> +static u32 *pxp_emit_wait(u32 *cs)
> +{
> +	/* wait for cmds to go through */
> +	*cs++ = MFX_WAIT_PXP;
> +	*cs++ = 0;
> +
> +	return cs;
> +}
> +
> +/*
> + * if we ever need to terminate more than one session, we can submit multiple
> + * selections and terminations back-to-back with a single wait at the end
> + */
> +#define SELECTION_LEN 10
> +#define TERMINATION_LEN 2
> +#define SESSION_TERMINATION_LEN(x) ((SELECTION_LEN + TERMINATION_LEN) * (x))
> +#define WAIT_LEN 2

I always ask myself if we don't have a better automatic way to count the entries
or why we don't keep the size near its function so it is easier to see...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +
> +static void pxp_request_commit(struct i915_request *rq)
> +{
> +	struct i915_sched_attr attr = { .priority = I915_PRIORITY_MAX };
> +	struct intel_timeline * const tl = i915_request_timeline(rq);
> +
> +	lockdep_unpin_lock(&tl->mutex, rq->cookie);
> +
> +	trace_i915_request_add(rq);
> +	__i915_request_commit(rq);
> +	__i915_request_queue(rq, &attr);
> +
> +	mutex_unlock(&tl->mutex);
> +}
> +
> +int intel_pxp_terminate_session(struct intel_pxp *pxp, u32 id)
> +{
> +	struct i915_request *rq;
> +	struct intel_context *ce = pxp->ce;
> +	u32 *cs;
> +	int err;
> +
> +	if (!intel_pxp_is_enabled(pxp))
> +		return 0;
> +
> +	rq = i915_request_create(ce);
> +	if (IS_ERR(rq))
> +		return PTR_ERR(rq);
> +
> +	if (ce->engine->emit_init_breadcrumb) {
> +		err = ce->engine->emit_init_breadcrumb(rq);
> +		if (err)
> +			goto out_rq;
> +	}
> +
> +	cs = intel_ring_begin(rq, SESSION_TERMINATION_LEN(1) + WAIT_LEN);
> +	if (IS_ERR(cs)) {
> +		err = PTR_ERR(cs);
> +		goto out_rq;
> +	}
> +
> +	cs = pxp_emit_session_termination(cs, id);
> +	cs = pxp_emit_wait(cs);
> +
> +	intel_ring_advance(rq, cs);
> +
> +out_rq:
> +	i915_request_get(rq);
> +
> +	if (unlikely(err))
> +		i915_request_set_error_once(rq, err);
> +
> +	pxp_request_commit(rq);
> +
> +	if (!err && i915_request_wait(rq, 0, HZ / 5) < 0)
> +		err = -ETIME;
> +
> +	i915_request_put(rq);
> +
> +	return err;
> +}
> +
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> new file mode 100644
> index 000000000000..6d6299543578
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_CMD_H__
> +#define __INTEL_PXP_CMD_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_pxp;
> +
> +int intel_pxp_terminate_session(struct intel_pxp *pxp, u32 idx);
> +
> +#endif /* __INTEL_PXP_CMD_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> index 3331868f354c..b8e24adeb1f3 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -7,6 +7,7 @@
>  #include "i915_drv.h"
>  
>  #include "intel_pxp.h"
> +#include "intel_pxp_cmd.h"
>  #include "intel_pxp_session.h"
>  #include "intel_pxp_tee.h"
>  #include "intel_pxp_types.h"
> @@ -15,6 +16,9 @@
>  
>  #define GEN12_KCR_SIP _MMIO(0x32260) /* KCR hwdrm session in play 0-31 */
>  
> +/* PXP global terminate register for session termination */
> +#define PXP_GLOBAL_TERMINATE _MMIO(0x320f8)
> +
>  static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
>  {
>  	struct intel_gt *gt = pxp_to_gt(pxp);
> @@ -72,3 +76,28 @@ int intel_pxp_create_arb_session(struct intel_pxp *pxp)
>  
>  	return 0;
>  }
> +
> +int intel_pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
> +{
> +	int ret;
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +
> +	pxp->arb_is_valid = false;
> +
> +	/* terminate the hw sessions */
> +	ret = intel_pxp_terminate_session(pxp, ARB_SESSION);
> +	if (ret) {
> +		drm_err(&gt->i915->drm, "Failed to submit session termination\n");
> +		return ret;
> +	}
> +
> +	ret = pxp_wait_for_session_state(pxp, ARB_SESSION, false);
> +	if (ret) {
> +		drm_err(&gt->i915->drm, "Session state did not clear\n");
> +		return ret;
> +	}
> +
> +	intel_uncore_write(gt->uncore, PXP_GLOBAL_TERMINATE, 1);
> +
> +	return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
> index 316c3bebed9c..7354314b1cc4 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
> @@ -11,5 +11,6 @@
>  struct intel_pxp;
>  
>  int intel_pxp_create_arb_session(struct intel_pxp *pxp);
> +int intel_pxp_terminate_arb_session_and_global(struct intel_pxp *pxp);
>  
>  #endif /* __INTEL_PXP_SESSION_H__ */
> -- 
> 2.29.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
