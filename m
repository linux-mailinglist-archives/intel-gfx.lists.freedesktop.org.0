Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8FA11A9D3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 12:27:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1F8E6E04B;
	Wed, 11 Dec 2019 11:27:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E757C6E04B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:27:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 03:27:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="207648755"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.9.238])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 03:27:20 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191207170110.2200142-6-chris@chris-wilson.co.uk>
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
 <20191207170110.2200142-6-chris@chris-wilson.co.uk>
Message-ID: <157606363734.10520.8397483575791116170@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 11 Dec 2019 13:27:17 +0200
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915: Prepare gen7 cmdparser for
 async execution
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

Quoting Chris Wilson (2019-12-07 19:01:08)
> The gen7 cmdparser is primarily a promotion-based system to allow access
> to additional registers beyond the HW validation, and allows fallback to
> normal execution of the user batch buffer if valid and requires
> chaining. In the next patch, we will do the cmdparser validation in the
> pipeline asynchronously and so at the point of request construction we
> will not know if we want to execute the privileged and validated batch,
> or the original user batch. The solution employed here is to execute
> both batches, one with raised privileges and one as normal. This is
> because the gen7 MI_BATCH_BUFFER_START command cannot change privilege
> level within a batch and must strictly use the current privilege level
> (or undefined behaviour kills the GPU). So in order to execute the
> original batch, we need a second non-priviledged batch buffer chain from
> the ring, i.e. we need to emit two batches for each user batch. Inside
> the two batches we determine which one should actually execute, we
> provide a conditional trampoline to call the original batch.

It's only a single batch executed twice from different offsets. I would
rephrase the commit message to reflect that.

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

<SNIP>

> #define NUM_EXTRA 2

Looks like BOs, we should have a more descriptive name.

#define NUM_KERNEL_BUFFERS?

> @@ -1985,59 +1970,80 @@ shadow_batch_pin(struct i915_execbuffer *eb, struct drm_i915_gem_object *obj)
>  static int eb_parse(struct i915_execbuffer *eb)
>  {
>         struct intel_engine_pool_node *pool;
> -       struct i915_vma *vma;
> +       struct i915_vma *shadow, *trampoline;
> +       unsigned int len;
>         int err;
>  
>         if (!eb_use_cmdparser(eb))
>                 return 0;
>  
> -       pool = intel_engine_get_pool(eb->engine, eb->batch_len);
> +       len = eb->batch_len;
> +       if (!CMDPARSER_USES_GGTT(eb->i915)) {
> +               /*
> +                * PPGTT backed shadow buffers must be mapped RO, to prevent
> +                * post-scan tampering
> +                */
> +               if (!eb->context->vm->has_read_only) {
> +                       DRM_DEBUG("Cannot prevent post-scan tampering without RO capable vm\n");
> +                       return -EINVAL;
> +               }
> +       } else {
> +               len += 8;

Magic number. #define TRAMPOLINE_SOMETHING ?

> @@ -2089,6 +2095,16 @@ static int eb_submit(struct i915_execbuffer *eb)
>         if (err)
>                 return err;
>  
> +       if (eb->trampoline) {
> +               GEM_BUG_ON(eb->batch_start_offset);
> +               err = eb->engine->emit_bb_start(eb->request,
> +                                               eb->trampoline->node.start +
> +                                               eb->batch_len,
> +                                               8, 0);

Magic 8 detected.

I'd emphasis that we're jumping to the end, either by computing start +
batch_len separately or bringing them to same line.

> @@ -1504,6 +1504,33 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
>                 }
>         } while (1);
>  
> +       if (!jump_whitelist) { /* setup up the trampoline for chaining */

I think we should hoist the CMDPARSER_USES_GGTT check from
alloc_whitelist function. It's quite misleading now, and I
spent quite some time wondering why we would only do this on
out of memory.

Especially as there is a comment "defer failure until attempted use".

> +               cmd = page_mask_bits(shadow->obj->mm.mapping);
> +               if (!ret) {
> +                       cmd += batch_length / sizeof(*cmd);

This could use sharing the offset through variable/helper function
to tie this to be overwriting the trampoline jump.

Helper func maybe to compute the offset of trampoline, even if it
happens to be right at the end.

> +                       *cmd = MI_BATCH_BUFFER_END;
> +               } else {
> +                       *cmd = MI_BATCH_BUFFER_END;
> +                       cmd += batch_length / sizeof(*cmd);

Again using the helper function would help tracing that each BB
is jumped to twice, and this is about the second jump.

> +
> +                       if (ret == -EACCES) {
> +                               u32 bbs;
> +
> +                               bbs = MI_BATCH_BUFFER_START;
> +                               bbs |= MI_BATCH_NON_SECURE_I965;
> +                               if (IS_HASWELL(engine->i915))
> +                                       bbs |= MI_BATCH_NON_SECURE_HSW;
> +
> +                               cmd[0] = bbs;
> +                               cmd[1] = batch_addr;

__{gen6,hsw}_bb_start helper?

With the magics removed this is;

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
