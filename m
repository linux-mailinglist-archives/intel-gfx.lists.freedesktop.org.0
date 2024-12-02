Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B58D89E0747
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 16:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CEB910E7A0;
	Mon,  2 Dec 2024 15:41:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="sRecaUse";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6703310E7A0
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 15:41:13 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-21561f7d135so190885ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Dec 2024 07:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1733154073; x=1733758873;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9q+sUrToGLNbVpeL9dFzZryPjEzZtRydtQpl1qi0Clo=;
 b=sRecaUse7bFxJzKfUiVc01IcG9vmapXAhX+poKTNDpASmJExQRjFYxTPJgWXzJBMTV
 aDxbiTDRyaxiU5MguLX9epftn2tsiHbFpNLrX4Dikp9EPdWWtQ0Md1Fs0S1vSYx2nMOI
 0qPTAtDQdJb/DgbtuLqd3mGnV5BPwwnQWOJzyzKN0tUa+Z/NpRdDiJ43XmfO6JZpjw9W
 KCOeEnMdcngDdQjB+XZdjVkfnDBVmUzLnhQCDvU1w/3U4txyf01Jmh2n1AW1+v9T7ymK
 RhuV3R+7X32NjdrOaaiXX5bnnpWrxeDCEEEdTxpmeRg7XOOkQYnfeGjfP5GzNQFJ/gM7
 Hjng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733154073; x=1733758873;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9q+sUrToGLNbVpeL9dFzZryPjEzZtRydtQpl1qi0Clo=;
 b=c1Wi0bRin7BeSDvFFyO6uQYFqXAAskh/dpzVKWBm3RI/F2EpgMOZRIJWJfhStEuxb5
 U11Z+8aKfi1rwBcOr/FHBmAp7fczB/a0QxB7ln1gfO9hieCeL7jTJWMiaG/RYsOtSnC1
 pCAZH+znPNxzwPqF85j90Vnm3kKzW3V/YOGjT4u4REp0ux9pivwulC4e5m9wI+zmF4w+
 9Ha1Ka0UaZQUURkZ6bkd0ZVIwFRtWzI0KsQwmMjfkjq5zQRBTskPdga2rCDzFQHhjJYi
 u46UclscpUX1GeVHiEiHu2tXC7qs6ir0t4EIxNJD/xN6vvlc4EHeNOG0xTUT4sGGWmGc
 aV9w==
X-Gm-Message-State: AOJu0YxeLvXVXvCyEKgcjHl6zlapSPqVI0GD+FuycRoTiaj1M4UxvW/0
 rTxWPNmHBpEJ2daMpHq4v2k1qtmp3tOg7q9eKxvWhqQG7COO9ZeE1Bia9V+W1M0DIAWeZcnDlml
 HceKJTRUbLGDN7V8En6NMAXvtpktSyMGB7teALF6n2lbRTE67kQ==
X-Gm-Gg: ASbGncsAwaiAkDlPaqyEhU5+1NT/O/6SnkCZBbvXC6IlJrZUP6FgbRTVvuXuPRlW8yh
 HDL0ADf6nExSpq+F10Jc8pRHuc7fRQg==
X-Google-Smtp-Source: AGHT+IH5W1yS1CQVTmIJtEHvq3DK4ER7IbJalfUq9VFmmgxpEr4Esx4j/FhrGOJ/k9bbr3IoX6Wock6cK1+kJyheSkE=
X-Received: by 2002:a17:903:1447:b0:20c:e169:eb8c with SMTP id
 d9443c01a7336-21521aca975mr6768665ad.1.1733154072657; Mon, 02 Dec 2024
 07:41:12 -0800 (PST)
MIME-Version: 1.0
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
 <20241127061117.25622-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20241127061117.25622-4-ville.syrjala@linux.intel.com>
From: Brian Geffon <bgeffon@google.com>
Date: Mon, 2 Dec 2024 10:40:36 -0500
Message-ID: <CADyq12zaBCxJ_dZVadew+JMp1=uNVAJWYX-k45m76-G925UuTg@mail.gmail.com>
Subject: Re: [PATCH 3/4] drm/i915/dpt: Evict all DPT VMAs on suspend
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Vidya Srinivas <vidya.srinivas@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 27, 2024 at 1:11=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently intel_dpt_resume() tries to blindly rewrite all the
> PTEs for currently bound DPT VMAs. That is problematic because
> the CPU mapping for the DPT is only really guaranteed to exist
> while the DPT object has been pinned. In the past we worked
> around this issue by making DPT objects unshrinkable, but that
> is undesirable as it'll waste physical RAM.
>
> Let's instead forcefully evict all the DPT VMAs on suspend,
> thus guaranteeing that intel_dpt_resume() has nothing to do.
> To guarantee that all the DPT VMAs are evictable by
> intel_dpt_suspend() we need to flush the cleanup workqueue
> after the display output has been shut down.
>
> And for good measure throw in a few extra WARNs to catch
> any mistakes.
>
> Cc: Brian Geffon <bgeffon@google.com>
> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   |  3 +++
>  drivers/gpu/drm/i915/display/intel_dpt.c      |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          | 19 ++++++++++++++-----
>  drivers/gpu/drm/i915/gt/intel_gtt.h           |  4 ++--
>  4 files changed, 21 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 286d6f893afa..973bee43b554 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -680,6 +680,9 @@ int intel_display_driver_suspend(struct drm_i915_priv=
ate *i915)
>         else
>                 i915->display.restore.modeset_state =3D state;
>
> +       /* ensure all DPT VMAs have been unpinned for intel_dpt_suspend()=
 */
