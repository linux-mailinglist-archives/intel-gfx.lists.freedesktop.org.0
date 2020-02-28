Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 035F4173B9F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 16:38:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4443089298;
	Fri, 28 Feb 2020 15:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F956EE7E;
 Fri, 28 Feb 2020 10:06:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: kusma) with ESMTPSA id AAFD529659F
Message-ID: <6d2ec570f957b4504fb70e0b1f0632712a99dc0c.camel@collabora.com>
From: Erik Faye-Lund <erik.faye-lund@collabora.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>, Dave Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 28 Feb 2020 11:06:35 +0100
In-Reply-To: <ece8ebe3-40ec-2457-02da-4fef19cbe8f6@intel.com>
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
 <b398161ff7d0268454413058dc6c194cf93f5990.camel@collabora.com>
 <ece8ebe3-40ec-2457-02da-4fef19cbe8f6@intel.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 28 Feb 2020 15:38:53 +0000
Subject: Re: [Intel-gfx] [Mesa-dev] gitlab.fd.o financial situation and
 impact on services
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "X.Org development" <xorg-devel@lists.x.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Mesa Dev <mesa-dev@lists.freedesktop.org>,
 gstreamer-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2020-02-28 at 11:40 +0200, Lionel Landwerlin wrote:
> On 28/02/2020 11:28, Erik Faye-Lund wrote:
> > On Fri, 2020-02-28 at 13:37 +1000, Dave Airlie wrote:
> > > On Fri, 28 Feb 2020 at 07:27, Daniel Vetter <
> > > daniel.vetter@ffwll.ch>
> > > wrote:
> > > > Hi all,
> > > > 
> > > > You might have read the short take in the X.org board meeting
> > > > minutes
> > > > already, here's the long version.
> > > > 
> > > > The good news: gitlab.fd.o has become very popular with our
> > > > communities, and is used extensively. This especially includes
> > > > all
> > > > the
> > > > CI integration. Modern development process and tooling, yay!
> > > > 
> > > > The bad news: The cost in growth has also been tremendous, and
> > > > it's
> > > > breaking our bank account. With reasonable estimates for
> > > > continued
> > > > growth we're expecting hosting expenses totalling 75k USD this
> > > > year,
> > > > and 90k USD next year. With the current sponsors we've set up
> > > > we
> > > > can't
> > > > sustain that. We estimate that hosting expenses for gitlab.fd.o
> > > > without any of the CI features enabled would total 30k USD,
> > > > which
> > > > is
> > > > within X.org's ability to support through various sponsorships,
> > > > mostly
> > > > through XDC.
> > > > 
> > > > Note that X.org does no longer sponsor any CI runners
> > > > themselves,
> > > > we've stopped that. The huge additional expenses are all just
> > > > in
> > > > storing and serving build artifacts and images to outside CI
> > > > runners
> > > > sponsored by various companies. A related topic is that with
> > > > the
> > > > growth in fd.o it's becoming infeasible to maintain it all on
> > > > volunteer admin time. X.org is therefore also looking for admin
> > > > sponsorship, at least medium term.
> > > > 
> > > > Assuming that we want cash flow reserves for one year of
> > > > gitlab.fd.o
> > > > (without CI support) and a trimmed XDC and assuming no sponsor
> > > > payment
> > > > meanwhile, we'd have to cut CI services somewhere between May
> > > > and
> > > > June
> > > > this year. The board is of course working on acquiring
> > > > sponsors,
> > > > but
> > > > filling a shortfall of this magnitude is neither easy nor quick
> > > > work,
> > > > and we therefore decided to give an early warning as soon as
> > > > possible.
> > > > Any help in finding sponsors for fd.o is very much appreciated.
> > > a) Ouch.
> > > 
> > > b) we probably need to take a large step back here.
> > > 
> > I kinda agree, but maybe the step doesn't have to be *too* large?
> > 
> > I wonder if we could solve this by restructuring the project a bit.
> > I'm
> > talking purely from a Mesa point of view here, so it might not
> > solve
> > the full problem, but:
> > 
> > 1. It feels silly that we need to test changes to e.g the i965
> > driver
> > on dragonboards. We only have a big "do not run CI at all" escape-
> > hatch.
> 
> Yeah, changes on vulkan drivers or backend compilers should be
> fairly 
> sandboxed.
> 
> We also have tools that only work for intel stuff, that should never 
> trigger anything on other people's HW.
> 
> Could something be worked out using the tags?
> 

I think so! We have the pre-defined environment variable
CI_MERGE_REQUEST_LABELS, and we can do variable conditions:

https://docs.gitlab.com/ee/ci/yaml/#onlyvariablesexceptvariables

That sounds like a pretty neat middle-ground to me. I just hope that
new pipelines are triggered if new labels are added, because not
everyone is allowed to set labels, and sometimes people forget...

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
