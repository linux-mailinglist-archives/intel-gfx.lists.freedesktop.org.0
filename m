Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 971802D589A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 11:52:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6446EA74;
	Thu, 10 Dec 2020 10:52:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 436616EA74
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 10:51:58 +0000 (UTC)
IronPort-SDR: vsAWsVwaTPDsg3Qe4KtUPdreIQzKoE7tWxyDSjXn0MI4Ct3Qk7mzMkb2xzVquX3eJMPdou24jz
 UnPDgB3uf3Bw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="174349545"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="174349545"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 02:51:56 -0800
IronPort-SDR: y5a0p6EyxJtHeOZgOulVLi/ASQYLMGA1O0K+ETU5/ikNpOcAHg6uGiyAEKQIKElDpBXh6gsqxe
 fAVn+htBfGIQ==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="542797882"
Received: from ggiordax-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.87.181])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 02:51:55 -0800
MIME-Version: 1.0
In-Reply-To: <20201209070307.2304-8-sean.z.huang@intel.com>
References: <20201209070307.2304-1-sean.z.huang@intel.com>
 <20201209070307.2304-8-sean.z.huang@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160759751174.5062.14565578057813757277@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 10 Dec 2020 12:51:52 +0200
Subject: Re: [Intel-gfx] [RFC-v3 07/13] drm/i915/pxp: Destroy arb session
 upon teardown
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

Quoting Huang, Sean Z (2020-12-09 09:03:01)
> Teardown is triggered when the display topology changes and no
> long meets the secure playback requirement, and hardware trashes
> all the encryption keys for display. So as a result, PXP should
> handle such case and terminate the type0 sessions, which including
> arb session

We have only a single session, so this should be simplified to exactly
tear down that single session.

No need for any of the type0/type1 differentiation.

Regards, Joonas

> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c     |   3 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_arb.c |  76 +++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_arb.h |   1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c | 129 ++++++++++++++++++++++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h |  12 ++-
>  5 files changed, 211 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 9bcb170b34f1..48e926363696 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -28,6 +28,9 @@ static int intel_pxp_teardown_required_callback(struct intel_pxp *pxp)
>         mutex_lock(&pxp->ctx.mutex);
>  
>         pxp->ctx.global_state_attacked = true;
> +       pxp->ctx.flag_display_hm_surface_keys = false;
> +
> +       ret = intel_pxp_arb_terminate_session(pxp);
>  
>         mutex_unlock(&pxp->ctx.mutex);
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
> index c1ad45b83478..09148ca9035c 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
> @@ -10,6 +10,7 @@
>  #include "intel_pxp.h"
>  #include "intel_pxp_context.h"
>  #include "intel_pxp_tee.h"
> +#include "intel_pxp_cmd.h"
>  
>  #define GEN12_KCR_SIP _MMIO(0x32260) /* KCR type0 session in play 0-31 */
>  
> @@ -150,3 +151,78 @@ int intel_pxp_arb_create_session(struct intel_pxp *pxp)
>  end:
>         return ret;
>  }
> +
> +static int intel_pxp_arb_session_with_global_termination(struct intel_pxp *pxp)
> +{
> +       u32 *cmd = NULL;
> +       u32 *cmd_ptr = NULL;
> +       int cmd_size_in_dw = 0;
> +       int ret;
> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +
> +       /* Calculate how many bytes need to be alloc */
> +       cmd_size_in_dw += intel_pxp_cmd_add_prolog(pxp, NULL, ARB_SESSION_TYPE, ARB_SESSION_INDEX);
> +       cmd_size_in_dw += intel_pxp_cmd_add_inline_termination(NULL);
> +       cmd_size_in_dw += intel_pxp_cmd_add_epilog(NULL);
> +
> +       cmd = kzalloc(cmd_size_in_dw * 4, GFP_KERNEL);
> +       if (!cmd)
> +               return -ENOMEM;
> +
> +       /* Program the command */
> +       cmd_ptr = cmd;
> +       cmd_ptr += intel_pxp_cmd_add_prolog(pxp, cmd_ptr, ARB_SESSION_TYPE, ARB_SESSION_INDEX);
> +       cmd_ptr += intel_pxp_cmd_add_inline_termination(cmd_ptr);
> +       cmd_ptr += intel_pxp_cmd_add_epilog(cmd_ptr);
> +
> +       if (cmd_size_in_dw != (cmd_ptr - cmd)) {
> +               ret = -EINVAL;
> +               drm_err(&gt->i915->drm, "Failed to %s\n", __func__);
> +               goto end;
> +       }
> +
> +       if (drm_debug_enabled(DRM_UT_DRIVER)) {
> +               print_hex_dump(KERN_DEBUG, "global termination cmd binaries:",
> +                              DUMP_PREFIX_OFFSET, 4, 4, cmd, cmd_size_in_dw * 4, true);
> +       }
> +
> +       ret = intel_pxp_cmd_submit(pxp, cmd, cmd_size_in_dw);
> +       if (ret) {
> +               drm_err(&gt->i915->drm, "Failed to intel_pxp_cmd_submit()\n");
> +               goto end;
> +       }
> +
> +end:
> +       kfree(cmd);
> +       return ret;
> +}
> +
> +/**
> + * intel_pxp_arb_terminate_session - Terminate the arb hw session and its entries.
> + * @pxp: pointer to pxp struct.
> + *
> + * This function is NOT intended to be called from the ioctl, and need to be protected by
> + * ctx.mutex to ensure no SIP change during the call.
> + *
> + * Return: status. 0 means terminate is successful.
> + */
> +int intel_pxp_arb_terminate_session(struct intel_pxp *pxp)
> +{
> +       int ret;
> +       struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> +       struct pxp_protected_session *arb = pxp->ctx.arb_session;
> +
> +       lockdep_assert_held(&pxp->ctx.mutex);
> +
> +       /* terminate the hw sessions */
> +       ret = intel_pxp_arb_session_with_global_termination(pxp);
> +       if (ret) {
> +               drm_err(&gt->i915->drm, "Failed to intel_pxp_arb_session_with_global_termination\n");
> +               return ret;
> +       }
> +
> +       kfree(arb);
> +
> +       return ret;
> +}
> +
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> index e410c0bbdcc3..d7b3b05a4314 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
> @@ -32,5 +32,6 @@ struct pxp_protected_session {
>  };
>  
>  int intel_pxp_arb_create_session(struct intel_pxp *pxp);
> +int intel_pxp_arb_terminate_session(struct intel_pxp *pxp);
>  
>  #endif /* __INTEL_PXP_SM_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> index e531ea9f3cdc..f122c9a1f78e 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> @@ -8,10 +8,29 @@
>  #include "gt/intel_context.h"
>  #include "gt/intel_engine_pm.h"
>  
> -struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
> -                                        struct intel_context *ce,
> -                                        struct intel_gt_buffer_pool_node *pool,
> -                                        u32 *cmd_buf, int cmd_size_in_dw)
> +/* PXP GPU command definitions */
> +
> +/* MI_SET_APPID */
> +#define   MI_SET_APPID_TYPE1_APP        BIT(7)
> +#define   MI_SET_APPID_SESSION_ID(x)    ((x) << 0)
> +
> +/* MI_FLUSH_DW */
> +#define   MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE   BIT(22)
> +
> +/* MI_WAIT */
> +#define   MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG BIT(9)
> +#define   MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG  BIT(8)
> +
> +/* CRYPTO_KEY_EXCHANGE */
> +#define CRYPTO_KEY_EXCHANGE ((0x3 << 29) | (0x01609 << 16))
> +
> +#define MAX_TYPE0_SESSIONS 16
> +#define MAX_TYPE1_SESSIONS 6
> +
> +static struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
> +                                               struct intel_context *ce,
> +                                               struct intel_gt_buffer_pool_node *pool,
> +                                               u32 *cmd_buf, int cmd_size_in_dw)
>  {
>         struct i915_vma *batch = ERR_PTR(-EINVAL);
>         struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
> @@ -50,7 +69,8 @@ struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
>         return batch;
>  }
>  
> -int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw)
> +int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd,
> +                        int cmd_size_in_dw)
>  {
>         int err = -EINVAL;
>         struct i915_vma *batch;
> @@ -154,3 +174,102 @@ int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw)
>  
>         return err;
>  }
> +
> +int intel_pxp_cmd_add_prolog(struct intel_pxp *pxp, u32 *cmd,
> +                            int session_type,
> +                            int session_index)
> +{
> +       u32 increased_size_in_dw = 0;
> +       u32 *cmd_prolog = cmd;
> +       const int cmd_prolog_size_in_dw = 10;
> +       struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
> +
> +       if (!cmd)
> +               return cmd_prolog_size_in_dw;
> +
> +       /* MFX_WAIT - stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
> +       *cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG |
> +                        MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
> +
> +       /* MI_FLUSH_DW - pxp off */
> +       *cmd_prolog++ = MI_FLUSH_DW;  /* DW0 */
> +       *cmd_prolog++ = 0;            /* DW1 */
> +       *cmd_prolog++ = 0;            /* DW2 */
> +
> +       /* MI_SET_APPID */
> +       if (session_type == SESSION_TYPE_TYPE1) {
> +               if (session_index >= MAX_TYPE1_SESSIONS) {
> +                       drm_err(&gt->i915->drm, "Failed to %s invalid session_index\n", __func__);
> +                       goto end;
> +               }
> +
> +               *cmd_prolog++ = (MI_SET_APPID | MI_SET_APPID_TYPE1_APP |
> +                                MI_SET_APPID_SESSION_ID(session_index));
> +       } else {
> +               if (session_index >= MAX_TYPE0_SESSIONS) {
> +                       drm_err(&gt->i915->drm, "Failed to %s invalid session_index\n", __func__);
> +                       goto end;
> +               }
> +
> +               *cmd_prolog++ = (MI_SET_APPID | MI_SET_APPID_SESSION_ID(session_index));
> +       }
> +
> +       /* MFX_WAIT */
> +       *cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG |
> +                        MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
> +
> +       /* MI_FLUSH_DW - pxp on */
> +       *cmd_prolog++ = (MI_FLUSH_DW | MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE); /* DW0 */
> +       *cmd_prolog++ = 0;                                                       /* DW1 */
> +       *cmd_prolog++ = 0;                                                       /* DW2 */
> +
> +       /* MFX_WAIT */
> +       *cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG |
> +                        MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
> +
> +       increased_size_in_dw = (cmd_prolog - cmd);
> +end:
> +       return increased_size_in_dw;
> +}
> +
> +int intel_pxp_cmd_add_epilog(u32 *cmd)
> +{
> +       u32 increased_size_in_dw = 0;
> +       u32 *cmd_epilog = cmd;
> +       const int cmd_epilog_size_in_dw = 5;
> +
> +       if (!cmd)
> +               return cmd_epilog_size_in_dw;
> +
> +       /* MI_FLUSH_DW - pxp off */
> +       *cmd_epilog++ = MI_FLUSH_DW;  /* DW0 */
> +       *cmd_epilog++ = 0;            /* DW1 */
> +       *cmd_epilog++ = 0;            /* DW2 */
> +
> +       /* MFX_WAIT - stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
> +       *cmd_epilog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG |
> +                        MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
> +
> +       /* MI_BATCH_BUFFER_END */
> +       *cmd_epilog++ = MI_BATCH_BUFFER_END;
> +
> +       increased_size_in_dw = (cmd_epilog - cmd);
> +       return increased_size_in_dw;
> +}
> +
> +int intel_pxp_cmd_add_inline_termination(u32 *cmd)
> +{
> +       u32 increased_size_in_dw = 0;
> +       u32 *cmd_termin = cmd;
> +       const int cmd_termin_size_in_dw = 2;
> +
> +       if (!cmd)
> +               return cmd_termin_size_in_dw;
> +
> +       /* CRYPTO_KEY_EXCHANGE - session inline termination */
> +       *cmd_termin++ = CRYPTO_KEY_EXCHANGE; /* DW0 */
> +       *cmd_termin++ = 0;                   /* DW1 */
> +
> +       increased_size_in_dw = (cmd_termin - cmd);
> +       return increased_size_in_dw;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> index d04463962421..087f260034c4 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
> @@ -9,10 +9,12 @@
>  #include "gt/intel_gt_buffer_pool.h"
>  #include "intel_pxp.h"
>  
> -struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
> -                                        struct intel_context *ce,
> -                                        struct intel_gt_buffer_pool_node *pool,
> -                                        u32 *cmd_buf, int cmd_size_in_dw);
> +int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd,
> +                        int cmd_size_in_dw);
> +int intel_pxp_cmd_add_prolog(struct intel_pxp *pxp, u32 *cmd,
> +                            int session_type,
> +                            int session_index);
> +int intel_pxp_cmd_add_epilog(u32 *cmd);
> +int intel_pxp_cmd_add_inline_termination(u32 *cmd);
>  
> -int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw);
>  #endif /* __INTEL_PXP_SM_H__ */
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
