Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B91D530A330
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:21:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B35F6E446;
	Mon,  1 Feb 2021 08:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7BA6E42D;
 Mon,  1 Feb 2021 08:21:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23757383-1500050 for multiple; Mon, 01 Feb 2021 08:21:11 +0000
MIME-Version: 1.0
In-Reply-To: <577e01ed-a463-301f-8fc8-c553c0b46ba7@linux.intel.com>
References: <20210131031153.3399123-1-chris@chris-wilson.co.uk>
 <577e01ed-a463-301f-8fc8-c553c0b46ba7@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 01 Feb 2021 08:21:11 +0000
Message-ID: <161216767124.30865.12019098192632057390@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Hide unused clients
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-02-01 08:14:45)
> 
> On 31/01/2021 03:11, Chris Wilson wrote:
> > Keep new clients hidden until they utilise the GPU.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > ---
> >   tools/intel_gpu_top.c | 5 ++++-
> >   1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> > index 60ff62d28..66a8effa6 100644
> > --- a/tools/intel_gpu_top.c
> > +++ b/tools/intel_gpu_top.c
> > @@ -828,8 +828,11 @@ static void update_client(struct client *c, unsigned int pid, char *name)
> >               c->last[i] = val[i];
> >       }
> >   
> > -     c->samples++;
> > +     if (!c->total_runtime)
> > +             return;
> > +
> >       c->status = ALIVE;
> > +     c->samples++;
> >   }
> >   
> >   static void
> > 
> 
> Not sure we need to do it at this level and not instead at presentation 
> time.

My goal was just presentation :(

> Plus, in default sort mode they would be at the end of the list, 
> so behind the more active clients. Or you go into sort by id and they 
> annoy you there?

No. I had a bunch of "Xorg" when launching steam which never became
anything. So I guess just a bunch of dlopen("libgl") spawing a bunch of
clients that we never used for anything more than gl[X]GetString, but
leaked the fd.

[Why does steam need 10% of the gpu to update an icon on the toolbar
which is hidden while minimised? Why do games sit in static menus at
100% gpu? Why?]
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
