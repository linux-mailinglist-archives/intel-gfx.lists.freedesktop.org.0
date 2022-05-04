Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF735519F37
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 14:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2B010F3CF;
	Wed,  4 May 2022 12:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com
 [IPv6:2001:4860:4864:20::2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EADF10F35C
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 12:24:19 +0000 (UTC)
Received: by mail-oa1-x2d.google.com with SMTP id
 586e51a60fabf-ed8a3962f8so988114fac.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 May 2022 05:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qkSvgC9ERceF6cOgnBIUWhLEZEpZQ+UOeYTQ6hCJaBU=;
 b=jAhpI6qq1RWk4xv1R/5Tbn6GYgCW9/ob2rXcqnTaX5bdWRBy2yYk8oaJ53PgQpztvM
 qJkZQ2+quUqiLIHQe/5qV9QCJFKkZXXkdKenAUqqpZZC8AmugxzJgCMGApCaY57GZKZz
 2dgjewCGygpBm3PYoLZP0vc3NR9bUHE+Yut9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qkSvgC9ERceF6cOgnBIUWhLEZEpZQ+UOeYTQ6hCJaBU=;
 b=lyQ6qd/1NjXc7QxloPwbhxB7lo1AB7kQ/dsHE/SSTeIxs8C3qY22cy7vS5hSy5HjlZ
 VVe+OHQaKA342hdoXC9qce8XhG7Y77/e7tFy3wvEgy8Nx4SuSz4i7FFnv71RzxLBTH+D
 rlvXok5yrVykUKAacZMb98jPrDk1ECwVZr0dqu3MMyFPxfn5tIKIxO/z85B90pZFLap/
 zch8b/93jWx7DbnfDQ1OK6bx2FJy2y//+RcqpQPmvdg2gyZ+INDz23Uk1CajZOk28lvY
 yllf8QrGVqfc/6HHwvWA7RrQklAzOhAVo5syCPIBuskM0itgEAa/3GR+idTJ4GGwEyKy
 8Ayg==
X-Gm-Message-State: AOAM531WjPlq8AP0g8ji7tUPqCkFC4bEXCo4gbP8ot7A+Yd9MFtiES9+
 9/mv7Q1JRVo4+xnbeK+I3jdXZ0418rAKRBEYbSxcCg==
X-Google-Smtp-Source: ABdhPJxkkJTLFQ2V/DZqhCZtp307AyvpHU+IAJSYySgOM7ncIhP6PO8dA5O9M0bZJ18XBR5hle5CLpR7cUQ7NpRNjME=
X-Received: by 2002:a05:6870:eaa5:b0:da:b3f:2b45 with SMTP id
 s37-20020a056870eaa500b000da0b3f2b45mr3686475oap.228.1651667058594; Wed, 04
 May 2022 05:24:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220429151112.1041959-1-adrian.larumbe@collabora.com>
In-Reply-To: <20220429151112.1041959-1-adrian.larumbe@collabora.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 4 May 2022 14:24:07 +0200
Message-ID: <CAKMK7uHMh_BneHXvXxUsFaE1h3FWAEFungKrPAJORzk5Y3LOSw@mail.gmail.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>, 
 Matthew D Roper <matthew.d.roper@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Change semantics of context
 isolation reporting to UM
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
Cc: intel-gfx@lists.freedesktop.org, "airlied@gmail.com" <airlied@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 29 Apr 2022 at 17:11, Adrian Larumbe
<adrian.larumbe@collabora.com> wrote:
> I915_PARAM_HAS_CONTEXT_ISOLATION was already being used as a boolean by
> both Iris and Vulkan , and stood for the guarantee that, when creating a
> new context, all state set by it will not leak to any other context.
>
> However the actual return value was a bitmask where every bit stood for an
> initialised engine, and IGT test gem_ctx_isolation makes use of this mask
> for deciding on the actual context engine isolation status.
>
> However, we do not provide UAPI for IGT tests, so the value returned by the
> PARAM ioctl has to reflect Mesa usage as a boolean.
>
> This change only made sense after compute engine support was added to the
> driver in commit 944823c9463916dd53f3 ("drm/i915/xehp: Define compute class
> and engine") because no context isolation can be assumed on any device with
> both RCS annd CCS engines.
>
> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>

Top level post and adding Matt Roper and dri-devel.

This was meant as a simple cleanup after CCS enabling in upstream, but
that CCS enabling seems to have gone wrong.

What I thought we should be done for CCS enabling is the following:
- actually have some igt-side hardcoded assumption about how much
engines are isolated from each another, which is a hw property. I
think some of that landed, but it's very incomplete

- convert all igt tests over to that. At least gem_ctx_isolation.c is
not converted over, as Adrian pointed out.

- once igt stopped using this context isolation getparam (we do not,
ever, create uapi just for testcases), fix up the uapi to what iris
actually needs, which is _only_ a boolean which indicates whether the
kernel's context setup code leaks register state from existing
contexts to newly created ones. Which is the bug iris works around
here, where using iris caused gpu hangs in libva. Iow, the kernel
should always and unconditionally return true here. Check out iris
history for details please, actual iris usage has nothing to do with
any other cross-context or cross-engine isolation guarantee we're
making, it's purely about whether our hw ctx code is buggy or not and
leaks state between clients, because we accidentally used the
currently running ctx as template instead of a fixed one created once
at driver load.

Matt, since the CCS enabling on the igt validation side looks very
incomplete I'm leaning very much towards "pls revert, try again".

Cheers, Daniel

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_user.c | 13 ++++++++++++-
>  drivers/gpu/drm/i915/gt/intel_engine_user.h |  1 +
>  drivers/gpu/drm/i915/i915_drm_client.h      |  2 +-
>  drivers/gpu/drm/i915/i915_getparam.c        |  2 +-
>  include/uapi/drm/i915_drm.h                 | 14 +++-----------
>  5 files changed, 18 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index 0f6cd96b459f..2d6bd36d6150 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -47,7 +47,7 @@ static const u8 uabi_classes[] = {
>         [COPY_ENGINE_CLASS] = I915_ENGINE_CLASS_COPY,
>         [VIDEO_DECODE_CLASS] = I915_ENGINE_CLASS_VIDEO,
>         [VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
> -       /* TODO: Add COMPUTE_CLASS mapping once ABI is available */
> +       [COMPUTE_CLASS] = I915_ENGINE_CLASS_COMPUTE,
>  };
>
>  static int engine_cmp(void *priv, const struct list_head *A,
> @@ -306,3 +306,14 @@ unsigned int intel_engines_has_context_isolation(struct drm_i915_private *i915)
>
>         return which;
>  }
> +
> +bool intel_cross_engine_isolated(struct drm_i915_private *i915)
> +{
> +       unsigned int which = intel_engines_has_context_isolation(i915);
> +
> +       if ((which & BIT(I915_ENGINE_CLASS_RENDER)) &&
> +           (which & BIT(I915_ENGINE_CLASS_COMPUTE)))
> +               return false;
> +
> +       return !!which;
> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.h b/drivers/gpu/drm/i915/gt/intel_engine_user.h
> index 3dc7e8ab9fbc..ff21349db4d4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.h
> @@ -15,6 +15,7 @@ struct intel_engine_cs *
>  intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, u8 instance);
>
>  unsigned int intel_engines_has_context_isolation(struct drm_i915_private *i915);
> +bool intel_cross_engine_isolated(struct drm_i915_private *i915);
>
>  void intel_engine_add_user(struct intel_engine_cs *engine);
>  void intel_engines_driver_register(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
> index 5f5b02b01ba0..f796c5e8e060 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.h
> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
> @@ -13,7 +13,7 @@
>
>  #include "gt/intel_engine_types.h"
>
> -#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_VIDEO_ENHANCE
> +#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
>
>  struct drm_i915_private;
>
> diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
> index c12a0adefda5..3d5120d2d78a 100644
> --- a/drivers/gpu/drm/i915/i915_getparam.c
> +++ b/drivers/gpu/drm/i915/i915_getparam.c
> @@ -145,7 +145,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
>                 value = 1;
>                 break;
>         case I915_PARAM_HAS_CONTEXT_ISOLATION:
> -               value = intel_engines_has_context_isolation(i915);
> +               value = intel_cross_engine_isolated(i915);
>                 break;
>         case I915_PARAM_SLICE_MASK:
>                 value = sseu->slice_mask;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 35ca528803fd..84c0af77cc1f 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -166,6 +166,7 @@ enum drm_i915_gem_engine_class {
>         I915_ENGINE_CLASS_COPY          = 1,
>         I915_ENGINE_CLASS_VIDEO         = 2,
>         I915_ENGINE_CLASS_VIDEO_ENHANCE = 3,
> +       I915_ENGINE_CLASS_COMPUTE       = 4,
>
>         /* should be kept compact */
>
> @@ -635,17 +636,8 @@ typedef struct drm_i915_irq_wait {
>  #define I915_PARAM_HAS_EXEC_FENCE_ARRAY  49
>
>  /*
> - * Query whether every context (both per-file default and user created) is
> - * isolated (insofar as HW supports). If this parameter is not true, then
> - * freshly created contexts may inherit values from an existing context,
> - * rather than default HW values. If true, it also ensures (insofar as HW
> - * supports) that all state set by this context will not leak to any other
> - * context.
> - *
> - * As not every engine across every gen support contexts, the returned
> - * value reports the support of context isolation for individual engines by
> - * returning a bitmask of each engine class set to true if that class supports
> - * isolation.
> + * Query whether the device can make cross-engine isolation guarantees for
> + * all the engines whose default state has been initialised.
>   */
>  #define I915_PARAM_HAS_CONTEXT_ISOLATION 50
>
> --
> 2.35.1
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
