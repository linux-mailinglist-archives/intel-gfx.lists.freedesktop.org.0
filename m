Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 643F8980E9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 19:02:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31BF66E364;
	Wed, 21 Aug 2019 17:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7046E34E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 17:02:05 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id p28so3784573edi.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 10:02:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yJiZv6op2oimEloRYZgnT5OfsyStKheAG2xhQWCmpc4=;
 b=TI7n0+MMdqb6dLcB5Kez/2w+azo7jEppBqKyUMwju98vkDRNoiqPRU8VxqVLNQEVY5
 /3QFIrmvS+SxbQeXWmWD1DmQMFvet8iGEjNpRCbDivBt/V3Bf/IwYHxS8xsxY1lhctil
 zUulXZU3Hil6cwz5OwSYQ0fDF7iEWfH/YCRDbQ7Vy/njFbacPPtJVjLgIYuRcokw2KZR
 oDCno90t2oQpK2CWrC/TbMh6z7Qm6N1WCHzQky8gQwwpD0YFKcWEW3ffqKvp4Qqy0TOA
 HBPDv5jim0w73CEKFoC3UjmfcLBqsSFroM8d19O8mM4Q/DQx2BMIXDeCbfdfhJ7x+Rhn
 rZ+A==
X-Gm-Message-State: APjAAAU2WbE2kUbdQpMMndZ43iXOi99ftxGmEc0BiUH5PeRFz7nGuKer
 bH5jC87rePf7CcVXFiBtDLgOQcLqit4M/l81ZW4Y8Q==
X-Google-Smtp-Source: APXvYqxAEiBYSH87AbjxIwhIdfH4C/Rs4Hdy2tcAInl2r5w9Sn6iaIT3/7vYZFOeTQ9pplH4s3XcajbSAMnHqKelT7U=
X-Received: by 2002:a50:b3cb:: with SMTP id t11mr37561223edd.203.1566406924151; 
 Wed, 21 Aug 2019 10:02:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190821131233.16885-1-lionel.g.landwerlin@intel.com>
 <20190821131233.16885-3-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190821131233.16885-3-lionel.g.landwerlin@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 21 Aug 2019 12:01:52 -0500
Message-ID: <CAOFGe94PUAjk_OBMS3B96RHuA+Lmd1t30yrwRNg8xGXjBzx4MQ@mail.gmail.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=yJiZv6op2oimEloRYZgnT5OfsyStKheAG2xhQWCmpc4=;
 b=w+kOXA8PHY6Ms2/nU7Vdyk0Kn2jczpSfUawGdxDDJtq24uMpCMMK713D6Jsck8I7Kj
 Vh1bpRzO9k0KofE39wG3Y0yllFnsjnpd8KoLvok4ZIWKlJSoqSCYGdGvZml0n1gclcW/
 pDT4o+0RsJKaRM9KZpg57ofWNAVnrWab/SLcg369VTa7LJUrWv4RfKIRwFArDd47BuL/
 7HNQ58F/40AU+taZdaXys3LxWkUm/w/fv4ssMPz8wpyy6OTKotVBPpgxLJasTqiZdBis
 YNTVe3Ri1TNfo2+fS3uq0tznVN17aXSLqvqXu0wVzYeXYrHsnY2qtsQrL9jUyqWhxtLR
 VdaQ==
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: add syncobj timeline
 support
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
Content-Type: multipart/mixed; boundary="===============0449567166=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0449567166==
Content-Type: multipart/alternative; boundary="00000000000049bead0590a388ed"

--00000000000049bead0590a388ed
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 21, 2019 at 8:12 AM Lionel Landwerlin <
lionel.g.landwerlin@intel.com> wrote:

