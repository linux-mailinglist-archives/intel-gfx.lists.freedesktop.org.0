Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C261748B2
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 19:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2286E397;
	Sat, 29 Feb 2020 18:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48AF96E397;
 Sat, 29 Feb 2020 18:34:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20398862-1500050 for multiple; Sat, 29 Feb 2020 18:34:52 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200229124527.GG11891@jack.zhora.eu>
References: <20200228104340.2895082-1-chris@chris-wilson.co.uk>
 <20200228104340.2895082-3-chris@chris-wilson.co.uk>
 <20200228232704.GD11891@jack.zhora.eu>
 <158293277426.29794.2343133378704199477@skylake-alporthouse-com>
 <20200228235124.GF11891@jack.zhora.eu>
 <158297170388.24106.996217556546669029@skylake-alporthouse-com>
 <20200229124527.GG11891@jack.zhora.eu>
Message-ID: <158300128989.24106.4887554530878236232@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 29 Feb 2020 18:34:49 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/5] i915: Exercise preemption timeout
 controls in sysfs
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-02-29 12:45:27)
> > > > > > +     char buf[512];
> > > > > > +     int len;
> > > > > > +
> > > > > > +     lseek(engines, 0, SEEK_SET);
> > > > > > +     while ((len = syscall(SYS_getdents64, engines, buf, sizeof(buf))) > 0) {
> > > > > > +             void *ptr = buf;
> > > > > > +
> > > > > > +             while (len) {
> > > > > > +                     struct linux_dirent64 {
> > > > > > +                             ino64_t        d_ino;
> > > > > > +                             off64_t        d_off;
> > > > > > +                             unsigned short d_reclen;
> > > > > > +                             unsigned char  d_type;
> > > > > > +                             char           d_name[];
> > > > > > +                     } *de = ptr;
> > > > > 
> > > > > what is the need for having your own linux_dirent64?
> > > > 
> > > > fdopendir() takes ownership of the fd, preventing reuse. And
> > > > fdopendir(dup()) is getting ridiculous.
> > > 
> > > why not using dirent64?
> > 
> > It's still the same problem that it takes a DIR, assuming ownership of
> > the fd. Why using linux_dirent64 because the manpage says so -- if you
> > are going to use the syscall, you need to match it's calling
> > conventions, not a middleman's.
> 
> I understand, but in bits/dirent.h there is, with some
> assumptions, this part:
> 
> #ifdef __USE_LARGEFILE64
> struct dirent64
>   {
>     __ino64_t d_ino;
>     __off64_t d_off;
>     unsigned short int d_reclen;
>     unsigned char d_type;
>     char d_name[256];           /* We must not include limits.h! */
>   };
> #endif
> 
> why redefine a struct linux_dirent64?

Because the manpage didn't mention that!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
