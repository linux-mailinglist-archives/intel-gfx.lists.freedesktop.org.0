Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A292AF394
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 15:31:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F90E6E04E;
	Wed, 11 Nov 2020 14:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4216E04E
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 14:31:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22962633-1500050 for multiple; Wed, 11 Nov 2020 14:31:21 +0000
MIME-Version: 1.0
In-Reply-To: <20201111140936.1215523-1-rodrigo.vivi@intel.com>
References: <160508932315.29434.8937453271377416537@build.alporthouse.com>
 <20201111140936.1215523-1-rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 11 Nov 2020 14:31:20 +0000
Message-ID: <160510508069.6304.3172732169580587622@build.alporthouse.com>
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

Quoting Rodrigo Vivi (2020-11-11 14:09:36)
> Some media power gates are disabled by default. commit 5d86923060fc
> ("drm/i915/tgl: Enable VD HCP/MFX sub-pipe power gating")
> tried to enable it, but it duplicated an existent register.
> So, the main PG setup sequences ended up overwriting it.
> 
> So, let's now merge this to the main PG setup sequence.
> 
> v2: (Chris): s/REG_BIT/BIT, remove useless comment,
>              remove useless =0, use the right gt,
>              remove rc6 sequence doubt from commit message.
> 
> Fixes: 5d86923060fc ("drm/i915/tgl: Enable VD HCP/MFX sub-pipe power gating")
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: stable@vger.kernel.org#v5.5+
> Cc: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c | 19 +++++++++++++++----
>  drivers/gpu/drm/i915/i915_reg.h     | 12 +++++-------
>  drivers/gpu/drm/i915/intel_pm.c     | 16 ----------------
>  3 files changed, 20 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index ab675d35030d..c01fa86e0d07 100644
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
> +       u32 pg_enable;
> +       int i;
>  
>         /* 2b: Program RC6 thresholds.*/
>         set(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
> @@ -102,10 +105,18 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
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
> +               for (i = 0; i < I915_MAX_VCS; i++)
> +                       if (HAS_ENGINE(rc6_to_gt(rc6), _VCS(i)))

I would have put gt = rc6_to_gt(rc6) into the locals and used gt->i915
for the singular instance.

Code motion looks ok,

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Now as to why this escaped notice? I see that our rc6/power measurement test
is not reporting energy consumption for tgl. This is concerning, give me
a moment to see if there's anything obvious blocking the test.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
