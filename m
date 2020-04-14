Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DCD1A8E18
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 23:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1E826E5A5;
	Tue, 14 Apr 2020 21:54:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC43B6E5A5;
 Tue, 14 Apr 2020 21:54:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20900565-1500050 for multiple; Tue, 14 Apr 2020 22:54:39 +0100
MIME-Version: 1.0
In-Reply-To: <87r1wp4ul3.wl-ashutosh.dixit@intel.com>
References: <20200414190509.2868509-1-chris@chris-wilson.co.uk>
 <87r1wp4ul3.wl-ashutosh.dixit@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158690127855.24667.4483056113303151999@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 14 Apr 2020 22:54:38 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Use read() for timerfd timeout
 detection
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 michal.winiarski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dixit, Ashutosh (2020-04-14 22:37:44)
> On Tue, 14 Apr 2020 12:05:09 -0700, Chris Wilson wrote:
> >
> > The poll() is proving unreliable, where our tests timeout without the
> > spinner being terminated. Let's try a blocking read instead!
> 
> Weird, wondering if all we need to do is set TFD_NONBLOCK on the fd?
> 
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1676
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  lib/igt_dummyload.c | 11 ++++++-----
> >  1 file changed, 6 insertions(+), 5 deletions(-)
> >
> > diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
> > index 99ca84ad8..a59afd45b 100644
> > --- a/lib/igt_dummyload.c
> > +++ b/lib/igt_dummyload.c
> > @@ -399,12 +399,13 @@ igt_spin_factory(int fd, const struct igt_spin_factory *opts)
> >  static void *timer_thread(void *data)
> >  {
> >       igt_spin_t *spin = data;
> > -     struct pollfd pfd = {
> > -             .fd = spin->timerfd,
> > -             .events = POLLIN,
> > -     };
> > +     uint64_t overruns = 0;
> > +     int ret;
> >
> > -     if (poll(&pfd, 1, -1) >= 0)
> > +     do {
> > +             ret = read(spin->timerfd, &overruns, sizeof(overruns));
> > +     } while (ret == -1 && errno == EINTR);
> 
> do {} while (!overruns) and skip if () below?

I was concerned with how this should interact with pthread_cancel.
I'm not sure when that causes us to return.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
