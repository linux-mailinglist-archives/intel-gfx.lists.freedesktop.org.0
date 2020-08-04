Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3729223C1B0
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 23:45:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA4A89D61;
	Tue,  4 Aug 2020 21:45:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FBD68981D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Aug 2020 21:45:38 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id df16so14640851edb.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Aug 2020 14:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eKqzGF/Sd/cvWrhXsYSRUKX4gtV2FhAvyIH/uRuYKNY=;
 b=j56WPbHFRVu4aGGFpnc2MP3ehB6RNNFfMB7qefM21E8DM1k5dDRELt5Pp6n8O2G2Xg
 mTVVATnL7jYzfLKsJS/FJNd4VJkzJsHKwBmxKV1ZaQSH6JCpcNWgOXMG71Qwo3GLdjGX
 BAEcUNZLjqEnlNdTdfqVQnjc/7CpWYpreqQgxDO6MHCPK5JCy36Kko4tYn/LioanI7Iq
 9f9jdOVmJ8w8Wld1GIF5mGZfXY9LRN14J+BB1mmBtApo4JZ0Kx3br+UNgcyKWcRJkWbt
 TiGyFHPsKAAL8sCriO939IyBM8UyrOW/ZORKCzYIOBn8L1QvN+xTpofkRdgD89Qdr+pl
 d1Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eKqzGF/Sd/cvWrhXsYSRUKX4gtV2FhAvyIH/uRuYKNY=;
 b=PpUCZkDzzlUlKxH5rBiJYcpRcyarDUZ1VtRH/Z1ZCCl6f09YlB3aGPXq9Pdu7fj6qO
 rqo5Y+Nwf5HAAXc5/v61XcrPFNyZ+xV6ArsJhEHJF+UCTCImrLO4DQl4JxSuI5E4/IeB
 GQag18iHrhvn1aJ7vQ1EDvrOhfwGy1Z9ZX8Zwtrz2ySG5qFHD/W2iYj3nGevPOtgTi5e
 lXRbc2RZZ0NnFHP3Zxufu40bFDK9vhgcO1LuB5FhZDrvYudh9zmEy2gxSwnC8tIwPQ0x
 ELFedD62Tax0KZZzseACsEO0RCy6sXzzzEBOzlyL0yfr21Ws1xVxMBXFhNA03SyzZwZV
 aGiQ==
X-Gm-Message-State: AOAM533d0QIxIwnvor7CbF1JC15dr52Ch5S++BnUsRErfXgZkfekMWoi
 Bsq3fqTn7/jQQJTjNg8kqydu8GQWOxWV/f5gKM7mnLdN
X-Google-Smtp-Source: ABdhPJwPnxWP9K8moAW9XB3eMCjexd9MJCaVazioJXq3kARy9JohyXrvTc4XBt+noer0+nZksDYkSfoO4qU3H4z1fOw=
X-Received: by 2002:aa7:cc10:: with SMTP id q16mr9945935edt.298.1596577537055; 
 Tue, 04 Aug 2020 14:45:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
 <CAPM=9twmsrNehJjFZrehwORg-Nyzo_cEq8CiY5=bzsOv8G7pPA@mail.gmail.com>
 <159639701401.26228.4061968059817196468@build.alporthouse.com>
In-Reply-To: <159639701401.26228.4061968059817196468@build.alporthouse.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 5 Aug 2020 07:45:25 +1000
Message-ID: <CAPM=9twb2jhWhwvD3HWjG04ihxnYv+EgJ0rQPwL_aHSjJn-NNQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] Time, where did it go?
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 3 Aug 2020 at 05:36, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Dave Airlie (2020-08-02 18:56:44)
> > On Mon, 3 Aug 2020 at 02:44, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > >
> > > Lots of small incremental improvements to reduce execution latency
> > > which basically offsets the small regressions incurred when compared to
> > > 5.7. And then there are some major fixes found while staring agape at
> > > lockstat.
> >
> > What introduced the 5.7 regressions? are they documented somewhere.
>
> No. There's a 5.8-rc1 bisect (to the merge but not into rc1) for
> something in the core causing perf fluctuations, but I have not yet
> reproduced that one to bisect into the rc1 merge. [The system that showed
> the issue has historically seen strong swings from p-state setup, might
> be that again?]. This is from measuring simulated transcode workloads that
> we've built up to track KPI. That we can then compare against the real
> workloads run by other groups.
>
> > What is the goal here, is there a benchmark or application that this
> > benefits that you can quantify the benefits?
>
> Entirely motivated by not wanting to have to explain why there's even a
> 1% regression in their client metrics. They wouldn't even notice for a
> few releases by which point the problem is likely compounded and we
> suddenly have crisis meetings.
>
> > Is the lack of userspace command submission a problem vs other vendors here?
>
> If you mean HW scheduling (which is the bit that we are most in dire need
> of for replacing this series), not really, our closest equivalent has not
> yet proven itself, at least in previous incarnations, adequate to their
> requirements.

I don't think this sort of thing is acceptable for upstream. This is
the platform problem going crazy.
Something regresses in the kernel core, and you refactor the i915
driver to get horribly more complicated to avoid fixing the core
kernel regressions?

This has to stop, if Intel can't stop it internally, i.e. the GEM
kernel team hasn't got the sort of power, then it has to stop
upstream.

This is a hard NAK for this sort of refactoring, now and in the future.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
