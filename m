Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A88903995BA
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 00:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F5F06EE38;
	Wed,  2 Jun 2021 22:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com
 [IPv6:2607:f8b0:4864:20::b2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C16046E42E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 22:06:03 +0000 (UTC)
Received: by mail-yb1-xb2f.google.com with SMTP id y2so5894517ybq.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Jun 2021 15:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n/blKH1EBPNmQNa/9uxx4grnFq0kefTkkVGBNSWj834=;
 b=XKIDReJoKqiWMcQDS/WxNzaG8BJE5Heg0+9cifcxQLnHgtQyJtGQN1vhm7EaOMN0do
 UfXZi7wTSWichZSlgQ8AGAiRfGML2ZXEZOhWKkW2/hW+HB4eiNPwqHPlqcaIJF/MAnMl
 dhB+ATj+APM1SDd4cYq1vEHkV++toD7NZ6/+VvOeCQF43V2/qo3M5Vi3Q28PGSIaEygi
 KgQJewyDdrNbSI+8d0LFWAIPKTzSAAYw4k6sFUwEHOfN64/cLyHx+9Ml6j8s61/rzMtT
 TZxlawDsGUjrFXJMoee4Z3cqy9aiUCpOosRIkv/ZrhA1rrUPKFUDAgBj/ueK4ZHBXoJZ
 Ge5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n/blKH1EBPNmQNa/9uxx4grnFq0kefTkkVGBNSWj834=;
 b=AnSf9N0oaPw0bhDx7wUcJOdF4HKdNew5Foutx7fHHAnWO8/KA/WweecVuIG7R2vnnf
 0XoTQ2Donl8Gd95X9kqw57LUZGhqnh1Tncv7utNXEGSVDMNNatxXa3HTp1osfMB0XLiJ
 0fauHR2QqhXEe+CaocysPvvgkz/UnkzC+BFg53sRb7UCfz5NG3UKsgre0u2vzr6Tm8KC
 5/LuzadmlotJfV+PayuA00JBl++5eM8x9nbkTUBtVlMUIBzU396A4cQ7rxzDdeirV/wk
 ju+O4o62gaqvvDSVVcKwoeJLKdYdE+CShjoLmE9C4hr+KUgCQrxhHcKILGZ6Syh2m+MN
 PzKA==
X-Gm-Message-State: AOAM530eZs2wAt8hfQ1+ASZzcZKki+z3WtGzrIpSuFzRRRyIySwokGCJ
 GGh5aohILJ4e2UjsnLpPM3/FoNOjfXZwihizoVsmZYZke4U=
X-Google-Smtp-Source: ABdhPJwdv51IkKDCRUp44G/OIXLytXd7/kQSbXlnnYmfvZN3L1BKUFw/2GYmvOQYtpyIRoa9u9lwqlUUvFJtjjxAt/A=
X-Received: by 2002:a5b:392:: with SMTP id k18mr51371837ybp.180.1622671562810; 
 Wed, 02 Jun 2021 15:06:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210527162650.1182544-1-jason@jlekstrand.net>
 <20210527162650.1182544-19-jason@jlekstrand.net>
 <YLSi6uim1hlBxNug@phenom.ffwll.local>
In-Reply-To: <YLSi6uim1hlBxNug@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 2 Jun 2021 17:05:51 -0500
Message-ID: <CAOFGe945wUkoUrdUWuXv5L0uA834=c2dcEu4Nv72RP2Kaw-s3g@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 18/29] drm/i915/gem: Optionally set SSEU in
 intel_context_set_gem
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 31, 2021 at 3:48 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Thu, May 27, 2021 at 11:26:39AM -0500, Jason Ekstrand wrote:
> > For now this is a no-op because everyone passes in a null SSEU but it
> > lets us get some of the error handling and selftest refactoring plumbed
> > through.
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
>
> I've reviewed this one already in the previous round, did you change
> anything that means I should re-review this here?

Nope.  Just lost the RB tag.  Added.

--Jason

