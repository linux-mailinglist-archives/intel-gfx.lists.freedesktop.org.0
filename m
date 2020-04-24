Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ACC1B7C68
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 19:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89AE6E043;
	Fri, 24 Apr 2020 17:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C6F6E043
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 17:08:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21011462-1500050 for multiple; Fri, 24 Apr 2020 18:08:34 +0100
MIME-Version: 1.0
In-Reply-To: <20200424165427.17765-1-mika.kuoppala@linux.intel.com>
References: <20200424163843.16585-2-mika.kuoppala@linux.intel.com>
 <20200424165427.17765-1-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158774811418.27391.3123237276812077473@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 24 Apr 2020 18:08:34 +0100
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Add per ctx batchbuffer wa
 for timestamp
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

Quoting Mika Kuoppala (2020-04-24 17:54:27)
>         if (wa_ctx->indirect_ctx.size) {
> -               const u32 ggtt_offset = i915_ggtt_offset(wa_ctx->vma);
> +               const u32 bb_offset = i915_ggtt_offset(wa_ctx->vma) +
> +                       wa_ctx->indirect_ctx.offset;
> +               const u32 bb_size = wa_ctx->indirect_ctx.size;
>  
> -               GEM_BUG_ON(lrc_ring_indirect_ptr(engine) == -1);
> -               regs[lrc_ring_indirect_ptr(engine) + 1] =
> -                       (ggtt_offset + wa_ctx->indirect_ctx.offset) |
> -                       (wa_ctx->indirect_ctx.size / CACHELINE_BYTES);
> -
> -               GEM_BUG_ON(lrc_ring_indirect_offset(engine) == -1);
> -               regs[lrc_ring_indirect_offset(engine) + 1] =
> -                       lrc_ring_indirect_offset_default(engine) << 6;
> +               lrc_ring_setup_indirect_ctx(ce, bb_offset, bb_size);

Eek, please teach this to stick to regs and engine.

Otherwise we'll fall into the virtual engine trap.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
