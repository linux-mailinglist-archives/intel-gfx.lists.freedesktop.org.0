Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CC3380F6D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 20:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD136F3DF;
	Fri, 14 May 2021 18:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFC76F3DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 18:07:50 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id c22so17731787ejd.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 11:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PX4P71+J87f+TvD9Ad9qu7JSt4BIsO74DwTe5A+9RT0=;
 b=WRBsXTBBummxQFQMIDo/xGsLbflytNgPRQL7W9K2IHjlXJKLDYeckNDTAdLZO6H/LD
 LB87PLmwOW3lwm/DlbR6YJayYsNiIwtCGZxBPJBitXbxoLzqtLLL/6RMd1tm0joASIrF
 y8zZpBsJmoCMH3ZPN1vAEkSw3WRKK7pbmxgX8zhuaEuMU5TTL/SgkT9SDNKOBRjFXfLk
 rOeW1z3bqWtTXEfgAZtaCR8MlrRl4G4std5wvwrBnDPtjMchP0CsVSgI0/V7fFxSfM1J
 8lZm3kPhLTKMnArHQH+lWJmNkcIWqxnx6OIVBPNBevOVK5kPaMcWNtF5/9XDxLVLZtTG
 lUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PX4P71+J87f+TvD9Ad9qu7JSt4BIsO74DwTe5A+9RT0=;
 b=P9MFgCLB9v3hnh3KKDiLJb9yvsjMxOojUyemj2Qw8LN5tpxRdtoOFE29p9FdD25aIG
 fTjigIYO0Bdjug8xcjDJUOv6m/1D+ZNC+dW6U+J5HAPV7k4SyK/ba5vJl2LIHBqkaW2M
 0nUS1CSyVOkBvD1FKMbstI0NIhJfMrze0vKPEkcY9PXihho/mdP0BvyQ0iizgqccvhit
 cM1Njq0GfUrdpbQ5lIgnDwbArCSapNEzm6jrueOjp83xS0v4Ai965QyXTcLmJ6ZkFJyL
 s6yeEr1X1MQRt27QZppciQ+rz8YyMekEF2U3PRR6w47U8RWjGOiAk3wFmQpKkeAsEd/X
 9VPw==
X-Gm-Message-State: AOAM5337n3il/J3kWckrJgmHCK8uFpiIFi4l6losnob8aWb2EEkFDbHe
 U9L+uG2T7d5V00fRjJFyOf7IPBbrZyYZQDG3jebVPA==
X-Google-Smtp-Source: ABdhPJzYO0Zd8p53MzCJ5EU+pH4gsj2s5enMHUn/nP5NhUOU4ybCDGIbyi8x40SdpJuFUDrTJueOuSqhEnCzszsq9Iw=
X-Received: by 2002:a17:907:781a:: with SMTP id
 la26mr17652731ejc.435.1621015668787; 
 Fri, 14 May 2021 11:07:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210503155748.1961781-1-jason@jlekstrand.net>
 <20210503155748.1961781-7-jason@jlekstrand.net>
 <YJEK3ueXHERORbkC@phenom.ffwll.local>
In-Reply-To: <YJEK3ueXHERORbkC@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 14 May 2021 13:07:37 -0500
Message-ID: <CAOFGe963WuPGRbkkVso6jmtq2z-PWaXJqDtEdX5UEPhXomOfFw@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 06/27] drm/i915: Drop the CONTEXT_CLONE API
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

On Tue, May 4, 2021 at 3:50 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Mon, May 03, 2021 at 10:57:27AM -0500, Jason Ekstrand wrote:
> > This API allows one context to grab bits out of another context upon
> > creation.  It can be used as a short-cut for setparam(getparam()) for
> > things like I915_CONTEXT_PARAM_VM.  However, it's never been used by any
> > real userspace.  It's used by a few IGT tests and that's it.  Since it
> > doesn't add any real value (most of the stuff you can CLONE you can copy
> > in other ways), drop it.
> >
> > There is one thing that this API allows you to clone which you cannot
> > clone via getparam/setparam: timelines.  However, timelines are an
> > implementation detail of i915 and not really something that needs to be
> > exposed to userspace.  Also, sharing timelines between contexts isn't
> > obviously useful and supporting it has the potential to complicate i915
> > internally.  It also doesn't add any functionality that the client can't
> > get in other ways.  If a client really wants a shared timeline, they can
> > use a syncobj and set it as an in and out fence on every submit.
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> This aint gitlab MR, so please include a per-patch (and also per-revision)
> changelog summary here. With that added:

