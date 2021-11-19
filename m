Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F05B6457273
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 17:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73EC16ED08;
	Fri, 19 Nov 2021 16:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DE7A6E0ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 16:10:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="215153513"
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="215153513"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 08:10:30 -0800
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="507951850"
Received: from smile.fi.intel.com ([10.237.72.184])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 08:10:15 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mo6Sk-008aWx-Ro; Fri, 19 Nov 2021 18:10:06 +0200
Date: Fri, 19 Nov 2021 18:10:06 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <YZfMXlqvG52ls2TE@smile.fi.intel.com>
References: <20211119113644.1600-1-alx.manpages@gmail.com>
 <CAK8P3a0qT9tAxFkLN_vJYRcocDW2TcBq79WcYKZFyAG0udZx5Q@mail.gmail.com>
 <434296d3-8fe1-f1d2-ee9d-ea25d6c4e43e@gmail.com>
 <CAK8P3a2yVXw9gf8-BNvX_rzectNoiy0MqGKvBcXydiUSrc_fCA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a2yVXw9gf8-BNvX_rzectNoiy0MqGKvBcXydiUSrc_fCA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: "Alejandro Colomar \(man-pages\)" <alx.manpages@gmail.com>,
 Corey Minyard <cminyard@mvista.com>,
 Ajit Khaparde <ajit.khaparde@broadcom.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Chris Mason <clm@fb.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Ketan Mukadam <ketan.mukadam@broadcom.com>,
 linux-scsi <linux-scsi@vger.kernel.org>,
 Subbu Seetharaman <subbu.seetharaman@broadcom.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Borislav Petkov <bp@suse.de>,
 "open list:DRM DRIVER FOR QEMU'S CIRRUS DEVICE"
 <virtualization@lists.linux-foundation.org>, Len Brown <lenb@kernel.org>,
 Kees Cook <keescook@chromium.org>, John Hubbard <jhubbard@nvidia.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Josef Bacik <josef@toxicpanda.com>,
 Jitendra Bhivare <jitendra.bhivare@broadcom.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 David Sterba <dsterba@suse.com>, Somnath Kotur <somnath.kotur@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 Networking <netdev@vger.kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, "John S . Gruber" <JohnSGruber@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 19, 2021 at 04:57:46PM +0100, Arnd Bergmann wrote:
> On Fri, Nov 19, 2021 at 4:06 PM Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
> > On 11/19/21 15:47, Arnd Bergmann wrote:
> > > On Fri, Nov 19, 2021 at 12:36 PM Alejandro Colomar
> >
> > Yes, I would like to untangle the dependencies.
> >
> > The main reason I started doing this splitting
> > is because I wouldn't be able to include
> > <linux/stddef.h> in some headers,
> > because it pulled too much stuff that broke unrelated things.
> >
> > So that's why I started from there.
> >
> > I for example would like to get NULL in memberof()
> > without puling anything else,
> > so <linux/NULL.h> makes sense for that.
> >
> > It's clear that every .c wants NULL,
> > but it's not so clear that every .c wants
> > everything that <linux/stddef.h> pulls indirectly.
> 
> From what I can tell, linux/stddef.h is tiny, I don't think it's really
> worth optimizing this part. I have spent some time last year
> trying to untangle some of the more interesting headers, but ended
> up not completing this as there are some really hard problems
> once you start getting to the interesting bits.
> 
> The approach I tried was roughly:
> 
> - For each header in the kernel, create a preprocessed version
>   that includes all the indirect includes, from that start a set
>   of lookup tables that record which header is eventually included
>   by which ones, and the size of each preprocessed header in
>   bytes
> 
> - For a given kernel configuration (e.g. defconfig or allmodconfig)
>   that I'm most interested in, look at which files are built, and what
>   the direct includes are in the source files.
> 
> - Sort the headers by the product of the number of direct includes
>   and the preprocessed size: the largest ones are those that are
>   worth looking at first.
> 
> - use graphviz to visualize the directed graph showing the includes
>   between the top 100 headers in that list. You get something like
>   I had in [1], or the version afterwards at [2].
> 
> - split out unneeded indirect includes from the headers in the center
>   of that graph, typically by splitting out struct definitions.
> 
> - repeat.
> 
> The main problem with this approach is that as soon as you start
> actually reducing the unneeded indirect includes, you end up with
> countless .c files that no longer build because they are missing a
> direct include for something that was always included somewhere
> deep underneath, so I needed a second set of scripts to add
> direct includes to every .c file.

Can't it be done with cocci support?

> On the plus side, I did see something on the order of a 30%
> compile speed improvement with clang, which is insane
> given that this only removed dead definitions.

Thumb up!

> > But I'll note that linux/fs.h, linux/sched.h, linux/mm.h are
> > interesting headers for further splitting.
> >
> >
> > BTW, I also have a longstanding doubt about
> > how header files are organized in the kernel,
> > and which headers can and cannot be included
> > from which other files.
> >
> > For example I see that files in samples or scripts or tools,
> > that redefine many things such as offsetof() or ARRAY_SIZE(),
> > and I don't know if there's a good reason for that,
> > or if I should simply remove all that stuff and
> > include <linux/offsetof.h> everywhere I see offsetof() being used.
> 
> The main issue here is that user space code should not
> include anything outside of include/uapi/ and arch/*/include/uapi/
> 
> offsetof() is defined in include/linux/stddef.h, so this is by
> definition not accessible here. It appears that there is also
> an include/uapi/linux/stddef.h that is really strange because
> it includes linux/compiler_types.h, which in turn is outside
> of uapi/. This should probably be fixed.
> 
>       Arnd
> 
> [1] https://drive.google.com/file/d/14IKifYDadg2W5fMsefxr4373jizo9bLl/view?usp=sharing
> [2] https://drive.google.com/file/d/1pWQcv3_ZXGqZB8ogV-JOfoV-WJN2UNnd/view?usp=sharing

-- 
With Best Regards,
Andy Shevchenko


