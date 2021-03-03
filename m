Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6633C32AE1D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 03:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB1A89C7F;
	Wed,  3 Mar 2021 02:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FC8C89C7F
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 02:49:17 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id m22so34687480lfg.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 18:49:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Do0tPxLiJwNqOAPwe4/KJraOgbrbO6F7zb23kgWTc+g=;
 b=e9DTVB6u7mSr1vSNoS09qTNDQ3+A5KmeTg6AwqpffSp9gDWk+DwOOHfi6hukG2IJIO
 Z5LXFiMflEmRWnD9XiFNR/K+O2R+am1eaDscfGrku4kugN2FfvSXn2Wc3X7+57I9j7BY
 W5MiJEyf+O+k1nahC3wFfexgHPFsk0XO5smcg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Do0tPxLiJwNqOAPwe4/KJraOgbrbO6F7zb23kgWTc+g=;
 b=JF1jKhX8j5VHrzaCpC4MjL2Cg/mK0BkN7NScf4mvahCETyKnzm/omZ/Tzp4hY/xbNU
 BV7Q4tLJKbxUQ7G7Jvvj8wMRj1iT42BN0+YqQlQhdI90Pg7lCUCocpN2D8nAK6tgtI7n
 dL9ZUgWSq+9q/nDX5PJyiBm3kz+mliQFpQUkVMpDG43DPpUg1bve0IqcoSLsZ0McNOwB
 gzjekmL4nvqjODJHzKKCwgyPwlw7hdnDUJJuk202a6iuSVOE3Di8a9EEst7GhZ3Oa1w5
 br7S1zFV4wq1vXdUPTBo8mrJpgZcm/gkvhpHZX49fRr3lfmraTydDQPVEB02YbcUYpTA
 HHbw==
X-Gm-Message-State: AOAM532wRPvNsX2TEznxS3i5Aru/tjGg/RvU1hzuja78EvNGZe1fEV7V
 +M8sLGP5yQtJUT0a9yeryvqTFffgKOeJHg==
X-Google-Smtp-Source: ABdhPJyYdG3VTZyRsE39AsqFOINx4lR9RasqYb+rH/1h5K2gI0GcNngD3OFGiw22hKRH/8cBAaqrWw==
X-Received: by 2002:a05:6512:2202:: with SMTP id
 h2mr13565330lfu.392.1614739755614; 
 Tue, 02 Mar 2021 18:49:15 -0800 (PST)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com.
 [209.85.208.178])
 by smtp.gmail.com with ESMTPSA id n17sm2827611lfl.49.2021.03.02.18.49.14
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Mar 2021 18:49:15 -0800 (PST)
Received: by mail-lj1-f178.google.com with SMTP id h4so26509101ljl.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 18:49:14 -0800 (PST)
X-Received: by 2002:a2e:864d:: with SMTP id i13mr10801463ljj.48.1614739754379; 
 Tue, 02 Mar 2021 18:49:14 -0800 (PST)
MIME-Version: 1.0
References: <e12dfaac0aa242f4a10d8c5b920a98db@intel.com>
 <51946a94b1154605bd7dda2c77ab12fc@intel.com>
 <fb8a2d722d4b4c008eeb1ffae87233be@intel.com>
 <CAPM=9tzLJAgjo=+JCNJrVaz3RY3D66tG+zdw_nCCTQGSwFbwCg@mail.gmail.com>
 <CAHk-=whxZJXkuvX2j56QH6ANA_girjWK3nQCPJGuOWwfYEgtag@mail.gmail.com>
 <CAPM=9twngQ=T6WgJBVje9PUtYrSa4LyZgsMZKEykCRc_MObrHw@mail.gmail.com>
 <CAHk-=wjyoO7Evytd_DxEhx1yFKf2GNvBjynhgRkHFkeqyxcQAw@mail.gmail.com>
 <e5eceeca-c13d-efea-bbf7-c1d94ab81685@kernel.dk>
 <f436251f-2eab-df40-7d0a-0f32b40f5996@kernel.dk>
 <CAHk-=wjmKrGZ+WaBpEb0CbGw7SjRCw1+yjufVa7++5PpLj69Lw@mail.gmail.com>
 <103b3829-1e23-a45c-4784-b2ff5b7902d3@kernel.dk>
In-Reply-To: <103b3829-1e23-a45c-4784-b2ff5b7902d3@kernel.dk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 2 Mar 2021 18:48:58 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgtv0RGZdSvTZPn_xMN2hTxo-3VXX7k7GXNZk4+MWtb5Q@mail.gmail.com>
Message-ID: <CAHk-=wgtv0RGZdSvTZPn_xMN2hTxo-3VXX7k7GXNZk4+MWtb5Q@mail.gmail.com>
To: Jens Axboe <axboe@kernel.dk>
Subject: Re: [Intel-gfx] Public i915 CI shardruns are disabled
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, "Sarvela,
 Tomi P" <tomi.p.sarvela@intel.com>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ok, slightly delayed by dinner, but commit caf6912f3f4a ("swap: fix
swapfile read/write offset") is out in my tree now.

Dave - can you check that the current -git works for your CI people?

Thanks,
              Linus

On Tue, Mar 2, 2021 at 5:18 PM Jens Axboe <axboe@kernel.dk> wrote:
>
> On 3/2/21 6:01 PM, Linus Torvalds wrote:
> > On Tue, Mar 2, 2021 at 4:36 PM Jens Axboe <axboe@kernel.dk> wrote:
> >>
> >> Or if you want a pull, just let me know. Have another misc patch to
> >> flush out anyway that doesn't belong in any of my usual branches.
> >
> > Ok, if you have something else pending anyway, let's do that. Send me
> > the pull request, and I'll take it asap.
>
> Done
>
> --
> Jens Axboe
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
