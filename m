Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9429D84F0
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 12:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AF7710E27A;
	Mon, 25 Nov 2024 11:58:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="11OyKElO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2CB10E609
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2024 11:24:16 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-211f1b2bf2bso220015ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2024 03:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1732533856; x=1733138656;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/WB5Yd+GaXL/vqtCcIkpWFnAJUBKP7YdRREqRaARM2Y=;
 b=11OyKElOYAVlfGvZJsEsXM42C1RMQxR3g2EXEuBcl8sJXctMCCi3AEbqMw4A6xctOK
 xYwVBi4SjvoSGAW61hsdhUVXChK+a0GhcSsLV90Vn5ovZJn7a2j5qchnLhP7cG/V2Wz0
 d21m9ggwd7DS9wnbC/xZ/vLvNWcJ2acUaf2s8PPh0IHGJa4Y4zVV7juH3TOxy8G7gdf4
 gOifo2tDU3RDm1pQhJSGnlR4PHnT4DO8/p8jLxPFLFsBcczNMFPzZTB1NfaIuNNvNxkK
 VXzPMHEbalVLI08x1nCWb3AHaA4r9Y2Dc45gOSZhZVvy/hZwewISo37MDN/MXLYttlyv
 Ja7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732533856; x=1733138656;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/WB5Yd+GaXL/vqtCcIkpWFnAJUBKP7YdRREqRaARM2Y=;
 b=unye+dMztMLOTpKBMUaKYigG42oIMKp9wHbBHL90H/zpWWUjs3acF7daqacq4DdhsC
 TKAgyRbNEwaDV7QQocu3XB0VxkRDMt7s6cxSKPQyBA6pF7Fpx/sU/oTue5GkjlDitLAG
 ZjfX9VVF58IbOZ0p8ZrFayBR2ek6bhzoWovN016czgSDd6OjTjk40txNA2eEwO1U5/Sc
 NM6nixs2YYD3Rq8F7pr+6enAKx7KYuf9pxYI9jKxo5/BS+92zdT6sJ/CLm1qDSmCmTOI
 hphx3EVyD+FIRPhyuwvPAef0+TZo+ckYmORRkVvxgsbmK+TDqgpgFR4MvBlGSuwtQ9w9
 7FfQ==
X-Gm-Message-State: AOJu0Yx+1Kf/Sp89cunBoaP+pXBVm69GrK1s9a3QM+yLKikov19NENTa
 VSy/4L4qlPuDH3uj6pf6EjboiRdBw5b/TcBiwKoLt9FtY8hKXVUizVgYx6KtFAIZGlIkv0O6egU
 Z7egoGTPkXY8pMA6Tu6wzA9sEL+Ia/BdbOB8HMgM0k0V1efyNfn9w8Pk=
X-Gm-Gg: ASbGncuU39qHIack5JDMX51wcgNRVPZWpwiNVlYCcujyRr3p9UawVgds3hnKhA7iMul
 0FVXYTV09BEElg7ifMC2gCFBsZxiOXf//HQ==
X-Google-Smtp-Source: AGHT+IH61qmp3JJnfYF4kV+B4ylIpU3fCRVvWApA1DU8Ho/bNJR2PCL0VBwKRFp1wmx5Y1i3cAVg6PCKty1xcX84lV4=
X-Received: by 2002:a17:903:144b:b0:20c:e8df:2500 with SMTP id
 d9443c01a7336-2149dd8c982mr3321425ad.3.1732533856168; Mon, 25 Nov 2024
 03:24:16 -0800 (PST)
MIME-Version: 1.0
References: <20241125062804.412536-1-vidya.srinivas@intel.com>
 <20241125062804.412536-2-vidya.srinivas@intel.com>
In-Reply-To: <20241125062804.412536-2-vidya.srinivas@intel.com>
From: Brian Geffon <bgeffon@google.com>
Date: Mon, 25 Nov 2024 20:23:39 +0900
Message-ID: <CADyq12yoA2=eHNxnNibKvNw6+A81XyAXvq_8KRh+AHeoNfOZFw@mail.gmail.com>
Subject: Re: [PATCH 2/2] [RFC] drm/i915: Unbind the vma in suspend if it was
 bound
To: Vidya Srinivas <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com, 
 ville.syrjala@linux.intel.com, shawn.c.lee@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 25 Nov 2024 11:58:23 +0000
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

On Mon, Nov 25, 2024 at 3:51=E2=80=AFPM Vidya Srinivas <vidya.srinivas@inte=
l.com> wrote:
>
> In i915_ggtt_suspend_vm, if the vma was bound, the path
> to unbind/evict is not hitting during suspend. This is
> causing issues with DPT where DPT gets shrunk but the
> framebuffer is still on the DPT's bound list. This
> causes system reboot in some scenarios of suspend/resume
> where it tries to rewrite the PTEs via a stale mapping.
>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index d60a6ca0cae5..8499aa12a787 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -157,13 +157,11 @@ void i915_ggtt_suspend_vm(struct i915_address_space=
 *vm)
>                         goto retry;
>                 }
>
> -               if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
> +               if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
>                         i915_vma_wait_for_bind(vma);
>
> -                       __i915_vma_evict(vma, false);
> -                       drm_mm_remove_node(&vma->node);
> -               }
> -
> +               __i915_vma_evict(vma, false);
> +               drm_mm_remove_node(&vma->node);
>                 i915_gem_object_unlock(obj);
>         }

I think all you need is in the else path of if
(!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) is a call to
__i915_vma_unbind(vma)

But we need Ville to confirm this makes sense?

>
> --
> 2.34.1
>
