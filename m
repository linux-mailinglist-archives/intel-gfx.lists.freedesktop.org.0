Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D842C2B0E26
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6BB16E418;
	Thu, 12 Nov 2020 19:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 322FD6E418
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:37:28 +0000 (UTC)
IronPort-SDR: CGyow1fCofW1VJ4fE9DoTYWw9oY/FtJCfkWTU2bggJwYUllfERL+8zVSsO3S3DGfZ0/wxrlcGf
 79MhY0xmhsrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="166860739"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="166860739"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:37:27 -0800
IronPort-SDR: jYoqXS+DhvtxpyJN9+MEj2KBFuoshj/M9LguOgSZEyZKyNKEq8Zg85JL+W/xA5WXc0J5uvbbkC
 8bdM1xsqtU4Q==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="542375633"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.35.103])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:37:26 -0800
MIME-Version: 1.0
In-Reply-To: <20201010002105.45152-3-umesh.nerlige.ramappa@intel.com>
References: <20201010002105.45152-1-umesh.nerlige.ramappa@intel.com>
 <20201010002105.45152-3-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 19:37:23 +0000
Message-ID: <160520984362.25046.13191035584637135557@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/gt: Lock
 intel_engine_apply_whitelist with uncore->lock
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

Quoting Umesh Nerlige Ramappa (2020-10-10 01:21:01)
> Refactor intel_engine_apply_whitelist into locked and unlocked versions
> so that a caller who already has the lock can apply whitelist.
> 
> v2: Fix sparse warning
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 44 +++++++++++++++------
>  1 file changed, 31 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 6c580d0d9ea8..864194aa6eef 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1295,7 +1295,8 @@ void intel_gt_init_workarounds(struct drm_i915_private *i915)
>  }
>  
>  static enum forcewake_domains
> -wal_get_fw_for_rmw(struct intel_uncore *uncore, const struct i915_wa_list *wal)
> +wal_get_fw(struct intel_uncore *uncore, const struct i915_wa_list *wal,
> +          unsigned int op)
>  {
>         enum forcewake_domains fw = 0;
>         struct i915_wa *wa;
> @@ -1304,8 +1305,7 @@ wal_get_fw_for_rmw(struct intel_uncore *uncore, const struct i915_wa_list *wal)
>         for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
>                 fw |= intel_uncore_forcewake_for_reg(uncore,
>                                                      wa->reg,
> -                                                    FW_REG_READ |
> -                                                    FW_REG_WRITE);
> +                                                    op);
>  
>         return fw;
>  }
> @@ -1335,7 +1335,7 @@ wa_list_apply(struct intel_uncore *uncore, const struct i915_wa_list *wal)
>         if (!wal->count)
>                 return;
>  
> -       fw = wal_get_fw_for_rmw(uncore, wal);
> +       fw = wal_get_fw(uncore, wal, FW_REG_READ | FW_REG_WRITE);
>  
>         spin_lock_irqsave(&uncore->lock, flags);
>         intel_uncore_forcewake_get__locked(uncore, fw);
> @@ -1645,27 +1645,45 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>         wa_init_finish(w);
>  }
>  
> -void intel_engine_apply_whitelist(struct intel_engine_cs *engine)
> +static void intel_engine_apply_whitelist_locked(struct intel_engine_cs *engine)

Not too bad, but since it remains static, we could drop the prefix (and
suffix):
	__engine_apply_whitelist(engine, wal)

>  {
>         const struct i915_wa_list *wal = &engine->whitelist;
>         struct intel_uncore *uncore = engine->uncore;
>         const u32 base = engine->mmio_base;
>         struct i915_wa *wa;
>         unsigned int i;
> +       enum forcewake_domains fw;

(Christmas tree)

>  
> -       if (!wal->count)
> -               return;
> +       lockdep_assert_held(&uncore->lock);
> +
> +       fw = wal_get_fw(uncore, wal, FW_REG_WRITE);
> +       intel_uncore_forcewake_get__locked(uncore, fw);
>  
>         for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> -               intel_uncore_write(uncore,
> -                                  RING_FORCE_TO_NONPRIV(base, i),
> -                                  i915_mmio_reg_offset(wa->reg));
> +               intel_uncore_write_fw(uncore,
> +                                     RING_FORCE_TO_NONPRIV(base, i),
> +                                     i915_mmio_reg_offset(wa->reg));
>  
>         /* And clear the rest just in case of garbage */
>         for (; i < RING_MAX_NONPRIV_SLOTS; i++)
> -               intel_uncore_write(uncore,
> -                                  RING_FORCE_TO_NONPRIV(base, i),
> -                                  i915_mmio_reg_offset(RING_NOPID(base)));
> +               intel_uncore_write_fw(uncore,
> +                                     RING_FORCE_TO_NONPRIV(base, i),
> +                                     i915_mmio_reg_offset(RING_NOPID(base)));
> +
> +       intel_uncore_forcewake_put__locked(uncore, fw);
> +}
> +
> +void intel_engine_apply_whitelist(struct intel_engine_cs *engine)
> +{
> +       unsigned long flags;
> +       const struct i915_wa_list *wal = &engine->whitelist;

Longest to shortest variable declaration (if no other reason prevents
that).

Reviewed-by: Chris Wilson <chris.p.wilson@intel.com>
-Chris
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
