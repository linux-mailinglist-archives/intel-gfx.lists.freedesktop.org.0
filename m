Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E6F2AEE83
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 11:08:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2938488422;
	Wed, 11 Nov 2020 10:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1734388422
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 10:08:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22959267-1500050 for multiple; Wed, 11 Nov 2020 10:08:43 +0000
MIME-Version: 1.0
In-Reply-To: <20201111072859.1186070-1-rodrigo.vivi@intel.com>
References: <20201111072859.1186070-1-rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 11 Nov 2020 10:08:43 +0000
Message-ID: <160508932315.29434.8937453271377416537@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix Media power gate sequence.
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

Quoting Rodrigo Vivi (2020-11-11 07:28:59)
> Some media power gates are disabled by default. commit 5d86923060fc
> ("drm/i915/tgl: Enable VD HCP/MFX sub-pipe power gating")
> tried to enable it, but it duplicated an existent register. So, RC6
> sequences ended up overwriting it.
> 
> The open question now is it should be independent of RC6 sequence,
> but anyway this power gating control for now is very tied to the
> RC6 sequence, so let's keep it that way for now.

It's the GT rc6 and pg setup sequence, not just rc6.

> Fixes: 5d86923060fc ("drm/i915/tgl: Enable VD HCP/MFX sub-pipe power gating")
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: stable@vger.kernel.org#v5.5+
> Cc: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c | 20 ++++++++++++++++----
>  drivers/gpu/drm/i915/i915_reg.h     | 12 +++++-------
>  drivers/gpu/drm/i915/intel_pm.c     | 16 ----------------
>  3 files changed, 21 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index ab675d35030d..b9e56859daf6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -56,9 +56,12 @@ static inline void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
>  
>  static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  {
> +       struct drm_i915_private *i915 = rc6_to_i915(rc6);
>         struct intel_uncore *uncore = rc6_to_uncore(rc6);
>         struct intel_engine_cs *engine;
>         enum intel_engine_id id;
> +       u32 pg_enable = 0;
= 0?
> +       int i;
>  
>         /* 2b: Program RC6 thresholds.*/
>         set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
> @@ -102,10 +105,19 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>                 GEN6_RC_CTL_RC6_ENABLE |
>                 GEN6_RC_CTL_EI_MODE(1);
>  
> -       set(uncore, GEN9_PG_ENABLE,
> -           GEN9_RENDER_PG_ENABLE |
> -           GEN9_MEDIA_PG_ENABLE |
> -           GEN11_MEDIA_SAMPLER_PG_ENABLE);
> +       pg_enable = GEN9_RENDER_PG_ENABLE |
> +               GEN9_MEDIA_PG_ENABLE |
> +               GEN11_MEDIA_SAMPLER_PG_ENABLE;
> +
> +       if (INTEL_GEN(i915) >= 12) {
> +               /* Enable VD HCP & MFX_ENC powergate */

/* i++; post-increment i */

> +               for (i = 0; i < I915_MAX_VCS; i++)
> +                       if (HAS_ENGINE(&i915->gt, _VCS(i)))

Wrong gt; never use i915 for anything but device info under gt/

Oh and s/BIT/REG_BIT/.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
