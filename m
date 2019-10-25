Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD41AE53BF
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 20:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2986EB3A;
	Fri, 25 Oct 2019 18:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB356EB3A
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 18:22:17 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id p59so2562788edp.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 11:22:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lbR7LLBaU73LpCdBirY94HTQmoDpnwT3BWSvLchIE2Q=;
 b=TVV+Hj53Rttgn/sXuVFxlk0+dXvLVazoc7BX1ZhC/Jg2OWgRLc8wB/spPtWEGWKaxq
 gztZXryvBwF3YDl94uX9FxpuDbeX06VRRDsmH2Z1IOZ2xuVPGe0PZ+bNZK0qeu34tu4s
 Y861oTazAPrFwr9eYcbgtWTLLujbAm0UgEQTOLRI3/uI+DWQaGKO0bDJNwoNqekYSCnB
 uQWU1RXGdReP9bLifk8YMQZad/5d+hCBj1ulWtGNNv+jlfcZRCQEIJeUVarg5yW9XFAn
 4gUXQLHZxg984UhYzsUWvmSKxttE+R8Ei2UN3PWKYigaMG/FMwpekG1iCMYnUfZRoNmq
 /UxA==
X-Gm-Message-State: APjAAAVnXNAzRQpmJAIpI6fC/LSxZySFhm+/2Y/gGDl7ONGYlrqRKoSc
 OUSkQ7lFg15T2yslDE/yzcrJG/5AMtNWrfEqb6YpaA==
X-Google-Smtp-Source: APXvYqy0LHarHfBt3aQFkpBl3ejLc11343DvwI2PurseZRruIk+ZU4d1Ukq1Zx+ALKVIXi7cTl+fCUGLzcYnFxNIX0k=
X-Received: by 2002:aa7:cd59:: with SMTP id v25mr5582576edw.26.1572027735902; 
 Fri, 25 Oct 2019 11:22:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191024114028.6170-1-chris@chris-wilson.co.uk>
 <20191024114028.6170-2-chris@chris-wilson.co.uk>
In-Reply-To: <20191024114028.6170-2-chris@chris-wilson.co.uk>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 25 Oct 2019 13:22:04 -0500
Message-ID: <CAOFGe978TZS=wMV3Rpuv+P30pt=2mRHtR8PB30b=qAMf7USBHw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=lbR7LLBaU73LpCdBirY94HTQmoDpnwT3BWSvLchIE2Q=;
 b=LeeNMaXa9hMhZ/rMpXVBkyCheyOgJvJSGYD95TglSAkwOaBL1CwC7XPpN9T7h8c/Ey
 cSDDX9YoKZ2DmfUBP27+7nAt64pAlBWVO4mkRdbu3S4gKQOKWBgUPqjOTAaJsHdBoo/9
 hpTsmzPLm7XzQKHfYHAR5BaenMayemCC9UqhNyWcOXAZ+iduEAiArfuVFTJfgN7qXUmT
 OZQ1modMEjXutJXoXjhOZysGXD5Df0WF2kI6NvW+2+8vmoN06rHhwm3xuPYV0HQI43gd
 7eriHwTgASYi7vVz4pXmcUjadtUt8pWqv70U/49z8MBDAcfYu39ULDN549i+J/saezwS
 9BoQ==
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915/gem: Make context
 persistence optional
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1263752121=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1263752121==
Content-Type: multipart/alternative; boundary="000000000000c6a1ab0595c03af1"

--000000000000c6a1ab0595c03af1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 24, 2019 at 6:40 AM Chris Wilson <chris@chris-wilson.co.uk>
wrote:

> Our existing behaviour is to allow contexts and their GPU requests to
> persist past the point of closure until the requests are complete. This
> allows clients to operate in a 'fire-and-forget' manner where they can
> setup a rendering pipeline and hand it over to the display server and
> immediately exiting. As the rendering pipeline is kept alive until
> completion, the display server (or other consumer) can use the results
> in the future and present them to the user.
>
> However, not all clients want this persistent behaviour and would prefer
> that the contexts are cleaned up immediately upon closure. This ensures
> that when clients are run without hangchecking, any GPU hang is
> terminated with the process and does not continue to hog resources.
>
> By defining a context property to allow clients to control persistence
> explicitly, we can remove the blanket advice to disable hangchecking
> that seems to be far too prevalent.
>