> -Daniel
>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 41 +++++++++++++++----
> >  .../gpu/drm/i915/gem/selftests/mock_context.c |  6 ++-
> >  2 files changed, 36 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index f8f3f514b4265..d247fb223aac7 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -320,9 +320,12 @@ context_get_vm_rcu(struct i915_gem_context *ctx)
> >       } while (1);
> >  }
> >
> > -static void intel_context_set_gem(struct intel_context *ce,
> > -                               struct i915_gem_context *ctx)
> > +static int intel_context_set_gem(struct intel_context *ce,
> > +                              struct i915_gem_context *ctx,
> > +                              struct intel_sseu sseu)
> >  {
> > +     int ret = 0;
> > +
> >       GEM_BUG_ON(rcu_access_pointer(ce->gem_context));
> >       RCU_INIT_POINTER(ce->gem_context, ctx);
> >
> > @@ -349,6 +352,12 @@ static void intel_context_set_gem(struct intel_context *ce,
> >
> >               intel_context_set_watchdog_us(ce, (u64)timeout_ms * 1000);
> >       }
> > +
> > +     /* A valid SSEU has no zero fields */
> > +     if (sseu.slice_mask && !WARN_ON(ce->engine->class != RENDER_CLASS))
> > +             ret = intel_context_reconfigure_sseu(ce, sseu);
> > +
> > +     return ret;
> >  }
> >
> >  static void __free_engines(struct i915_gem_engines *e, unsigned int count)
> > @@ -416,7 +425,8 @@ static struct i915_gem_engines *alloc_engines(unsigned int count)
> >       return e;
> >  }
> >
> > -static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
> > +static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
> > +                                             struct intel_sseu rcs_sseu)
> >  {
> >       const struct intel_gt *gt = &ctx->i915->gt;
> >       struct intel_engine_cs *engine;
> > @@ -429,6 +439,8 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
> >
> >       for_each_engine(engine, gt, id) {
> >               struct intel_context *ce;
> > +             struct intel_sseu sseu = {};
> > +             int ret;
> >
> >               if (engine->legacy_idx == INVALID_ENGINE)
> >                       continue;
> > @@ -442,10 +454,18 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
> >                       goto free_engines;
> >               }
> >
> > -             intel_context_set_gem(ce, ctx);
> > -
> >               e->engines[engine->legacy_idx] = ce;
> >               e->num_engines = max(e->num_engines, engine->legacy_idx + 1);
> > +
> > +             if (engine->class == RENDER_CLASS)
> > +                     sseu = rcs_sseu;
> > +
> > +             ret = intel_context_set_gem(ce, ctx, sseu);
> > +             if (ret) {
> > +                     err = ERR_PTR(ret);
> > +                     goto free_engines;
> > +             }
> > +
> >       }
> >
> >       return e;
> > @@ -759,6 +779,7 @@ __create_context(struct drm_i915_private *i915,
> >  {
> >       struct i915_gem_context *ctx;
> >       struct i915_gem_engines *e;
> > +     struct intel_sseu null_sseu = {};
> >       int err;
> >       int i;
> >
> > @@ -776,7 +797,7 @@ __create_context(struct drm_i915_private *i915,
> >       INIT_LIST_HEAD(&ctx->stale.engines);
> >
> >       mutex_init(&ctx->engines_mutex);
> > -     e = default_engines(ctx);
> > +     e = default_engines(ctx, null_sseu);
> >       if (IS_ERR(e)) {
> >               err = PTR_ERR(e);
> >               goto err_free;
> > @@ -1543,6 +1564,7 @@ set_engines__load_balance(struct i915_user_extension __user *base, void *data)
> >       struct intel_engine_cs *stack[16];
> >       struct intel_engine_cs **siblings;
> >       struct intel_context *ce;
> > +     struct intel_sseu null_sseu = {};
> >       u16 num_siblings, idx;
> >       unsigned int n;
> >       int err;
> > @@ -1615,7 +1637,7 @@ set_engines__load_balance(struct i915_user_extension __user *base, void *data)
> >               goto out_siblings;
> >       }
> >
> > -     intel_context_set_gem(ce, set->ctx);
> > +     intel_context_set_gem(ce, set->ctx, null_sseu);
> >
> >       if (cmpxchg(&set->engines->engines[idx], NULL, ce)) {
> >               intel_context_put(ce);
> > @@ -1723,6 +1745,7 @@ set_engines(struct i915_gem_context *ctx,
> >       struct drm_i915_private *i915 = ctx->i915;
> >       struct i915_context_param_engines __user *user =
> >               u64_to_user_ptr(args->value);
> > +     struct intel_sseu null_sseu = {};
> >       struct set_engines set = { .ctx = ctx };
> >       unsigned int num_engines, n;
> >       u64 extensions;
> > @@ -1732,7 +1755,7 @@ set_engines(struct i915_gem_context *ctx,
> >               if (!i915_gem_context_user_engines(ctx))
> >                       return 0;
> >
> > -             set.engines = default_engines(ctx);
> > +             set.engines = default_engines(ctx, null_sseu);
> >               if (IS_ERR(set.engines))
> >                       return PTR_ERR(set.engines);
> >
> > @@ -1789,7 +1812,7 @@ set_engines(struct i915_gem_context *ctx,
> >                       return PTR_ERR(ce);
> >               }
> >
> > -             intel_context_set_gem(ce, ctx);
> > +             intel_context_set_gem(ce, ctx, null_sseu);
> >
> >               set.engines->engines[n] = ce;
> >       }
> > diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > index e0f512ef7f3c6..cbeefd060e97b 100644
> > --- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > +++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > @@ -14,6 +14,7 @@ mock_context(struct drm_i915_private *i915,
> >  {
> >       struct i915_gem_context *ctx;
> >       struct i915_gem_engines *e;
> > +     struct intel_sseu null_sseu = {};
> >
> >       ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
> >       if (!ctx)
> > @@ -31,7 +32,7 @@ mock_context(struct drm_i915_private *i915,
> >       i915_gem_context_set_persistence(ctx);
> >
> >       mutex_init(&ctx->engines_mutex);
> > -     e = default_engines(ctx);
> > +     e = default_engines(ctx, null_sseu);
> >       if (IS_ERR(e))
> >               goto err_free;
> >       RCU_INIT_POINTER(ctx->engines, e);
> > @@ -112,6 +113,7 @@ live_context_for_engine(struct intel_engine_cs *engine, struct file *file)
> >  {
> >       struct i915_gem_engines *engines;
> >       struct i915_gem_context *ctx;
> > +     struct intel_sseu null_sseu = {};
> >       struct intel_context *ce;
> >
> >       engines = alloc_engines(1);
> > @@ -130,7 +132,7 @@ live_context_for_engine(struct intel_engine_cs *engine, struct file *file)
> >               return ERR_CAST(ce);
> >       }
> >
> > -     intel_context_set_gem(ce, ctx);
> > +     intel_context_set_gem(ce, ctx, null_sseu);
> >       engines->engines[0] = ce;
> >       engines->num_engines = 1;
> >
> > --
> > 2.31.1
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
