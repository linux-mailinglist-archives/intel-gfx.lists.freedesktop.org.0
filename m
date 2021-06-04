Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5621339BFD8
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 20:46:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C5656F8A0;
	Fri,  4 Jun 2021 18:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA556F89F
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 18:46:47 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id a1so5849616lfr.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 11:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CcgqJT8ZkkZ7A/z3l2ipf5uWh4ffG6GQsS+y29hFzEc=;
 b=netQR9Hk9qiv0+zDpQZugUuyLClkJc1hyYn4sR4Qp8ABO6IWco2rgpjPZKlNNr4Gmj
 8/lkBS5fEOe/bYZawBFeF+JIUn5y5j91UrKcMsQ86myIiiJzWs7FUJA31IdpQyO+k19U
 eSvaxKCeMCUGoKwuHhU/fSaOLj2AsjohHMmiw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CcgqJT8ZkkZ7A/z3l2ipf5uWh4ffG6GQsS+y29hFzEc=;
 b=CsMMwe5DJEgAFad6reHZSvKRHTtarn08FghmxQPMI5k8u0PmZ9K3pzap3bojizLJ79
 Tza86UEdxOWo0x0PMy7fr1CUQQFvV1bjfV1+zppTk2X1Etm7xInaoPLsV78P7TIDWa9p
 jVrsNtO2Xw8pUvpQes+mhQuHh9/BXbivRh7nn8AC4IlMmv/OUMcIknB6+h2f1S44A428
 zfg5FI3Lld/90zoYBu7CDGnAWQRG/uXkzCK+jomiGJeq5HPeI0E0ot3+7LnR3uxsztO0
 crv7Gl11rEcT5tBYJzK4UwpDXfHnvPuWnWTvNk5JzLAq69ihQ0CbHanHg9no4cWjIBbZ
 lfNw==
X-Gm-Message-State: AOAM531shHhOioJwR2ipTQ28c6JfPVVggwUfqu2Oo3tQdXu/S6E0ihsp
 zkKYYlahIVbxdOnJlPpVa8K+d3RG21e9eUrYLlSseQ==
X-Google-Smtp-Source: ABdhPJxpjqXpb24B12qDx/5/FkiUsMOyKCktM7R79vwwDZMc5DWBZ2nKuXoj0FAELO1Fjg9O6wcvGUUWuI0G8VILHh4=
X-Received: by 2002:a19:6a09:: with SMTP id u9mr3582361lfu.451.1622832405449; 
 Fri, 04 Jun 2021 11:46:45 -0700 (PDT)
MIME-Version: 1.0
References: <1622175883-12405-1-git-send-email-vidya.srinivas@intel.com>
In-Reply-To: <1622175883-12405-1-git-send-email-vidya.srinivas@intel.com>
From: Mark Yacoub <markyacoub@chromium.org>
Date: Fri, 4 Jun 2021 14:46:34 -0400
Message-ID: <CAJUqKUojeh3fv2KA7=xwOWtaF+axW0EuNk3PJ0iEqft_cFXTxg@mail.gmail.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_flip.c: Fix subtests
 flip-vs-suspend
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 charlton.lin@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tested it on ChromeOS and it runs well. But I think we should fix the
root cause instead.

On Fri, May 28, 2021 at 12:33 AM Vidya Srinivas
<vidya.srinivas@intel.com> wrote:
>
> Some Intel Gen11 systems are not able to do a RTC wake.
> Instead change the default SUSPEND_TEST_NONE to
> SUSPEND_TEST_PLATFORM.
>
Tested on ChromeOS on TGL (Delbin) and JSL (Drawlat)
Tested-by: Mark Yacoub <markyacoub@chromium.org>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_flip.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/tests/kms_flip.c b/tests/kms_flip.c
> index 8f736652be90..8afac88c9b15 100755
> --- a/tests/kms_flip.c
> +++ b/tests/kms_flip.c
> @@ -835,7 +835,8 @@ static bool run_test_step(struct test_output *o, unsigned int *events)
>
>         if (o->flags & TEST_SUSPEND)
>                 igt_system_suspend_autoresume(SUSPEND_STATE_MEM,
> -                                             SUSPEND_TEST_NONE);
> +                                             is_i915_device(drm_fd)?
> +                                             SUSPEND_TEST_PLATFORM:SUSPEND_TEST_NONE);
>
>         if (do_vblank && (o->flags & TEST_EINVAL) && o->vblank_state.count > 0)
>                 igt_assert(do_wait_for_vblank(o, o->pipe, target_seq, &vbl_reply)
> --
> 2.7.4
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
