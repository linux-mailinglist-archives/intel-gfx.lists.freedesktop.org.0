Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D304572E5
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 17:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78516EA7C;
	Fri, 19 Nov 2021 16:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE68D6EA7C
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 16:27:46 +0000 (UTC)
Received: from mail-wm1-f50.google.com ([209.85.128.50]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1N3sye-1mf8Vc3zrk-00zmnb for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov
 2021 17:27:44 +0100
Received: by mail-wm1-f50.google.com with SMTP id i12so9023915wmq.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 08:27:44 -0800 (PST)
X-Gm-Message-State: AOAM533Gklc5B0Jl2+csf3dyoaFEtsMroXlSIMugcwiEa7jrDDqIAgiR
 8Ox142PhEm7nogzQohZC+p2T8+CYPJg2ciuLOm0=
X-Google-Smtp-Source: ABdhPJw9pjl15kxNckhoztOwSEHm2BAFAg53rxD/nLG+Vq3q5u2bghokZvEuTw1FbjRLUctINZWvpCeY9JlD3tiwY20=
X-Received: by 2002:a1c:2382:: with SMTP id j124mr1036531wmj.35.1637339254218; 
 Fri, 19 Nov 2021 08:27:34 -0800 (PST)
MIME-Version: 1.0
References: <20211119113644.1600-1-alx.manpages@gmail.com>
 <CAK8P3a0qT9tAxFkLN_vJYRcocDW2TcBq79WcYKZFyAG0udZx5Q@mail.gmail.com>
 <434296d3-8fe1-f1d2-ee9d-ea25d6c4e43e@gmail.com>
 <CAK8P3a2yVXw9gf8-BNvX_rzectNoiy0MqGKvBcXydiUSrc_fCA@mail.gmail.com>
 <YZfMXlqvG52ls2TE@smile.fi.intel.com>
 <CAK8P3a06CMzWVj2C3P5v0u8ZVPumXJKrq=TdjSq1NugmeT7-RQ@mail.gmail.com>
 <2d790206-124b-f850-895f-a57a74c55f79@gmail.com>
In-Reply-To: <2d790206-124b-f850-895f-a57a74c55f79@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Nov 2021 17:27:17 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3O1KLzxSTn1xqi2HjUVw2Utf6m5PZWd1ns7xsExxbJOA@mail.gmail.com>
Message-ID: <CAK8P3a3O1KLzxSTn1xqi2HjUVw2Utf6m5PZWd1ns7xsExxbJOA@mail.gmail.com>
To: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:nXGG2z9CIGPbn7OeP1ZtvVyaCjs9UCwfp+y5KF7GF0VsCm7phdg
 7r3+OlFtwmVohDf9x/vF5HQTTdjd1vvnIXRVpgDLBDohchIKkdmQZU1CZDAVd3yFc/jjb64
 9ocfZ0ujDiHuHAwdL+Hjai9XZryxkniPFmW51SoBDsfyxKL7TONZzjB8RAW8VLxAEC2Ktnb
 W20iFpmS3oGHREWMtUlFQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JEhvOjR9IN0=:pV1qR3k6wIycWUOdkadTtW
 1GcomEaNe0Zm0rz0cnpF9EiS8woQcIZZAmsqV0QATk3MM6AWQQONzCWPKDfcZkj/ALBf+UFN/
 7GBltVFNFspLiPVgBycl1DEUZGmLHVxsWmRssl8BxF2D+ij+XWDLokN/oewdZGu/MZycTS0mo
 Ox/ayHK4GHXqsEfQk/XmX2jL99iSik9u3aOuV8MuItbGjrn64UentgsE5l2KB+HnSB7/k3MAJ
 AhvUNvD48fvKzLfeS0W/q7/Iz4stRykxi7oVVsmcQt3n4+ATS9+63J6THvnNWFmpphL5DLYXI
 +0HJGzfjaAw38wWW2dENp2K3zKp7yiH66M4TWZBClU8sSIanoSLM39QNb312ZxVpAHXces31m
 iZFPZvnXEx9hwgzX3ikE2ahx5l3coCURaO6+zCfMCHR6M8rwfpV5VT77BqXjSUJ0dFXRcoU10
 /CBsTTHhxffebp+zKeMEne3VfGjF46/XiSMfNrl/FkzmBH79+VqZD3u7ExBUisnYXFu+TGysK
 iw703tOoL1fxhFDI2qU/8vMocYMnfBc5BoBwFaMM3fWHKTU+QF2cKJy8NgQlrUJu9NMbEf+ai
 GJ/3jJplWI3ldhuxxYgRBTWwb6PzSdcEApeNx/RcNEXIz0bjaTGn4ao8kFVrzhZtQhNfjvozr
 jiLH7F9szPyZeaCR+pxpb/SSweX06sOUjNKMOe1HQV2MUt3ebnJ2+qbwap46orsJDiC73kyyr
 a/aClZhy37BJvbMsoajeNFeFmrBe7qJ7OdAPEV844WE3wLfFWzrFzOK/r7YUJ8rvsAZxjVmbG
 PseWeHJiGlPyJPGmpco/8x7Di/5kyrdErr3yp4A+9qAlaLhkw57Y898vk96Cw8I/1Sg5Gqf
Subject: Re: [Intel-gfx] [PATCH 00/17] Add memberof(), split some headers,
 and slightly simplify code
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Ajit Khaparde <ajit.khaparde@broadcom.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Chris Mason <clm@fb.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Ketan Mukadam <ketan.mukadam@broadcom.com>,
 Somnath Kotur <somnath.kotur@broadcom.com>,
 linux-scsi <linux-scsi@vger.kernel.org>,
 Subbu Seetharaman <subbu.seetharaman@broadcom.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Borislav Petkov <bp@suse.de>,
 "open list:DRM DRIVER FOR QEMU'S CIRRUS DEVICE"
 <virtualization@lists.linux-foundation.org>, Len Brown <lenb@kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 John Hubbard <jhubbard@nvidia.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Josef Bacik <josef@toxicpanda.com>,
 Jitendra Bhivare <jitendra.bhivare@broadcom.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 David Sterba <dsterba@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 Networking <netdev@vger.kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, "John S . Gruber" <JohnSGruber@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 19, 2021 at 5:22 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
> On 11/19/21 17:18, Arnd Bergmann wrote:
> > On Fri, Nov 19, 2021 at 5:10 PM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> >> On Fri, Nov 19, 2021 at 04:57:46PM +0100, Arnd Bergmann wrote:
> >
> >>> The main problem with this approach is that as soon as you start
> >>> actually reducing the unneeded indirect includes, you end up with
> >>> countless .c files that no longer build because they are missing a
> >>> direct include for something that was always included somewhere
> >>> deep underneath, so I needed a second set of scripts to add
> >>> direct includes to every .c file.
> >>
> >> Can't it be done with cocci support?
> >
> > There are many ways of doing it, but they all tend to suffer from the
> > problem of identifying which headers are actually needed based on
> > the contents of a file, and also figuring out where to put the extra
> > #include if there are complex #ifdefs.
> >
> > For reference, see below for the naive pattern matching I tried.
> > This is obviously incomplete and partially wrong.
>
> FYI, if you may not know the tool,
> theres include-what-you-use(1) (a.k.a. iwyu(1))[1],
> although it is still not mature,
> and I'm helping improve it a bit.

Yes, I know that one, I tried using it as well, but it did not really
scale to the size of the kernel as it requires having all files to use
the correct set of #include, and to know about all the definitions.

       Arnd
