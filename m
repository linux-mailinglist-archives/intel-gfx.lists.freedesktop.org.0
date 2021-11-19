Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF0945714D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 16:00:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 944A36EB19;
	Fri, 19 Nov 2021 15:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 761 seconds by postgrey-1.36 at gabe;
 Fri, 19 Nov 2021 15:00:48 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453DF6EB2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 15:00:48 +0000 (UTC)
Received: from mail-yb1-f175.google.com ([209.85.219.175]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MS4WT-1nFsnX3syZ-00TRGY for <intel-gfx@lists.freedesktop.org>; Fri, 19
 Nov 2021 15:48:05 +0100
Received: by mail-yb1-f175.google.com with SMTP id y68so29102049ybe.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 06:48:04 -0800 (PST)
X-Gm-Message-State: AOAM530deF+yOa9CFpxiLmrzzdaqX7mnmZsmGEz1K5d3NeRLyEMg9ZCE
 e6oU2g3nnSv8heTcz8Rw7kJ+RXQL44Z3LuOfdaI=
X-Google-Smtp-Source: ABdhPJyEA9Cm9jWRHlNRoILV4HxXKS70yYn95cfqEWkgZ0erwiDK8IdJrB6FynNXAmz1W8+x37fIqweN9je4/+8NifA=
X-Received: by 2002:a05:6830:453:: with SMTP id
 d19mr5257576otc.72.1637333272785; 
 Fri, 19 Nov 2021 06:47:52 -0800 (PST)
MIME-Version: 1.0
References: <20211119113644.1600-1-alx.manpages@gmail.com>
In-Reply-To: <20211119113644.1600-1-alx.manpages@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Nov 2021 15:47:35 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0qT9tAxFkLN_vJYRcocDW2TcBq79WcYKZFyAG0udZx5Q@mail.gmail.com>
Message-ID: <CAK8P3a0qT9tAxFkLN_vJYRcocDW2TcBq79WcYKZFyAG0udZx5Q@mail.gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:d5jEk60uqwLj7IN+nanPXpAetVxsp2ocJsU32nTRKafx1cdRGCw
 BwXrArM2mxT+uQYW9Eofcfk89qeUnEREf5fn6B690HjzyT+nT6agivu/XYiGFWPoy1M6EOA
 NOdLamVlzrnC5sfH5CiGVC9WcYcfED6DQR+Fpb1B9tkWSGSDtTsQYYjzZgH5SqyzrmxGs5S
 lAjHzsmtEC34MxkyXNakg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:auVyOa3j3wI=:Qv4r5l40pfd6kde2BX8X2+
 Eq+ukZDyhG76jfh1RkuIUObLb0OBkuxFidFz0Os3N2I8pGBSBPXbCb0i6JW202vNLL9tzBTIG
 nutpxhQ8OYW4XDaedYmDWZ5I2LptG/hQeRXI6ktxLbDw+xT0NrE8wJ2osDmT7317Vtih80vkt
 pdHG0oDSzCK2VTuPup+6DrIiQq6DscgEAUlWvajeEXIKapoRSe4OlFsecHTq4vJDa3dqzFVfI
 /uGkBTk4pSLHgDhCPP/UYh1vUEM3oZmsjo9oACYqzHamH2ktICNo2DYtRqjOoU2mWZabJHBZN
 fJCpqiMz5OmmtutE64hKRyXcakqveDXuoac+U5zX/B/POOjbc9Xiuha554UYows39/Qw/AkYK
 WLY/eKdD1d3d/Zcn6Y1ATy0I688KBSXtc7xbyAkYqTluqyTKb/KZSBUnqAi92jJ+LjRp4olOb
 0F9oMPXGk9+9AVNUTSdcFwqKCUeT9vMytWllEGewzHwpheZeYeWfZwFtwDY+r+Z2vkA+oUjsw
 y0xpmdh3+uKU6vs3v72/oDu0B055DAL66I0ywOc37/vEhiCBoRBSIPrDTjiEysTKsp+csODFk
 ohU7JgtGSerLnJHBQUs7rtmhGF9ZmexjR57tqbNtmxRgicZ+CQciSIEo2y/rmR/bdVnWi9Zxe
 JdrVFkCGtcoi5EKgstOSmzDGmX/OpH60fqLT9l0ixzwsfHc5MHF+/On9RCMZ6RukIFhXQJZxS
 01YEsbHtnQ7r42oN4IQfTMhwckQSFTCymdRF4xyAlJSYSuggNgN+OsgMnyeWuxuRdnU/xzA4f
 lRXt0z0G2xa4BDgQ3LGtxAHxZsuNvvespyo93SC2ocqtROZDl0=
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
 Somnath Kotur <somnath.kotur@broadcom.com>, linux-scsi@vger.kernel.org,
 Subbu Seetharaman <subbu.seetharaman@broadcom.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, linux-acpi@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Borislav Petkov <bp@suse.de>,
 virtualization@lists.linux-foundation.org, Len Brown <lenb@kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Josef Bacik <josef@toxicpanda.com>,
 Jitendra Bhivare <jitendra.bhivare@broadcom.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 David Sterba <dsterba@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, "John S . Gruber" <JohnSGruber@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-btrfs@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 19, 2021 at 12:36 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Alejandro Colomar (17):
>   linux/container_of.h: Add memberof(T, m)
>   Use memberof(T, m) instead of explicit NULL dereference
>   Replace some uses of memberof() by its wrappers
>   linux/memberof.h: Move memberof() to separate header
>   linux/typeof_member.h: Move typeof_member() to a separate header
>   Simplify sizeof(typeof_member()) to sizeof_field()
>   linux/NULL.h: Move NULL to a separate header
>   linux/offsetof.h: Move offsetof(T, m) to a separate header
>   linux/offsetof.h: Implement offsetof() in terms of memberof()
>   linux/container_of.h: Implement container_of_safe() in terms of
>     container_of()
>   linux/container_of.h: Cosmetic
>   linux/container_of.h: Remove unnecessary cast to (void *)

My feeling is that this takes the separation too far: by having this many header
files that end up being included from practically every single .c file
in the kernel,
I think you end up making compile speed worse overall.

If your goal is to avoid having to recompile as much of the kernel
after touching
a header, I think a better approach is to help untangle the dependencies, e.g.
by splitting out type definitions from headers with inline functions (most
indirect header dependencies are on type definitions) and by focusing on
linux/fs.h, linux/sched.h, linux/mm.h and how they interact with the rest of the
headers. At the moment, these are included in most .c files and they in turn
include a ton of other headers.

          Arnd
