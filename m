Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4857F11ABD3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 14:16:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A19E6EB47;
	Wed, 11 Dec 2019 13:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A2E6EB47
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 13:16:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 05:16:43 -0800
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="215776153"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.9.238])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 05:16:41 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org, 
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191207170110.2200142-7-chris@chris-wilson.co.uk>
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
 <20191207170110.2200142-7-chris@chris-wilson.co.uk>
Message-ID: <157607019890.10520.12614892186595671587@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 11 Dec 2019 15:16:39 +0200
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Asynchronous cmdparser
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

+ Daniel/Maarten for the dma_resv

Quoting Chris Wilson (2019-12-07 19:01:09)
> Execute the cmdparser asynchronously as part of the submission pipeline.
> Using our dma-fences, we can schedule execution after an asynchronous
> piece of work, so we move the cmdparser out from under the struct_mutex
> inside execbuf as run it as part of the submission pipeline. The same
> security rules apply, we copy the user batch before validation and
> userspace cannot touch the validation shadow. The only caveat is that we
> will do request construction before we complete cmdparsing and so we
> cannot know the outcome of the validation step until later -- so the
> execbuf ioctl does not report -EINVAL directly, but we must cancel
> execution of the request and flag the error on the out-fence.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

<SNIP>

> +static const struct dma_fence_work_ops eb_parse_ops = {
> +       .name = "parse",

I'm noticing all our dma_fence_work_ops are named very briefly.

.name = "eb_parse" might be in order.

> +       .work = __eb_parse,
> +};
> +
> +static int eb_parse_pipeline(struct i915_execbuffer *eb,
> +                            struct i915_vma *shadow)
> +{
> +       struct eb_parse_work *pw;
> +       int err;
> +
> +       pw = kzalloc(sizeof(*pw), GFP_KERNEL);
> +       if (!pw)
> +               return -ENOMEM;
> +
> +       dma_fence_work_init(&pw->base, &eb_parse_ops);
> +
> +       pw->engine = eb->engine;
> +       pw->batch = eb->batch;
> +       pw->batch_offset = eb->batch_start_offset;
> +       pw->batch_length = eb->batch_len;
> +       pw->shadow = shadow;
> +
> +       dma_resv_lock(pw->batch->resv, NULL);
> +       err = dma_resv_reserve_shared(pw->batch->resv, 1);
> +       if (err) {
> +               dma_resv_unlock(pw->batch->resv);
> +               kfree(pw);
> +               return err;
> +       }
> +
> +       err = i915_sw_fence_await_reservation(&pw->base.chain,
> +                                             pw->batch->resv, NULL, false,
> +                                             0, I915_FENCE_GFP);
> +       if (err < 0) {

Onion teardown to dedupe code.

> +               dma_resv_unlock(pw->batch->resv);
> +               kfree(pw);
> +               return err;
> +       }
> +
> +       dma_resv_add_shared_fence(pw->batch->resv, &pw->base.dma);
> +       dma_resv_unlock(pw->batch->resv);
> +
> +       dma_resv_lock(shadow->resv, NULL);
> +       dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
> +       dma_resv_unlock(shadow->resv);
> +
> +       dma_fence_work_commit(&pw->base);
> +       return 0;
> +}

After de-duping, I think this is just fine as far as the fences come.

Kernel wouldn't initiate any requests in need of cmd parsing and some
work needs to be waited upon to free memory, the cmdparser will fail
gracefully as the only allocation is __GFP_RETRY_MAYFAIL.

The rest looks fine to me, too. We probably want another set of eyes
to also ack the clflushing correctness.

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
