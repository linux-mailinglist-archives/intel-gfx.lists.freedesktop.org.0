Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF5A2D0FA9
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 12:45:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBA489261;
	Mon,  7 Dec 2020 11:44:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 568B089261
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 11:44:57 +0000 (UTC)
IronPort-SDR: Nw0YYX5IUrfZuirqcdayGDIJOQ6O2xer1ayYsTZCZSI4CqLIJsNjYiJs8GmLOoNrZ5VvHX+T/C
 zBvVBJThhXZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="237789217"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="237789217"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 03:44:56 -0800
IronPort-SDR: IO8sNg8XwcGi4eVFsh5GzL5j6Arnm7oWuAvxDlOlxzg/c9jS89+0gH7k7JXszq+R5BmxoF3W82
 K5p4jauDeqkA==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="363105540"
Received: from tcujba-mobl.ger.corp.intel.com (HELO localhost) ([10.252.9.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 03:44:55 -0800
MIME-Version: 1.0
In-Reply-To: <20201207002134.13731-6-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-6-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160734149251.9322.1980479720750550170@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 07 Dec 2020 13:44:52 +0200
Subject: Re: [Intel-gfx] [RFC-v1 05/16] drm/i915/pxp: Read register to check
 hardware session state
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

Quoting Huang, Sean Z (2020-12-07 02:21:23)
> Implement the functions to check the hardware protected session
> state via reading the hardware register session in play.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -12,6 +12,9 @@
>  #define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)
>  #define PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
>  
> +#define pxp_session_list(i915, session_type) (((session_type) == SESSION_TYPE_TYPE0) ? \
> +       &(i915)->pxp.ctx->active_pxp_type0_sessions : &(i915)->pxp.ctx->active_pxp_type1_sessions)

Definitely should be inline function with proper scope, and not taking
i915 directly. But we should only ever need a single session, so the
lists should not be needed.

> +
>  #define MAX_TYPE0_SESSIONS 16
>  #define MAX_TYPE1_SESSIONS 6
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> index a2c9c71d2372..6413f401d939 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
> @@ -10,6 +10,21 @@
>  #include "intel_pxp_sm.h"
>  #include "intel_pxp_context.h"
>  
> +static int pxp_sm_reg_read(struct drm_i915_private *i915, u32 offset, u32 *regval)

See previous patch, has all the same problems as the write func.

> @@ -26,6 +41,168 @@ static int pxp_reg_write(struct drm_i915_private *i915, u32 offset, u32 regval)
>         return 0;
>  }
>  
> +/**
> + * is_sw_session_active - Check if the given sw session id is active.
> + * @i915: i915 device handle.
> + * @session_type: Specified session type
> + * @session_index: Numeric session identifier.
> + * @is_in_play: Set false to return true if the specified session is active.
> + *              Set true to also check if the session is active and in_play.
> + * @protection_mode: get the protection mode of specified session.
> + *
> + * The caller needs to use ctx_mutex lock to protect the session_list
> + * inside this function.
> + *
> + * Return : true if session with the same identifier is active (and in_play).
> + */
> +static bool is_sw_session_active(struct drm_i915_private *i915, int session_type,
> +                                int session_index, bool is_in_play, int *protection_mode)

By my understanding we only have a singleton session. Would expect
the same protection mode always, so this should be greatly simplified.