I don't think this patch has changed.  I'll scroll through to make sure, though.

> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 199 +-----------------
> >  .../drm/i915/gt/intel_execlists_submission.c  |  28 ---
> >  .../drm/i915/gt/intel_execlists_submission.h  |   3 -
> >  include/uapi/drm/i915_drm.h                   |  16 +-
> >  4 files changed, 6 insertions(+), 240 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index d6f342e605254..308a63f778faf 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -1958,207 +1958,14 @@ static int create_setparam(struct i915_user_extension __user *ext, void *data)
> >       return ctx_setparam(arg->fpriv, arg->ctx, &local.param);
> >  }
> >
> > -static int clone_engines(struct i915_gem_context *dst,
> > -                      struct i915_gem_context *src)
> > +static int invalid_ext(struct i915_user_extension __user *ext, void *data)
> >  {
> > -     struct i915_gem_engines *clone, *e;
> > -     bool user_engines;
> > -     unsigned long n;
> > -
> > -     e = __context_engines_await(src, &user_engines);
> > -     if (!e)
> > -             return -ENOENT;
> > -
> > -     clone = alloc_engines(e->num_engines);
> > -     if (!clone)
> > -             goto err_unlock;
> > -
> > -     for (n = 0; n < e->num_engines; n++) {
> > -             struct intel_engine_cs *engine;
> > -
> > -             if (!e->engines[n]) {
> > -                     clone->engines[n] = NULL;
> > -                     continue;
> > -             }
> > -             engine = e->engines[n]->engine;
> > -
> > -             /*
> > -              * Virtual engines are singletons; they can only exist
> > -              * inside a single context, because they embed their
> > -              * HW context... As each virtual context implies a single
> > -              * timeline (each engine can only dequeue a single request
> > -              * at any time), it would be surprising for two contexts
> > -              * to use the same engine. So let's create a copy of
> > -              * the virtual engine instead.
> > -              */
> > -             if (intel_engine_is_virtual(engine))
> > -                     clone->engines[n] =
> > -                             intel_execlists_clone_virtual(engine);
> > -             else
> > -                     clone->engines[n] = intel_context_create(engine);
> > -             if (IS_ERR_OR_NULL(clone->engines[n])) {
> > -                     __free_engines(clone, n);
> > -                     goto err_unlock;
> > -             }
> > -
> > -             intel_context_set_gem(clone->engines[n], dst);
> > -     }
> > -     clone->num_engines = n;
> > -     i915_sw_fence_complete(&e->fence);
> > -
> > -     /* Serialised by constructor */
> > -     engines_idle_release(dst, rcu_replace_pointer(dst->engines, clone, 1));
> > -     if (user_engines)
> > -             i915_gem_context_set_user_engines(dst);
> > -     else
> > -             i915_gem_context_clear_user_engines(dst);
> > -     return 0;
> > -
> > -err_unlock:
> > -     i915_sw_fence_complete(&e->fence);
> > -     return -ENOMEM;
> > -}
> > -
> > -static int clone_flags(struct i915_gem_context *dst,
> > -                    struct i915_gem_context *src)
> > -{
> > -     dst->user_flags = src->user_flags;
> > -     return 0;
> > -}
> > -
> > -static int clone_schedattr(struct i915_gem_context *dst,
> > -                        struct i915_gem_context *src)
> > -{
> > -     dst->sched = src->sched;
> > -     return 0;
> > -}
> > -
> > -static int clone_sseu(struct i915_gem_context *dst,
> > -                   struct i915_gem_context *src)
> > -{
> > -     struct i915_gem_engines *e = i915_gem_context_lock_engines(src);
> > -     struct i915_gem_engines *clone;
> > -     unsigned long n;
> > -     int err;
> > -
> > -     /* no locking required; sole access under constructor*/
> > -     clone = __context_engines_static(dst);
> > -     if (e->num_engines != clone->num_engines) {
> > -             err = -EINVAL;
> > -             goto unlock;
> > -     }
> > -
> > -     for (n = 0; n < e->num_engines; n++) {
> > -             struct intel_context *ce = e->engines[n];
> > -
> > -             if (clone->engines[n]->engine->class != ce->engine->class) {
> > -                     /* Must have compatible engine maps! */
> > -                     err = -EINVAL;
> > -                     goto unlock;
> > -             }
> > -
> > -             /* serialises with set_sseu */
> > -             err = intel_context_lock_pinned(ce);
> > -             if (err)
> > -                     goto unlock;
> > -
> > -             clone->engines[n]->sseu = ce->sseu;
> > -             intel_context_unlock_pinned(ce);
> > -     }
> > -
> > -     err = 0;
> > -unlock:
> > -     i915_gem_context_unlock_engines(src);
> > -     return err;
> > -}
> > -
> > -static int clone_timeline(struct i915_gem_context *dst,
> > -                       struct i915_gem_context *src)
> > -{
> > -     if (src->timeline)
> > -             __assign_timeline(dst, src->timeline);
> > -
> > -     return 0;
> > -}
> > -
> > -static int clone_vm(struct i915_gem_context *dst,
> > -                 struct i915_gem_context *src)
> > -{
> > -     struct i915_address_space *vm;
> > -     int err = 0;
> > -
> > -     if (!rcu_access_pointer(src->vm))
> > -             return 0;
> > -
> > -     rcu_read_lock();
> > -     vm = context_get_vm_rcu(src);
> > -     rcu_read_unlock();
> > -
> > -     if (!mutex_lock_interruptible(&dst->mutex)) {
> > -             __assign_ppgtt(dst, vm);
> > -             mutex_unlock(&dst->mutex);
> > -     } else {
> > -             err = -EINTR;
> > -     }
> > -
> > -     i915_vm_put(vm);
> > -     return err;
> > -}
> > -
> > -static int create_clone(struct i915_user_extension __user *ext, void *data)
> > -{
> > -     static int (* const fn[])(struct i915_gem_context *dst,
> > -                               struct i915_gem_context *src) = {
> > -#define MAP(x, y) [ilog2(I915_CONTEXT_CLONE_##x)] = y
> > -             MAP(ENGINES, clone_engines),
> > -             MAP(FLAGS, clone_flags),
> > -             MAP(SCHEDATTR, clone_schedattr),
> > -             MAP(SSEU, clone_sseu),
> > -             MAP(TIMELINE, clone_timeline),
> > -             MAP(VM, clone_vm),
> > -#undef MAP
> > -     };
> > -     struct drm_i915_gem_context_create_ext_clone local;
> > -     const struct create_ext *arg = data;
> > -     struct i915_gem_context *dst = arg->ctx;
> > -     struct i915_gem_context *src;
> > -     int err, bit;
> > -
> > -     if (copy_from_user(&local, ext, sizeof(local)))
> > -             return -EFAULT;
> > -
> > -     BUILD_BUG_ON(GENMASK(BITS_PER_TYPE(local.flags) - 1, ARRAY_SIZE(fn)) !=
> > -                  I915_CONTEXT_CLONE_UNKNOWN);
> > -
> > -     if (local.flags & I915_CONTEXT_CLONE_UNKNOWN)
> > -             return -EINVAL;
> > -
> > -     if (local.rsvd)
> > -             return -EINVAL;
> > -
> > -     rcu_read_lock();
> > -     src = __i915_gem_context_lookup_rcu(arg->fpriv, local.clone_id);
> > -     rcu_read_unlock();
> > -     if (!src)
> > -             return -ENOENT;
> > -
> > -     GEM_BUG_ON(src == dst);
> > -
> > -     for (bit = 0; bit < ARRAY_SIZE(fn); bit++) {
> > -             if (!(local.flags & BIT(bit)))
> > -                     continue;
> > -
> > -             err = fn[bit](dst, src);
> > -             if (err)
> > -                     return err;
> > -     }
> > -
> > -     return 0;
> > +     return -EINVAL;
> >  }
> >
> >  static const i915_user_extension_fn create_extensions[] = {
> >       [I915_CONTEXT_CREATE_EXT_SETPARAM] = create_setparam,
> > -     [I915_CONTEXT_CREATE_EXT_CLONE] = create_clone,
> > +     [I915_CONTEXT_CREATE_EXT_CLONE] = invalid_ext,
> >  };
> >
> >  static bool client_is_banned(struct drm_i915_file_private *file_priv)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index de124870af44d..0e8c320927d15 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -3736,34 +3736,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
> >       return ERR_PTR(err);
> >  }
> >
> > -struct intel_context *
> > -intel_execlists_clone_virtual(struct intel_engine_cs *src)
> > -{
> > -     struct virtual_engine *se = to_virtual_engine(src);
> > -     struct intel_context *dst;
> > -
> > -     dst = intel_execlists_create_virtual(se->siblings,
> > -                                          se->num_siblings);
> > -     if (IS_ERR(dst))
> > -             return dst;
> > -
> > -     if (se->num_bonds) {
> > -             struct virtual_engine *de = to_virtual_engine(dst->engine);
> > -
> > -             de->bonds = kmemdup(se->bonds,
> > -                                 sizeof(*se->bonds) * se->num_bonds,
> > -                                 GFP_KERNEL);
> > -             if (!de->bonds) {
> > -                     intel_context_put(dst);
> > -                     return ERR_PTR(-ENOMEM);
> > -             }
> > -
> > -             de->num_bonds = se->num_bonds;
> > -     }
> > -
> > -     return dst;
> > -}
> > -
> >  int intel_virtual_engine_attach_bond(struct intel_engine_cs *engine,
> >                                    const struct intel_engine_cs *master,
> >                                    const struct intel_engine_cs *sibling)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.h b/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
> > index fd61dae820e9e..bab3d37cf3f98 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
> > @@ -36,9 +36,6 @@ struct intel_context *
> >  intel_execlists_create_virtual(struct intel_engine_cs **siblings,
> >                              unsigned int count);
> >
> > -struct intel_context *
> > -intel_execlists_clone_virtual(struct intel_engine_cs *src);
> > -
> >  int intel_virtual_engine_attach_bond(struct intel_engine_cs *engine,
> >                                    const struct intel_engine_cs *master,
> >                                    const struct intel_engine_cs *sibling);
> > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > index a0aaa8298f28d..75a71b6756ed8 100644
> > --- a/include/uapi/drm/i915_drm.h
> > +++ b/include/uapi/drm/i915_drm.h
> > @@ -1887,20 +1887,10 @@ struct drm_i915_gem_context_create_ext_setparam {
> >       struct drm_i915_gem_context_param param;
> >  };
> >
> > -struct drm_i915_gem_context_create_ext_clone {
> > +/* This API has been removed.  On the off chance someone somewhere has
> > + * attempted to use it, never re-use this extension number.
> > + */
> >  #define I915_CONTEXT_CREATE_EXT_CLONE 1
> > -     struct i915_user_extension base;
> > -     __u32 clone_id;
> > -     __u32 flags;
> > -#define I915_CONTEXT_CLONE_ENGINES   (1u << 0)
> > -#define I915_CONTEXT_CLONE_FLAGS     (1u << 1)
> > -#define I915_CONTEXT_CLONE_SCHEDATTR (1u << 2)
> > -#define I915_CONTEXT_CLONE_SSEU              (1u << 3)
> > -#define I915_CONTEXT_CLONE_TIMELINE  (1u << 4)
> > -#define I915_CONTEXT_CLONE_VM                (1u << 5)
> > -#define I915_CONTEXT_CLONE_UNKNOWN -(I915_CONTEXT_CLONE_VM << 1)
> > -     __u64 rsvd;
> > -};
> >
> >  struct drm_i915_gem_context_destroy {
> >       __u32 ctx_id;
> > --
> > 2.31.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
