Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 541D82D5867
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 11:42:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 487DB6EA6C;
	Thu, 10 Dec 2020 10:42:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8B26EA6C
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 10:42:45 +0000 (UTC)
IronPort-SDR: QI0iDA4sF7XprKjOz/r/A1S1vkl8wVdj/36MT7SCFy7BLbFBWrsGrQQ1Y/cpjHIMhz4saziu/q
 hqs4g/IWbEbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="161286072"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="161286072"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 02:42:45 -0800
IronPort-SDR: kgHgBbQR87M6d+GkD8OFR3vTcG6HNctyLYvdTpAwjxOR4PZ6Hy96DaHv/zsrYVmWBOaAd4YPka
 E0qBEX37dxfA==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="364570304"
Received: from ggiordax-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.87.181])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 02:42:43 -0800
MIME-Version: 1.0
In-Reply-To: <20201209070307.2304-5-sean.z.huang@intel.com>
References: <20201209070307.2304-1-sean.z.huang@intel.com>
 <20201209070307.2304-5-sean.z.huang@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160759695952.5062.15895099475205665335@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 10 Dec 2020 12:42:40 +0200
Subject: Re: [Intel-gfx] [RFC-v3 04/13] drm/i915/pxp: Create the arbitrary
 session after boot
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

Quoting Huang, Sean Z (2020-12-09 09:02:58)
> Create the arbitrary session, with the fixed session id 0xf, after
> system boot, for the case that application allocates the protected
> buffer without establishing any protection session. Because the
> hardware requires at least one alive session for protected buffer
> creation.  This arbitrary session needs to be re-created after
> teardown or power event because hardware encryption key won't be
> valid after such cases.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -8,6 +8,22 @@
>  
>  #include "intel_pxp_context.h"

Again, needs split between _types.h for both included types and declared
types.

>  
> +enum pxp_session_types {
> +       SESSION_TYPE_TYPE0 = 0,
> +       SESSION_TYPE_TYPE1 = 1,
> +
> +       SESSION_TYPE_MAX
> +};
> +
> +enum pxp_protection_modes {
> +       PROTECTION_MODE_NONE = 0,
> +       PROTECTION_MODE_LM   = 2,
> +       PROTECTION_MODE_HM   = 3,
> +       PROTECTION_MODE_SM   = 6,
> +
> +       PROTECTION_MODE_ALL
> +};
> +

None of this should be relevant for the single-session operation.

> +static bool is_hw_arb_session_in_play(struct intel_pxp *pxp)
> +{
> +       u32 regval_sip = 0;

No need to initialize.

> +       intel_wakeref_t wakeref;

Should not be needed here.

> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);

This would be at the top of the function ususally.

> +
> +       with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref) {

Repeating from previous review, these runtime checks should be hoisted to upper
level functions.

> +               regval_sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
> +       }
> +
> +       return regval_sip & BIT(ARB_SESSION_INDEX);

This function should literally just be

	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
	u32 kcr_sip;

	kcr_sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
	return kcr_sip & BIT(ARB_SESSION_INDEX);

