Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5564C92A5
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 19:14:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C4210E34B;
	Tue,  1 Mar 2022 18:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C68710E3A1
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 18:14:09 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id s11so4650234pfu.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Mar 2022 10:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=N36sF4HUer+rUuc5VxWx2NxZT2Mje9G1bKhkVtQFmow=;
 b=O9Pc4FRhQaHO8JwtvKmEa7P/p93QhIWPziYnJxBP3SmXkKfXwbS/+UXcAcizlZe2qE
 5++D1AzgFSiNA6GVcHz58RghXwcZj0T+stAg2S8I6BdGwjnEpqEP1SHJlTJIwhdk7I/A
 Km+JuAoSqO/aabb7J1BxN3aslickTdbOZI2Hw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=N36sF4HUer+rUuc5VxWx2NxZT2Mje9G1bKhkVtQFmow=;
 b=udmLWICzgD7FWlJFPPA+Y5G9c5/TOKbratkPBs7vobvnt3dxC/6Qo6McNjSIfluNmu
 EdCjqMPlpqr6Urlyhg1hpOZsDiPuNxt7Wzh0mlUqV4DCr006cPIhfdtw6hYzQDepMVHp
 ONjMspbYokaol1SGtxvnrREtTmPqDEIkb4ISKHaFPOmwsQJzoofUabwG8dNVsUXh+/CB
 u/G+nqtKWM2ZHTDc5N3xY8KF91pSYBd5U+gyQzR5noSvkxf8IHigk/IPhjcTxB6Jehs1
 wLYs2vfFnQlKw9UiUlfe5cBYfI8EfEvbxUhO4tpEVpwfCb5OptIMA58uTS70TLAcSKdC
 438g==
X-Gm-Message-State: AOAM532snHTn6q4eqc8bsGcgJ54zPgmmhyGWZaNNp1wRyeXPifpqtczO
 z803ba7dnEfWyzipN8H6LGgRNw==
X-Google-Smtp-Source: ABdhPJwl/oZl7jTR8Xbiy0diMdVywUoBtjuUV8iCsVjT5dJdX8x+nPRIiFjmEv3Xm0s1V2wXWPjOfA==
X-Received: by 2002:a62:d156:0:b0:4cd:fd21:e406 with SMTP id
 t22-20020a62d156000000b004cdfd21e406mr28741951pfl.44.1646158448831; 
 Tue, 01 Mar 2022 10:14:08 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 nn10-20020a17090b38ca00b001bc3a60b324sm2540095pjb.46.2022.03.01.10.14.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 10:14:08 -0800 (PST)
Date: Tue, 1 Mar 2022 10:14:07 -0800
From: Kees Cook <keescook@chromium.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <202203011008.AA0B5A2D@keescook>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <CAHk-=wj8fkosQ7=bps5K+DDazBXk=ypfn49A0sEq+7-nZnyfXA@mail.gmail.com>
 <CAHk-=wiTCvLQkHcJ3y0hpqH7FEk9D28LDvZZogC6OVLk7naBww@mail.gmail.com>
 <Yh0tl3Lni4weIMkl@casper.infradead.org>
 <CAHk-=wgBfJ1-cPA2LTvFyyy8owpfmtCuyiZi4+um8DhFNe+CyA@mail.gmail.com>
 <Yh1aMm3hFe/j9ZbI@casper.infradead.org>
 <CAHk-=wi0gSUMBr2SVF01Gy1xC1w1iGtJT5ztju9BPWYKjdh+NA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHk-=wi0gSUMBr2SVF01Gy1xC1w1iGtJT5ztju9BPWYKjdh+NA@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 2/6] treewide: remove using list iterator
 after loop body as a ptr
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 alsa-devel@alsa-project.org, KVM list <kvm@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-iio@vger.kernel.org,
 nouveau@lists.freedesktop.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, Matthew Wilcox <willy@infradead.org>,
 linux1394-devel@lists.sourceforge.net, drbd-dev@lists.linbit.com,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-aspeed@lists.ozlabs.org, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-staging@lists.linux.dev,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Arnd Bergman <arnd@arndb.de>, Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, "Bos, H.J." <h.j.bos@vu.nl>,
 Nathan Chancellor <nathan@kernel.org>, dma <dmaengine@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-sgx@vger.kernel.org,
 linux-block <linux-block@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 linux-usb@vger.kernel.org, samba-technical@lists.samba.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux F2FS Dev Mailing List <linux-f2fs-devel@lists.sourceforge.net>,
 tipc-discussion@lists.sourceforge.net,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Mike Rapoport <rppt@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 28, 2022 at 04:45:11PM -0800, Linus Torvalds wrote:
> Really. The "-Wshadow doesn't work on the kernel" is not some new
> issue, because you have to do completely insane things to the source
> code to enable it.

The first big glitch with -Wshadow was with shadowed global variables.
GCC 4.8 fixed that, but it still yells about shadowed functions. What
_almost_ works is -Wshadow=local. At first glace, all the warnings
look solvable, but then one will eventually discover __wait_event()
and associated macros that mix when and how deeply it intentionally
shadows variables. :)

Another way to try to catch misused shadow variables is
-Wunused-but-set-varible, but it, too, has tons of false positives.

I tried to capture some of the rationale and research here:
https://github.com/KSPP/linux/issues/152

-- 
Kees Cook
