Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DCF1C8CD2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 15:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106B66E998;
	Thu,  7 May 2020 13:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF0046E998
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 13:44:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21138718-1500050 for multiple; Thu, 07 May 2020 14:44:39 +0100
MIME-Version: 1.0
In-Reply-To: <20200507134122.17732-1-mika.kuoppala@linux.intel.com>
References: <20200507134122.17732-1-mika.kuoppala@linux.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158885907681.20858.14209789974764134586@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 07 May 2020 14:44:36 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen12: Add aux table invalidate
 for all engines
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

Quoting Mika Kuoppala (2020-05-07 14:41:22)
> All engines, exception being blitter as it does not
> care about the form, can access compressed surfaces.
> 
> So we need to add forced aux table invalidates
> for those engines.
> 
> v2: virtual instance masking (Chris)
> 
> References: d248b371f747 ("drm/i915/gen12: Invalidate aux table entries forcibly")
> References bspec#43904, hsdes#1809175790
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Chuansheng Liu <chuansheng.liu@intel.com>
> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 84 +++++++++++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h     |  6 +++
>  2 files changed, 85 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index bbdb0e2a4571..2fffedc99806 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4539,11 +4539,34 @@ static u32 preparser_disable(bool state)
>         return MI_ARB_CHECK | 1 << 8 | state;
>  }
>  
> +static i915_reg_t aux_inv_reg(const struct intel_engine_cs *engine)
> +{
> +       static const i915_reg_t vd[] = {
> +               GEN12_VD0_AUX_NV,
> +               GEN12_VD1_AUX_NV,
> +               GEN12_VD2_AUX_NV,
> +               GEN12_VD3_AUX_NV,
> +       };
> +
> +       static const i915_reg_t ve[] = {
> +               GEN12_VE0_AUX_NV,
> +               GEN12_VE1_AUX_NV,
> +       };
> +
> +       if (engine->class == VIDEO_DECODE_CLASS)
> +               return vd[engine->instance];
> +
> +       if (engine->class == VIDEO_ENHANCEMENT_CLASS)
> +               return ve[engine->instance];
> +

	GEM_BUG_ON("unknown aux_inv_reg");

> +       return INVALID_MMIO_REG;
> +}
>  
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