> +/* wait hw session_in_play reg to match the current sw state */
> +static int wait_arb_hw_sw_state(struct intel_pxp *pxp)
> +{
> +       const int max_retry = 10;
> +       const int ms_delay = 10;
> +       int retry = 0;
> +       int ret;
> +       struct pxp_protected_session *arb = pxp->ctx.arb_session;
> +
> +       ret = -EINVAL;
> +       for (retry = 0; retry < max_retry; retry++) {
> +               if (is_hw_arb_session_in_play(pxp) ==
> +                   arb->is_in_play) {
> +                       ret = 0;
> +                       break;
> +               }
> +
> +               msleep(ms_delay);
> +       }

Again, this function should be rewritten utilize wait_for_* utils for
the single register we're checking.

So I think both of the above will then get merged into a single
local function:

static int wait_for_arb_session_in_play(struct intel_pxp *pxp)

> +/**
> + * create_session_entry - Create a new session entry with provided info.
> + * @pxp: pointer to pxp struct.
> + *
> + * Return: the pointer to the created session.
> + */
> +static struct pxp_protected_session *create_session_entry(struct intel_pxp *pxp)
> +{
> +       struct pxp_protected_session *session;
> +
> +       session = kzalloc(sizeof(*session), GFP_KERNEL);
> +       if (!session)
> +               return NULL;

We only have single session, we can embed it and avoid dynamic
allocation.

>>> FROM HERE

> +       session->context_id = pxp->ctx.id;
> +       session->type = ARB_SESSION_TYPE;
> +       session->protection_mode = ARB_PROTECTION_MODE;
> +       session->index = ARB_SESSION_INDEX;
> +       session->is_in_play = false;
> +
> +       return session;
> +}
> +
> +int intel_pxp_arb_reserve_session(struct intel_pxp *pxp)
> +{
> +       int ret;
> +       struct pxp_protected_session *session = NULL;
> +
> +       lockdep_assert_held(&pxp->ctx.mutex);
> +
> +       ret = wait_arb_hw_sw_state(pxp);
> +       if (ret)
> +               return ret;
> +
> +       session = create_session_entry(pxp);
> +       if (!session)
> +               return -ENOMEM;
> +
> +       return ret;
> +}
> +
> +/**
> + * intel_pxp_arb_mark_session_in_play - To put an reserved protected session to "in_play" state
> + * @pxp: pointer to pxp struct.
> + *
> + * Return: status. 0 means update is successful.
> + */
> +static int intel_pxp_arb_mark_session_in_play(struct intel_pxp *pxp)
> +{
> +       struct pxp_protected_session *arb = pxp->ctx.arb_session;
> +
> +       lockdep_assert_held(&pxp->ctx.mutex);
> +
> +       if (arb->is_in_play)
> +               return -EINVAL;
> +
> +       arb->is_in_play = true;
> +       return 0;
> +}

<<< UNTIL HERE

This is all just software tracking which we don't need for a single
session.

> +
> +int intel_pxp_arb_create_session(struct intel_pxp *pxp)

intel_pxp_arb_session()

> +{
> +       int ret;
> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +
> +       lockdep_assert_held(&pxp->ctx.mutex);
> +
> +       if (pxp->ctx.flag_display_hm_surface_keys) {
> +               drm_err(&gt->i915->drm, "%s: arb session is alive so skipping the creation\n",
> +                       __func__);

Wrong message level, this would be debug at most.

> +               return 0;
> +       }
> +
> +       ret = intel_pxp_arb_reserve_session(pxp);
> +       if (ret) {
> +               drm_err(&gt->i915->drm, "Failed to reserve arb session\n");
> +               goto end;
> +       }
> +
> +       ret = intel_pxp_tee_cmd_create_arb_session(pxp);
> +       if (ret) {
> +               drm_err(&gt->i915->drm, "Failed to send tee cmd for arb session creation\n");
> +               goto end;
> +       }
> +
> +       ret = intel_pxp_arb_mark_session_in_play(pxp);
> +       if (ret) {
> +               drm_err(&gt->i915->drm, "Failed to mark arb session status in play\n");
> +               goto end;
> +       }
> +
> +       pxp->ctx.flag_display_hm_surface_keys = true;

flag is tautology for bool variable, also this directly modifies ctx,
which should not be done from this level.

All I'm seeing for the init sequence is we send commands (currently in
binary BLOB) to the TEE hardware and wait for a bit to appear in
register.

So we should be able to do it as part of this function so that it's very
clear what is happening.

> +
> +end:
> +       return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> new file mode 100644
> index 000000000000..e410c0bbdcc3
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_SM_H__
> +#define __INTEL_PXP_SM_H__
> +
> +#include "intel_pxp.h"
> +
> +/**
> + * struct pxp_protected_session - structure to track all active sessions.
> + */
> +struct pxp_protected_session {
> +       /** @index: Numeric identifier for this protected session */
> +       int index;
> +       /** @type: Type of session */
> +       int type;
> +       /** @protection_mode: mode of protection requested */
> +       int protection_mode;
> +       /** @context_id: context identifier of the protected session requestor */
> +       int context_id;
> +
> +       /**
> +        * @is_in_play: indicates whether the session has been established
> +        *              in the HW root of trust if this flag is false, it
> +        *              indicates an application has reserved this session,
> +        *              but has not * established the session in the
> +        *              hardware yet.
> +        */
> +       bool is_in_play;

None of this is needed.

We have the single session, and a way to check from hardware if that is
alive. No software tracking needed.

> +};
> +
> +int intel_pxp_arb_create_session(struct intel_pxp *pxp);
> +
> +#endif /* __INTEL_PXP_SM_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> index 953a2e700931..e37125ed7434 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> @@ -13,7 +13,12 @@ struct pxp_context {
>         /** @mutex: mutex to protect the pxp context */
>         struct mutex mutex;
>  
> +       void *arb_session;

void must not be used. I don't think this is needed.

> +       u32 arb_session_pxp_tag;

This should not be needed either.

> +
>         int id;
> +
> +       bool flag_display_hm_surface_keys;

Same for this.

>  };
>  
>  void intel_pxp_ctx_init(struct pxp_context *ctx);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index ca6b61099aee..816a6d5a54e4 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -10,6 +10,7 @@
>  #include "intel_pxp.h"
>  #include "intel_pxp_context.h"
>  #include "intel_pxp_tee.h"
> +#include "intel_pxp_arb.h"
>  
>  static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
>                                     void *msg_in, u32 msg_in_size,
> @@ -70,7 +71,9 @@ static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
>  static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>                                        struct device *tee_kdev, void *data)
>  {
> +       int ret;
>         struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
> +       struct intel_pxp *pxp = &i915->gt.pxp;
>  
>         if (!i915 || !tee_kdev || !data)
>                 return -EPERM;
> @@ -80,6 +83,16 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>         i915->pxp_tee_master->tee_dev = tee_kdev;
>         mutex_unlock(&i915->pxp_tee_comp_mutex);
>  
> +       mutex_lock(&pxp->ctx.mutex);
> +       /* Create arb session only if tee is ready, during system boot or sleep/resume */
> +       ret = intel_pxp_arb_create_session(pxp);

I don't think this is the right place to create the session. Especially
as with this series the component exposing was happening during early HW
init. So there is place for race conditions.

We should create the hardware session in i915 init sequences, otherwise
it might not be available to userspace and they would break.

> +       mutex_unlock(&pxp->ctx.mutex);
> +
> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to create arb session ret=[%d]\n", ret);
> +               return ret;
> +       }
> +
>         return 0;
>  }
>  
> @@ -130,3 +143,28 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
>  
>         component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
>  }
> +
> +int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp)
> +{
> +       int ret;
> +       u32 msg_out_size_received = 0;
> +       u32 msg_in[PXP_TEE_ARB_CMD_DW_LEN] = PXP_TEE_ARB_CMD_BIN;
> +       u32 msg_out[PXP_TEE_ARB_CMD_DW_LEN] = {0};

Looks like I guessed it wrong, it should have been u32 *in/out above.
That's exactly why void should be avoided.

> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +       struct drm_i915_private *i915 = gt->i915;
> +
> +       mutex_lock(&i915->pxp_tee_comp_mutex);
> +
> +       ret = intel_pxp_tee_io_message(pxp,
> +                                      &msg_in,
> +                                      sizeof(msg_in),
> +                                      &msg_out, &msg_out_size_received,
> +                                      sizeof(msg_out));

The output seems to be completely discarded, but mandatory to recv. Is
there a return value of some sorts to know if there was something
preventing the creation?

Or is the expectation that we send these commands and then wait until
the hardware session is available according to the status register?

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> @@ -11,4 +11,15 @@
>  void intel_pxp_tee_component_init(struct intel_pxp *pxp);
>  void intel_pxp_tee_component_fini(struct intel_pxp *pxp);
>  
> +int pxp_tee_ioctl_io_message(struct intel_pxp *pxp,
> +                            void __user *msg_in_user_ptr, u32 msg_in_size,
> +                            void __user *msg_out_user_ptr, u32 *msg_out_size_ptr,
> +                            u32 msg_out_buf_size);

I think this is misplaced hunk, we don't have IOCTL here.

> +
> +int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp);

This function is misplaced, it should be part of the intel_pxp_init
sequence to create the arb session. intel_pxp_tee is just the component
through which the communication happens.

> +/* TEE command to create the arbitrary session */
> +#define PXP_TEE_ARB_CMD_BIN {0x00040000, 0x0000001e, 0x00000000, 0x00000008, 0x00000002, 0x0000000f}
> +#define PXP_TEE_ARB_CMD_DW_LEN (6)

This is a binary BLOB and should not be in the kernel source code. This
either needs to be documented or moved elsewhere.

Regards, Joonas

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
