Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E9C32ACAE
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 02:01:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C216E30F;
	Wed,  3 Mar 2021 01:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F4D6E30F
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 01:01:45 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id z11so34283311lfb.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 17:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OIV9sys/VM3XXe3OUXsbOwdDnvoGoPf0M6wyTBcUS7o=;
 b=Fm/QyImgOETEl2V1Mlpd0epYKKBCXigL2jbpLY93RbrHRct6WvHsYzOGSsiEfUp4+L
 z9kxg8C/7TISHjJjJYhPwLR83b5hM8apit5eHM4H+Ghc/wgSfECx/S/KapC1y91Oo8Ok
 55nje5RAye2iG64+hrt/r79heIpWRrfu7d5nA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OIV9sys/VM3XXe3OUXsbOwdDnvoGoPf0M6wyTBcUS7o=;
 b=OF+JlG3Tp+Ne2x7Q7Y3d5fZ7Z+8mX0pKR5D20Gw/itlcoHn0VHF9E069o2C+CzU6kJ
 C16yJaNJdazd4ai7S+JaPBUAof3AB2r8KMjQnWPXsV+YOyLceTv1bzO+1V6uru4DiGFB
 1+vcFgp87YVLETdDpGAt9dMhHL+Y93FXvlPp7uv6rhmsMlfYSVJgj1rxET2EKk25MZL5
 egyFIbs1yj3xziptG8DXDGGrWvPY4NsttniBSWvx7EKniujHX8VV8oJhTLuMbr9N902P
 x9H//Euo9eqQVP7i31hKhPQvG1cqX7GdyR1HZOKq2GPZXR7kn1howlqY1vSJMr+eS7Mn
 zBEQ==
X-Gm-Message-State: AOAM531aMJsZYn30shGo9n5irVFxikpHq5Wi2EGaakgOqYIwTczHwU2T
 e2d7nQb/SuRS70Mqh0CpfbKCztMgCqOfsg==
X-Google-Smtp-Source: ABdhPJwNtn/yrXbBgxNkL3X1olwy+0XcCpSzWMI+dtcxfSOpN6oOGWhScRwhxzNgEA7iWu0CN/rfww==
X-Received: by 2002:a19:b81:: with SMTP id 123mr12773221lfl.553.1614733303816; 
 Tue, 02 Mar 2021 17:01:43 -0800 (PST)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com.
 [209.85.167.49])
 by smtp.gmail.com with ESMTPSA id d3sm2793984lfg.122.2021.03.02.17.01.42
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Mar 2021 17:01:42 -0800 (PST)
Received: by mail-lf1-f49.google.com with SMTP id d3so34304688lfg.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 17:01:42 -0800 (PST)
X-Received: by 2002:a05:6512:a8c:: with SMTP id
 m12mr13972416lfu.253.1614733302255; 
 Tue, 02 Mar 2021 17:01:42 -0800 (PST)
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
In-Reply-To: <f436251f-2eab-df40-7d0a-0f32b40f5996@kernel.dk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 2 Mar 2021 17:01:26 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjmKrGZ+WaBpEb0CbGw7SjRCw1+yjufVa7++5PpLj69Lw@mail.gmail.com>
Message-ID: <CAHk-=wjmKrGZ+WaBpEb0CbGw7SjRCw1+yjufVa7++5PpLj69Lw@mail.gmail.com>
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

On Tue, Mar 2, 2021 at 4:36 PM Jens Axboe <axboe@kernel.dk> wrote:
>
> Or if you want a pull, just let me know. Have another misc patch to
> flush out anyway that doesn't belong in any of my usual branches.

Ok, if you have something else pending anyway, let's do that. Send me
the pull request, and I'll take it asap.

Thanks,
               Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
