Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF757756592
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 15:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A1FB10E25C;
	Mon, 17 Jul 2023 13:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7690F10E207
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 08:29:47 +0000 (UTC)
Received: by mail-il1-x12f.google.com with SMTP id
 e9e14a558f8ab-345ff33d286so22421005ab.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 01:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf.com; s=google; t=1689582586; x=1692174586;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KrEcIar0BkfpmBL+8BCmNKqe2TUSK3LL+WBdNYsOjsM=;
 b=e52IJgo7nORao0Gl4I5dRpwwbrYRCXZTSuwaC/thRVodGrQS/Ih+iZx/Zsqn89WU3w
 pQgXUWQS+Vk59/Fh6rrIEqzCQJkEny2i0gy7zEPOvxwj9yUxhnNvrizRbt8YsZpplHpx
 RjVLFZyrzR9wafddakUgpMo5lLKlNumHP6uiacp/wGVyLbBbCgrHIUP/7snpf7XV2sof
 jlaeLm95LpwgAuzcjO7UCvT+e3bh2UJ0I6TbCUpKBOZvGLRTw6wJXY5zbY52dacz1/1P
 iPPOvh8ArwyYCroEOLn3Y8OJKVgd78PUACDF8tTPiPB+Om3hyy+66x8dhT2yU/74h83y
 v2JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689582586; x=1692174586;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KrEcIar0BkfpmBL+8BCmNKqe2TUSK3LL+WBdNYsOjsM=;
 b=VAi+kS/MkNHOu+qi3/o+v5oUZd/7Q8LMkiTnA8HRK6/eeefN4sxBUJqrADR++B0A3J
 iKkZuOuv9hMgpXdXXRFhx57D+NLHarvDZuctOhJHPSwWy4vMW9Lk0PUF2GqbuGJ8uP54
 8kRRyTc9DatZGKgiH8GU97rA1Ie1kX0p5qcRcEj1Ls9EsS6uo0G2ks16daZ/KC0dMj/y
 H0lm+d0D1paePr7WVCNBHvfkEzI40CJmXcyKJOIFDsyORcdRVAxQ9cFZiS49CRgLTezt
 vp9C7AJCCxIMlLmPjYcFhnkFXMk6x15TiiXGWDgjcJndLdWDNo/+mEda1yngqTZHejoL
 GPJA==
X-Gm-Message-State: ABy/qLbX5WGwrjIjwgfrMjgd0m//UCKZjC+G9ZuBX1U3EOedsSlaYKC0
 HgJv88NuFduSXtFmUGYcJMSLb2cZCDvFA9lKO8azFQ==
X-Google-Smtp-Source: APBJJlGE7jn73weZAb7Q+GH4ouydfCd9ILtA9ynYfWdyB1I4k5TGE6qNhhrOJBaOwSkah9YrBoRDKcKZ9t95G975sJc=
X-Received: by 2002:a92:d4d2:0:b0:345:d470:baa6 with SMTP id
 o18-20020a92d4d2000000b00345d470baa6mr9664500ilm.29.1689582586220; Mon, 17
 Jul 2023 01:29:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230630155936.3015595-1-jaz@semihalf.com>
 <20230714-gauner-unsolidarisch-fc51f96c61e8@brauner>