> +{
> +       struct pxp_protected_session *current_session;
> +
> +       lockdep_assert_held(&i915->pxp.ctx->ctx_mutex);
> +
> +       list_for_each_entry(current_session, pxp_session_list(i915, session_type), session_list) {
> +               if (current_session->session_index == session_index) {

This is an extremely slow way of finding a session. But as we only
expect a single session, I think this whole function becomes
unnecessary.

> +                       if (protection_mode)
> +                               *protection_mode = current_session->protection_mode;
> +
> +                       if (is_in_play && !current_session->session_is_in_play)
> +                               return false;
> +
> +                       return true;
> +               }
> +       }
> +
> +       /* session id not found. return false */
> +       return false;
> +}
> +
> +static bool is_hw_type0_session_in_play(struct drm_i915_private *i915, int session_index)
> +{
> +       u32 regval_sip = 0;
> +       u32 reg_session_id_mask;
> +       bool hw_session_is_in_play = false;
> +       int ret = 0;
> +
> +       if (!i915 || session_index < 0 || session_index >= MAX_TYPE0_SESSIONS)
> +               goto end;
> +
> +       ret = pxp_sm_reg_read(i915, GEN12_KCR_SIP.reg, &regval_sip);

As mentioned in previous patch, we should not wrap the MMIO read macros,
but hold the wakeref at higher level.

> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to read()\n");

I don't think these will be worthy ERROR message. We should collate
multiple error checks and at a top level emit an error message if
something failed.

> +               goto end;
> +       }
> +
> +       reg_session_id_mask = (1 << session_index);
> +       hw_session_is_in_play = (bool)(regval_sip & reg_session_id_mask);

All this should follow existing programming conventions and use existing
macros, so this function should not be much more than:

	kcr_sip = intel_uncore_read(uncore, GEN12_KCR_SIP);
	return kcr_sip & BIT(index);

> +end:
> +       return hw_session_is_in_play;
> +}
> +
> +static bool is_hw_type1_session_in_play(struct drm_i915_private *i915, int session_index)
> +{
> +       int ret = 0;
> +       u32 regval_tsip_low = 0;
> +       u32 regval_tsip_high = 0;
> +       u64 reg_session_id_mask;
> +       u64 regval_tsip;
> +       bool hw_session_is_in_play = false;
> +
> +       if (!i915 || session_index < 0 || session_index >= MAX_TYPE1_SESSIONS)
> +               goto end;
> +
> +       ret = pxp_sm_reg_read(i915, GEN12_KCR_TSIP_LOW.reg, &regval_tsip_low);
> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to pxp_sm_reg_read()\n");
> +               goto end;
> +       }
> +
> +       ret = pxp_sm_reg_read(i915, GEN12_KCR_TSIP_HIGH.reg, &regval_tsip_high);
> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to pxp_sm_reg_read()\n");
> +               goto end;
> +       }
> +
> +       reg_session_id_mask = (1 << session_index);
> +       regval_tsip = ((u64)regval_tsip_high << 32) | regval_tsip_low;
> +       hw_session_is_in_play = (bool)(regval_tsip & reg_session_id_mask);

By using existing intel_uncore_read64 this becomes a two-liner like the
previous function. We should embrace the existing functions and _MMIO
protection across the codebase, and not use per-domain read/write funcs.

> +end:
> +       return hw_session_is_in_play;
> +}
> +
> +static bool is_hw_session_in_play(struct drm_i915_private *i915,
> +                                 int session_type, int session_index)
> +{
> +       bool is_in_play = false;
> +
> +       if (session_type == SESSION_TYPE_TYPE0)
> +               is_in_play = is_hw_type0_session_in_play(i915, session_index);
> +       else if (session_type == SESSION_TYPE_TYPE1)
> +               is_in_play = is_hw_type1_session_in_play(i915, session_index);
> +       else
> +               drm_err(&i915->drm, "Failed to %s invalid session_type=[%d]\n",
> +                       __func__, session_type);

This would be a kernel programmer level error, so definitely should not
be ERROR level message. In other places, like the macro at the top, we
assume there to only be two types.

Type0 and Type1 are terrible names to be used for variables, so we
should use something that better matches the difference between the two.
This difference should also be explained when the two different types
are added.

> +
> +       return is_in_play;
> +}
> +
> +/* check hw session in play reg if match the current sw state */
> +static int sync_hw_sw_state(struct drm_i915_private *i915, int session_index, int session_type)

The function name gives an impression as if it would do something to
synchronize, when actually it just waits, so it should be named *_wait_*
appropriately.