> Introduces a new parameters to execbuf so that we can specify syncobj
> handles as well as timeline points.
>
> v2: Reuse i915_user_extension_fn
>
> v3: Check that the chained extension is only present once (Chris)
>
> v4: Check that dma_fence_chain_find_seqno returns a non NULL fence (Lionel)
>
> v5: Use BIT_ULL (Chris)
>
> v6: Fix issue with already signaled timeline points,
>     dma_fence_chain_find_seqno() setting fence to NULL (Chris)
>
> v7: Report ENOENT with invalid syncobj handle (Lionel)
>
> v8: Check for out of order timeline point insertion (Chris)
>
> v9: After explanations on
>
> https://lists.freedesktop.org/archives/dri-devel/2019-August/229287.html
>     drop the ordering check from v8 (Lionel)
>
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 307 ++++++++++++++----
>  drivers/gpu/drm/i915/i915_drv.c               |   3 +-
>  drivers/gpu/drm/i915/i915_getparam.c          |   1 +
>  include/uapi/drm/i915_drm.h                   |  39 +++
>  4 files changed, 293 insertions(+), 57 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 8d1946556bc0..6d5a234f9f9b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -214,6 +214,13 @@ enum {
>   * the batchbuffer in trusted mode, otherwise the ioctl is rejected.
>   */
>
> +struct i915_eb_fences {
> +       struct drm_syncobj *syncobj; /* Use with ptr_mask_bits() */
> +       struct dma_fence *dma_fence;
> +       u64 value;
> +       struct dma_fence_chain *chain_fence;
> +};
> +
>  struct i915_execbuffer {
>         struct drm_i915_private *i915; /** i915 backpointer */
>         struct drm_file *file; /** per-file lookup tables and limits */
> @@ -275,6 +282,7 @@ struct i915_execbuffer {
>
>         struct {
>                 u64 flags; /** Available extensions parameters */
> +               struct drm_i915_gem_execbuffer_ext_timeline_fences
> timeline_fences;
>         } extensions;
>  };
>
> @@ -2295,67 +2303,217 @@ eb_pin_engine(struct i915_execbuffer *eb,
>  }
>
>  static void
> -__free_fence_array(struct drm_syncobj **fences, unsigned int n)
> +__free_fence_array(struct i915_eb_fences *fences, unsigned int n)
>  {
> -       while (n--)
> -               drm_syncobj_put(ptr_mask_bits(fences[n], 2));
> +       while (n--) {
> +               drm_syncobj_put(ptr_mask_bits(fences[n].syncobj, 2));
> +               dma_fence_put(fences[n].dma_fence);
> +               kfree(fences[n].chain_fence);
> +       }
>         kvfree(fences);
>  }
>
> -static struct drm_syncobj **
> -get_fence_array(struct drm_i915_gem_execbuffer2 *args,
> -               struct drm_file *file)
> +static struct i915_eb_fences *
> +get_timeline_fence_array(struct i915_execbuffer *eb, int *out_n_fences)
>  {
> -       const unsigned long nfences = args->num_cliprects;
> +       struct drm_i915_gem_execbuffer_ext_timeline_fences
> *timeline_fences =
> +               &eb->extensions.timeline_fences;
> +       struct drm_i915_gem_exec_fence __user *user_fences;
> +       struct i915_eb_fences *fences;
> +       u64 __user *user_values;
> +       u64 num_fences, num_user_fences = timeline_fences->fence_count;
> +       unsigned long n;
> +       int err;
> +
> +       /* Check multiplication overflow for access_ok() and
> kvmalloc_array() */
> +       BUILD_BUG_ON(sizeof(size_t) > sizeof(unsigned long));
> +       if (num_user_fences > min_t(unsigned long,
> +                                   ULONG_MAX / sizeof(*user_fences),
> +                                   SIZE_MAX / sizeof(*fences)))
> +               return ERR_PTR(-EINVAL);
> +
> +       user_fences = u64_to_user_ptr(timeline_fences->handles_ptr);
> +       if (!access_ok(user_fences, num_user_fences *
> sizeof(*user_fences)))
> +               return ERR_PTR(-EFAULT);
> +
> +       user_values = u64_to_user_ptr(timeline_fences->values_ptr);
> +       if (!access_ok(user_values, num_user_fences *
> sizeof(*user_values)))
> +               return ERR_PTR(-EFAULT);
> +
> +       fences = kvmalloc_array(num_user_fences, sizeof(*fences),
> +                               __GFP_NOWARN | GFP_KERNEL);
> +       if (!fences)
> +               return ERR_PTR(-ENOMEM);
> +
> +       BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
> +                    ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
> +
> +       for (n = 0, num_fences = 0; n < timeline_fences->fence_count; n++)
> {
> +               struct drm_i915_gem_exec_fence user_fence;
> +               struct drm_syncobj *syncobj;
> +               struct dma_fence *fence = NULL;
> +               u64 point;
> +
> +               if (__copy_from_user(&user_fence, user_fences++,
> sizeof(user_fence))) {
> +                       err = -EFAULT;
> +                       goto err;
> +               }
> +
> +               if (user_fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS) {
> +                       err = -EINVAL;
> +                       goto err;
> +               }
> +
> +               if (__get_user(point, user_values++)) {
> +                       err = -EFAULT;
> +                       goto err;
> +               }
> +
> +               syncobj = drm_syncobj_find(eb->file, user_fence.handle);
> +               if (!syncobj) {
> +                       DRM_DEBUG("Invalid syncobj handle provided\n");
> +                       err = -ENOENT;
> +                       goto err;
> +               }
> +
> +               if (user_fence.flags & I915_EXEC_FENCE_WAIT) {
> +                       fence = drm_syncobj_fence_get(syncobj);
> +                       if (!fence) {
> +                               DRM_DEBUG("Syncobj handle has no fence\n");
> +                               drm_syncobj_put(syncobj);
> +                               err = -EINVAL;
> +                               goto err;
> +                       }
> +
> +                       err = dma_fence_chain_find_seqno(&fence, point);
> +                       if (err) {
> +                               DRM_DEBUG("Syncobj handle missing
> requested point %llu\n", point);
> +                               drm_syncobj_put(syncobj);
> +                               goto err;
> +                       }
> +
> +                       /* A point might have been signaled already and
> +                        * garbage collected from the timeline. In this
> case
> +                        * just ignore the point and carry on.
> +                        */
> +                       if (!fence) {
> +                               drm_syncobj_put(syncobj);
> +                               continue;
> +                       }
> +               }
> +
> +               /*
> +                * For timeline syncobjs we need to preallocate chains for
> +                * later signaling.
> +                */
> +               if (point != 0 && user_fence.flags &
> I915_EXEC_FENCE_SIGNAL) {
> +                       /*
> +                        * Waiting and signaling the same point (when
> point !=
> +                        * 0) would break the timeline.
> +                        */
> +                       if (user_fence.flags & I915_EXEC_FENCE_WAIT) {
> +                               DRM_DEBUG("Tring to wait & signal the same
> timeline point.\n");
> +                               err = -EINVAL;
> +                               drm_syncobj_put(syncobj);
> +                               goto err;
> +                       }
> +
> +                       fences[num_fences].chain_fence =
> +
>  kmalloc(sizeof(*fences[num_fences].chain_fence),
> +                                       GFP_KERNEL);
> +                       if (!fences[num_fences].chain_fence) {
> +                               drm_syncobj_put(syncobj);
> +                               err = -ENOMEM;
> +                               DRM_DEBUG("Unable to alloc chain_fence\n");
> +                               goto err;
> +                       }
> +               } else {
> +                       fences[num_fences].chain_fence = NULL;
> +               }
> +
> +               fences[num_fences].syncobj = ptr_pack_bits(syncobj,
> user_fence.flags, 2);
> +               fences[num_fences].dma_fence = fence;
> +               fences[num_fences].value = point;
> +               num_fences++;
> +       }
> +
> +       *out_n_fences = num_fences;
> +
> +       return fences;
> +
> +err:
> +       __free_fence_array(fences, num_fences);
> +       return ERR_PTR(err);
> +}
> +
> +static struct i915_eb_fences *
> +get_legacy_fence_array(struct i915_execbuffer *eb,
> +                      int *out_n_fences)
> +{
> +       struct drm_i915_gem_execbuffer2 *args = eb->args;
>         struct drm_i915_gem_exec_fence __user *user;
> -       struct drm_syncobj **fences;
> +       struct i915_eb_fences *fences;
> +       const u32 num_fences = args->num_cliprects;
>         unsigned long n;
>         int err;
>
> -       if (!(args->flags & I915_EXEC_FENCE_ARRAY))
> -               return NULL;
> +       *out_n_fences = num_fences;
>
>         /* Check multiplication overflow for access_ok() and
> kvmalloc_array() */
>         BUILD_BUG_ON(sizeof(size_t) > sizeof(unsigned long));
> -       if (nfences > min_t(unsigned long,
> -                           ULONG_MAX / sizeof(*user),
> -                           SIZE_MAX / sizeof(*fences)))
> +       if (*out_n_fences > min_t(unsigned long,
> +                                 ULONG_MAX / sizeof(*user),
> +                                 SIZE_MAX / sizeof(*fences)))
>                 return ERR_PTR(-EINVAL);
>
>         user = u64_to_user_ptr(args->cliprects_ptr);
> -       if (!access_ok(user, nfences * sizeof(*user)))
> +       if (!access_ok(user, *out_n_fences * sizeof(*user)))
>                 return ERR_PTR(-EFAULT);
>
> -       fences = kvmalloc_array(nfences, sizeof(*fences),
> +       fences = kvmalloc_array(*out_n_fences, sizeof(*fences),
>                                 __GFP_NOWARN | GFP_KERNEL);
>         if (!fences)
>                 return ERR_PTR(-ENOMEM);
>
> -       for (n = 0; n < nfences; n++) {
> -               struct drm_i915_gem_exec_fence fence;
> +       for (n = 0; n < *out_n_fences; n++) {
> +               struct drm_i915_gem_exec_fence user_fence;
>                 struct drm_syncobj *syncobj;
> +               struct dma_fence *fence = NULL;
>
> -               if (__copy_from_user(&fence, user++, sizeof(fence))) {
> +               if (__copy_from_user(&user_fence, user++,
> sizeof(user_fence))) {
>                         err = -EFAULT;
>                         goto err;
>                 }
>
> -               if (fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS) {
> +               if (user_fence.flags & __I915_EXEC_FENCE_UNKNOWN_FLAGS) {
>                         err = -EINVAL;
>                         goto err;
>                 }
>
> -               syncobj = drm_syncobj_find(file, fence.handle);
> +               syncobj = drm_syncobj_find(eb->file, user_fence.handle);
>                 if (!syncobj) {
>                         DRM_DEBUG("Invalid syncobj handle provided\n");
>                         err = -ENOENT;
>                         goto err;
>                 }
>
> +               if (user_fence.flags & I915_EXEC_FENCE_WAIT) {
> +                       fence = drm_syncobj_fence_get(syncobj);
> +                       if (!fence) {
> +                               DRM_DEBUG("Syncobj handle has no fence\n");
> +                               drm_syncobj_put(syncobj);
> +                               err = -EINVAL;
> +                               goto err;
> +                       }
> +               }
> +
>                 BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
>                              ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
>
> -               fences[n] = ptr_pack_bits(syncobj, fence.flags, 2);
> +               fences[n].syncobj = ptr_pack_bits(syncobj,
> user_fence.flags, 2);
> +               fences[n].dma_fence = fence;
> +               fences[n].value = 0;
> +               fences[n].chain_fence = NULL;
>         }
>
>         return fences;
> @@ -2365,37 +2523,44 @@ get_fence_array(struct drm_i915_gem_execbuffer2
> *args,
>         return ERR_PTR(err);
>  }
>
> +static struct i915_eb_fences *
> +get_fence_array(struct i915_execbuffer *eb, int *out_n_fences)
> +{
> +       if (eb->args->flags & I915_EXEC_FENCE_ARRAY)
> +               return get_legacy_fence_array(eb, out_n_fences);
> +
> +       if (eb->extensions.flags &
> BIT_ULL(DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES))
> +               return get_timeline_fence_array(eb, out_n_fences);
> +
> +       *out_n_fences = 0;
> +       return NULL;
> +}
> +
>  static void
> -put_fence_array(struct drm_i915_gem_execbuffer2 *args,
> -               struct drm_syncobj **fences)
> +put_fence_array(struct i915_eb_fences *fences, int nfences)
>  {
>         if (fences)
> -               __free_fence_array(fences, args->num_cliprects);
> +               __free_fence_array(fences, nfences);
>  }
>
>  static int
>  await_fence_array(struct i915_execbuffer *eb,
> -                 struct drm_syncobj **fences)
> +                 struct i915_eb_fences *fences,
> +                 int nfences)
>  {
> -       const unsigned int nfences = eb->args->num_cliprects;
>         unsigned int n;
>         int err;
>
>         for (n = 0; n < nfences; n++) {
>                 struct drm_syncobj *syncobj;
> -               struct dma_fence *fence;
>                 unsigned int flags;
>
> -               syncobj = ptr_unpack_bits(fences[n], &flags, 2);
> +               syncobj = ptr_unpack_bits(fences[n].syncobj, &flags, 2);
>                 if (!(flags & I915_EXEC_FENCE_WAIT))
>                         continue;
>
> -               fence = drm_syncobj_fence_get(syncobj);
> -               if (!fence)
> -                       return -EINVAL;
> -
> -               err = i915_request_await_dma_fence(eb->request, fence);
> -               dma_fence_put(fence);
> +               err = i915_request_await_dma_fence(eb->request,
> +                                                  fences[n].dma_fence);
>                 if (err < 0)
>                         return err;
>         }
> @@ -2405,9 +2570,9 @@ await_fence_array(struct i915_execbuffer *eb,
>
>  static void
>  signal_fence_array(struct i915_execbuffer *eb,
> -                  struct drm_syncobj **fences)
> +                  struct i915_eb_fences *fences,
> +                  int nfences)
>  {
> -       const unsigned int nfences = eb->args->num_cliprects;
>         struct dma_fence * const fence = &eb->request->fence;
>         unsigned int n;
>
> @@ -2415,15 +2580,46 @@ signal_fence_array(struct i915_execbuffer *eb,
>                 struct drm_syncobj *syncobj;
>                 unsigned int flags;
>
> -               syncobj = ptr_unpack_bits(fences[n], &flags, 2);
> +               syncobj = ptr_unpack_bits(fences[n].syncobj, &flags, 2);
>                 if (!(flags & I915_EXEC_FENCE_SIGNAL))
>                         continue;
>
> -               drm_syncobj_replace_fence(syncobj, fence);
> +               if (fences[n].chain_fence) {
> +                       drm_syncobj_add_point(syncobj,
> fences[n].chain_fence,
> +                                             fence, fences[n].value);
> +                       /*
> +                        * The chain's ownership is transfered to the
> +                        * timeline.
> +                        */
> +                       fences[n].chain_fence = NULL;
> +               } else {
> +                       drm_syncobj_replace_fence(syncobj, fence);
> +               }
>         }
>  }
>
> +static int parse_timeline_fences(struct i915_user_extension __user *ext,
> void *data)
> +{
> +       struct i915_execbuffer *eb = data;
> +
> +       /* Timeline fences are incompatible with the fence array flag. */
> +       if (eb->args->flags & I915_EXEC_FENCE_ARRAY)
> +               return -EINVAL;
> +
> +       if (eb->extensions.flags &
> BIT_ULL(DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES))
> +               return -EINVAL;
> +
> +       if (copy_from_user(&eb->extensions.timeline_fences, ext,
> +                          sizeof(eb->extensions.timeline_fences)))
> +               return -EFAULT;
> +
> +       eb->extensions.flags |=
> BIT_ULL(DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES);
> +
> +       return 0;
> +}
> +
>  static const i915_user_extension_fn execbuf_extensions[] = {
> +        [DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES] =
> parse_timeline_fences,
>  };
>
>  static int
> @@ -2454,14 +2650,15 @@ static int
>  i915_gem_do_execbuffer(struct drm_device *dev,
>                        struct drm_file *file,
>                        struct drm_i915_gem_execbuffer2 *args,
> -                      struct drm_i915_gem_exec_object2 *exec,
> -                      struct drm_syncobj **fences)
> +                      struct drm_i915_gem_exec_object2 *exec)
>  {
>         struct i915_execbuffer eb;
>         struct dma_fence *in_fence = NULL;
>         struct dma_fence *exec_fence = NULL;
>         struct sync_file *out_fence = NULL;
> +       struct i915_eb_fences *fences = NULL;
>         int out_fence_fd = -1;
> +       int nfences = 0;
>         int err;
>
>         BUILD_BUG_ON(__EXEC_INTERNAL_FLAGS & ~__I915_EXEC_ILLEGAL_FLAGS);
> @@ -2500,10 +2697,16 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>         if (err)
>                 return err;
>
> +       fences = get_fence_array(&eb, &nfences);
> +       if (IS_ERR(fences))
> +               return PTR_ERR(fences);
> +
>         if (args->flags & I915_EXEC_FENCE_IN) {
>                 in_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
> -               if (!in_fence)
> -                       return -EINVAL;
> +               if (!in_fence) {
> +                       err = -EINVAL;
> +                       goto err_fences;
> +               }
>         }
>
>         if (args->flags & I915_EXEC_FENCE_SUBMIT) {
> @@ -2648,7 +2851,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>         }
>
>         if (fences) {
> -               err = await_fence_array(&eb, fences);
> +               err = await_fence_array(&eb, fences, nfences);
>                 if (err)
>                         goto err_request;
>         }
> @@ -2679,7 +2882,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>         i915_request_add(eb.request);
>
>         if (fences)
> -               signal_fence_array(&eb, fences);
> +               signal_fence_array(&eb, fences, nfences);
>
>         if (out_fence) {
>                 if (err == 0) {
> @@ -2714,6 +2917,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>         dma_fence_put(exec_fence);
>  err_in_fence:
>         dma_fence_put(in_fence);
> +err_fences:
> +       put_fence_array(fences, nfences);
>         return err;
>  }
>
> @@ -2807,7 +3012,7 @@ i915_gem_execbuffer_ioctl(struct drm_device *dev,
> void *data,
>                         exec2_list[i].flags = 0;
>         }
>
> -       err = i915_gem_do_execbuffer(dev, file, &exec2, exec2_list, NULL);
> +       err = i915_gem_do_execbuffer(dev, file, &exec2, exec2_list);
>         if (exec2.flags & __EXEC_HAS_RELOC) {
>                 struct drm_i915_gem_exec_object __user *user_exec_list =
>                         u64_to_user_ptr(args->buffers_ptr);
> @@ -2838,7 +3043,6 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev,
> void *data,
>  {
>         struct drm_i915_gem_execbuffer2 *args = data;
>         struct drm_i915_gem_exec_object2 *exec2_list;
> -       struct drm_syncobj **fences = NULL;
>         const size_t count = args->buffer_count;
>         int err;
>
> @@ -2866,15 +3070,7 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev,
> void *data,
>                 return -EFAULT;
>         }
>
> -       if (args->flags & I915_EXEC_FENCE_ARRAY) {
> -               fences = get_fence_array(args, file);
> -               if (IS_ERR(fences)) {
> -                       kvfree(exec2_list);
> -                       return PTR_ERR(fences);
> -               }
> -       }
> -
> -       err = i915_gem_do_execbuffer(dev, file, args, exec2_list, fences);
> +       err = i915_gem_do_execbuffer(dev, file, args, exec2_list);
>
>         /*
>          * Now that we have begun execution of the batchbuffer, we ignore
> @@ -2914,7 +3110,6 @@ end:;
>         }
>
>         args->flags &= ~__I915_EXEC_UNKNOWN_FLAGS;
> -       put_fence_array(args, fences);
>         kvfree(exec2_list);
>         return err;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.c
> b/drivers/gpu/drm/i915/i915_drv.c
> index b5b2a64753e6..4db24f06f323 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -2851,7 +2851,8 @@ static struct drm_driver driver = {
>          */
>         .driver_features =
>             DRIVER_GEM |
> -           DRIVER_RENDER | DRIVER_MODESET | DRIVER_ATOMIC |
> DRIVER_SYNCOBJ,
> +           DRIVER_RENDER | DRIVER_MODESET | DRIVER_ATOMIC |
> DRIVER_SYNCOBJ |
> +           DRIVER_SYNCOBJ_TIMELINE,
>         .release = i915_driver_release,
>         .open = i915_driver_open,
>         .lastclose = i915_driver_lastclose,
> diff --git a/drivers/gpu/drm/i915/i915_getparam.c
> b/drivers/gpu/drm/i915/i915_getparam.c
> index 5d9101376a3d..da6faa84e5b8 100644
> --- a/drivers/gpu/drm/i915/i915_getparam.c
> +++ b/drivers/gpu/drm/i915/i915_getparam.c
> @@ -130,6 +130,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void
> *data,
>         case I915_PARAM_HAS_EXEC_BATCH_FIRST:
>         case I915_PARAM_HAS_EXEC_FENCE_ARRAY:
>         case I915_PARAM_HAS_EXEC_SUBMIT_FENCE:
> +       case I915_PARAM_HAS_EXEC_TIMELINE_FENCES:
>                 /* For the time being all of these are always true;
>                  * if some supported hardware does not have one of these
>                  * features this value needs to be provided from
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 0a99c26730e1..e86691c18a56 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -611,6 +611,13 @@ typedef struct drm_i915_irq_wait {
>   * See I915_EXEC_FENCE_OUT and I915_EXEC_FENCE_SUBMIT.
>   */
>  #define I915_PARAM_HAS_EXEC_SUBMIT_FENCE 53
> +
> +/* Query whether DRM_I915_GEM_EXECBUFFER2 supports supplying an array of
> + * timeline syncobj through drm_i915_gem_execbuf_ext_timeline_fences. See
> + * I915_EXEC_USE_EXTENSIONS.
> + */
> +#define I915_PARAM_HAS_EXEC_TIMELINE_FENCES 54
> +
>  /* Must be kept compact -- no holes and well documented */
>
>  typedef struct drm_i915_getparam {
> @@ -1008,9 +1015,41 @@ struct drm_i915_gem_exec_fence {
>  };
>
>  enum drm_i915_gem_execbuffer_ext {
> +       /**
> +        * See drm_i915_gem_execbuf_ext_timeline_fences.
> +        */
> +       DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES = 0,
>

Just pointed out a "bug" in the userspace code where it memset the
drm_i915_gem_execbuffer_ext_timeline_fences struct to 0 and never set the
ext name.  It worked because TIMELINE_FENCES magically happens to be 0.  We
should make 0 reserved in the extension API and -EINVAL if we ever see it.


> +
>         DRM_I915_GEM_EXECBUFFER_EXT_MAX /* non-ABI */
>  };
>
> +/**
> + * This structure describes an array of drm_syncobj and associated points
> for
> + * timeline variants of drm_syncobj. It is invalid to append this
> structure to
> + * the execbuf if I915_EXEC_FENCE_ARRAY is set.
> + */
> +struct drm_i915_gem_execbuffer_ext_timeline_fences {
> +       struct i915_user_extension base;
> +
> +       /**
> +        * Number of element in the handles_ptr & value_ptr arrays.
> +        */
> +       __u64 fence_count;
> +
> +       /**
> +        * Pointer to an array of struct drm_i915_gem_exec_fence of length
> +        * fence_count.
> +        */
> +       __u64 handles_ptr;
> +
> +       /**
> +        * Pointer to an array of u64 values of length fence_count. Values
> +        * must be 0 for a binary drm_syncobj. A Value of 0 for a timeline
> +        * drm_syncobj is invalid as it turns a drm_syncobj into a binary
> one.
> +        */
> +       __u64 values_ptr;
> +};
> +
>  struct drm_i915_gem_execbuffer2 {
>         /**
>          * List of gem_exec_object2 structs
> --
> 2.23.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--00000000000049bead0590a388ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNs
YXNzPSJnbWFpbF9hdHRyIj48L2Rpdj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+
T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgODoxMiBBTSBMaW9uZWwgTGFuZHdlcmxpbiAmbHQ7PGEg
aHJlZj0ibWFpbHRvOmxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tIj5saW9uZWwuZy5sYW5k
d2VybGluQGludGVsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFz
cz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxl
ZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+SW50cm9kdWNl
cyBhIG5ldyBwYXJhbWV0ZXJzIHRvIGV4ZWNidWYgc28gdGhhdCB3ZSBjYW4gc3BlY2lmeSBzeW5j
b2JqPGJyPg0KaGFuZGxlcyBhcyB3ZWxsIGFzIHRpbWVsaW5lIHBvaW50cy48YnI+DQo8YnI+DQp2
MjogUmV1c2UgaTkxNV91c2VyX2V4dGVuc2lvbl9mbjxicj4NCjxicj4NCnYzOiBDaGVjayB0aGF0
IHRoZSBjaGFpbmVkIGV4dGVuc2lvbiBpcyBvbmx5IHByZXNlbnQgb25jZSAoQ2hyaXMpPGJyPg0K
PGJyPg0KdjQ6IENoZWNrIHRoYXQgZG1hX2ZlbmNlX2NoYWluX2ZpbmRfc2Vxbm8gcmV0dXJucyBh
IG5vbiBOVUxMIGZlbmNlIChMaW9uZWwpPGJyPg0KPGJyPg0KdjU6IFVzZSBCSVRfVUxMIChDaHJp
cyk8YnI+DQo8YnI+DQp2NjogRml4IGlzc3VlIHdpdGggYWxyZWFkeSBzaWduYWxlZCB0aW1lbGlu
ZSBwb2ludHMsPGJyPg0KwqAgwqAgZG1hX2ZlbmNlX2NoYWluX2ZpbmRfc2Vxbm8oKSBzZXR0aW5n
IGZlbmNlIHRvIE5VTEwgKENocmlzKTxicj4NCjxicj4NCnY3OiBSZXBvcnQgRU5PRU5UIHdpdGgg
aW52YWxpZCBzeW5jb2JqIGhhbmRsZSAoTGlvbmVsKTxicj4NCjxicj4NCnY4OiBDaGVjayBmb3Ig
b3V0IG9mIG9yZGVyIHRpbWVsaW5lIHBvaW50IGluc2VydGlvbiAoQ2hyaXMpPGJyPg0KPGJyPg0K
djk6IEFmdGVyIGV4cGxhbmF0aW9ucyBvbjxicj4NCsKgIMKgIDxhIGhyZWY9Imh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8yMDE5LUF1Z3VzdC8yMjkyODcu
aHRtbCIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMTktQXVndXN0LzIyOTI4Ny5odG1sPC9h
Pjxicj4NCsKgIMKgIGRyb3AgdGhlIG9yZGVyaW5nIGNoZWNrIGZyb20gdjggKExpb25lbCk8YnI+
DQo8YnI+DQpTaWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiAmbHQ7PGEgaHJlZj0ibWFp
bHRvOmxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bGlvbmVs
LmcubGFuZHdlcmxpbkBpbnRlbC5jb208L2E+Jmd0Ozxicj4NCi0tLTxicj4NCsKgLi4uL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jwqAgwqAgfCAzMDcgKysrKysrKysrKysr
KystLS0tPGJyPg0KwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqB8wqAgwqAzICstPGJyPg0KwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
dHBhcmFtLmPCoCDCoCDCoCDCoCDCoCB8wqAgwqAxICs8YnI+DQrCoGluY2x1ZGUvdWFwaS9kcm0v
aTkxNV9kcm0uaMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfMKgIDM5ICsrKzxicj4NCsKg
NCBmaWxlcyBjaGFuZ2VkLCAyOTMgaW5zZXJ0aW9ucygrKSwgNTcgZGVsZXRpb25zKC0pPGJyPg0K
PGJyPg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVj
YnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5j
PGJyPg0KaW5kZXggOGQxOTQ2NTU2YmMwLi42ZDVhMjM0ZjlmOWIgMTAwNjQ0PGJyPg0KLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYzxicj4NCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmM8YnI+DQpAQCAt
MjE0LDYgKzIxNCwxMyBAQCBlbnVtIHs8YnI+DQrCoCAqIHRoZSBiYXRjaGJ1ZmZlciBpbiB0cnVz
dGVkIG1vZGUsIG90aGVyd2lzZSB0aGUgaW9jdGwgaXMgcmVqZWN0ZWQuPGJyPg0KwqAgKi88YnI+
DQo8YnI+DQorc3RydWN0IGk5MTVfZWJfZmVuY2VzIHs8YnI+DQorwqAgwqAgwqAgwqBzdHJ1Y3Qg
ZHJtX3N5bmNvYmogKnN5bmNvYmo7IC8qIFVzZSB3aXRoIHB0cl9tYXNrX2JpdHMoKSAqLzxicj4N
CivCoCDCoCDCoCDCoHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZTs8YnI+DQorwqAgwqAgwqAg
wqB1NjQgdmFsdWU7PGJyPg0KK8KgIMKgIMKgIMKgc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hh
aW5fZmVuY2U7PGJyPg0KK307PGJyPg0KKzxicj4NCsKgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciB7
PGJyPg0KwqAgwqAgwqAgwqAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7IC8qKiBpOTE1
IGJhY2twb2ludGVyICovPGJyPg0KwqAgwqAgwqAgwqAgc3RydWN0IGRybV9maWxlICpmaWxlOyAv
KiogcGVyLWZpbGUgbG9va3VwIHRhYmxlcyBhbmQgbGltaXRzICovPGJyPg0KQEAgLTI3NSw2ICsy
ODIsNyBAQCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyIHs8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCBz
dHJ1Y3Qgezxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHU2NCBmbGFnczsgLyoqIEF2YWls
YWJsZSBleHRlbnNpb25zIHBhcmFtZXRlcnMgKi88YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXJfZXh0X3RpbWVsaW5lX2ZlbmNlcyB0aW1l
bGluZV9mZW5jZXM7PGJyPg0KwqAgwqAgwqAgwqAgfSBleHRlbnNpb25zOzxicj4NCsKgfTs8YnI+
DQo8YnI+DQpAQCAtMjI5NSw2NyArMjMwMywyMTcgQEAgZWJfcGluX2VuZ2luZShzdHJ1Y3QgaTkx
NV9leGVjYnVmZmVyICplYiw8YnI+DQrCoH08YnI+DQo8YnI+DQrCoHN0YXRpYyB2b2lkPGJyPg0K
LV9fZnJlZV9mZW5jZV9hcnJheShzdHJ1Y3QgZHJtX3N5bmNvYmogKipmZW5jZXMsIHVuc2lnbmVk
IGludCBuKTxicj4NCitfX2ZyZWVfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZWJfZmVuY2VzICpm
ZW5jZXMsIHVuc2lnbmVkIGludCBuKTxicj4NCsKgezxicj4NCi3CoCDCoCDCoCDCoHdoaWxlIChu
LS0pPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZHJtX3N5bmNvYmpfcHV0KHB0cl9tYXNr
X2JpdHMoZmVuY2VzW25dLCAyKSk7PGJyPg0KK8KgIMKgIMKgIMKgd2hpbGUgKG4tLSkgezxicj4N
CivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGRybV9zeW5jb2JqX3B1dChwdHJfbWFza19iaXRzKGZl
bmNlc1tuXS5zeW5jb2JqLCAyKSk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZG1hX2Zl
bmNlX3B1dChmZW5jZXNbbl0uZG1hX2ZlbmNlKTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBrZnJlZShmZW5jZXNbbl0uY2hhaW5fZmVuY2UpOzxicj4NCivCoCDCoCDCoCDCoH08YnI+DQrC
oCDCoCDCoCDCoCBrdmZyZWUoZmVuY2VzKTs8YnI+DQrCoH08YnI+DQo8YnI+DQotc3RhdGljIHN0
cnVjdCBkcm1fc3luY29iaiAqKjxicj4NCi1nZXRfZmVuY2VfYXJyYXkoc3RydWN0IGRybV9pOTE1
X2dlbV9leGVjYnVmZmVyMiAqYXJncyw8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzdHJ1
Y3QgZHJtX2ZpbGUgKmZpbGUpPGJyPg0KK3N0YXRpYyBzdHJ1Y3QgaTkxNV9lYl9mZW5jZXMgKjxi
cj4NCitnZXRfdGltZWxpbmVfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIs
IGludCAqb3V0X25fZmVuY2VzKTxicj4NCsKgezxicj4NCi3CoCDCoCDCoCDCoGNvbnN0IHVuc2ln
bmVkIGxvbmcgbmZlbmNlcyA9IGFyZ3MtJmd0O251bV9jbGlwcmVjdHM7PGJyPg0KK8KgIMKgIMKg
IMKgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyX2V4dF90aW1lbGluZV9mZW5jZXMgKnRp
bWVsaW5lX2ZlbmNlcyA9PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJmFtcDtlYi0mZ3Q7
ZXh0ZW5zaW9ucy50aW1lbGluZV9mZW5jZXM7PGJyPg0KK8KgIMKgIMKgIMKgc3RydWN0IGRybV9p
OTE1X2dlbV9leGVjX2ZlbmNlIF9fdXNlciAqdXNlcl9mZW5jZXM7PGJyPg0KK8KgIMKgIMKgIMKg
c3RydWN0IGk5MTVfZWJfZmVuY2VzICpmZW5jZXM7PGJyPg0KK8KgIMKgIMKgIMKgdTY0IF9fdXNl
ciAqdXNlcl92YWx1ZXM7PGJyPg0KK8KgIMKgIMKgIMKgdTY0IG51bV9mZW5jZXMsIG51bV91c2Vy
X2ZlbmNlcyA9IHRpbWVsaW5lX2ZlbmNlcy0mZ3Q7ZmVuY2VfY291bnQ7PGJyPg0KK8KgIMKgIMKg
IMKgdW5zaWduZWQgbG9uZyBuOzxicj4NCivCoCDCoCDCoCDCoGludCBlcnI7PGJyPg0KKzxicj4N
CivCoCDCoCDCoCDCoC8qIENoZWNrIG11bHRpcGxpY2F0aW9uIG92ZXJmbG93IGZvciBhY2Nlc3Nf
b2soKSBhbmQga3ZtYWxsb2NfYXJyYXkoKSAqLzxicj4NCivCoCDCoCDCoCDCoEJVSUxEX0JVR19P
TihzaXplb2Yoc2l6ZV90KSAmZ3Q7IHNpemVvZih1bnNpZ25lZCBsb25nKSk7PGJyPg0KK8KgIMKg
IMKgIMKgaWYgKG51bV91c2VyX2ZlbmNlcyAmZ3Q7IG1pbl90KHVuc2lnbmVkIGxvbmcsPGJyPg0K
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgVUxP
TkdfTUFYIC8gc2l6ZW9mKCp1c2VyX2ZlbmNlcyksPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgU0laRV9NQVggLyBzaXplb2YoKmZlbmNl
cykpKTxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiBFUlJfUFRSKC1FSU5WQUwp
Ozxicj4NCis8YnI+DQorwqAgwqAgwqAgwqB1c2VyX2ZlbmNlcyA9IHU2NF90b191c2VyX3B0cih0
aW1lbGluZV9mZW5jZXMtJmd0O2hhbmRsZXNfcHRyKTs8YnI+DQorwqAgwqAgwqAgwqBpZiAoIWFj
Y2Vzc19vayh1c2VyX2ZlbmNlcywgbnVtX3VzZXJfZmVuY2VzICogc2l6ZW9mKCp1c2VyX2ZlbmNl
cykpKTxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiBFUlJfUFRSKC1FRkFVTFQp
Ozxicj4NCis8YnI+DQorwqAgwqAgwqAgwqB1c2VyX3ZhbHVlcyA9IHU2NF90b191c2VyX3B0cih0
aW1lbGluZV9mZW5jZXMtJmd0O3ZhbHVlc19wdHIpOzxicj4NCivCoCDCoCDCoCDCoGlmICghYWNj
ZXNzX29rKHVzZXJfdmFsdWVzLCBudW1fdXNlcl9mZW5jZXMgKiBzaXplb2YoKnVzZXJfdmFsdWVz
KSkpPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0dXJuIEVSUl9QVFIoLUVGQVVMVCk7
PGJyPg0KKzxicj4NCivCoCDCoCDCoCDCoGZlbmNlcyA9IGt2bWFsbG9jX2FycmF5KG51bV91c2Vy
X2ZlbmNlcywgc2l6ZW9mKCpmZW5jZXMpLDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoF9fR0ZQX05PV0FSTiB8IEdGUF9LRVJORUwpOzxicj4NCivC
oCDCoCDCoCDCoGlmICghZmVuY2VzKTxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVy
biBFUlJfUFRSKC1FTk9NRU0pOzxicj4NCis8YnI+DQorwqAgwqAgwqAgwqBCVUlMRF9CVUdfT04o
fihBUkNIX0tNQUxMT0NfTUlOQUxJR04gLSAxKSAmYW1wOzxicj4NCivCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCB+X19JOTE1X0VYRUNfRkVOQ0VfVU5LTk9XTl9GTEFHUyk7PGJyPg0KKzxi
cj4NCivCoCDCoCDCoCDCoGZvciAobiA9IDAsIG51bV9mZW5jZXMgPSAwOyBuICZsdDsgdGltZWxp
bmVfZmVuY2VzLSZndDtmZW5jZV9jb3VudDsgbisrKSB7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX2ZlbmNlIHVzZXJfZmVuY2U7PGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqOzxicj4NCivC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gTlVMTDs8YnI+
DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB1NjQgcG9pbnQ7PGJyPg0KKzxicj4NCivCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGlmIChfX2NvcHlfZnJvbV91c2VyKCZhbXA7dXNlcl9mZW5jZSwgdXNl
cl9mZW5jZXMrKywgc2l6ZW9mKHVzZXJfZmVuY2UpKSkgezxicj4NCivCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoGVyciA9IC1FRkFVTFQ7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgZ290byBlcnI7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
fTxicj4NCis8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAodXNlcl9mZW5jZS5mbGFn
cyAmYW1wOyBfX0k5MTVfRVhFQ19GRU5DRV9VTktOT1dOX0ZMQUdTKSB7PGJyPg0KK8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZXJyID0gLUVJTlZBTDs8YnI+DQorwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBnb3RvIGVycjs8YnI+DQorwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqB9PGJyPg0KKzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChfX2dldF91
c2VyKHBvaW50LCB1c2VyX3ZhbHVlcysrKSkgezxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoGVyciA9IC1FRkFVTFQ7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgZ290byBlcnI7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4N
Cis8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzeW5jb2JqID0gZHJtX3N5bmNvYmpfZmlu
ZChlYi0mZ3Q7ZmlsZSwgdXNlcl9mZW5jZS5oYW5kbGUpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGlmICghc3luY29iaikgezxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoERSTV9ERUJVRygmcXVvdDtJbnZhbGlkIHN5bmNvYmogaGFuZGxlIHByb3ZpZGVkXG4m
cXVvdDspOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGVyciA9IC1F
Tk9FTlQ7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZ290byBlcnI7
PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCis8YnI+DQorwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBpZiAodXNlcl9mZW5jZS5mbGFncyAmYW1wOyBJOTE1X0VYRUNfRkVOQ0VfV0FJ
VCkgezxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZlbmNlID0gZHJt
X3N5bmNvYmpfZmVuY2VfZ2V0KHN5bmNvYmopOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoGlmICghZmVuY2UpIHs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBEUk1fREVCVUcoJnF1b3Q7U3luY29iaiBoYW5kbGUgaGFz
IG5vIGZlbmNlXG4mcXVvdDspOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGRybV9zeW5jb2JqX3B1dChzeW5jb2JqKTs8YnI+DQorwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBlcnIgPSAtRUlOVkFMOzxicj4N
CivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGdvdG8gZXJy
Ozxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQorPGJyPg0K
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZXJyID0gZG1hX2ZlbmNlX2NoYWlu
X2ZpbmRfc2Vxbm8oJmFtcDtmZW5jZSwgcG9pbnQpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGlmIChlcnIpIHs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBEUk1fREVCVUcoJnF1b3Q7U3luY29iaiBoYW5kbGUgbWlz
c2luZyByZXF1ZXN0ZWQgcG9pbnQgJWxsdVxuJnF1b3Q7LCBwb2ludCk7PGJyPg0KK8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZHJtX3N5bmNvYmpfcHV0KHN5
bmNvYmopOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoGdvdG8gZXJyOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08
YnI+DQorPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLyogQSBwb2lu
dCBtaWdodCBoYXZlIGJlZW4gc2lnbmFsZWQgYWxyZWFkeSBhbmQ8YnI+DQorwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKiBnYXJiYWdlIGNvbGxlY3RlZCBmcm9tIHRoZSB0aW1l
bGluZS4gSW4gdGhpcyBjYXNlPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgICoganVzdCBpZ25vcmUgdGhlIHBvaW50IGFuZCBjYXJyeSBvbi48YnI+DQorwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKi88YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBpZiAoIWZlbmNlKSB7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZHJtX3N5bmNvYmpfcHV0KHN5bmNvYmopOzxicj4NCivC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNvbnRpbnVlOzxi
cj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQorwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqB9PGJyPg0KKzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qPGJy
Pg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICogRm9yIHRpbWVsaW5lIHN5bmNvYmpzIHdlIG5l
ZWQgdG8gcHJlYWxsb2NhdGUgY2hhaW5zIGZvcjxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCAqIGxhdGVyIHNpZ25hbGluZy48YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKi88YnI+
DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAocG9pbnQgIT0gMCAmYW1wOyZhbXA7IHVzZXJf
ZmVuY2UuZmxhZ3MgJmFtcDsgSTkxNV9FWEVDX0ZFTkNFX1NJR05BTCkgezxicj4NCivCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgICogV2FpdGluZyBhbmQgc2lnbmFsaW5nIHRoZSBzYW1lIHBvaW50ICh3
aGVuIHBvaW50ICE9PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICog
MCkgd291bGQgYnJlYWsgdGhlIHRpbWVsaW5lLjxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCAqLzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGlmICh1c2VyX2ZlbmNlLmZsYWdzICZhbXA7IEk5MTVfRVhFQ19GRU5DRV9XQUlUKSB7PGJyPg0K
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgRFJNX0RFQlVH
KCZxdW90O1RyaW5nIHRvIHdhaXQgJmFtcDsgc2lnbmFsIHRoZSBzYW1lIHRpbWVsaW5lIHBvaW50
LlxuJnF1b3Q7KTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBlcnIgPSAtRUlOVkFMOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoGRybV9zeW5jb2JqX3B1dChzeW5jb2JqKTs8YnI+DQorwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBnb3RvIGVycjs8YnI+DQor
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KKzxicj4NCivCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZlbmNlc1tudW1fZmVuY2VzXS5jaGFpbl9mZW5j
ZSA9PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
a21hbGxvYyhzaXplb2YoKmZlbmNlc1tudW1fZmVuY2VzXS5jaGFpbl9mZW5jZSksPGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
R0ZQX0tFUk5FTCk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYg
KCFmZW5jZXNbbnVtX2ZlbmNlc10uY2hhaW5fZmVuY2UpIHs8YnI+DQorwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkcm1fc3luY29ial9wdXQoc3luY29iaik7
PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZXJy
ID0gLUVOT01FTTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBEUk1fREVCVUcoJnF1b3Q7VW5hYmxlIHRvIGFsbG9jIGNoYWluX2ZlbmNlXG4mcXVv
dDspOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGdvdG8gZXJyOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+
DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9IGVsc2Ugezxicj4NCivCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoGZlbmNlc1tudW1fZmVuY2VzXS5jaGFpbl9mZW5jZSA9IE5VTEw7
PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCis8YnI+DQorwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBmZW5jZXNbbnVtX2ZlbmNlc10uc3luY29iaiA9IHB0cl9wYWNrX2JpdHMoc3lu
Y29iaiwgdXNlcl9mZW5jZS5mbGFncywgMik7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
ZmVuY2VzW251bV9mZW5jZXNdLmRtYV9mZW5jZSA9IGZlbmNlOzxicj4NCivCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGZlbmNlc1tudW1fZmVuY2VzXS52YWx1ZSA9IHBvaW50Ozxicj4NCivCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoG51bV9mZW5jZXMrKzs8YnI+DQorwqAgwqAgwqAgwqB9PGJyPg0KKzxi
cj4NCivCoCDCoCDCoCDCoCpvdXRfbl9mZW5jZXMgPSBudW1fZmVuY2VzOzxicj4NCis8YnI+DQor
wqAgwqAgwqAgwqByZXR1cm4gZmVuY2VzOzxicj4NCis8YnI+DQorZXJyOjxicj4NCivCoCDCoCDC
oCDCoF9fZnJlZV9mZW5jZV9hcnJheShmZW5jZXMsIG51bV9mZW5jZXMpOzxicj4NCivCoCDCoCDC
oCDCoHJldHVybiBFUlJfUFRSKGVycik7PGJyPg0KK308YnI+DQorPGJyPg0KK3N0YXRpYyBzdHJ1
Y3QgaTkxNV9lYl9mZW5jZXMgKjxicj4NCitnZXRfbGVnYWN5X2ZlbmNlX2FycmF5KHN0cnVjdCBp
OTE1X2V4ZWNidWZmZXIgKmViLDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBpbnQgKm91dF9uX2ZlbmNlcyk8YnI+DQorezxicj4NCivCoCDCoCDCoCDCoHN0cnVjdCBkcm1f
aTkxNV9nZW1fZXhlY2J1ZmZlcjIgKmFyZ3MgPSBlYi0mZ3Q7YXJnczs8YnI+DQrCoCDCoCDCoCDC
oCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfZmVuY2UgX191c2VyICp1c2VyOzxicj4NCi3CoCDC
oCDCoCDCoHN0cnVjdCBkcm1fc3luY29iaiAqKmZlbmNlczs8YnI+DQorwqAgwqAgwqAgwqBzdHJ1
Y3QgaTkxNV9lYl9mZW5jZXMgKmZlbmNlczs8YnI+DQorwqAgwqAgwqAgwqBjb25zdCB1MzIgbnVt
X2ZlbmNlcyA9IGFyZ3MtJmd0O251bV9jbGlwcmVjdHM7PGJyPg0KwqAgwqAgwqAgwqAgdW5zaWdu
ZWQgbG9uZyBuOzxicj4NCsKgIMKgIMKgIMKgIGludCBlcnI7PGJyPg0KPGJyPg0KLcKgIMKgIMKg
IMKgaWYgKCEoYXJncy0mZ3Q7ZmxhZ3MgJmFtcDsgSTkxNV9FWEVDX0ZFTkNFX0FSUkFZKSk8YnI+
DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZXR1cm4gTlVMTDs8YnI+DQorwqAgwqAgwqAgwqAq
b3V0X25fZmVuY2VzID0gbnVtX2ZlbmNlczs8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCAvKiBDaGVj
ayBtdWx0aXBsaWNhdGlvbiBvdmVyZmxvdyBmb3IgYWNjZXNzX29rKCkgYW5kIGt2bWFsbG9jX2Fy
cmF5KCkgKi88YnI+DQrCoCDCoCDCoCDCoCBCVUlMRF9CVUdfT04oc2l6ZW9mKHNpemVfdCkgJmd0
OyBzaXplb2YodW5zaWduZWQgbG9uZykpOzxicj4NCi3CoCDCoCDCoCDCoGlmIChuZmVuY2VzICZn
dDsgbWluX3QodW5zaWduZWQgbG9uZyw8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBVTE9OR19NQVggLyBzaXplb2YoKnVzZXIpLDxicj4NCi3CoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFNJWkVfTUFYIC8gc2l6ZW9mKCpmZW5jZXMp
KSk8YnI+DQorwqAgwqAgwqAgwqBpZiAoKm91dF9uX2ZlbmNlcyAmZ3Q7IG1pbl90KHVuc2lnbmVk
IGxvbmcsPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgVUxPTkdfTUFYIC8gc2l6ZW9mKCp1c2VyKSw8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBTSVpFX01BWCAvIHNpemVvZigqZmVuY2Vz
KSkpPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7
PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgdXNlciA9IHU2NF90b191c2VyX3B0cihhcmdzLSZndDtj
bGlwcmVjdHNfcHRyKTs8YnI+DQotwqAgwqAgwqAgwqBpZiAoIWFjY2Vzc19vayh1c2VyLCBuZmVu
Y2VzICogc2l6ZW9mKCp1c2VyKSkpPGJyPg0KK8KgIMKgIMKgIMKgaWYgKCFhY2Nlc3Nfb2sodXNl
ciwgKm91dF9uX2ZlbmNlcyAqIHNpemVvZigqdXNlcikpKTxicj4NCsKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIHJldHVybiBFUlJfUFRSKC1FRkFVTFQpOzxicj4NCjxicj4NCi3CoCDCoCDCoCDCoGZl
bmNlcyA9IGt2bWFsbG9jX2FycmF5KG5mZW5jZXMsIHNpemVvZigqZmVuY2VzKSw8YnI+DQorwqAg
wqAgwqAgwqBmZW5jZXMgPSBrdm1hbGxvY19hcnJheSgqb3V0X25fZmVuY2VzLCBzaXplb2YoKmZl
bmNlcyksPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgX19HRlBfTk9XQVJOIHwgR0ZQX0tFUk5FTCk7PGJyPg0KwqAgwqAgwqAgwqAgaWYgKCFmZW5j
ZXMpPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7
PGJyPg0KPGJyPg0KLcKgIMKgIMKgIMKgZm9yIChuID0gMDsgbiAmbHQ7IG5mZW5jZXM7IG4rKykg
ezxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19m
ZW5jZSBmZW5jZTs8YnI+DQorwqAgwqAgwqAgwqBmb3IgKG4gPSAwOyBuICZsdDsgKm91dF9uX2Zl
bmNlczsgbisrKSB7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3RydWN0IGRybV9pOTE1
X2dlbV9leGVjX2ZlbmNlIHVzZXJfZmVuY2U7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
c3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gTlVMTDs8YnI+DQo8YnI+DQotwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBpZiAoX19jb3B5X2Zyb21fdXNlcigmYW1wO2ZlbmNlLCB1c2VyKyssIHNpemVv
ZihmZW5jZSkpKSB7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKF9fY29weV9mcm9t
X3VzZXIoJmFtcDt1c2VyX2ZlbmNlLCB1c2VyKyssIHNpemVvZih1c2VyX2ZlbmNlKSkpIHs8YnI+
DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBlcnIgPSAtRUZBVUxUOzxicj4N
CsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGdvdG8gZXJyOzxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIH08YnI+DQo8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBp
ZiAoZmVuY2UuZmxhZ3MgJmFtcDsgX19JOTE1X0VYRUNfRkVOQ0VfVU5LTk9XTl9GTEFHUykgezxi
cj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmICh1c2VyX2ZlbmNlLmZsYWdzICZhbXA7IF9f
STkxNV9FWEVDX0ZFTkNFX1VOS05PV05fRkxBR1MpIHs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCBlcnIgPSAtRUlOVkFMOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIGdvdG8gZXJyOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIH08
YnI+DQo8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzeW5jb2JqID0gZHJtX3N5bmNvYmpf
ZmluZChmaWxlLCBmZW5jZS5oYW5kbGUpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN5
bmNvYmogPSBkcm1fc3luY29ial9maW5kKGViLSZndDtmaWxlLCB1c2VyX2ZlbmNlLmhhbmRsZSk7
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKCFzeW5jb2JqKSB7PGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgRFJNX0RFQlVHKCZxdW90O0ludmFsaWQgc3lu
Y29iaiBoYW5kbGUgcHJvdmlkZWRcbiZxdW90Oyk7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgZXJyID0gLUVOT0VOVDs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCBnb3RvIGVycjs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJy
Pg0KPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHVzZXJfZmVuY2UuZmxhZ3MgJmFt
cDsgSTkxNV9FWEVDX0ZFTkNFX1dBSVQpIHs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBmZW5jZSA9IGRybV9zeW5jb2JqX2ZlbmNlX2dldChzeW5jb2JqKTs8YnI+DQor
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAoIWZlbmNlKSB7PGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgRFJNX0RFQlVHKCZx
dW90O1N5bmNvYmogaGFuZGxlIGhhcyBubyBmZW5jZVxuJnF1b3Q7KTs8YnI+DQorwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkcm1fc3luY29ial9wdXQoc3lu
Y29iaik7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgZXJyID0gLUVJTlZBTDs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBnb3RvIGVycjs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqB9PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCis8YnI+DQrCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBCVUlMRF9CVUdfT04ofihBUkNIX0tNQUxMT0NfTUlOQUxJR04g
LSAxKSAmYW1wOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgfl9fSTkxNV9FWEVDX0ZFTkNFX1VOS05PV05fRkxBR1MpOzxicj4NCjxicj4NCi3CoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGZlbmNlc1tuXSA9IHB0cl9wYWNrX2JpdHMoc3luY29iaiwgZmVuY2Uu
ZmxhZ3MsIDIpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZlbmNlc1tuXS5zeW5jb2Jq
ID0gcHRyX3BhY2tfYml0cyhzeW5jb2JqLCB1c2VyX2ZlbmNlLmZsYWdzLCAyKTs8YnI+DQorwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBmZW5jZXNbbl0uZG1hX2ZlbmNlID0gZmVuY2U7PGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgZmVuY2VzW25dLnZhbHVlID0gMDs8YnI+DQorwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBmZW5jZXNbbl0uY2hhaW5fZmVuY2UgPSBOVUxMOzxicj4NCsKgIMKgIMKg
IMKgIH08YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCByZXR1cm4gZmVuY2VzOzxicj4NCkBAIC0yMzY1
LDM3ICsyNTIzLDQ0IEBAIGdldF9mZW5jZV9hcnJheShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNi
dWZmZXIyICphcmdzLDxicj4NCsKgIMKgIMKgIMKgIHJldHVybiBFUlJfUFRSKGVycik7PGJyPg0K
wqB9PGJyPg0KPGJyPg0KK3N0YXRpYyBzdHJ1Y3QgaTkxNV9lYl9mZW5jZXMgKjxicj4NCitnZXRf
ZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsIGludCAqb3V0X25fZmVuY2Vz
KTxicj4NCit7PGJyPg0KK8KgIMKgIMKgIMKgaWYgKGViLSZndDthcmdzLSZndDtmbGFncyAmYW1w
OyBJOTE1X0VYRUNfRkVOQ0VfQVJSQVkpPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0
dXJuIGdldF9sZWdhY3lfZmVuY2VfYXJyYXkoZWIsIG91dF9uX2ZlbmNlcyk7PGJyPg0KKzxicj4N
CivCoCDCoCDCoCDCoGlmIChlYi0mZ3Q7ZXh0ZW5zaW9ucy5mbGFncyAmYW1wOyBCSVRfVUxMKERS
TV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9USU1FTElORV9GRU5DRVMpKTxicj4NCivCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoHJldHVybiBnZXRfdGltZWxpbmVfZmVuY2VfYXJyYXkoZWIsIG91dF9u
X2ZlbmNlcyk7PGJyPg0KKzxicj4NCivCoCDCoCDCoCDCoCpvdXRfbl9mZW5jZXMgPSAwOzxicj4N
CivCoCDCoCDCoCDCoHJldHVybiBOVUxMOzxicj4NCit9PGJyPg0KKzxicj4NCsKgc3RhdGljIHZv
aWQ8YnI+DQotcHV0X2ZlbmNlX2FycmF5KHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIg
KmFyZ3MsPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3RydWN0IGRybV9zeW5jb2JqICoq
ZmVuY2VzKTxicj4NCitwdXRfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZWJfZmVuY2VzICpmZW5j
ZXMsIGludCBuZmVuY2VzKTxicj4NCsKgezxicj4NCsKgIMKgIMKgIMKgIGlmIChmZW5jZXMpPGJy
Pg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgX19mcmVlX2ZlbmNlX2FycmF5KGZlbmNlcywgYXJn
cy0mZ3Q7bnVtX2NsaXByZWN0cyk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgX19mcmVl
X2ZlbmNlX2FycmF5KGZlbmNlcywgbmZlbmNlcyk7PGJyPg0KwqB9PGJyPg0KPGJyPg0KwqBzdGF0
aWMgaW50PGJyPg0KwqBhd2FpdF9mZW5jZV9hcnJheShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICpl
Yiw8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzdHJ1Y3QgZHJtX3N5bmNvYmogKipm
ZW5jZXMpPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3RydWN0IGk5MTVfZWJfZmVu
Y2VzICpmZW5jZXMsPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaW50IG5mZW5jZXMp
PGJyPg0KwqB7PGJyPg0KLcKgIMKgIMKgIMKgY29uc3QgdW5zaWduZWQgaW50IG5mZW5jZXMgPSBl
Yi0mZ3Q7YXJncy0mZ3Q7bnVtX2NsaXByZWN0czs8YnI+DQrCoCDCoCDCoCDCoCB1bnNpZ25lZCBp
bnQgbjs8YnI+DQrCoCDCoCDCoCDCoCBpbnQgZXJyOzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIGZv
ciAobiA9IDA7IG4gJmx0OyBuZmVuY2VzOyBuKyspIHs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCBzdHJ1Y3QgZHJtX3N5bmNvYmogKnN5bmNvYmo7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgdW5zaWduZWQgaW50IGZsYWdzOzxicj4NCjxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHN5bmNvYmogPSBwdHJfdW5wYWNrX2JpdHMoZmVuY2VzW25dLCAmYW1wO2ZsYWdzLCAyKTs8YnI+
DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzeW5jb2JqID0gcHRyX3VucGFja19iaXRzKGZlbmNl
c1tuXS5zeW5jb2JqLCAmYW1wO2ZsYWdzLCAyKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBpZiAoIShmbGFncyAmYW1wOyBJOTE1X0VYRUNfRkVOQ0VfV0FJVCkpPGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgY29udGludWU7PGJyPg0KPGJyPg0KLcKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgZmVuY2UgPSBkcm1fc3luY29ial9mZW5jZV9nZXQoc3luY29iaik7PGJy
Pg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKCFmZW5jZSk8YnI+DQotwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZXR1cm4gLUVJTlZBTDs8YnI+DQotPGJyPg0KLcKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZShlYi0m
Z3Q7cmVxdWVzdCwgZmVuY2UpOzxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGRtYV9mZW5j
ZV9wdXQoZmVuY2UpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGVyciA9IGk5MTVfcmVx
dWVzdF9hd2FpdF9kbWFfZmVuY2UoZWItJmd0O3JlcXVlc3QsPGJyPg0KK8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIGZlbmNlc1tuXS5kbWFfZmVuY2UpOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlm
IChlcnIgJmx0OyAwKTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJl
dHVybiBlcnI7PGJyPg0KwqAgwqAgwqAgwqAgfTxicj4NCkBAIC0yNDA1LDkgKzI1NzAsOSBAQCBh
d2FpdF9mZW5jZV9hcnJheShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiw8YnI+DQo8YnI+DQrC
oHN0YXRpYyB2b2lkPGJyPg0KwqBzaWduYWxfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1
ZmZlciAqZWIsPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN0cnVjdCBkcm1fc3lu
Y29iaiAqKmZlbmNlcyk8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3RydWN0IGk5
MTVfZWJfZmVuY2VzICpmZW5jZXMsPGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlu
dCBuZmVuY2VzKTxicj4NCsKgezxicj4NCi3CoCDCoCDCoCDCoGNvbnN0IHVuc2lnbmVkIGludCBu
ZmVuY2VzID0gZWItJmd0O2FyZ3MtJmd0O251bV9jbGlwcmVjdHM7PGJyPg0KwqAgwqAgwqAgwqAg
c3RydWN0IGRtYV9mZW5jZSAqIGNvbnN0IGZlbmNlID0gJmFtcDtlYi0mZ3Q7cmVxdWVzdC0mZ3Q7
ZmVuY2U7PGJyPg0KwqAgwqAgwqAgwqAgdW5zaWduZWQgaW50IG47PGJyPg0KPGJyPg0KQEAgLTI0
MTUsMTUgKzI1ODAsNDYgQEAgc2lnbmFsX2ZlbmNlX2FycmF5KHN0cnVjdCBpOTE1X2V4ZWNidWZm
ZXIgKmViLDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN0cnVjdCBkcm1fc3luY29iaiAq
c3luY29iajs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB1bnNpZ25lZCBpbnQgZmxhZ3M7
PGJyPg0KPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3luY29iaiA9IHB0cl91bnBhY2tf
Yml0cyhmZW5jZXNbbl0sICZhbXA7ZmxhZ3MsIDIpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoHN5bmNvYmogPSBwdHJfdW5wYWNrX2JpdHMoZmVuY2VzW25dLnN5bmNvYmosICZhbXA7Zmxh
Z3MsIDIpOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmICghKGZsYWdzICZhbXA7IEk5
MTVfRVhFQ19GRU5DRV9TSUdOQUwpKTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIGNvbnRpbnVlOzxicj4NCjxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGRybV9z
eW5jb2JqX3JlcGxhY2VfZmVuY2Uoc3luY29iaiwgZmVuY2UpOzxicj4NCivCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGlmIChmZW5jZXNbbl0uY2hhaW5fZmVuY2UpIHs8YnI+DQorwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkcm1fc3luY29ial9hZGRfcG9pbnQoc3luY29iaiwgZmVu
Y2VzW25dLmNoYWluX2ZlbmNlLDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZlbmNlLCBmZW5jZXNbbl0udmFs
dWUpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qPGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgICogVGhlIGNoYWluJiMzOTtzIG93bmVy
c2hpcCBpcyB0cmFuc2ZlcmVkIHRvIHRoZTxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCAqIHRpbWVsaW5lLjxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCAqLzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZlbmNl
c1tuXS5jaGFpbl9mZW5jZSA9IE5VTEw7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfSBl
bHNlIHs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkcm1fc3luY29i
al9yZXBsYWNlX2ZlbmNlKHN5bmNvYmosIGZlbmNlKTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqB9PGJyPg0KwqAgwqAgwqAgwqAgfTxicj4NCsKgfTxicj4NCjxicj4NCitzdGF0aWMgaW50
IHBhcnNlX3RpbWVsaW5lX2ZlbmNlcyhzdHJ1Y3QgaTkxNV91c2VyX2V4dGVuc2lvbiBfX3VzZXIg
KmV4dCwgdm9pZCAqZGF0YSk8YnI+DQorezxicj4NCivCoCDCoCDCoCDCoHN0cnVjdCBpOTE1X2V4
ZWNidWZmZXIgKmViID0gZGF0YTs8YnI+DQorPGJyPg0KK8KgIMKgIMKgIMKgLyogVGltZWxpbmUg
ZmVuY2VzIGFyZSBpbmNvbXBhdGlibGUgd2l0aCB0aGUgZmVuY2UgYXJyYXkgZmxhZy4gKi88YnI+
DQorwqAgwqAgwqAgwqBpZiAoZWItJmd0O2FyZ3MtJmd0O2ZsYWdzICZhbXA7IEk5MTVfRVhFQ19G
RU5DRV9BUlJBWSk8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZXR1cm4gLUVJTlZBTDs8
YnI+DQorPGJyPg0KK8KgIMKgIMKgIMKgaWYgKGViLSZndDtleHRlbnNpb25zLmZsYWdzICZhbXA7
IEJJVF9VTEwoRFJNX0k5MTVfR0VNX0VYRUNCVUZGRVJfRVhUX1RJTUVMSU5FX0ZFTkNFUykpPGJy
Pg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0dXJuIC1FSU5WQUw7PGJyPg0KKzxicj4NCivC
oCDCoCDCoCDCoGlmIChjb3B5X2Zyb21fdXNlcigmYW1wO2ViLSZndDtleHRlbnNpb25zLnRpbWVs
aW5lX2ZlbmNlcywgZXh0LDxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCBzaXplb2YoZWItJmd0O2V4dGVuc2lvbnMudGltZWxpbmVfZmVuY2VzKSkpPGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0dXJuIC1FRkFVTFQ7PGJyPg0KKzxicj4NCivCoCDCoCDC
oCDCoGViLSZndDtleHRlbnNpb25zLmZsYWdzIHw9IEJJVF9VTEwoRFJNX0k5MTVfR0VNX0VYRUNC
VUZGRVJfRVhUX1RJTUVMSU5FX0ZFTkNFUyk7PGJyPg0KKzxicj4NCivCoCDCoCDCoCDCoHJldHVy
biAwOzxicj4NCit9PGJyPg0KKzxicj4NCsKgc3RhdGljIGNvbnN0IGk5MTVfdXNlcl9leHRlbnNp
b25fZm4gZXhlY2J1Zl9leHRlbnNpb25zW10gPSB7PGJyPg0KK8KgIMKgIMKgIMKgIFtEUk1fSTkx
NV9HRU1fRVhFQ0JVRkZFUl9FWFRfVElNRUxJTkVfRkVOQ0VTXSA9IHBhcnNlX3RpbWVsaW5lX2Zl
bmNlcyw8YnI+DQrCoH07PGJyPg0KPGJyPg0KwqBzdGF0aWMgaW50PGJyPg0KQEAgLTI0NTQsMTQg
KzI2NTAsMTUgQEAgc3RhdGljIGludDxicj4NCsKgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgc3RydWN0IGRybV9maWxlICpmaWxlLDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiAqYXJncyw8YnI+DQotwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29i
amVjdDIgKmV4ZWMsPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHN0cnVj
dCBkcm1fc3luY29iaiAqKmZlbmNlcyk8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgKmV4ZWMpPGJyPg0KwqB7PGJy
Pg0KwqAgwqAgwqAgwqAgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciBlYjs8YnI+DQrCoCDCoCDCoCDC
oCBzdHJ1Y3QgZG1hX2ZlbmNlICppbl9mZW5jZSA9IE5VTEw7PGJyPg0KwqAgwqAgwqAgwqAgc3Ry
dWN0IGRtYV9mZW5jZSAqZXhlY19mZW5jZSA9IE5VTEw7PGJyPg0KwqAgwqAgwqAgwqAgc3RydWN0
IHN5bmNfZmlsZSAqb3V0X2ZlbmNlID0gTlVMTDs8YnI+DQorwqAgwqAgwqAgwqBzdHJ1Y3QgaTkx
NV9lYl9mZW5jZXMgKmZlbmNlcyA9IE5VTEw7PGJyPg0KwqAgwqAgwqAgwqAgaW50IG91dF9mZW5j
ZV9mZCA9IC0xOzxicj4NCivCoCDCoCDCoCDCoGludCBuZmVuY2VzID0gMDs8YnI+DQrCoCDCoCDC
oCDCoCBpbnQgZXJyOzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIEJVSUxEX0JVR19PTihfX0VYRUNf
SU5URVJOQUxfRkxBR1MgJmFtcDsgfl9fSTkxNV9FWEVDX0lMTEVHQUxfRkxBR1MpOzxicj4NCkBA
IC0yNTAwLDEwICsyNjk3LDE2IEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiw8YnI+DQrCoCDCoCDCoCDCoCBpZiAoZXJyKTxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIHJldHVybiBlcnI7PGJyPg0KPGJyPg0KK8KgIMKgIMKgIMKgZmVuY2VzID0gZ2V0
X2ZlbmNlX2FycmF5KCZhbXA7ZWIsICZhbXA7bmZlbmNlcyk7PGJyPg0KK8KgIMKgIMKgIMKgaWYg
KElTX0VSUihmZW5jZXMpKTxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiBQVFJf
RVJSKGZlbmNlcyk7PGJyPg0KKzxicj4NCsKgIMKgIMKgIMKgIGlmIChhcmdzLSZndDtmbGFncyAm
YW1wOyBJOTE1X0VYRUNfRkVOQ0VfSU4pIHs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBp
bl9mZW5jZSA9IHN5bmNfZmlsZV9nZXRfZmVuY2UobG93ZXJfMzJfYml0cyhhcmdzLSZndDtyc3Zk
MikpOzxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmICghaW5fZmVuY2UpPGJyPg0KLcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0dXJuIC1FSU5WQUw7PGJyPg0KK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKCFpbl9mZW5jZSkgezxicj4NCivCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGVyciA9IC1FSU5WQUw7PGJyPg0KK8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgZ290byBlcnJfZmVuY2VzOzxicj4NCivCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoH08YnI+DQrCoCDCoCDCoCDCoCB9PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgaWYg
KGFyZ3MtJmd0O2ZsYWdzICZhbXA7IEk5MTVfRVhFQ19GRU5DRV9TVUJNSVQpIHs8YnI+DQpAQCAt
MjY0OCw3ICsyODUxLDcgQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LDxicj4NCsKgIMKgIMKgIMKgIH08YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCBpZiAoZmVu
Y2VzKSB7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZXJyID0gYXdhaXRfZmVuY2VfYXJy
YXkoJmFtcDtlYiwgZmVuY2VzKTs8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBlcnIgPSBh
d2FpdF9mZW5jZV9hcnJheSgmYW1wO2ViLCBmZW5jZXMsIG5mZW5jZXMpOzxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIGlmIChlcnIpPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgZ290byBlcnJfcmVxdWVzdDs8YnI+DQrCoCDCoCDCoCDCoCB9PGJyPg0KQEAgLTI2
NzksNyArMjg4Miw3IEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiw8YnI+DQrCoCDCoCDCoCDCoCBpOTE1X3JlcXVlc3RfYWRkKGViLnJlcXVlc3QpOzxicj4N
Cjxicj4NCsKgIMKgIMKgIMKgIGlmIChmZW5jZXMpPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgc2lnbmFsX2ZlbmNlX2FycmF5KCZhbXA7ZWIsIGZlbmNlcyk7PGJyPg0KK8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgc2lnbmFsX2ZlbmNlX2FycmF5KCZhbXA7ZWIsIGZlbmNlcywgbmZlbmNlcyk7
PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgaWYgKG91dF9mZW5jZSkgezxicj4NCsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIGlmIChlcnIgPT0gMCkgezxicj4NCkBAIC0yNzE0LDYgKzI5MTcsOCBAQCBp
OTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsPGJyPg0KwqAgwqAg
wqAgwqAgZG1hX2ZlbmNlX3B1dChleGVjX2ZlbmNlKTs8YnI+DQrCoGVycl9pbl9mZW5jZTo8YnI+
DQrCoCDCoCDCoCDCoCBkbWFfZmVuY2VfcHV0KGluX2ZlbmNlKTs8YnI+DQorZXJyX2ZlbmNlczo8
YnI+DQorwqAgwqAgwqAgwqBwdXRfZmVuY2VfYXJyYXkoZmVuY2VzLCBuZmVuY2VzKTs8YnI+DQrC
oCDCoCDCoCDCoCByZXR1cm4gZXJyOzxicj4NCsKgfTxicj4NCjxicj4NCkBAIC0yODA3LDcgKzMw
MTIsNyBAQCBpOTE1X2dlbV9leGVjYnVmZmVyX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZXhl
YzJfbGlzdFtpXS5mbGFncyA9IDA7PGJyPg0KwqAgwqAgwqAgwqAgfTxicj4NCjxicj4NCi3CoCDC
oCDCoCDCoGVyciA9IGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoZGV2LCBmaWxlLCAmYW1wO2V4ZWMy
LCBleGVjMl9saXN0LCBOVUxMKTs8YnI+DQorwqAgwqAgwqAgwqBlcnIgPSBpOTE1X2dlbV9kb19l
eGVjYnVmZmVyKGRldiwgZmlsZSwgJmFtcDtleGVjMiwgZXhlYzJfbGlzdCk7PGJyPg0KwqAgwqAg
wqAgwqAgaWYgKGV4ZWMyLmZsYWdzICZhbXA7IF9fRVhFQ19IQVNfUkVMT0MpIHs8YnI+DQrCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0IF9fdXNl
ciAqdXNlcl9leGVjX2xpc3QgPTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIHU2NF90b191c2VyX3B0cihhcmdzLSZndDtidWZmZXJzX3B0cik7PGJyPg0KQEAgLTI4Mzgs
NyArMzA0Myw2IEBAIGk5MTVfZ2VtX2V4ZWNidWZmZXIyX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsIHZvaWQgKmRhdGEsPGJyPg0KwqB7PGJyPg0KwqAgwqAgwqAgwqAgc3RydWN0IGRybV9p
OTE1X2dlbV9leGVjYnVmZmVyMiAqYXJncyA9IGRhdGE7PGJyPg0KwqAgwqAgwqAgwqAgc3RydWN0
IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgKmV4ZWMyX2xpc3Q7PGJyPg0KLcKgIMKgIMKgIMKg
c3RydWN0IGRybV9zeW5jb2JqICoqZmVuY2VzID0gTlVMTDs8YnI+DQrCoCDCoCDCoCDCoCBjb25z
dCBzaXplX3QgY291bnQgPSBhcmdzLSZndDtidWZmZXJfY291bnQ7PGJyPg0KwqAgwqAgwqAgwqAg
aW50IGVycjs8YnI+DQo8YnI+DQpAQCAtMjg2NiwxNSArMzA3MCw3IEBAIGk5MTVfZ2VtX2V4ZWNi
dWZmZXIyX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsPGJyPg0KwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgcmV0dXJuIC1FRkFVTFQ7PGJyPg0KwqAgwqAgwqAgwqAgfTxi
cj4NCjxicj4NCi3CoCDCoCDCoCDCoGlmIChhcmdzLSZndDtmbGFncyAmYW1wOyBJOTE1X0VYRUNf
RkVOQ0VfQVJSQVkpIHs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmZW5jZXMgPSBnZXRf
ZmVuY2VfYXJyYXkoYXJncywgZmlsZSk7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYg
KElTX0VSUihmZW5jZXMpKSB7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKga3ZmcmVlKGV4ZWMyX2xpc3QpOzxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoHJldHVybiBQVFJfRVJSKGZlbmNlcyk7PGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgfTxicj4NCi3CoCDCoCDCoCDCoH08YnI+DQotPGJyPg0KLcKgIMKgIMKgIMKgZXJyID0gaTkx
NV9nZW1fZG9fZXhlY2J1ZmZlcihkZXYsIGZpbGUsIGFyZ3MsIGV4ZWMyX2xpc3QsIGZlbmNlcyk7
PGJyPg0KK8KgIMKgIMKgIMKgZXJyID0gaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihkZXYsIGZpbGUs
IGFyZ3MsIGV4ZWMyX2xpc3QpOzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIC8qPGJyPg0KwqAgwqAg
wqAgwqAgwqAqIE5vdyB0aGF0IHdlIGhhdmUgYmVndW4gZXhlY3V0aW9uIG9mIHRoZSBiYXRjaGJ1
ZmZlciwgd2UgaWdub3JlPGJyPg0KQEAgLTI5MTQsNyArMzExMCw2IEBAIGVuZDo7PGJyPg0KwqAg
wqAgwqAgwqAgfTxicj4NCjxicj4NCsKgIMKgIMKgIMKgIGFyZ3MtJmd0O2ZsYWdzICZhbXA7PSB+
X19JOTE1X0VYRUNfVU5LTk9XTl9GTEFHUzs8YnI+DQotwqAgwqAgwqAgwqBwdXRfZmVuY2VfYXJy
YXkoYXJncywgZmVuY2VzKTs8YnI+DQrCoCDCoCDCoCDCoCBrdmZyZWUoZXhlYzJfbGlzdCk7PGJy
Pg0KwqAgwqAgwqAgwqAgcmV0dXJuIGVycjs8YnI+DQrCoH08YnI+DQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmM8YnI+DQppbmRleCBiNWIyYTY0NzUzZTYuLjRkYjI0ZjA2ZjMyMyAxMDA2NDQ8YnI+DQot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jPGJyPg0KKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYzxicj4NCkBAIC0yODUxLDcgKzI4NTEsOCBAQCBzdGF0aWMg
c3RydWN0IGRybV9kcml2ZXIgZHJpdmVyID0gezxicj4NCsKgIMKgIMKgIMKgIMKgKi88YnI+DQrC
oCDCoCDCoCDCoCAuZHJpdmVyX2ZlYXR1cmVzID08YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCBEUklW
RVJfR0VNIHw8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqBEUklWRVJfUkVOREVSIHwgRFJJVkVSX01P
REVTRVQgfCBEUklWRVJfQVRPTUlDIHwgRFJJVkVSX1NZTkNPQkosPGJyPg0KK8KgIMKgIMKgIMKg
IMKgIMKgRFJJVkVSX1JFTkRFUiB8IERSSVZFUl9NT0RFU0VUIHwgRFJJVkVSX0FUT01JQyB8IERS
SVZFUl9TWU5DT0JKIHw8YnI+DQorwqAgwqAgwqAgwqAgwqAgwqBEUklWRVJfU1lOQ09CSl9USU1F
TElORSw8YnI+DQrCoCDCoCDCoCDCoCAucmVsZWFzZSA9IGk5MTVfZHJpdmVyX3JlbGVhc2UsPGJy
Pg0KwqAgwqAgwqAgwqAgLm9wZW4gPSBpOTE1X2RyaXZlcl9vcGVuLDxicj4NCsKgIMKgIMKgIMKg
IC5sYXN0Y2xvc2UgPSBpOTE1X2RyaXZlcl9sYXN0Y2xvc2UsPGJyPg0KZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2V0cGFyYW0uYzxicj4NCmluZGV4IDVkOTEwMTM3NmEzZC4uZGE2ZmFhODRlNWI4IDEw
MDY0NDxicj4NCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYzxicj4N
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYzxicj4NCkBAIC0xMzAs
NiArMTMwLDcgQEAgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSw8YnI+DQrCoCDCoCDCoCDCoCBjYXNlIEk5MTVfUEFSQU1fSEFTX0VYRUNf
QkFUQ0hfRklSU1Q6PGJyPg0KwqAgwqAgwqAgwqAgY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX0ZF
TkNFX0FSUkFZOjxicj4NCsKgIMKgIMKgIMKgIGNhc2UgSTkxNV9QQVJBTV9IQVNfRVhFQ19TVUJN
SVRfRkVOQ0U6PGJyPg0KK8KgIMKgIMKgIMKgY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX1RJTUVM
SU5FX0ZFTkNFUzo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAvKiBGb3IgdGhlIHRpbWUg
YmVpbmcgYWxsIG9mIHRoZXNlIGFyZSBhbHdheXMgdHJ1ZTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCogaWYgc29tZSBzdXBwb3J0ZWQgaGFyZHdhcmUgZG9lcyBub3QgaGF2ZSBvbmUg
b2YgdGhlc2U8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCogZmVhdHVyZXMgdGhpcyB2
YWx1ZSBuZWVkcyB0byBiZSBwcm92aWRlZCBmcm9tPGJyPg0KZGlmZiAtLWdpdCBhL2luY2x1ZGUv
dWFwaS9kcm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaDxicj4NCmlu
ZGV4IDBhOTljMjY3MzBlMS4uZTg2NjkxYzE4YTU2IDEwMDY0NDxicj4NCi0tLSBhL2luY2x1ZGUv
dWFwaS9kcm0vaTkxNV9kcm0uaDxicj4NCisrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0u
aDxicj4NCkBAIC02MTEsNiArNjExLDEzIEBAIHR5cGVkZWYgc3RydWN0IGRybV9pOTE1X2lycV93
YWl0IHs8YnI+DQrCoCAqIFNlZSBJOTE1X0VYRUNfRkVOQ0VfT1VUIGFuZCBJOTE1X0VYRUNfRkVO
Q0VfU1VCTUlULjxicj4NCsKgICovPGJyPg0KwqAjZGVmaW5lIEk5MTVfUEFSQU1fSEFTX0VYRUNf
U1VCTUlUX0ZFTkNFIDUzPGJyPg0KKzxicj4NCisvKiBRdWVyeSB3aGV0aGVyIERSTV9JOTE1X0dF
TV9FWEVDQlVGRkVSMiBzdXBwb3J0cyBzdXBwbHlpbmcgYW4gYXJyYXkgb2Y8YnI+DQorICogdGlt
ZWxpbmUgc3luY29iaiB0aHJvdWdoIGRybV9pOTE1X2dlbV9leGVjYnVmX2V4dF90aW1lbGluZV9m
ZW5jZXMuIFNlZTxicj4NCisgKiBJOTE1X0VYRUNfVVNFX0VYVEVOU0lPTlMuPGJyPg0KKyAqLzxi
cj4NCisjZGVmaW5lIEk5MTVfUEFSQU1fSEFTX0VYRUNfVElNRUxJTkVfRkVOQ0VTIDU0PGJyPg0K
Kzxicj4NCsKgLyogTXVzdCBiZSBrZXB0IGNvbXBhY3QgLS0gbm8gaG9sZXMgYW5kIHdlbGwgZG9j
dW1lbnRlZCAqLzxicj4NCjxicj4NCsKgdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfZ2V0cGFyYW0g
ezxicj4NCkBAIC0xMDA4LDkgKzEwMTUsNDEgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX2Zl
bmNlIHs8YnI+DQrCoH07PGJyPg0KPGJyPg0KwqBlbnVtIGRybV9pOTE1X2dlbV9leGVjYnVmZmVy
X2V4dCB7PGJyPg0KK8KgIMKgIMKgIMKgLyoqPGJyPg0KK8KgIMKgIMKgIMKgICogU2VlIGRybV9p
OTE1X2dlbV9leGVjYnVmX2V4dF90aW1lbGluZV9mZW5jZXMuPGJyPg0KK8KgIMKgIMKgIMKgICov
PGJyPg0KK8KgIMKgIMKgIMKgRFJNX0k5MTVfR0VNX0VYRUNCVUZGRVJfRVhUX1RJTUVMSU5FX0ZF
TkNFUyA9IDAsPGJyPjwvYmxvY2txdW90ZT48ZGl2Pjxicj48L2Rpdj48ZGl2Pkp1c3QgcG9pbnRl
ZCBvdXQgYSAmcXVvdDtidWcmcXVvdDsgaW4gdGhlIHVzZXJzcGFjZSBjb2RlIHdoZXJlIGl0IG1l
bXNldCB0aGUgZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXJfZXh0X3RpbWVsaW5lX2ZlbmNlcyBzdHJ1
Y3QgdG8gMCBhbmQgbmV2ZXIgc2V0IHRoZSBleHQgbmFtZS7CoCBJdCB3b3JrZWQgYmVjYXVzZSBU
SU1FTElORV9GRU5DRVMgbWFnaWNhbGx5IGhhcHBlbnMgdG8gYmUgMC7CoCBXZSBzaG91bGQgbWFr
ZSAwIHJlc2VydmVkIGluIHRoZSBleHRlbnNpb24gQVBJIGFuZCAtRUlOVkFMIGlmIHdlIGV2ZXIg
c2VlIGl0Ljxicj48L2Rpdj48ZGl2PsKgPC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1
b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xp
ZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPg0KKzxicj4NCsKgIMKgIMKgIMKg
IERSTV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9NQVggLyogbm9uLUFCSSAqLzxicj4NCsKgfTs8
YnI+DQo8YnI+DQorLyoqPGJyPg0KKyAqIFRoaXMgc3RydWN0dXJlIGRlc2NyaWJlcyBhbiBhcnJh
eSBvZiBkcm1fc3luY29iaiBhbmQgYXNzb2NpYXRlZCBwb2ludHMgZm9yPGJyPg0KKyAqIHRpbWVs
aW5lIHZhcmlhbnRzIG9mIGRybV9zeW5jb2JqLiBJdCBpcyBpbnZhbGlkIHRvIGFwcGVuZCB0aGlz
IHN0cnVjdHVyZSB0bzxicj4NCisgKiB0aGUgZXhlY2J1ZiBpZiBJOTE1X0VYRUNfRkVOQ0VfQVJS
QVkgaXMgc2V0Ljxicj4NCisgKi88YnI+DQorc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVy
X2V4dF90aW1lbGluZV9mZW5jZXMgezxicj4NCivCoCDCoCDCoCDCoHN0cnVjdCBpOTE1X3VzZXJf
ZXh0ZW5zaW9uIGJhc2U7PGJyPg0KKzxicj4NCivCoCDCoCDCoCDCoC8qKjxicj4NCivCoCDCoCDC
oCDCoCAqIE51bWJlciBvZiBlbGVtZW50IGluIHRoZSBoYW5kbGVzX3B0ciAmYW1wOyB2YWx1ZV9w
dHIgYXJyYXlzLjxicj4NCivCoCDCoCDCoCDCoCAqLzxicj4NCivCoCDCoCDCoCDCoF9fdTY0IGZl
bmNlX2NvdW50Ozxicj4NCis8YnI+DQorwqAgwqAgwqAgwqAvKio8YnI+DQorwqAgwqAgwqAgwqAg
KiBQb2ludGVyIHRvIGFuIGFycmF5IG9mIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19mZW5jZSBv
ZiBsZW5ndGg8YnI+DQorwqAgwqAgwqAgwqAgKiBmZW5jZV9jb3VudC48YnI+DQorwqAgwqAgwqAg
wqAgKi88YnI+DQorwqAgwqAgwqAgwqBfX3U2NCBoYW5kbGVzX3B0cjs8YnI+DQorPGJyPg0KK8Kg
IMKgIMKgIMKgLyoqPGJyPg0KK8KgIMKgIMKgIMKgICogUG9pbnRlciB0byBhbiBhcnJheSBvZiB1
NjQgdmFsdWVzIG9mIGxlbmd0aCBmZW5jZV9jb3VudC4gVmFsdWVzPGJyPg0KK8KgIMKgIMKgIMKg
ICogbXVzdCBiZSAwIGZvciBhIGJpbmFyeSBkcm1fc3luY29iai4gQSBWYWx1ZSBvZiAwIGZvciBh
IHRpbWVsaW5lPGJyPg0KK8KgIMKgIMKgIMKgICogZHJtX3N5bmNvYmogaXMgaW52YWxpZCBhcyBp
dCB0dXJucyBhIGRybV9zeW5jb2JqIGludG8gYSBiaW5hcnkgb25lLjxicj4NCivCoCDCoCDCoCDC
oCAqLzxicj4NCivCoCDCoCDCoCDCoF9fdTY0IHZhbHVlc19wdHI7PGJyPg0KK307PGJyPg0KKzxi
cj4NCsKgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiB7PGJyPg0KwqAgwqAgwqAgwqAg
LyoqPGJyPg0KwqAgwqAgwqAgwqAgwqAqIExpc3Qgb2YgZ2VtX2V4ZWNfb2JqZWN0MiBzdHJ1Y3Rz
PGJyPg0KLS0gPGJyPg0KMi4yMy4wPGJyPg0KPGJyPg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX188YnI+DQpJbnRlbC1nZnggbWFpbGluZyBsaXN0PGJyPg0K
PGEgaHJlZj0ibWFpbHRvOkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmciIHRhcmdldD0i
X2JsYW5rIj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPC9hPjxicj4NCjxhIGhyZWY9
Imh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
IiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeDwvYT48L2Jsb2NrcXVvdGU+PC9kaXY+
PC9kaXY+DQo=
--00000000000049bead0590a388ed--

--===============0449567166==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0449567166==--
