Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5983CFE3A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 17:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2D46E450;
	Tue, 20 Jul 2021 15:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com
 [IPv6:2607:f8b0:4864:20::b2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0F866E450
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 15:53:22 +0000 (UTC)
Received: by mail-yb1-xb2c.google.com with SMTP id v189so33397413ybg.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 08:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5QQZTezScXUSK1hKxClSD7E8kmBpVieTuUYv3CsbjlM=;
 b=WS/ww1eK+o2RX3IpQkLE6g9t6uaTqhBlpFyd2xt7MAMzTeh+kU5khWou1+ghHopaX/
 L9seoBmSLQFNL5v4elpcUxFC0b0kxWxhRrX5UgDBIoW0YTnJrVqJuIeOfPRfFuCdsT8x
 7fZgc4cCQhY0sLf5hvrDv1jDgOxOFryYEM+x7jTz6TlSxqUNPyTTfU3pR9P+e08d907J
 EQYehjP31botesPdibStfkWcG6mii+YL8AV6ttiU6vM0Yn2sroiuOTthyy16kQ+K7WeV
 eigM8boPyf0q/FpGRmOFZmJPQmS1o+g6ssvmeELWqEDBrTDQP5SmLCJn3hZBoAgeYPBi
 pfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5QQZTezScXUSK1hKxClSD7E8kmBpVieTuUYv3CsbjlM=;
 b=nfJHS8Po50OmwqsamYel72hWoFTbfpejko2KE6VrAHYy5iwZn8FaRH8/Vns6C8a75f
 yERpG4AZ42joRdkrMXpfk4e5ZkkVnt+TvMUjeWOCeIrm/RI9fbdp3l2FfHekSN8VjgXJ
 nfv8nbToQJFxCCxVgMCMeaSMFF94Vyy2P61sozjHW33uudKPHNeD3jCNEk/JXOYtsfE2
 g3g3sKHd/K4+6YYOwoxycXJighicx988rbTVexsyN+Vojg3KB8p0Q5Ue0CjOMwtVWRqq
 1M//VbxFmC+hqpa7yZi5FJ1onr+ZJ5oX6vfN6STQVNELvITs0PO48HYDaROigru1g1Nt
 IsKQ==
X-Gm-Message-State: AOAM531i5+N2HMkdyUCf6fwx7p/PvEFXARdRe3m4ztTaGgvBa82br4AC
 XOo4jRz/rOE5Gr7+4ziBeC/cA1CaJ0PNdMsoPZTTNQ==
X-Google-Smtp-Source: ABdhPJxAYGbtAYkzXf5+8WB5j6Fo7AWTmKHNX2QV8ONS5LU3nZ90C64mk/UAgcy2EboN9fBJfaRBO9EjfkS+P5usElE=
X-Received: by 2002:a25:aa69:: with SMTP id s96mr40194337ybi.241.1626796401916; 
 Tue, 20 Jul 2021 08:53:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210719083534.2949348-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210719083534.2949348-1-daniel.vetter@ffwll.ch>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 20 Jul 2021 10:53:10 -0500
Message-ID: <CAOFGe95qO8Wtkw453nr9SXktBWVXg3Uepv98Nenrgr270tTwKQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check for nomodeset in
 i915_init() first
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 19, 2021 at 3:35 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> Jason is trying to sort out the unwinding in i915_init and i915_exit,
> while reviewing those patches I noticed that we also have the
> nomodeset handling now in the middle of things.
>
> Pull that out for simplisity in unwinding - if you run selftest with
> nomodeset you get nothing, *shrug*.
>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 67696d752271..6fe709ac1b4b 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1199,14 +1199,6 @@ static int __init i915_init(void)
>         bool use_kms = true;
>         int err;
>
> -       err = i915_globals_init();
> -       if (err)
> -               return err;
> -
> -       err = i915_mock_selftests();
> -       if (err)
> -               return err > 0 ? 0 : err;
> -
>         /*
>          * Enable KMS by default, unless explicitly overriden by
>          * either the i915.modeset prarameter or by the
> @@ -1225,6 +1217,14 @@ static int __init i915_init(void)
>                 return 0;
>         }
>
> +       err = i915_globals_init();
> +       if (err)
> +               return err;
> +
> +       err = i915_mock_selftests();
> +       if (err)
> +               return err > 0 ? 0 : err;
> +

Annoyingly, this actually makes i915_exit() harder because now we need
to conditionals: One for "do you have globals?" and one for "do you
have anything at all?".  It's actually easier to get right if we have

i915_globals_init()

/* Everything that can return 0 early */

fully_loaded = true

/* Everything that can fail */

>         i915_pmu_init();
>
>         err = pci_register_driver(&i915_pci_driver);
> --
> 2.32.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
