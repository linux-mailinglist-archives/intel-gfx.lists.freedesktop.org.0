Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F8F1C2E7D
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 20:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27BCF6E286;
	Sun,  3 May 2020 18:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09AD76E286
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 18:24:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21100264-1500050 for multiple; Sun, 03 May 2020 19:24:16 +0100
MIME-Version: 1.0
In-Reply-To: <20200430154735.22434-2-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
 <20200430154735.22434-2-mika.kuoppala@linux.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158853025381.8377.13461228271330261366@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sun, 03 May 2020 19:24:13 +0100
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/gen12: Fix HDC pipeline flush
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

Quoting Mika Kuoppala (2020-04-30 16:47:28)
> HDC pipeline flush is bit on the first dword of
> the PIPE_CONTROL, not the second. Make it so.
> 
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h       | 23 +++++++++++----
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  2 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c          | 30 ++++++++++----------
>  3 files changed, 33 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index d10e52ff059f..f449171ae808 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -241,19 +241,24 @@ void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
>  void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
>                                     struct drm_printer *p);
>  
> -static inline u32 *gen8_emit_pipe_control(u32 *batch, u32 flags, u32 offset)
> +static inline u32 *gen12_emit_pipe_control(u32 *batch, u32 flags0, u32 flags1, u32 offset)
>  {
>         memset(batch, 0, 6 * sizeof(u32));
>  
> -       batch[0] = GFX_OP_PIPE_CONTROL(6);
> -       batch[1] = flags;
> +       batch[0] = GFX_OP_PIPE_CONTROL(6) | flags0;
> +       batch[1] = flags1;
>         batch[2] = offset;
>  
>         return batch + 6;
>  }
>  
> +static inline u32 *gen8_emit_pipe_control(u32 *batch, u32 flags, u32 offset)
> +{
> +       return gen12_emit_pipe_control(batch, 0, flags, offset);

We always call into older; the gen prefix indicates the earliest the
function is usable.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
