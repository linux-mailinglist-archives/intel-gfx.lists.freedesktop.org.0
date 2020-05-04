Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E66B1C37ED
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 13:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B23A6E37C;
	Mon,  4 May 2020 11:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D46576E37C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 11:21:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21105906-1500050 for multiple; Mon, 04 May 2020 12:21:48 +0100
MIME-Version: 1.0
In-Reply-To: <20200504111249.1367096-4-lionel.g.landwerlin@intel.com>
References: <20200504111249.1367096-1-lionel.g.landwerlin@intel.com>
 <20200504111249.1367096-4-lionel.g.landwerlin@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158859130597.10831.1879381999581311910@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 04 May 2020 12:21:45 +0100
Subject: Re: [Intel-gfx] [PATCH v12 3/4] drm/i915/perf: prepare driver to
 receive multiple ctx handles
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

Quoting Lionel Landwerlin (2020-05-04 12:12:48)
> +static int oa_get_render_ctx_ids(struct i915_perf_stream *stream)
>  {
>         struct intel_context *ce;
> +       int i, err = 0;
> +       u32 n_allocated_ctxs = 0;
>  
> -       ce = fetch_and_zero(&stream->pinned_ctx);
> -       if (ce) {
> -               ce->tag = 0; /* recomputed on next submission after parking */
> -               intel_context_unpin(ce);
> +       stream->ctx_id_mask = get_ctx_id_mask(stream->engine);
> +
> +       for (i = 0; i < stream->n_ctxs; i++) {
> +               struct i915_gem_context *ctx = stream->ctxs[i];
> +               struct i915_gem_engines_iter it;
> +
> +               for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
> +                       if (ce->engine != stream->engine) /* first match! */
> +                               continue;
> +
> +                       /*
> +                        * As the ID is the gtt offset of the context's vma we
> +                        * pin the vma to ensure the ID remains fixed.
> +                        */
> +                       err = intel_context_pin(ce);
> +                       if (err) {
> +                               i915_gem_context_unlock_engines(ctx);
> +                               break;
> +                       }
> +
> +                       if (stream->n_pinned_ctxs >= n_allocated_ctxs) {
> +                               u32 new_allocated_len = max(n_allocated_ctxs * 2, 2u);
> +                               struct i915_perf_context_detail *new_ctxs =
> +                                       krealloc(stream->pinned_ctxs,
> +                                                sizeof(*stream->pinned_ctxs) *
> +                                                new_allocated_len,
> +                                                GFP_KERNEL);
> +
> +                               if (!new_ctxs) {
> +                                       err = -ENOMEM;
> +                                       break;
> +                               }
> +
> +                               n_allocated_ctxs = new_allocated_len;
> +                               stream->pinned_ctxs = new_ctxs;
> +                       }
> +
> +                       stream->pinned_ctxs[stream->n_pinned_ctxs].ce = ce;
> +                       stream->pinned_ctxs[stream->n_pinned_ctxs].id = get_ctx_id(ce, i);
> +
> +                       drm_dbg(&stream->perf->i915->drm,
> +                               "filtering on ctx_id%i=0x%x ctx_id_mask=0x%x\n",
> +                               i, stream->pinned_ctxs[i].id, stream->ctx_id_mask);
> +
> +                       ce->tag = stream->pinned_ctxs[stream->n_pinned_ctxs].id;
> +
> +                       stream->n_pinned_ctxs++;
> +               }
> +               i915_gem_context_unlock_engines(ctx);
> +               if (err)
> +                       goto err;
>         }

For each GEM context handle the user supplied, match on all HW contexts.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
