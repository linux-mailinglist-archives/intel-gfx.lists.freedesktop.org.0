Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF96220A00
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 12:30:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AEB86EA8A;
	Wed, 15 Jul 2020 10:30:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2BE06EA89
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 10:30:01 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id f2so1973568wrp.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 03:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vUsZLQ84Hi9x0wI6zL+CozjB+XFKrnOu7T7rlGxAhwg=;
 b=H6scWjiciZChmIAQ/TmN/waKkPyDiubzGYB5FxjXv2oDpFwsiKIrFRCzF4SIlvP3+9
 Cen3s46RiyL0TD3DULVwUDwtHQCtSaWQ24fmAcKtapNPl6EnLtgDKXzFGsWO5vzoJ31I
 UWJXTW+8d/Y3TcTZAp2gdIh/O538p8mdu4z0SneB50Yai1dzlxCpKk2dERvduE20kaK2
 7l3kBXKNnrbm6jDeY/gu6GLEzCtJ4RbSBDsGxtPW9wA7aI0llgRc+qQJsJq8IPAo5Ak8
 0z2ZfIsWU8e01P+M63xfbP/bP3Ews3ER1bpMglKHDTfCCXFSkJnceIRd/OK2M8Mw5ASC
 rueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vUsZLQ84Hi9x0wI6zL+CozjB+XFKrnOu7T7rlGxAhwg=;
 b=f10rUF5EqbWuRwKXTnqaS0M8pnmxj2xH/RHdutV+6oorqBcJ4VCZ+bg5K2siMt7Ng6
 IeXtCluaijCA/e34WQbbGkjfQn23pH7govYyy5fv5z+nFQDkOheNH6fBIrRiUnGqiEwY
 tbfcMeEGoGBzk6aig/NMG7E2kitqZnpLUetj3c87z3+oE6YUeBRzb3Ki6nWtyxqXJjZp
 gDZaUUWEVwyXa5D9mkc5VsR0IoRh9avxcRFbGFopGTVlvevt5nOdWZeG1OEijESlQULg
 sW1oexrLuWYtjVjYgc2QsWHVQH/iM0IvUFzyh7eZ7WC+uil48t+vYA8Mxa2Sa3zFZq/0
 ++6w==
X-Gm-Message-State: AOAM531/yMoM8XW4hST0lF+kuwn64X6eRYg9fHca73KSjt/0rdyK5nRL
 WGTotD7rRT2Fs6BjRWJQa9/GGIJ8zggv3/mAJVTRPg==
X-Google-Smtp-Source: ABdhPJxKK0aRo+4vI2Ej1Nue/VQbR5yQUHzsFMkvTI//+PRCIZ5qiavZFCl8KGRLp0wXNxbuqVBWoiQ7bQLb7/Oonac=
X-Received: by 2002:adf:b18d:: with SMTP id q13mr10439960wra.256.1594809000278; 
 Wed, 15 Jul 2020 03:30:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200715100432.13928-1-chris@chris-wilson.co.uk>
 <CAP+8YyF9djTo++3Gww2NNkOE_=fu9n+HzjoN7e78pVgJf_SP7A@mail.gmail.com>
In-Reply-To: <CAP+8YyF9djTo++3Gww2NNkOE_=fu9n+HzjoN7e78pVgJf_SP7A@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 15 Jul 2020 11:29:49 +0100
Message-ID: <CAPj87rNhUZEqCYcwAvEQ5jfNVT3X6kcjhK7wqPeHpNt-nbTfoQ@mail.gmail.com>
To: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Subject: Re: [Intel-gfx] sw_sync deadlock avoidance, take 3
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, 15 Jul 2020 at 11:23, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl> wrote:
> My concern with going in this direction was that we potentially allow
> an application to allocate a lot of kernel memory but not a lot of fds
> by creating lots of fences and then closing the fds but never
> signaling them. Is that not an issue?

sw_sync is a userspace DoS mechanism by design - if someone wants to
enable and use it, they have bigger problems than unbounded memory
allocations.

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
