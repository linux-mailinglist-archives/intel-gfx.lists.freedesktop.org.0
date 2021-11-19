Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E76F4572D9
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 17:25:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0126EA5D;
	Fri, 19 Nov 2021 16:25:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 048166EA5D
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 16:25:39 +0000 (UTC)
Received: from mail-wm1-f49.google.com ([209.85.128.49]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MBDva-1mxVRU1V78-00Ckvg for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov
 2021 17:25:38 +0100
Received: by mail-wm1-f49.google.com with SMTP id
 67-20020a1c1946000000b0030d4c90fa87so7943046wmz.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 08:25:37 -0800 (PST)
X-Gm-Message-State: AOAM530abzct9d2xApHzGuqtIW8hs02o7DpkQrDU7cWMRn/I/SI1BRKL
 eMT7Vyw+KXlpmPi9jKp70fC2xoJzsi6BBpn3iHM=
X-Google-Smtp-Source: ABdhPJxceAOgZg4K9oWzLDHPv4QMPRjgvN2Y7oQmQdzE+p3Y265dv2VJvOf0muRFSn+nfOr9pX8E0TuGzsEYEIm5yn0=
X-Received: by 2002:a1c:770e:: with SMTP id t14mr963230wmi.173.1637339127628; 
 Fri, 19 Nov 2021 08:25:27 -0800 (PST)
MIME-Version: 1.0
References: <20211119113644.1600-1-alx.manpages@gmail.com>
 <CAK8P3a0qT9tAxFkLN_vJYRcocDW2TcBq79WcYKZFyAG0udZx5Q@mail.gmail.com>
 <434296d3-8fe1-f1d2-ee9d-ea25d6c4e43e@gmail.com>
 <CAK8P3a2yVXw9gf8-BNvX_rzectNoiy0MqGKvBcXydiUSrc_fCA@mail.gmail.com>
 <f751fb48-d19c-88af-452e-680994a586b4@gmail.com>
In-Reply-To: <f751fb48-d19c-88af-452e-680994a586b4@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Nov 2021 17:25:11 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0DD+odXthvGq2UWwrvhDDavukUB=bW-m+=HohjoiTE6w@mail.gmail.com>
Message-ID: <CAK8P3a0DD+odXthvGq2UWwrvhDDavukUB=bW-m+=HohjoiTE6w@mail.gmail.com>
To: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:Fp14u4eX5shEITsdUFeTPEBYXIgPeI/XRMumoOp0AoRA5sLLAM9
 JWalmjyDps0iLSt8k7oduMQ+7g3T1aKKL/wVRAPbDG3wVo+77zTU3zIhrVIUBs/XJTI9j5A
 qR5QtWh4cW2euMjg12LVtTJ1QL2cauBW1eAou714FCpuhhJLmRdHPFFkO6Sc1HQBlB1dJvy
 lE0BPr4shTqcYkmQmhhog==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T/5gyc2vauA=:C4e2aHWM9LLCaau3jLaxtj
 DqQgeiYxS9KX2PMEOx1WRyM9C6iUx4WuM262QHhf8YCNqt6XASiyJltNXfIr3chrFU8+iCQCf
 oY21lk9GWflIm01mFX/YD4tJ0boFR6DnJV/w7RqljooqwuizA95Hq+yolkBSrtxRFlC1bvJBN
 kAeblbts5kl1taObOEzrHkvyK5AtiIPaBTSWZEiQeNvL8Vr5yw0HiLZHiA8sYA6cZWSmnSvbT
 DXJrLXjKeUm81bPi1TuzyIduGOhDgqhiqjp/mpFEjAX0xXVpdbjh3W8ntCUBguDkVfOpOC12P
 rqh7e9qL3oTQlOd00fGVJPt4/aUiYKrSVyjKsK9x/W8+VqIAB3RSB5sxejXS8lBE6/AjloXme
 NJmNkdnr1KfLVnRPDst/MKRYEhPEcyffdqxv0CbTq5MC7Pfoa+gmfBSFQnmVQXlT1vyTzKap/
 XfKhfiLaJRXDfkkaj8p8yd+1KhEZWp5I7Wyd5dKGWk1rbWXJONMG1e+gubp/RGLrrW9pVKUlE
 pkwJ7U5pxl0bCUcFm55zRWGqaZdMZjQ6IMaRfVeZEPNMNYs0tkT6Mr3BXBcoZWyU5zcFzOaPr
 oHhxvzdqCd09/1k+b81qrTYhfWsdyl8s5Z5Aw32GT2LHjjww5/TVbcqNm3Yo3gOJEnoLBbTtB
 Osr3m1tXtMfABvITVyhf4cA9oknQp41QC3OiXE5XGLRRGIXleTkB4G8dmq6ei/u89TI/RJ1L5
 4XHiddCkmTmphIT8wHo2NAIgAaoPphLUyiBxR18jwb1BLsRqR4GVDFaTJOanA/s4uXyoBcIxn
 7v92giunxVvE6y5/yM9d7k1f4EU3v8Z3CAzf6dO4OdOuhg4R3Y=
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

On Fri, Nov 19, 2021 at 5:12 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> On 11/19/21 16:57, Arnd Bergmann wrote:
> >
> > From what I can tell, linux/stddef.h is tiny, I don't think it's really
> > worth optimizing this part. I have spent some time last year
> > trying to untangle some of the more interesting headers, but ended
> > up not completing this as there are some really hard problems
> > once you start getting to the interesting bits.
>
> In this case it was not about being worth it or not,
> but that the fact that adding memberof() would break,
> unless I use 0 instead of NULL for the implementation of memberof(),
> which I'm against, or I split stddef.
>
> If I don't do either of those,
> I'm creating a circular dependency,
> and it doesn't compile.

Sorry for missing the background here, but I don't see what that
dependency is. If memberof() is a macro, then including the definition
should not require having the NULL definition first, you just need to
have both at the time you use it.

> > The main issue here is that user space code should not
> > include anything outside of include/uapi/ and arch/*/include/uapi/
>
> Okay.  That's good to know.
>
> So everything can use uapi code,
> and uapi code can only use uapi code,
> right?

Correct.

> > offsetof() is defined in include/linux/stddef.h, so this is by
> > definition not accessible here. It appears that there is also
> > an include/uapi/linux/stddef.h that is really strange because
> > it includes linux/compiler_types.h, which in turn is outside
> > of uapi/. This should probably be fixed.
>
> I see.
> Then,
> perhaps it would be better to define offsetof() _only_ inside uapi/,
> and use that definition from everywhere else,
> and therefore remove the non-uapi version,
> right?

No, because the user-space <stddef.h> provided by the compiler
also includes an offsetof() definition. In the uapi/ namespace, the
kernel must only provide definitions that do not clash with anything
in user space.

        Arnd
