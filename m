Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 468DE32AC95
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 00:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4368E6E09E;
	Tue,  2 Mar 2021 23:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9114E6E09E
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 23:38:22 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id dx17so11070544ejb.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 15:38:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EIq//YMJIt1e62I9h5lFxqP0+DZRdWFuQAM+Gc2jcq8=;
 b=YyP3fuFviIwzD0dGeqdIWRvOFQlw7OrRDoa+1xMI6+v3q6KKR1Gz/rQLVMQSjJoIFI
 8jX14aLUlqeSR6NIho2g69xips81kUlBGjhx/MaKKCd/DTV6pU57IlkZCdcrbAmx/Sjv
 fnrhpnR1joXEx9OjKUkvektozg5EU3wbj+kTyTPdYvDjA3BE31IOpR6FxVSfDU4sT0z4
 MF4VtUWUZ3tBw0Iy6fIyua7BPNBpkhV8vkPp63O+aRiAs2EXAqG9GBIyucBOphwRwOmT
 TdT4IIr4/efaqOhSS+4eDONt3LtRprFDTeLmPJrUApVGa0ftKeDNReQ/kInkwD75P8df
 go4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EIq//YMJIt1e62I9h5lFxqP0+DZRdWFuQAM+Gc2jcq8=;
 b=XIBLDaKpMZt1HJ6kh65eySZZCbhURX6AwPLa00rXRTIpkUP0WjMMCcWhs8q9BXCwVd
 5ZyFCJY8tgXnJZ383rbIpl1J818gZTi+gHaZGJkzD7Zq9kioIXmhin+If5/z1Z5evAFf
 Hk/dDC5Wfs4XT6+g8C/th6dmXUjoMXDa+5/JKnx+RyNRcMQ0FDJupNWLoo5S+Xv+CeXP
 E7irIbMkbxb/h2oXPAQ9/L+OpJt33bL0j+EWgMLxhxclx/xZZc9a7Z5do8iUKNQRS2TS
 ADbi6xcak1xDlN1cSoYZC5gayPXSYfeYI8SLx6Z0APfJ2XERLVljL7RPqdoIp9/45diR
 8NWQ==
X-Gm-Message-State: AOAM5315XsSNRLkjZRl/+TXdmWgzAOxbCItEjS4c88rFFVYxPDmJLrL5
 Wc+4aDcZ9uWtjobGLs4OrrOlxDsh9W5UPD6UW/k=
X-Google-Smtp-Source: ABdhPJxiF+TxSQuYT5GokY0Zstv4cLYmB9yzCHPYYG3yorrqPMYFVXFNfLsYmTy4aRKwRuHonzeMhVIJSy1RQsLDHYE=
X-Received: by 2002:a17:906:b004:: with SMTP id
 v4mr7830237ejy.340.1614728301257; 
 Tue, 02 Mar 2021 15:38:21 -0800 (PST)
MIME-Version: 1.0
References: <e12dfaac0aa242f4a10d8c5b920a98db@intel.com>
 <51946a94b1154605bd7dda2c77ab12fc@intel.com>
 <fb8a2d722d4b4c008eeb1ffae87233be@intel.com>
 <CAPM=9tzLJAgjo=+JCNJrVaz3RY3D66tG+zdw_nCCTQGSwFbwCg@mail.gmail.com>
 <CAHk-=whxZJXkuvX2j56QH6ANA_girjWK3nQCPJGuOWwfYEgtag@mail.gmail.com>
In-Reply-To: <CAHk-=whxZJXkuvX2j56QH6ANA_girjWK3nQCPJGuOWwfYEgtag@mail.gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 3 Mar 2021 09:38:09 +1000
Message-ID: <CAPM=9twngQ=T6WgJBVje9PUtYrSa4LyZgsMZKEykCRc_MObrHw@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
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

On Wed, 3 Mar 2021 at 09:28, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Adding the right people.
>
> It seems that the three commits that needed reverting are
>
>   f885056a48cc ("mm: simplify swapdev_block")
>   3e3126cf2a6d ("mm: only make map_swap_entry available for CONFIG_HIBERNATION")
>   48d15436fde6 ("mm: remove get_swap_bio")
>
> and while they look very harmless to me, let's bring in Christoph and
> Jens who were actually involved with them.
>
> I'm assuming that it's that third one that is the real issue (and the
> two other ones were to get to it), but it would also be good to know
> what the actual details of the regression actually were.
>
> Maybe that's obvious to somebody who has more context about the 9815
> CI runs and its web interface, but it sure isn't clear to me.
>
> Jens, Christoph?

Looks like Jens saw it at least, he posted this on twitter a few mins
ago so I assume it'll be incoming soon.

https://git.kernel.dk/cgit/linux-block/commit/?h=swap-fix

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
