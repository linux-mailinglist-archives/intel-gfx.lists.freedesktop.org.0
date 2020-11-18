Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 437812B7BD9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 11:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB3896E083;
	Wed, 18 Nov 2020 10:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 671646E083
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 10:54:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23028805-1500050 for multiple; Wed, 18 Nov 2020 10:54:41 +0000
MIME-Version: 1.0
In-Reply-To: <20201118013216.cdvzvb5dne7xybul@ldmartin-desk1>
References: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
 <20191222144046.1674865-3-chris@chris-wilson.co.uk>
 <160448433228.9474.10886564107965448562@jlahtine-mobl.ger.corp.intel.com>
 <160448471356.15691.11641803526516335867@build.alporthouse.com>
 <20201118013216.cdvzvb5dne7xybul@ldmartin-desk1>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Wed, 18 Nov 2020 10:54:44 +0000
Message-ID: <160569688416.3553.10076227583238543643@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [CI 3/3] drm/i915/gt: Move pm debug files into a gt
 aware debugfs
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

Quoting Lucas De Marchi (2020-11-18 01:32:16)
> On Wed, Nov 04, 2020 at 10:11:53AM +0000, Chris Wilson wrote:
> >Quoting Joonas Lahtinen (2020-11-04 10:05:32)
> >> Quoting Chris Wilson (2019-12-22 16:40:46)
> >> > From: Andi Shyti <andi.shyti@intel.com>
> >> >
> >> > The GT system is becoming more and more a stand-alone system in
> >> > i915 and it's fair to assign it its own debugfs directory.
> >> >
> >> > rc6, rps and llc debugfs files are gt related, move them into the
> >> > gt debugfs directory.
> >> >
> >> > Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> >> > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> >> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >> > ---
> >> >  drivers/gpu/drm/i915/Makefile             |   3 +
> >> >  drivers/gpu/drm/i915/gt/debugfs_engines.c |  36 ++
> >> >  drivers/gpu/drm/i915/gt/debugfs_engines.h |  15 +
> >> >  drivers/gpu/drm/i915/gt/debugfs_gt.c      |  42 ++
> >> >  drivers/gpu/drm/i915/gt/debugfs_gt.h      |  39 ++
> >> >  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   | 601 ++++++++++++++++++++++
> >> >  drivers/gpu/drm/i915/gt/debugfs_gt_pm.h   |  14 +
> >> >  drivers/gpu/drm/i915/gt/intel_gt.c        |   3 +
> >> >  8 files changed, 753 insertions(+)
> >> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_engines.c
> >> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_engines.h
> >> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt.c
> >> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt.h
> >> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> >> >  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt_pm.h
> >>
> >> This patch seems to actually copy the code, forgetting to remove the old
> >> code. Let's have a follow-up patch that eliminates the duplication.
> >
> >We couldn't remove the old code without making changes to igt to work
> >out what the appropriate GT directory would be for the test. That is
> >still unknowable from userspace... So as a matter of convenience we kept
> >the old entry point so that we could dump everything under the device.
> 
> couldn't it be replaced by a symlink? The below works for me and afaics
> would be a better temporary solution than the duplicate code:

No. One is system, the other is gt. They are not equivalent.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
