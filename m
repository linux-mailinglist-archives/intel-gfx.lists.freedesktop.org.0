Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9637913B5A4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 00:07:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01726E5BB;
	Tue, 14 Jan 2020 23:07:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819D76E5BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 23:07:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19881766-1500050 for multiple; Tue, 14 Jan 2020 23:07:31 +0000
MIME-Version: 1.0
To: Matt Roper <matthew.d.roper@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200114230320.GF2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200114224508.3302967-1-matthew.d.roper@intel.com>
 <157904207833.5559.9894672106993486116@skylake-alporthouse-com>
 <157904249072.5559.17330332451430123199@skylake-alporthouse-com>
 <20200114230320.GF2244136@mdroper-desk1.amr.corp.intel.com>
Message-ID: <157904324854.5559.8319544938976060428@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 14 Jan 2020 23:07:28 +0000
Subject: Re: [Intel-gfx] [RFC] drm/i915: Restrict legacy color key ioctl to
 pre-gen12
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2020-01-14 23:03:20)
> On Tue, Jan 14, 2020 at 10:54:50PM +0000, Chris Wilson wrote:
> > Quoting Chris Wilson (2020-01-14 22:47:58)
> > > Quoting Matt Roper (2020-01-14 22:45:08)
> > > > Since gen12 platform support isn't finalized yet, let's kill off the
> > > > legacy color key ioctl for this platform; there's no userspace today
> > > > that can run on this platform that utilizes this legacy ioctl, so we can
> > > > safely kill it now before it becomes ABI.
> > > > 
> > > > Color key functionality never got integrated into the property / atomic
> > > > interface, and the only known open source consumer was the Intel DDX
> > > > which was never updated to run on platforms beyond gen9.  If color
> > > > keying is desired going forward, it should really be exposed as a
> > > > property so that it can be applied atomically with other display updates
> > > > (and should probably be standardized in a way all drivers can choose to
> > > > support rather than being i915-specific).
> > > 
> > > But it does run on those platforms and exposes the sprite plane via Xv.
> > 
> 
> Hmm, looks like I overlooked 00184dc03 ("Sync i915_pciids upto
> d0e062ebb3a4") which finally brought in the CNL and ICL pci ids.  As far
> as I can see it still lacks EHL/JSL and TGL as far as I can see.  Are
> there plans to continue support for xf86-video-intel for future
> platforms?  If not, then cutting the support off at TGL would still be
> safe.

It uses a generic binding to 0x8086. That it provides sprites planes is
one of the reasons why it is invaluable.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
