Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D06481C82B5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 08:43:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 395CD6E915;
	Thu,  7 May 2020 06:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C6786E915
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 06:43:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21134315-1500050 for multiple; Thu, 07 May 2020 07:43:46 +0100
MIME-Version: 1.0
In-Reply-To: <20200506165310.1239-1-mika.kuoppala@linux.intel.com>
References: <158878348241.927.811872095434935872@build.alporthouse.com>
 <20200506165310.1239-1-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158883382408.927.12375552840831028590@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 07 May 2020 07:43:44 +0100
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gen12: Invalidate aux table
 entries forcibly
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
Cc: Yang A Shi <yang.a.shi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-05-06 17:53:10)
> Aux table invalidation can fail on update. So
> next access may cause memory access to be into stale entry.
> 
> Proposed workaround is to invalidate entries between
> all batchbuffers.
> 
> v2: correct register address (Yang)
> v3: respect the order (Chris)
> 
> References bspec#43904, hsdes#1809175790
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Chuansheng Liu <chuansheng.liu@intel.com>
> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> Cc: Yang A Shi <yang.a.shi@intel.com>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 16 +++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h     |  2 ++
>  2 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index e1235d504837..bbdb0e2a4571 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4539,6 +4539,17 @@ static u32 preparser_disable(bool state)
>         return MI_ARB_CHECK | 1 << 8 | state;
>  }
>  
> +static u32 *
> +gen12_emit_aux_table_inv(struct i915_request *rq, u32 *cs)
> +{
> +       *cs++ = MI_LOAD_REGISTER_IMM(1);
> +       *cs++ = i915_mmio_reg_offset(GEN12_GFX_CCS_AUX_NV);
> +       *cs++ = AUX_INV;
> +       *cs++ = MI_NOOP;
> +
> +       return cs;
> +}
> +
>  static int gen12_emit_flush_render(struct i915_request *request,
>                                    u32 mode)
>  {
> @@ -4587,7 +4598,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
>  
>                 flags |= PIPE_CONTROL_CS_STALL;
>  
> -               cs = intel_ring_begin(request, 8);
> +               cs = intel_ring_begin(request, 8 + 4);
>                 if (IS_ERR(cs))
>                         return PTR_ERR(cs);
>  
> @@ -4600,6 +4611,9 @@ static int gen12_emit_flush_render(struct i915_request *request,
>  
>                 cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
>  
> +               /* hsdes: 1809175790 */
> +               cs = gen12_emit_aux_table_inv(request, cs);

It is worth mentioning that we do not fix up the EMIT_INVALIDATE for the
actual physical engine a virtual request may run on. Not a problem until
you try to support other engines. Pray for a quick HW fix.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
