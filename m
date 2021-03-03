Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E367E32ACB7
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 02:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E060F6E32A;
	Wed,  3 Mar 2021 01:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 355A16E32A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 01:18:46 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id g20so13115167plo.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 17:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UU5Q8EMckA715hiTSdnMcsRxf+pYKvRvtINvcHeRyJc=;
 b=GjQx+IQHxUJFFdtq1pxXnei8ZjlCH1HRtRqsuii4L3L7vL9F7YUeuwNyq3br7qHg35
 v3jcBM9P2UPUgCzRxuttstx36laikgRv4CQTKuo4oU/Z4jkyBIBx9DUbn2GnUjVOeBmY
 9jnFc+8UILRlRklzLrlWWHszDKzYGRo7M2mwT/BHxtpQgpwBjeWixcYeuiOSWd06s5xC
 ar35nc2uh0n3DgJ/tcA19WtmE8QFwn+fkdiyEwtEy91D93rfJOdMQum7IwzQHEJ2pfDE
 GXhgRMIN8QGGa5H2NKlxi+APPNcITwqWKJtmp+c046hcC+Oh4dJWVF/zw7DfsweDh1+C
 t//w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UU5Q8EMckA715hiTSdnMcsRxf+pYKvRvtINvcHeRyJc=;
 b=p1tgeFZ7iTwh9TjI3l3ah4SHgEZcTDGN5E9Dpke7dlbATJc7YP54xun4nZ1Y1XZXxn
 2kaa5JzDmqQM2YlQHEBaPMDHyK/UL10qM2h4pGSdp6QgAbczBTzWNnCE8iwDlMWIj8GS
 qjWU2EpiaaPTD5/QdyRAadUD+P8OhlPUQq/5H41upeaiUmw3GbJadnX6Q+UpfErcAYgw
 SZ7RJZnjC3qsrBrcpg8OgvNrxEj2f+dJPUgCJ5bP3DBihJVbGhUhqlNTfRstbq4y2Qii
 BfDnV8zumnGuToFFrUZ++N8rTv+RTBTQ17IH4NQilTbD+ARINy66R1B5l24cOeRIPcWE
 e4ew==
X-Gm-Message-State: AOAM532gSVUcWUfh2FFaXkzPI+MefjXOemTwxkQN1D1LDx5fInm98TQJ
 fW0OrWaYCjCTtyqmKAE0n1Iwx3Pj4y9WLw==
X-Google-Smtp-Source: ABdhPJxCXHe74UOWy/YA+OqVrDgA7/gxR37R23lxIONnOO8dZKYKZHkcmWGkHieNRYzm35Bk64Qr8Q==
X-Received: by 2002:a17:90b:116:: with SMTP id
 p22mr6958324pjz.161.1614734325649; 
 Tue, 02 Mar 2021 17:18:45 -0800 (PST)
Received: from [192.168.1.134] ([66.219.217.173])
 by smtp.gmail.com with ESMTPSA id m9sm4547240pjl.4.2021.03.02.17.18.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Mar 2021 17:18:45 -0800 (PST)
To: Linus Torvalds <torvalds@linux-foundation.org>
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
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <103b3829-1e23-a45c-4784-b2ff5b7902d3@kernel.dk>
Date: Tue, 2 Mar 2021 18:18:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wjmKrGZ+WaBpEb0CbGw7SjRCw1+yjufVa7++5PpLj69Lw@mail.gmail.com>
Content-Language: en-US
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

On 3/2/21 6:01 PM, Linus Torvalds wrote:
> On Tue, Mar 2, 2021 at 4:36 PM Jens Axboe <axboe@kernel.dk> wrote:
>>
>> Or if you want a pull, just let me know. Have another misc patch to
>> flush out anyway that doesn't belong in any of my usual branches.
> 
> Ok, if you have something else pending anyway, let's do that. Send me
> the pull request, and I'll take it asap.

Done

-- 
Jens Axboe

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
