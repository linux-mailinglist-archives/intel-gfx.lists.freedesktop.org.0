Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 864111F05E0
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 11:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C2A36E060;
	Sat,  6 Jun 2020 09:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01306E060
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Jun 2020 09:01:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21414407-1500050 for multiple; Sat, 06 Jun 2020 10:01:19 +0100
MIME-Version: 1.0
In-Reply-To: <20200606032137.GA3210209@mdroper-desk1.amr.corp.intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <159125964432.14555.14975271091238919132@emeril.freedesktop.org>
 <20200604163916.GA3023929@mdroper-desk1.amr.corp.intel.com>
 <159139508324.22562.3240839281624363557@build.alporthouse.com>
 <20200606032137.GA3210209@mdroper-desk1.amr.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx]  ✓ Fi.CI.IGT:  success for Remaining RKL patches
Message-ID: <159143407710.22562.14616951365539550947@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 06 Jun 2020 10:01:17 +0100
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

Quoting Matt Roper (2020-06-06 04:21:37)
> On Fri, Jun 05, 2020 at 11:11:23PM +0100, Chris Wilson wrote:
> > Quoting Matt Roper (2020-06-04 17:39:16)
> > > On Thu, Jun 04, 2020 at 08:34:04AM +0000, Patchwork wrote:
> > > > == Series Details ==
> > > > 
> > > > Series: Remaining RKL patches
> > > > URL   : https://patchwork.freedesktop.org/series/77971/
> > > > State : success
> > > > 
> > > > == Summary ==
> > > > 
> > > > CI Bug Log - changes from CI_DRM_8579_full -> Patchwork_17859_full
> > > > ====================================================
> > > > 
> > > > Summary
> > > > -------
> > > > 
> > > >   **SUCCESS**
> > > > 
> > > >   No regressions found.
> > > 
> > > Patches #1, 6, 8, and 11 from this series applied to dinq since they have r-b's.
> > 
> > This seems to have introduced
> > https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8584/fi-skl-guc/igt@runner@aborted.html
> 
> Thanks for pointing that out.  I think it's because we lost DP-E
> matching in the VBT mapping table during the refactor.  If so,
> 
>         https://patchwork.freedesktop.org/patch/368948/?series=78060&rev=1
> 
> should fix it.

It did indeed.

> Was there a gitlab bug for this failure?

Not yet.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
