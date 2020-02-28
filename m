Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EBA17439E
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 00:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171476E030;
	Fri, 28 Feb 2020 23:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 19.mo7.mail-out.ovh.net (19.mo7.mail-out.ovh.net
 [178.33.251.118])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B3656E030
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 23:57:27 +0000 (UTC)
Received: from player731.ha.ovh.net (unknown [10.108.57.141])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id 283021554B9
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 00:51:33 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player731.ha.ovh.net (Postfix) with ESMTPSA id 959A1FB21390;
 Fri, 28 Feb 2020 23:51:25 +0000 (UTC)
Date: Sat, 29 Feb 2020 01:51:24 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200228235124.GF11891@jack.zhora.eu>
References: <20200228104340.2895082-1-chris@chris-wilson.co.uk>
 <20200228104340.2895082-3-chris@chris-wilson.co.uk>
 <20200228232704.GD11891@jack.zhora.eu>
 <158293277426.29794.2343133378704199477@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158293277426.29794.2343133378704199477@skylake-alporthouse-com>
X-Ovh-Tracer-Id: 12070772901745312265
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrleelgddutdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefuddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
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

> > > +void dyn_sysfs_engines(int i915, int engines, const char *file,
> > > +                    void (*test)(int, int))
> > > +{
> > > +     char buf[512];
> > > +     int len;
> > > +
> > > +     lseek(engines, 0, SEEK_SET);
> > > +     while ((len = syscall(SYS_getdents64, engines, buf, sizeof(buf))) > 0) {
> > > +             void *ptr = buf;
> > > +
> > > +             while (len) {
> > > +                     struct linux_dirent64 {
> > > +                             ino64_t        d_ino;
> > > +                             off64_t        d_off;
> > > +                             unsigned short d_reclen;
> > > +                             unsigned char  d_type;
> > > +                             char           d_name[];
> > > +                     } *de = ptr;
> > 
> > what is the need for having your own linux_dirent64?
> 
> fdopendir() takes ownership of the fd, preventing reuse. And
> fdopendir(dup()) is getting ridiculous.

why not using dirent64?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
