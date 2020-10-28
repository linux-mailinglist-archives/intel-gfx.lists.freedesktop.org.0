Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6141E29CCD2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 01:46:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 273946E255;
	Wed, 28 Oct 2020 00:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 785BA6E255
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 00:46:53 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id a5so3875475ljj.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 17:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TUD8ay06BVPxlabmvIIcN6afv5KlVK6te/JW5ssKI1o=;
 b=JZg+DdpL4ViUSdpidGLIS8Lvj6t/F6V3TIumo6Xzzk3wHOYHf8J5ScoY9v/f7dydWM
 nv4XsAnIQzmylveMvZr91+WC+bQAAAIRhxcJhn/M7+H3bE9M0U0UhfT/ybL8B48d2HBj
 vsKgTZvF6t7Q2qBlAfTqqRg4zzUyXlJjBLCkgD7zpwFmKFUBiwItTllSoIdd6B13r+ZO
 4AC4UthU5nujPQoPfFt5u/8OuVM9z3BEnhHHoJDaIhGLMWm4kWeROVPWmgAHmrMxkCKh
 mTs39gV8DfBFBGqwYXJPLIdxfLebZhhXbcmdSgNCFpn+Tb6CDKcf0N5nJQ7YGP64Wa84
 bM2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TUD8ay06BVPxlabmvIIcN6afv5KlVK6te/JW5ssKI1o=;
 b=Yj+LrEzfpxA/u9qvqZv5uwT9ZhqsDDYlZaPOl2HlASxPz5QH42Vy7MsRFcwqEN1vrV
 eWusCiWVaCbhjhL6G1CBVv2cutT6h+TUftEiiapl+BHaFVvn7tEpNccODV3hHrqfmgj1
 H9fqAxGDIAFVCiS6iMX8ff52r6SDh3uOZ51kU9l2BTBKpPRkedNYMwO6CSWyiOHpqkEE
 lZP61nPkeCt1b/HZoG2jE02NvIqziW6pjDP2Gz+L0PuNthM9cB+prakn5FAADKCuRtLK
 KEoNrn8Y9kAPneztT+DXLlBoIZM26ltrbw0MAoP5PvB52h/MR4WOUGWa7jTfSVqe6TpU
 ln2g==
X-Gm-Message-State: AOAM530hFUSLU1VHs2y/UY8TzP22I/Ybvluy6VmGLmLH8rGp7rHqZS81
 isuSIlU31yLIUcbC3ZcEN8Y1b6xghwTsRKPbabw=
X-Google-Smtp-Source: ABdhPJzJj19opmLEhtN1yCanZW1+zX5AlTUgsHxULq7q9O4nw6m2hldsR0zTrS1F4uDQv97cnc6+62yr9xVIH3UluVI=
X-Received: by 2002:a2e:b5b3:: with SMTP id f19mr2233003ljn.467.1603846011811; 
 Tue, 27 Oct 2020 17:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <20201028000610.932524-1-lucas.demarchi@intel.com>
In-Reply-To: <20201028000610.932524-1-lucas.demarchi@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 27 Oct 2020 17:46:40 -0700
Message-ID: <CAKi4VA+=LobofTEQ30QHWPi_0VHypcKG+45tNTrgptbxxQLkRA@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Fix unbalanced braces
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 27, 2020 at 5:06 PM Lucas De Marchi
<lucas.demarchi@intel.com> wrote:
>
> Missing braces after rebase and surprisingly not caught by checkpatch.
>
> Fixes: 229f31e2d370 ("drm/i915/dg1: add hpd interrupt handling")
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index dc33c96d741d..9087fff662c3 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3666,9 +3666,9 @@ static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
>         gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
>         I915_WRITE(SDEIMR, ~mask);
>
> -       if (HAS_PCH_DG1(dev_priv))
> +       if (HAS_PCH_DG1(dev_priv)) {
>                 icp_ddi_hpd_detection_setup(dev_priv, DG1_DDI_HPD_ENABLE_MASK);
> -       else if (HAS_PCH_TGP(dev_priv)) {
> +       } else if (HAS_PCH_TGP(dev_priv)) {

actually this will go away soon when
https://patchwork.freedesktop.org/patch/396744/?series=82411&rev=4 is
merged, so this patch can be ignored.

Lucas De Marchi

>                 icp_ddi_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK);
>                 icp_tc_hpd_detection_setup(dev_priv, TGP_TC_HPD_ENABLE_MASK);
>         } else if (HAS_PCH_JSP(dev_priv)) {
> --
> 2.29.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