> +{
> +       const int max_retry = 10;
> +       const int ms_delay = 10;
> +       int retry = 0;
> +       int ret;
> +
> +       if (!i915 || session_type >= SESSION_TYPE_MAX)
> +               return -EINVAL;
> +
> +       ret = -EINVAL;
> +       for (retry = 0; retry < max_retry; retry++) {
> +               if (is_hw_session_in_play(i915, session_type, session_index) ==
> +                   is_sw_session_active(i915, session_type, session_index, true, NULL)) {
> +                       ret = 0;
> +                       break;
> +               }
> +
> +               msleep(ms_delay);
> +       }

We already have existing wait_for_* helper macros and those should be
used.

> +
> +       return ret;
> +}
> +
> +/**
> + * check_if_protected_type0_sessions_are_attacked - To check if type0 active sessions are attacked.
> + * @i915: i915 device handle.
> + *
> + * Return: true if HW shows protected sessions are attacked, false otherwise.
> + */
> +static bool check_if_protected_type0_sessions_are_attacked(struct drm_i915_private *i915)
> +{
> +       i915_reg_t kcr_status_reg = KCR_STATUS_1;
> +       u32 reg_value = 0;
> +       u32 mask = 0x80000000;

The different registers touched should be at the top of the .c file.
We shouldn't hardcode the mask here, but we should document them at the
time of _MMIO define just like we do for the rest of the registers.

> +       int ret;
> +
> +       if (!i915)
> +               return false;
> +
> +       if (i915->pxp.ctx->global_state_attacked)
> +               return true;
> +
> +       ret = pxp_sm_reg_read(i915, kcr_status_reg.reg, &reg_value);
> +       if (ret) {
> +               drm_err(&i915->drm, "Failed to pxp_sm_reg_read\n");
> +               goto end;
> +       }
> +
> +       if (reg_value & mask)
> +               return true;

The meaning of the mask should be defined like for other regs. Again
this just becomes a check for:

	value = intel_uncore_read(uncore, KCR_STATUS_1);
	return value & KCR_STATUS_SOMETHING;

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> @@ -15,6 +15,57 @@
>  /* Setting KCR Init bit is required after system boot */
>  #define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << KCR_INIT_MASK_SHIFT))
>  
> +#define KCR_STATUS_1        _MMIO(0x320f4)
> +#define GEN12_KCR_SIP       _MMIO(0x32260)   /* KCR type0 session in play 0-31 */
> +#define GEN12_KCR_TSIP_LOW  _MMIO(0x32264)   /* KCR type1 session in play 0-31 */
> +#define GEN12_KCR_TSIP_HIGH _MMIO(0x32268)   /* KCR type1 session in play 32-63 */
> +
> +enum pxp_session_types {
> +       SESSION_TYPE_TYPE0 = 0,
> +       SESSION_TYPE_TYPE1 = 1,

Difference between the two is not explained.

> +       SESSION_TYPE_MAX
> +};
> +
> +enum pxp_protection_modes {
> +       PROTECTION_MODE_NONE = 0,
> +       PROTECTION_MODE_LM   = 2,
> +       PROTECTION_MODE_HM   = 3,
> +       PROTECTION_MODE_SM   = 6,

Difference between each should be explained, if we're only having a
singleton session, why would we need such enumeration?

> +       PROTECTION_MODE_ALL
> +};

These protection modes are not used at all, so they should not be
introduced.

> +
> +/**
> + * struct pxp_protected_session - linked list to track all active sessions.
> + */
> +struct pxp_protected_session {
> +       /** @session_list: linked list infrastructure, do not change its order. */
> +       struct list_head session_list;

We only need to track single session, so no list is needed. "session_" is
tautology as this is part of struct with "session" in it.

> +       /** @session_index: Numeric identifier for this protected session */
> +       int session_index;

"session_" is tautology in all other names too.

> +       /** @context_id: context identifier of the protected session requestor */
> +       int context_id;
> +       /** @pid: pid of this session's creator */
> +       int pid;
> +       /** @drmfile: pointer to drm_file, which is allocated on device file open() call */
> +       struct drm_file *drmfile;

These memebers are never needed for singleton session.

Each member should only be added by a patch that also makes full use of
it.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
