Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 913682D560E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 10:06:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC956EA2F;
	Thu, 10 Dec 2020 09:05:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 956826EA2F
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 09:05:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23276609-1500050 for multiple; Thu, 10 Dec 2020 09:05:52 +0000
MIME-Version: 1.0
In-Reply-To: <20201210072435.24066-5-sean.z.huang@intel.com>
References: <20201210072435.24066-1-sean.z.huang@intel.com>
 <20201210072435.24066-5-sean.z.huang@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 09:05:52 +0000
Message-ID: <160759115214.595.17789907592076309075@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC-v4 04/21] drm/i915/pxp: Create the arbitrary
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

Quoting Huang, Sean Z (2020-12-10 07:24:18)
> Create the arbitrary session, with the fixed session id 0xf, after
> system boot, for the case that application allocates the protected
> buffer without establishing any protection session. Because the
> hardware requires at least one alive session for protected buffer
> creation.  This arbitrary session needs to be re-created after
> teardown or power event because hardware encryption key won't be
> valid after such cases.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                |   1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         |   1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         |  16 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp_arb.c     | 152 +++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_arb.h     |  36 +++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_context.h |   5 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  38 +++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |   6 +
>  8 files changed, 255 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index c703dbd91158..0710cc522f38 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -257,6 +257,7 @@ i915-y += i915_perf.o
>  # Protected execution platform (PXP) support
>  i915-$(CONFIG_DRM_I915_PXP) += \
>         pxp/intel_pxp.o \
> +       pxp/intel_pxp_arb.o \
>         pxp/intel_pxp_context.o \
>         pxp/intel_pxp_tee.o
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 4104dd89ca7f..67bdaeb79b40 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -6,6 +6,7 @@
>  #include "intel_pxp.h"
>  #include "intel_pxp_context.h"
>  #include "intel_pxp_tee.h"
> +#include "intel_pxp_arb.h"
>  
>  /* KCR register definitions */
>  #define KCR_INIT            _MMIO(0x320f0)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 7c3d49a6a3ab..1841a9aa972d 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -8,6 +8,22 @@
>  
>  #include "intel_pxp_context.h"
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
>  struct intel_pxp {
>         struct pxp_context ctx;
>  };
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
> new file mode 100644
> index 000000000000..c1ad45b83478
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
> @@ -0,0 +1,152 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "gt/intel_context.h"
> +#include "gt/intel_engine_pm.h"
> +
> +#include "intel_pxp_arb.h"
> +#include "intel_pxp.h"
> +#include "intel_pxp_context.h"
> +#include "intel_pxp_tee.h"
> +
> +#define GEN12_KCR_SIP _MMIO(0x32260) /* KCR type0 session in play 0-31 */
> +
> +/* Arbitrary session */
> +#define ARB_SESSION_INDEX 0xf
> +#define ARB_SESSION_TYPE SESSION_TYPE_TYPE0
> +#define ARB_PROTECTION_MODE PROTECTION_MODE_HM
> +
> +static bool is_hw_arb_session_in_play(struct intel_pxp *pxp)
> +{
> +       u32 regval_sip = 0;
> +       intel_wakeref_t wakeref;
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> +
> +       with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref) {

with_intel_runtime_pm(uncore->rpm, wakeref)

> +               regval_sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
> +       }
> +
> +       return regval_sip & BIT(ARB_SESSION_INDEX);
> +}
> +
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

return intel_wait_for_register(uncore, GEN12_KCR_SIP,
			       REG_BIT(ARB_SESSION_INDEX),
			       arb->is_in_play ? REG_BIT(ARB_SESSION_INDEX) : 0,
			       100);

Although that does push the burden of holding the wakeref to the caller.

> +
> +               msleep(ms_delay);
> +       }
> +
> +       return ret;
> +}
> +
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
> +
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

This function is incomplete.

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
> +
> +int intel_pxp_arb_create_session(struct intel_pxp *pxp)
> +{
> +       int ret;
> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +
> +       lockdep_assert_held(&pxp->ctx.mutex);
> +
> +       if (pxp->ctx.flag_display_hm_surface_keys) {
> +               drm_err(&gt->i915->drm, "%s: arb session is alive so skipping the creation\n",
> +                       __func__);
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
> +
> +end:
> +       return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> new file mode 100644
> index 000000000000..61bad3ada20f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_ARB_H__
> +#define __INTEL_PXP_ARB_H__
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
> +};
> +
> +int intel_pxp_arb_create_session(struct intel_pxp *pxp);
> +
> +#endif /* __INTEL_PXP_ARB_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> index 953a2e700931..e37125ed7434 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_context.h
> @@ -13,7 +13,12 @@ struct pxp_context {
>         /** @mutex: mutex to protect the pxp context */
>         struct mutex mutex;
>  
> +       void *arb_session;
> +       u32 arb_session_pxp_tag;
> +
>         int id;
> +
> +       bool flag_display_hm_surface_keys;
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
> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +       struct drm_i915_private *i915 = gt->i915;
> +
> +       mutex_lock(&i915->pxp_tee_comp_mutex);

Consider moving this into the io handler, with a targeted mutex.

> +       ret = intel_pxp_tee_io_message(pxp,
> +                                      &msg_in,
> +                                      sizeof(msg_in),
> +                                      &msg_out, &msg_out_size_received,
> +                                      sizeof(msg_out));
> +
> +       mutex_unlock(&i915->pxp_tee_comp_mutex);
> +
> +       if (ret)
> +               drm_err(&i915->drm, "Failed to send/receive tee message\n");

Fluff. Errors at the intermediate layers that provide no information we
don't already have are worse than useless.

> +
> +       return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> index 4b5e3edb1d9b..757a54208a4d 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> @@ -11,4 +11,10 @@
>  void intel_pxp_tee_component_init(struct intel_pxp *pxp);
>  void intel_pxp_tee_component_fini(struct intel_pxp *pxp);
>  
> +int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp);
> +
> +/* TEE command to create the arbitrary session */
> +#define PXP_TEE_ARB_CMD_BIN {0x00040000, 0x0000001e, 0x00000000, 0x00000008, 0x00000002, 0x0000000f}
> +#define PXP_TEE_ARB_CMD_DW_LEN (6)

Do you really expect users of the intel_pxp interface to use these
internal defines?

> +
>  #endif /* __INTEL_PXP_TEE_H__ */
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
