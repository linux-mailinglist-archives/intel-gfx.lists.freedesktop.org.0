Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD97E32ACA0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 00:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E545489A5D;
	Tue,  2 Mar 2021 23:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8070289A5D
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 23:57:17 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id f1so34165639lfu.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 15:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FKiSHbMd971H8QvViaERrcy7NyXv6uhclbDUFkf1nn8=;
 b=V6aocaPl02oar0FTtzNsAQrxTSGXgSkNN6vtNzmn5C3virV7LOwnkjaZffMNlfW+U0
 hoXBDYd7G+5vlKq61svZQI8rE7jiONSru8pKq+RKECn1o/fMVr6wDnRB+IAxS6v3IbN6
 1/elDUMyyNVh0eiRPMzP8qYEVWiOsOGMgzcmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FKiSHbMd971H8QvViaERrcy7NyXv6uhclbDUFkf1nn8=;
 b=qmv0RuDY3xEDh3swJvuQqp8xRex7w1Wup/JsAAiTM9JdLtBcEInfFpcWbEtYruPiQx
 FrEsU9FDrwwd+tmJ1tGXufXJ3V1l0XL0kJ0u+PGhc+nETgMtNjyw6xhO1OD0px6Vq5Ok
 aVm0CDOBHFeK6JHyJTNtHZ7+UFeS+zwuJ0FKXFc/VzuVBkZurYDo+0RB4eJRU6Yld2GQ
 Igjis7vGOJJPt8yoQjjkT1W8XvqvEfn3FYr50IOH4luKHiUd6BLt0rnlNjJRPK+Ut00S
 hTBEp3foS7CKdP49GtF1IfIQvDJkwXcJfSrcr9GCdalYbAQl5EhVA8vyv5HVrL/B4hC1
 +FCw==
X-Gm-Message-State: AOAM531DA4VtjMO3T2EgSQHhdNBg5a0/fmSRYSELwXjeQaCupqjM6/hT
 368Ayfo6RHUqg7Vdi85FK6hhX7RwhSoD/g==
X-Google-Smtp-Source: ABdhPJzaYiCjOQ6t/ah3u9+JZ2vviQyldiCKKWH4Q4a6vEy55In/Qf+LQlk4Qxh0C1Zhz4Mu4AWbMA==
X-Received: by 2002:a19:7d44:: with SMTP id y65mr9502441lfc.329.1614729435613; 
 Tue, 02 Mar 2021 15:57:15 -0800 (PST)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com.
 [209.85.167.50])
 by smtp.gmail.com with ESMTPSA id o82sm2206167lfa.21.2021.03.02.15.57.14
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Mar 2021 15:57:15 -0800 (PST)
Received: by mail-lf1-f50.google.com with SMTP id v5so34109291lft.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 15:57:14 -0800 (PST)
X-Received: by 2002:ac2:41d5:: with SMTP id d21mr12653228lfi.487.1614729434500; 
 Tue, 02 Mar 2021 15:57:14 -0800 (PST)
MIME-Version: 1.0
References: <e12dfaac0aa242f4a10d8c5b920a98db@intel.com>
 <51946a94b1154605bd7dda2c77ab12fc@intel.com>
 <fb8a2d722d4b4c008eeb1ffae87233be@intel.com>
 <CAPM=9tzLJAgjo=+JCNJrVaz3RY3D66tG+zdw_nCCTQGSwFbwCg@mail.gmail.com>
 <CAHk-=whxZJXkuvX2j56QH6ANA_girjWK3nQCPJGuOWwfYEgtag@mail.gmail.com>
 <CAPM=9twngQ=T6WgJBVje9PUtYrSa4LyZgsMZKEykCRc_MObrHw@mail.gmail.com>
In-Reply-To: <CAPM=9twngQ=T6WgJBVje9PUtYrSa4LyZgsMZKEykCRc_MObrHw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 2 Mar 2021 15:56:58 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjyoO7Evytd_DxEhx1yFKf2GNvBjynhgRkHFkeqyxcQAw@mail.gmail.com>
Message-ID: <CAHk-=wjyoO7Evytd_DxEhx1yFKf2GNvBjynhgRkHFkeqyxcQAw@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
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
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <damien.lemoal@wdc.com>,
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

On Tue, Mar 2, 2021 at 3:38 PM Dave Airlie <airlied@gmail.com> wrote:
>
> Looks like Jens saw it at least, he posted this on twitter a few mins
> ago so I assume it'll be incoming soon.
>
> https://git.kernel.dk/cgit/linux-block/commit/?h=swap-fix

Ahh. You use a swap file. This might be the same thing that I think
the phoronix people hit as ext4 corruption this merge window.

Jens, if that can get confirmed, please send it my way asap.. Thanks,

               Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
