Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BBA3D0AF8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 11:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC826E4A7;
	Wed, 21 Jul 2021 09:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A716E4A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 09:08:42 +0000 (UTC)
Received: by mail-ot1-x32d.google.com with SMTP id
 j1-20020a0568302701b02904d1f8b9db81so1407931otu.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 02:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pH2kLqR9uHJFKct98CWhcdXrla7Ml6eaGMB+BZYRY7U=;
 b=Z3Wllqs4PdTF97Dg7997W2b/3u6fow8xhmkTpjhCfKS/p8Np0zg55vBIF1D3OxdXyX
 fh/kuYTkzp1p/w0g1H5CtZ3HI4E7TDwIc8SQtxrjatmdAMbwwsQGHvdcaZtJ02Qbpc5x
 8UoRecjASxPGduKR/P/5pIvGVGKBtLPsZ4w+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pH2kLqR9uHJFKct98CWhcdXrla7Ml6eaGMB+BZYRY7U=;
 b=jk/6vW0ySbANCj80FFBtHLgEu3CB3o+ajjvKkZSmH5zXh1n3k0Me5Gsojd5TcF1UHX
 xzAJ63AOkr0MNW4nAD33ES3mIIQ3DmshEzn3iRGiWiAbgFXs8eP38yNef0e4/vkPMbR0
 dnoDhnYCsivkjeaTUM++XljMSvXSUxHeT+zwwvCjvF8gZOvsCST/q8fBn782QFfp714g
 chVjFPuzbOART9oh0yGTFcHd7Q/6mwYVgRjgcP8b8xfwG8xDpmT2OFyRtzaLRXEEFgqQ
 9xvojqpb9PJYONOlCnsdXO0AqUHQ8KRQ4aI0URK9jXhoD99JIu9NeDn8ydCE7kS16qEy
 dc/g==
X-Gm-Message-State: AOAM532m2BDu0FSlgKQn1wzpij8unEyPHj1sxrJnVhnkvN4/KujNNALK
 fljI9rfg5rMcfWJzg/EKCeM6wUMZEpSbFM0d8Gyo/lZWufg=
X-Google-Smtp-Source: ABdhPJzQxufEtC+6jvWjkRYiq2bSYeGblGEc/nv43C5l1YfyMztOvlwzZdz49YSlb3vcOplzMZ+FYTDdA+9I8t3fhiE=
X-Received: by 2002:a05:6830:2802:: with SMTP id
 w2mr24216793otu.303.1626858521716; 
 Wed, 21 Jul 2021 02:08:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210721062607.512307-1-zhenyuw@linux.intel.com>
In-Reply-To: <20210721062607.512307-1-zhenyuw@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 21 Jul 2021 11:08:30 +0200
Message-ID: <CAKMK7uGhcnfOPMUuWOZMErHWFqeixpPFURXFS2oVm2d-r32NZw@mail.gmail.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>, "Bloomfield,
 Jon" <jon.bloomfield@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: Fix cached atomics setting
 for Windows VM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, "Xu,
 Terrence" <terrence.xu@intel.com>,
 intel-gvt-dev <intel-gvt-dev@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 21, 2021 at 8:21 AM Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> We've seen recent regression with host and windows VM running
> simultaneously that cause gpu hang or even crash. Finally bisect to
> 58586680ffad ("drm/i915: Disable atomics in L3 for gen9"), which seems
> cached atomics behavior difference caused regression issue.
>
> This trys to add new scratch register handler and add those in mmio
> save/restore list for context switch. No gpu hang produced with this one.
>
> Cc: stable@vger.kernel.org # 5.12+
> Cc: "Xu, Terrence" <terrence.xu@intel.com>
> Fixes: 58586680ffad ("drm/i915: Disable atomics in L3 for gen9")
> Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>

Adding Jon Bloomfield, since different settings between linux and
windows for something that can hard-hang the machine on gen9 sounds
... not good.
-Daniel

> ---
>  drivers/gpu/drm/i915/gvt/handlers.c     | 1 +
>  drivers/gpu/drm/i915/gvt/mmio_context.c | 2 ++
>  2 files changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 98eb48c24c46..345b4be5ebad 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -3134,6 +3134,7 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
>         MMIO_DFH(_MMIO(0xb100), D_BDW, F_CMD_ACCESS, NULL, NULL);
>         MMIO_DFH(_MMIO(0xb10c), D_BDW, F_CMD_ACCESS, NULL, NULL);
>         MMIO_D(_MMIO(0xb110), D_BDW);
> +       MMIO_D(GEN9_SCRATCH_LNCF1, D_BDW_PLUS);
>
>         MMIO_F(_MMIO(0x24d0), 48, F_CMD_ACCESS | F_CMD_WRITE_PATCH, 0, 0,
>                 D_BDW_PLUS, NULL, force_nonpriv_write);
> diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
> index b8ac80765461..f776c470914d 100644
> --- a/drivers/gpu/drm/i915/gvt/mmio_context.c
> +++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
> @@ -105,6 +105,8 @@ static struct engine_mmio gen9_engine_mmio_list[] __cacheline_aligned = {
>         {RCS0, COMMON_SLICE_CHICKEN2, 0xffff, true}, /* 0x7014 */
>         {RCS0, GEN9_CS_DEBUG_MODE1, 0xffff, false}, /* 0x20ec */
>         {RCS0, GEN8_L3SQCREG4, 0, false}, /* 0xb118 */
> +       {RCS0, GEN9_SCRATCH1, 0, false}, /* 0xb11c */
> +       {RCS0, GEN9_SCRATCH_LNCF1, 0, false}, /* 0xb008 */
>         {RCS0, GEN7_HALF_SLICE_CHICKEN1, 0xffff, true}, /* 0xe100 */
>         {RCS0, HALF_SLICE_CHICKEN2, 0xffff, true}, /* 0xe180 */
>         {RCS0, HALF_SLICE_CHICKEN3, 0xffff, true}, /* 0xe184 */
> --
> 2.32.0.rc2
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