Just to be clear, when you say "disable hangchecking" do you mean disabling
it for all processes via a kernel parameter at boot time or a sysfs entry
or similar?  Or is there some mechanism whereby a context can request no
hang checking?


> The default behaviour for new controls is the legacy persistence mode.
> New clients will have to opt out for immediate cleanup on context
> closure. If the hangchecking modparam is disabled, so is persistent
> context support -- all contexts will be terminated on closure.
>

What happens to fences when the context is cancelled?  Is it the same
behavior as we have today for when a GPU hang is detected and a context is
banned?

--Jason



> Testcase: igt/gem_ctx_persistence
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Micha=C5=82 Winiarski <michal.winiarski@intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 50 ++++++++++++++++++-
>  drivers/gpu/drm/i915/gem/i915_gem_context.h   | 15 ++++++
>  .../gpu/drm/i915/gem/i915_gem_context_types.h |  1 +
>  .../gpu/drm/i915/gem/selftests/mock_context.c |  2 +
>  include/uapi/drm/i915_drm.h                   | 15 ++++++
>  5 files changed, 82 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 55f1f93c0925..0f1bbf5d1a11 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -437,12 +437,39 @@ static void context_close(struct i915_gem_context
> *ctx)
>          * case we opt to forcibly kill off all remaining requests on
>          * context close.
>          */
> -       if (!i915_modparams.enable_hangcheck)
> +       if (!i915_gem_context_is_persistent(ctx) ||
> +           !i915_modparams.enable_hangcheck)
>                 kill_context(ctx);
>
>         i915_gem_context_put(ctx);
>  }
>
> +static int __context_set_persistence(struct i915_gem_context *ctx, bool
> state)
> +{
> +       if (i915_gem_context_is_persistent(ctx) =3D=3D state)
> +               return 0;
> +
> +       if (state) {
> +               /*
> +                * Only contexts that are short-lived [that will expire o=
r
> be
> +                * reset] are allowed to survive past termination. We
> require
> +                * hangcheck to ensure that the persistent requests are
> healthy.
> +                */
> +               if (!i915_modparams.enable_hangcheck)
> +                       return -EINVAL;
> +
> +               i915_gem_context_set_persistence(ctx);
> +       } else {
> +               /* To cancel a context we use "preempt-to-idle" */
> +               if (!(ctx->i915->caps.scheduler &
> I915_SCHEDULER_CAP_PREEMPTION))
> +                       return -ENODEV;
> +
> +               i915_gem_context_clear_persistence(ctx);
> +       }
> +
> +       return 0;
> +}
> +
>  static struct i915_gem_context *
>  __create_context(struct drm_i915_private *i915)
>  {
> @@ -477,6 +504,7 @@ __create_context(struct drm_i915_private *i915)
>
>         i915_gem_context_set_bannable(ctx);
>         i915_gem_context_set_recoverable(ctx);
> +       __context_set_persistence(ctx, true /* cgroup hook? */);
>
>         for (i =3D 0; i < ARRAY_SIZE(ctx->hang_timestamp); i++)
>                 ctx->hang_timestamp[i] =3D jiffies -
> CONTEXT_FAST_HANG_JIFFIES;
> @@ -633,6 +661,7 @@ i915_gem_context_create_kernel(struct drm_i915_privat=
e
> *i915, int prio)
>                 return ctx;
>
>         i915_gem_context_clear_bannable(ctx);
> +       i915_gem_context_set_persistence(ctx);
>         ctx->sched.priority =3D I915_USER_PRIORITY(prio);
>
>         GEM_BUG_ON(!i915_gem_context_is_kernel(ctx));
> @@ -1743,6 +1772,16 @@ get_engines(struct i915_gem_context *ctx,
>         return err;
>  }
>
> +static int
> +set_persistence(struct i915_gem_context *ctx,
> +               const struct drm_i915_gem_context_param *args)
> +{
> +       if (args->size)
> +               return -EINVAL;
> +
> +       return __context_set_persistence(ctx, args->value);
> +}
> +
>  static int ctx_setparam(struct drm_i915_file_private *fpriv,
>                         struct i915_gem_context *ctx,
>                         struct drm_i915_gem_context_param *args)
> @@ -1820,6 +1859,10 @@ static int ctx_setparam(struct
> drm_i915_file_private *fpriv,
>                 ret =3D set_engines(ctx, args);
>                 break;
>
> +       case I915_CONTEXT_PARAM_PERSISTENCE:
> +               ret =3D set_persistence(ctx, args);
> +               break;
> +
>         case I915_CONTEXT_PARAM_BAN_PERIOD:
>         default:
>                 ret =3D -EINVAL;
> @@ -2272,6 +2315,11 @@ int i915_gem_context_getparam_ioctl(struct
> drm_device *dev, void *data,
>                 ret =3D get_engines(ctx, args);
>                 break;
>
> +       case I915_CONTEXT_PARAM_PERSISTENCE:
> +               args->size =3D 0;
> +               args->value =3D i915_gem_context_is_persistent(ctx);
> +               break;
> +
>         case I915_CONTEXT_PARAM_BAN_PERIOD:
>         default:
>                 ret =3D -EINVAL;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index cfe80590f0ed..18e50a769a6e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -76,6 +76,21 @@ static inline void
> i915_gem_context_clear_recoverable(struct i915_gem_context *c
>         clear_bit(UCONTEXT_RECOVERABLE, &ctx->user_flags);
>  }
>
> +static inline bool i915_gem_context_is_persistent(const struct
> i915_gem_context *ctx)
> +{
> +       return test_bit(UCONTEXT_PERSISTENCE, &ctx->user_flags);
> +}
> +
> +static inline void i915_gem_context_set_persistence(struct
> i915_gem_context *ctx)
> +{
> +       set_bit(UCONTEXT_PERSISTENCE, &ctx->user_flags);
> +}
> +
> +static inline void i915_gem_context_clear_persistence(struct
> i915_gem_context *ctx)
> +{
> +       clear_bit(UCONTEXT_PERSISTENCE, &ctx->user_flags);
> +}
> +
>  static inline bool i915_gem_context_is_banned(const struct
> i915_gem_context *ctx)
>  {
>         return test_bit(CONTEXT_BANNED, &ctx->flags);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index fe97b8ba4fda..861d7d92fe9f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -137,6 +137,7 @@ struct i915_gem_context {
>  #define UCONTEXT_NO_ERROR_CAPTURE      1
>  #define UCONTEXT_BANNABLE              2
>  #define UCONTEXT_RECOVERABLE           3
> +#define UCONTEXT_PERSISTENCE           4
>
>         /**
>          * @flags: small set of booleans
> diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> index 74ddd682c9cd..29b8984f0e47 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> @@ -22,6 +22,8 @@ mock_context(struct drm_i915_private *i915,
>         INIT_LIST_HEAD(&ctx->link);
>         ctx->i915 =3D i915;
>
> +       i915_gem_context_set_persistence(ctx);
> +
>         mutex_init(&ctx->engines_mutex);
>         e =3D default_engines(ctx);
>         if (IS_ERR(e))
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 63d40cba97e0..b5fd5e4bd16e 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1572,6 +1572,21 @@ struct drm_i915_gem_context_param {
>   *   i915_context_engines_bond (I915_CONTEXT_ENGINES_EXT_BOND)
>   */
>  #define I915_CONTEXT_PARAM_ENGINES     0xa
> +
> +/*
> + * I915_CONTEXT_PARAM_PERSISTENCE:
> + *
> + * Allow the context and active rendering to survive the process until
> + * completion. Persistence allows fire-and-forget clients to queue up a
> + * bunch of work, hand the output over to a display server and the quit.
> + * If the context is not marked as persistent, upon closing (either via
> + * an explicit DRM_I915_GEM_CONTEXT_DESTROY or implicitly from file
> closure
> + * or process termination), the context and any outstanding requests wil=
l
> be
> + * cancelled (and exported fences for cancelled requests marked as -EIO)=
.
> + *
> + * By default, new contexts allow persistence.
> + */
> +#define I915_CONTEXT_PARAM_PERSISTENCE 0xb
>  /* Must be kept compact -- no holes and well documented */
>
>         __u64 value;
> --
> 2.24.0.rc0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--000000000000c6a1ab0595c03af1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Oct 24, 2019 at 6:40 AM Chris Wilson &lt;<a href=3D"mailto:c=
hris@chris-wilson.co.uk">chris@chris-wilson.co.uk</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Our existing behaviour is =
to allow contexts and their GPU requests to<br>
persist past the point of closure until the requests are complete. This<br>
allows clients to operate in a &#39;fire-and-forget&#39; manner where they =
can<br>
setup a rendering pipeline and hand it over to the display server and<br>
immediately exiting. As the rendering pipeline is kept alive until<br>
completion, the display server (or other consumer) can use the results<br>
in the future and present them to the user.<br>
<br>
However, not all clients want this persistent behaviour and would prefer<br=
>
that the contexts are cleaned up immediately upon closure. This ensures<br>
that when clients are run without hangchecking, any GPU hang is<br>
terminated with the process and does not continue to hog resources.<br>
<br>
By defining a context property to allow clients to control persistence<br>
explicitly, we can remove the blanket advice to disable hangchecking<br>
that seems to be far too prevalent.<br></blockquote><div><br></div><div>Jus=
t to be clear, when you say &quot;disable hangchecking&quot; do you mean di=
sabling it for all processes via a kernel parameter at boot time or a sysfs=
 entry or similar?=C2=A0 Or is there some mechanism whereby a context can r=
equest no hang checking?<br></div><div>=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
The default behaviour for new controls is the legacy persistence mode.<br>
New clients will have to opt out for immediate cleanup on context<br>
closure. If the hangchecking modparam is disabled, so is persistent<br>
context support -- all contexts will be terminated on closure.<br></blockqu=
ote><div><br></div><div>What happens to fences when the context is cancelle=
d?=C2=A0 Is it the same behavior as we have today for when a GPU hang is de=
tected and a context is banned?</div><div><br></div><div>--Jason</div><div>=
<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
Testcase: igt/gem_ctx_persistence<br>
Signed-off-by: Chris Wilson &lt;<a href=3D"mailto:chris@chris-wilson.co.uk"=
 target=3D"_blank">chris@chris-wilson.co.uk</a>&gt;<br>
Cc: Joonas Lahtinen &lt;<a href=3D"mailto:joonas.lahtinen@linux.intel.com" =
target=3D"_blank">joonas.lahtinen@linux.intel.com</a>&gt;<br>
Cc: Micha=C5=82 Winiarski &lt;<a href=3D"mailto:michal.winiarski@intel.com"=
 target=3D"_blank">michal.winiarski@intel.com</a>&gt;<br>
Cc: Jon Bloomfield &lt;<a href=3D"mailto:jon.bloomfield@intel.com" target=
=3D"_blank">jon.bloomfield@intel.com</a>&gt;<br>
Reviewed-by: Jon Bloomfield &lt;<a href=3D"mailto:jon.bloomfield@intel.com"=
 target=3D"_blank">jon.bloomfield@intel.com</a>&gt;<br>
Reviewed-by: Tvrtko Ursulin &lt;<a href=3D"mailto:tvrtko.ursulin@intel.com"=
 target=3D"_blank">tvrtko.ursulin@intel.com</a>&gt;<br>
---<br>
=C2=A0drivers/gpu/drm/i915/gem/i915_gem_context.c=C2=A0 =C2=A0| 50 ++++++++=
++++++++++-<br>
=C2=A0drivers/gpu/drm/i915/gem/i915_gem_context.h=C2=A0 =C2=A0| 15 ++++++<b=
r>
=C2=A0.../gpu/drm/i915/gem/i915_gem_context_types.h |=C2=A0 1 +<br>
=C2=A0.../gpu/drm/i915/gem/selftests/mock_context.c |=C2=A0 2 +<br>
=C2=A0include/uapi/drm/i915_drm.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++++++<br>
=C2=A05 files changed, 82 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/=
i915/gem/i915_gem_context.c<br>
index 55f1f93c0925..0f1bbf5d1a11 100644<br>
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c<br>
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c<br>
@@ -437,12 +437,39 @@ static void context_close(struct i915_gem_context *ct=
x)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* case we opt to forcibly kill off all re=
maining requests on<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* context close.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!i915_modparams.enable_hangcheck)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!i915_gem_context_is_persistent(ctx) ||<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0!i915_modparams.enable_hangcheck)=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kill_context(ctx);<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 i915_gem_context_put(ctx);<br>
=C2=A0}<br>
<br>
+static int __context_set_persistence(struct i915_gem_context *ctx, bool st=
ate)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (i915_gem_context_is_persistent(ctx) =3D=3D =
state)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (state) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * Only contexts th=
at are short-lived [that will expire or be<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * reset] are allow=
ed to survive past termination. We require<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * hangcheck to ens=
ure that the persistent requests are healthy.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!i915_modparams=
.enable_hangcheck)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return -EINVAL;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i915_gem_context_se=
t_persistence(ctx);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* To cancel a cont=
ext we use &quot;preempt-to-idle&quot; */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(ctx-&gt;i915-=
&gt;caps.scheduler &amp; I915_SCHEDULER_CAP_PREEMPTION))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return -ENODEV;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i915_gem_context_cl=
ear_persistence(ctx);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+}<br>
+<br>
=C2=A0static struct i915_gem_context *<br>
=C2=A0__create_context(struct drm_i915_private *i915)<br>
=C2=A0{<br>
@@ -477,6 +504,7 @@ __create_context(struct drm_i915_private *i915)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 i915_gem_context_set_bannable(ctx);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 i915_gem_context_set_recoverable(ctx);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0__context_set_persistence(ctx, true /* cgroup h=
ook? */);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; ARRAY_SIZE(ctx-&gt;hang_ti=
mestamp); i++)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ctx-&gt;hang_timest=
amp[i] =3D jiffies - CONTEXT_FAST_HANG_JIFFIES;<br>
@@ -633,6 +661,7 @@ i915_gem_context_create_kernel(struct drm_i915_private =
*i915, int prio)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return ctx;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 i915_gem_context_clear_bannable(ctx);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0i915_gem_context_set_persistence(ctx);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ctx-&gt;sched.priority =3D I915_USER_PRIORITY(p=
rio);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 GEM_BUG_ON(!i915_gem_context_is_kernel(ctx));<b=
r>
@@ -1743,6 +1772,16 @@ get_engines(struct i915_gem_context *ctx,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return err;<br>
=C2=A0}<br>
<br>
+static int<br>
+set_persistence(struct i915_gem_context *ctx,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const struct drm_i9=
15_gem_context_param *args)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (args-&gt;size)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return __context_set_persistence(ctx, args-&gt;=
value);<br>
+}<br>
+<br>
=C2=A0static int ctx_setparam(struct drm_i915_file_private *fpriv,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 struct i915_gem_context *ctx,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 struct drm_i915_gem_context_param *args)<br>
@@ -1820,6 +1859,10 @@ static int ctx_setparam(struct drm_i915_file_private=
 *fpriv,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D set_engines=
(ctx, args);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0case I915_CONTEXT_PARAM_PERSISTENCE:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D set_persist=
ence(ctx, args);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case I915_CONTEXT_PARAM_BAN_PERIOD:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D -EINVAL;<br=
>
@@ -2272,6 +2315,11 @@ int i915_gem_context_getparam_ioctl(struct drm_devic=
e *dev, void *data,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D get_engines=
(ctx, args);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0case I915_CONTEXT_PARAM_PERSISTENCE:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0args-&gt;size =3D 0=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0args-&gt;value =3D =
i915_gem_context_is_persistent(ctx);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case I915_CONTEXT_PARAM_BAN_PERIOD:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D -EINVAL;<br=
>
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/=
i915/gem/i915_gem_context.h<br>
index cfe80590f0ed..18e50a769a6e 100644<br>
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h<br>
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h<br>
@@ -76,6 +76,21 @@ static inline void i915_gem_context_clear_recoverable(st=
ruct i915_gem_context *c<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 clear_bit(UCONTEXT_RECOVERABLE, &amp;ctx-&gt;us=
er_flags);<br>
=C2=A0}<br>
<br>
+static inline bool i915_gem_context_is_persistent(const struct i915_gem_co=
ntext *ctx)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return test_bit(UCONTEXT_PERSISTENCE, &amp;ctx-=
&gt;user_flags);<br>
+}<br>
+<br>
+static inline void i915_gem_context_set_persistence(struct i915_gem_contex=
t *ctx)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0set_bit(UCONTEXT_PERSISTENCE, &amp;ctx-&gt;user=
_flags);<br>
+}<br>
+<br>
+static inline void i915_gem_context_clear_persistence(struct i915_gem_cont=
ext *ctx)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0clear_bit(UCONTEXT_PERSISTENCE, &amp;ctx-&gt;us=
er_flags);<br>
+}<br>
+<br>
=C2=A0static inline bool i915_gem_context_is_banned(const struct i915_gem_c=
ontext *ctx)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return test_bit(CONTEXT_BANNED, &amp;ctx-&gt;fl=
ags);<br>
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gp=
u/drm/i915/gem/i915_gem_context_types.h<br>
index fe97b8ba4fda..861d7d92fe9f 100644<br>
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h<br>
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h<br>
@@ -137,6 +137,7 @@ struct i915_gem_context {<br>
=C2=A0#define UCONTEXT_NO_ERROR_CAPTURE=C2=A0 =C2=A0 =C2=A0 1<br>
=C2=A0#define UCONTEXT_BANNABLE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 2<br>
=C2=A0#define UCONTEXT_RECOVERABLE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
3<br>
+#define UCONTEXT_PERSISTENCE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /**<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* @flags: small set of booleans<br>
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gp=
u/drm/i915/gem/selftests/mock_context.c<br>
index 74ddd682c9cd..29b8984f0e47 100644<br>
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c<br>
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c<br>
@@ -22,6 +22,8 @@ mock_context(struct drm_i915_private *i915,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 INIT_LIST_HEAD(&amp;ctx-&gt;link);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ctx-&gt;i915 =3D i915;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0i915_gem_context_set_persistence(ctx);<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_init(&amp;ctx-&gt;engines_mutex);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 e =3D default_engines(ctx);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (IS_ERR(e))<br>
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h<br>
index 63d40cba97e0..b5fd5e4bd16e 100644<br>
--- a/include/uapi/drm/i915_drm.h<br>
+++ b/include/uapi/drm/i915_drm.h<br>
@@ -1572,6 +1572,21 @@ struct drm_i915_gem_context_param {<br>
=C2=A0 *=C2=A0 =C2=A0i915_context_engines_bond (I915_CONTEXT_ENGINES_EXT_BO=
ND)<br>
=C2=A0 */<br>
=C2=A0#define I915_CONTEXT_PARAM_ENGINES=C2=A0 =C2=A0 =C2=A00xa<br>
+<br>
+/*<br>
+ * I915_CONTEXT_PARAM_PERSISTENCE:<br>
+ *<br>
+ * Allow the context and active rendering to survive the process until<br>
+ * completion. Persistence allows fire-and-forget clients to queue up a<br=
>
+ * bunch of work, hand the output over to a display server and the quit.<b=
r>
+ * If the context is not marked as persistent, upon closing (either via<br=
>
+ * an explicit DRM_I915_GEM_CONTEXT_DESTROY or implicitly from file closur=
e<br>
+ * or process termination), the context and any outstanding requests will =
be<br>
+ * cancelled (and exported fences for cancelled requests marked as -EIO).<=
br>
+ *<br>
+ * By default, new contexts allow persistence.<br>
+ */<br>
+#define I915_CONTEXT_PARAM_PERSISTENCE 0xb<br>
=C2=A0/* Must be kept compact -- no holes and well documented */<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 __u64 value;<br>
-- <br>
2.24.0.rc0<br>
<br>
_______________________________________________<br>
Intel-gfx mailing list<br>
<a href=3D"mailto:Intel-gfx@lists.freedesktop.org" target=3D"_blank">Intel-=
gfx@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/intel-gfx" rel=3D=
"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/listin=
fo/intel-gfx</a></blockquote></div></div>

--000000000000c6a1ab0595c03af1--

--===============1263752121==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1263752121==--
