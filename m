Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C33731AE5C5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CDB86E580;
	Fri, 17 Apr 2020 19:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com
 [IPv6:2607:f8b0:4864:20::1042])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6330A6E580
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 19:26:34 +0000 (UTC)
Received: by mail-pj1-x1042.google.com with SMTP id kb16so1531033pjb.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 12:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XhaPgwtXyOUWy2YcAZ3T/miGgW7dx8zQE+78W4fSp4w=;
 b=SuNqHAJYOZjugsLuNFRt9+WdtLTOmTYB2BFcriWcQasHbLFGmMEPAftJcIeCLG+e32
 E+RIAI2Zj7UpagC4nM/h3q/x1GBwYPvRJfm+xozuDMsKvPiGVNfFK2pu5yGybMgGuNo6
 zx3vikVDp5mo5jYfbL4JQW49rj49kfYhHVj6/2DGPkIbI7dt8X1MaSiN5XWmy2b2hw+G
 PsdFkSaZg8FM5gETjQtXoiqMq/B1alfGe4LmglnM8rvCOPvjlxQFYL8LVt92rWSW2ySo
 DlkGDJ3kCxa2frS+senqDi6WShbvk1T5mt1zfCaIBkwlGYwImhBVzShLVcgyvQG/yHR9
 z8jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XhaPgwtXyOUWy2YcAZ3T/miGgW7dx8zQE+78W4fSp4w=;
 b=d8ifXIyZesxrlszqSnpSuJcXuJxZp4dzO4+XYCHKu2tJUGklCcFibdeHAPCvtYFsYL
 4FteEaHQmtjuzs1ciLoCTWiedjbWiLjpLs+yAyCuj32oHyJGdTniKJJuVPI71G72w/Pr
 ddvT89c6W1dgu247NpJorkA2C9Aaz3k2Xg593fleDeDOjtXN0AcfHR6/VwMTpb4b3Zhv
 K8Jl+8F+2hQmXEl9mxHxC5Jcp/WEYS10tbvTSSUCKMy3tvxqV58E8iHOQOF0uEdxnUTK
 0HTQj6iru2/RS5ekW+COPHncuAHCnis6IR5uZx8nARmNIzAFqqXp+1xWLAia8kJoGFFm
 SLMQ==
X-Gm-Message-State: AGi0PuZpdQP0EpdckOsfJMG0GOOPCWMsa/PeabYQbiCJnQ8qIDqgZC1W
 uIoLHz3GZu8HFq7BVu60KOc2WfC9z34OtEd4/PqQWCXprrk=
X-Google-Smtp-Source: APiQypKtZMJVDJS4bGgilPNnn3VSrogFHfHe1cNbhk6lVl0mCqL8XKCBUv3Uu9gpGD3UPOf9K9u+6Qd3JdCPbNPN7jE=
X-Received: by 2002:a17:90a:d985:: with SMTP id
 d5mr6135394pjv.171.1587151593845; 
 Fri, 17 Apr 2020 12:26:33 -0700 (PDT)
MIME-Version: 1.0
References: <EoydNgW-S7xa7n3jQG150edg3gCUP2etA@mail.gmail.com>
 <20200417140531.3178704-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200417140531.3178704-1-chris@chris-wilson.co.uk>
From: Alexei Podtelezhnikov <apodtele@gmail.com>
Date: Fri, 17 Apr 2020 15:26:22 -0400
Message-ID: <CAJU=AjXQ9b0ahN17TQfTrDVp9L=eKhnquYeuVcSqiF3PMddvgA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel] sna: Forcibly relinquish
 the GPU bo cache of a SHM pixmap on flushing
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 17, 2020 at 10:05 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Before we indicate return control of the SHM Pixmap to the client (that
> is prior to the next XReply), we ensure that the original SHM buffer is
> uptodate with any changes made on the GPU. We must flush the GPU writes
> back to the CPU and so not allow ourselves to keep the dirty cache of
> the CPU bo.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Alexei Podtelezhnikov <apodtele@gmail.com>

The failed assertion is gone.

Tested-by: Alexei Podtelezhnikov <apodtele@gmail.com>

> ---
>  src/sna/sna_accel.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/src/sna/sna_accel.c b/src/sna/sna_accel.c
> index edbfe5a4a..6e14cf7b4 100644
> --- a/src/sna/sna_accel.c
> +++ b/src/sna/sna_accel.c
> @@ -2119,6 +2119,11 @@ static inline bool operate_inplace(struct sna_pixmap *priv, unsigned flags)
>         if (!USE_INPLACE)
>                 return false;
>
> +       if (flags & __MOVE_FORCE) {
> +               DBG(("%s: no, inplace operation denied by force\n", __FUNCTION__));
> +               return false;
> +       }
> +
>         if ((flags & MOVE_INPLACE_HINT) == 0) {
>                 DBG(("%s: no, inplace operation not suitable\n", __FUNCTION__));
>                 return false;
> @@ -2327,7 +2332,7 @@ skip_inplace_map:
>
>         sna_pixmap_unmap(pixmap, priv);
>
> -       if (USE_INPLACE &&
> +       if (USE_INPLACE && !(flags & __MOVE_FORCE) &&
>             (flags & MOVE_WRITE ? (void *)priv->gpu_bo : (void *)priv->gpu_damage) && priv->cpu_damage == NULL &&
>             priv->gpu_bo->tiling == I915_TILING_NONE &&
>             (flags & MOVE_READ || kgem_bo_can_map__cpu(&sna->kgem, priv->gpu_bo, flags & MOVE_WRITE)) &&
> @@ -17409,7 +17414,10 @@ void sna_accel_flush(struct sna *sna)
>                              priv->pixmap->refcnt));
>                         assert(!priv->flush);
>                         ret = sna_pixmap_move_to_cpu(priv->pixmap,
> -                                                    MOVE_READ | MOVE_WRITE);
> +                                                    MOVE_READ |
> +                                                    MOVE_WRITE |
> +                                                    MOVE_WHOLE_HINT |
> +                                                    __MOVE_FORCE);
>                         assert(!ret || priv->gpu_bo == NULL);
>                         if (priv->pixmap->refcnt == 0) {
>                                 sna_damage_destroy(&priv->cpu_damage);
> --
> 2.26.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
