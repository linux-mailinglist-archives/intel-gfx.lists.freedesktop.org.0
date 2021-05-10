Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBCB37A655
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 14:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2D3F6EA2A;
	Tue, 11 May 2021 12:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAAE6E8E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 20:50:08 +0000 (UTC)
Received: by mail-il1-x134.google.com with SMTP id z1so7419583ils.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 13:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+OPH32eMyvWVljUKupcgNYrsp+22kITMh1bNgQuNG54=;
 b=Mxjxihzh//9zKcu9Ei/s7qpprfPr0u6IWd/fzG/27jG6O59oV+tfK4/196kyU31Vcl
 3nSGBuQQvB66D/v7ppQcnRoAsabD/OhMkAkCh9ev8A3nkJhVCwYlm39d7pXdJ264+48s
 +HI1esCqRgNIuzrxE1+BCB3zfAROJXA/dbOBX5dOQRzeucERNZzChMSkYmrAYgdJV24b
 utcpquXLHT6v5hQWpDg18BYyfonggHceKG03q6Q1vlyEC8O/L162JWQjgIYAyMfLqq6y
 tW224WjoE6dM9wXytcfyTASLjZ9+hpH4WSr7e84wm+je4DzjYy3EXHk+FC0BiZccNGNI
 ojIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+OPH32eMyvWVljUKupcgNYrsp+22kITMh1bNgQuNG54=;
 b=g6P9EHHqj/rXtBEDIN8uXaD2jGCgRv+YIrw5UvhpPC47WAJT8mdz+bX+4I9/AEdwTo
 Qxk2Frrow7TDEtbJmZ9VOfE+vii7V1oOA6pw8b7+p7Z59zHfP0AI67OZ6cbWXBYOYNZ/
 WvigbeHwXqIR8Iw929/7Wv/D8iujm+R7Wd1dmckcIjBnLDErNUpr39rktfiFTTgrfAP/
 ADMGb4ePHjvOMyNyCRGozw1hPQOIeRvzLF6LIuPWALpvCYB+P1JdviPO8f6KioytEmpn
 O3A9LO+eO1tWTEgOod/sItnxY+EqjgS6J8cqAL56u1ETiq7LI0yK8jlE89QlY8RTje5N
 M6Ww==
X-Gm-Message-State: AOAM530P6okO5Zq4D95R/wsmynFmx7yWkZGIcESwjT3g2nNpmNjpZeXP
 p667YDUvWQjVLsewCmcNEVkciTjj+zH6YBURmh8=
X-Google-Smtp-Source: ABdhPJxECFuCLykYB7YKe0je6q9qiM93rrTQq38VoIiZuQvsqL5p9dNor139YkV9lGC/+C8bXFsEpZBY1+j4DckipRU=
X-Received: by 2002:a92:d3c4:: with SMTP id c4mr21581909ilh.50.1620679807782; 
 Mon, 10 May 2021 13:50:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210509044330.4655-1-pauldzim@gmail.com>
 <02957632-b050-f9eb-fcd8-75db9c92b8e0@ubuntu.com>
In-Reply-To: <02957632-b050-f9eb-fcd8-75db9c92b8e0@ubuntu.com>
From: Paul Zimmerman <pauldzim@gmail.com>
Date: Mon, 10 May 2021 13:49:42 -0700
Message-ID: <CADBGO7_cH2e1-zgVNvwVPRogqeFjTfJhKcuTfdF=xc_GoMmknA@mail.gmail.com>
To: Timo Aaltonen <tjaalton@ubuntu.com>
X-Mailman-Approved-At: Tue, 11 May 2021 12:09:59 +0000
Subject: Re: [Intel-gfx] [PATCH RFC] Revert "drm/i915: Try to use
 fast+narrow link on eDP again and fall back to the old max strategy on
 failure"
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 10, 2021 at 7:00 AM Timo Aaltonen <tjaalton@ubuntu.com> wrote:
>
> On 9.5.2021 7.43, Paul Zimmerman wrote:
> > This reverts commit 2bbd6dba84d44219387df051a1c799b7bac46099.
> >
> > Since 5.12-rc2, my Dell XPS-15 laptop has had a blank screen on boot.
> > The system seems to run fine other than having no display, I am able
> > to ssh into the machine. I don't see anything interesting in the dmesg
> > log. I bisected the problem down to this commit, and reverting it fixes
> > the problem.
>
> Have you tried with drm-tip? It has acca7762eb71bc0 which hopefully
> helps here.

I picked that one commit from the drm-tip tree (wasn't sure how to merge
the entire tree into the kernel) and can confirm that it does fix the problem.
Thank you! I hope the fix will be sent to Linus pretty soon, and it will need
backporting to the 5.12 kernel as well.

- Paul
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