In-Reply-To: <20230714-gauner-unsolidarisch-fc51f96c61e8@brauner>
From: Grzegorz Jaszczyk <jaz@semihalf.com>
Date: Mon, 17 Jul 2023 10:29:34 +0200
Message-ID: <CAH76GKPF4BjJLrzLBW8k12ATaAGADeMYc2NQ9+j0KgRa0pomUw@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 17 Jul 2023 13:54:54 +0000
Subject: Re: [Intel-gfx] [PATCH 0/2] eventfd: simplify signal helpers
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
Cc: linux-aio@kvack.org, Muchun Song <muchun.song@linux.dev>,
 Tony Krowiak <akrowiak@linux.ibm.com>, Matthew Rosato <mjrosato@linux.ibm.com>,
 Paul Durrant <paul@xen.org>, Tom Rix <trix@redhat.com>,
 Jason Wang <jasowang@redhat.com>, Roman Gushchin <roman.gushchin@linux.dev>,
 dri-devel@lists.freedesktop.org, Michal Hocko <mhocko@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, linux-mm@kvack.org,
 Kirti Wankhede <kwankhede@nvidia.com>, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>, Borislav Petkov <bp@alien8.de>,
 Alexander Gordeev <agordeev@linux.ibm.com>, Fei Li <fei1.li@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>, Marcin Wojtas <mw@semihalf.com>,
 Arnd Bergmann <arnd@arndb.de>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, x86@kernel.org, Halil Pasic <pasic@linux.ibm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Ingo Molnar <mingo@redhat.com>,
 Dominik Behr <dbehr@chromium.org>, Moritz Fischer <mdf@kernel.org>,
 Frederic Barrat <fbarrat@linux.ibm.com>, Xu Yilun <yilun.xu@intel.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>, linux-fpga@vger.kernel.org,
 Wu Hao <hao.wu@intel.com>, Jason Herne <jjherne@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Dave Hansen <dave.hansen@linux.intel.com>,
 Andrew Donnellan <ajd@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-s390@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, Sean Christopherson <seanjc@google.com>,
 Eric Auger <eric.auger@redhat.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Harald Freudenberger <freude@linux.ibm.com>, kvm@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, cgroups@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org, intel-gvt-dev@lists.freedesktop.org,
 io-uring@vger.kernel.org, Jens Axboe <axboe@kernel.dk>, netdev@vger.kernel.org,
 Oded Gabbay <ogabbay@kernel.org>, linux-usb@vger.kernel.org,
 Peter Oberparleiter <oberpar@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Benjamin LaHaise <bcrl@kvack.org>, "Michael S. Tsirkin" <mst@redhat.com>,
 Sven Schnelle <svens@linux.ibm.com>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel@vger.kernel.org, Shakeel Butt <shakeelb@google.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, David Woodhouse <dwmw2@infradead.org>,
 linuxppc-dev@lists.ozlabs.org, Pavel Begunkov <asml.silence@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

pt., 14 lip 2023 o 09:05 Christian Brauner <brauner@kernel.org> napisa=C5=
=82(a):
>
> On Thu, Jul 13, 2023 at 11:10:54AM -0600, Alex Williamson wrote:
> > On Thu, 13 Jul 2023 12:05:36 +0200
> > Christian Brauner <brauner@kernel.org> wrote:
> >
> > > Hey everyone,
> > >
> > > This simplifies the eventfd_signal() and eventfd_signal_mask() helper=
s
> > > by removing the count argument which is effectively unused.
> >
> > We have a patch under review which does in fact make use of the
> > signaling value:
> >
> > https://lore.kernel.org/all/20230630155936.3015595-1-jaz@semihalf.com/
>
> Huh, thanks for the link.
>
> Quoting from
> https://patchwork.kernel.org/project/kvm/patch/20230307220553.631069-1-ja=
z@semihalf.com/#25266856
>
> > Reading an eventfd returns an 8-byte value, we generally only use it
> > as a counter, but it's been discussed previously and IIRC, it's possibl=
e
> > to use that value as a notification value.
>
> So the goal is to pipe a specific value through eventfd? But it is
> explicitly a counter. The whole thing is written around a counter and
> each write and signal adds to the counter.
>
> The consequences are pretty well described in the cover letter of
> v6 https://lore.kernel.org/all/20230630155936.3015595-1-jaz@semihalf.com/
>
> > Since the eventfd counter is used as ACPI notification value
> > placeholder, the eventfd signaling needs to be serialized in order to
> > not end up with notification values being coalesced. Therefore ACPI
> > notification values are buffered and signalized one by one, when the
> > previous notification value has been consumed.
>
> But isn't this a good indication that you really don't want an eventfd
> but something that's explicitly designed to associate specific data with
> a notification? Using eventfd in that manner requires serialization,
> buffering, and enforces ordering.
>
> I have no skin in the game aside from having to drop this conversion
> which I'm fine to do if there are actually users for this btu really,
> that looks a lot like abusing an api that really wasn't designed for
> this.

https://patchwork.kernel.org/project/kvm/patch/20230307220553.631069-1-jaz@=
semihalf.com/
was posted at the beginig of March and one of the main things we've
discussed was the mechanism for propagating acpi notification value.
We've endup with eventfd as the best mechanism and have actually been
using it from v2. I really do not want to waste this effort, I think
we are quite advanced with v6 now. Additionally we didn't actually
modify any part of eventfd support that was in place, we only used it
in a specific (and discussed beforehand) way.