> +       flush_workqueue(i915->display.wq.cleanup);
> +
>         intel_dp_mst_suspend(i915);
>
>         return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i=
915/display/intel_dpt.c
> index ce8c76e44e6a..8b1f0e92a11c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -205,7 +205,7 @@ void intel_dpt_resume(struct drm_i915_private *i915)
>                 struct intel_framebuffer *fb =3D to_intel_framebuffer(drm=
_fb);
>
>                 if (fb->dpt_vm)
> -                       i915_ggtt_resume_vm(fb->dpt_vm);
> +                       i915_ggtt_resume_vm(fb->dpt_vm, true);
>         }
>         mutex_unlock(&i915->drm.mode_config.fb_lock);
>  }
> @@ -233,7 +233,7 @@ void intel_dpt_suspend(struct drm_i915_private *i915)
>                 struct intel_framebuffer *fb =3D to_intel_framebuffer(drm=
_fb);
>
>                 if (fb->dpt_vm)
> -                       i915_ggtt_suspend_vm(fb->dpt_vm);
> +                       i915_ggtt_suspend_vm(fb->dpt_vm, true);
>         }
>
>         mutex_unlock(&i915->drm.mode_config.fb_lock);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index d60a6ca0cae5..f6c59f20832f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -107,11 +107,12 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915=
)
>  /**
>   * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or DPT =
VM
>   * @vm: The VM to suspend the mappings for
> + * @evict_all: Evict all VMAs
>   *
>   * Suspend the memory mappings for all objects mapped to HW via the GGTT=
 or a
>   * DPT page table.
>   */
> -void i915_ggtt_suspend_vm(struct i915_address_space *vm)
> +void i915_ggtt_suspend_vm(struct i915_address_space *vm, bool evict_all)
>  {
>         struct i915_vma *vma, *vn;
>         int save_skip_rewrite;
> @@ -157,7 +158,7 @@ void i915_ggtt_suspend_vm(struct i915_address_space *=
vm)
>                         goto retry;
>                 }
>
> -               if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
> +               if (evict_all || !i915_vma_is_bound(vma, I915_VMA_GLOBAL_=
BIND)) {

I don't fully understand this part. Why can we safely assume we can do
__i915_vma_evict(), shouldn't we want to __i915_vma_unbind() in the
case where it was bound? Because of the unconditional evict_all we
might be unbinding a bound vma, no? Is that safe? Please forgive my
ignorance if this question doesn't make sense.

>                         i915_vma_wait_for_bind(vma);
>
>                         __i915_vma_evict(vma, false);
> @@ -172,13 +173,15 @@ void i915_ggtt_suspend_vm(struct i915_address_space=
 *vm)
>         vm->skip_pte_rewrite =3D save_skip_rewrite;
>
>         mutex_unlock(&vm->mutex);
> +
> +       drm_WARN_ON(&vm->i915->drm, evict_all && !list_empty(&vm->bound_l=
ist));
>  }
>
>  void i915_ggtt_suspend(struct i915_ggtt *ggtt)
>  {
>         struct intel_gt *gt;
>
> -       i915_ggtt_suspend_vm(&ggtt->vm);
> +       i915_ggtt_suspend_vm(&ggtt->vm, false);
>         ggtt->invalidate(ggtt);
>
>         list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> @@ -1545,6 +1548,7 @@ int i915_ggtt_enable_hw(struct drm_i915_private *i9=
15)
>  /**
>   * i915_ggtt_resume_vm - Restore the memory mappings for a GGTT or DPT V=
M
>   * @vm: The VM to restore the mappings for
> + * @all_evicted: Were all VMAs expected to be evicted on suspend?
>   *
>   * Restore the memory mappings for all objects mapped to HW via the GGTT=
 or a
>   * DPT page table.
> @@ -1552,13 +1556,18 @@ int i915_ggtt_enable_hw(struct drm_i915_private *=
i915)
>   * Returns %true if restoring the mapping for any object that was in a w=
rite
>   * domain before suspend.
>   */
> -bool i915_ggtt_resume_vm(struct i915_address_space *vm)
> +bool i915_ggtt_resume_vm(struct i915_address_space *vm, bool all_evicted=
)
>  {
>         struct i915_vma *vma;
>         bool write_domain_objs =3D false;
>
>         drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
>
> +       if (all_evicted) {
> +               drm_WARN_ON(&vm->i915->drm, !list_empty(&vm->bound_list))=
;
> +               return false;
> +       }
> +
>         /* First fill our portion of the GTT with scratch pages */
>         vm->clear_range(vm, 0, vm->total);
>
> @@ -1598,7 +1607,7 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
>         list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
>                 intel_gt_check_and_clear_faults(gt);
>
> -       flush =3D i915_ggtt_resume_vm(&ggtt->vm);
> +       flush =3D i915_ggtt_resume_vm(&ggtt->vm, false);
>
>         if (drm_mm_node_allocated(&ggtt->error_capture))
>                 ggtt->vm.scratch_range(&ggtt->vm, ggtt->error_capture.sta=
rt,
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/g=
t/intel_gtt.h
> index 6b85222ee3ea..0a36ea751b63 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -608,8 +608,8 @@ int i915_ppgtt_init_hw(struct intel_gt *gt);
>  struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt,
>                                      unsigned long lmem_pt_obj_flags);
>
> -void i915_ggtt_suspend_vm(struct i915_address_space *vm);
> -bool i915_ggtt_resume_vm(struct i915_address_space *vm);
> +void i915_ggtt_suspend_vm(struct i915_address_space *vm, bool evict_all)=
;
> +bool i915_ggtt_resume_vm(struct i915_address_space *vm, bool all_evicted=
);
>  void i915_ggtt_suspend(struct i915_ggtt *gtt);
>  void i915_ggtt_resume(struct i915_ggtt *ggtt);
>
> --
> 2.45.2
>
