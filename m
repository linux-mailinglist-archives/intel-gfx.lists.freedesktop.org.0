Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10933152401
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 01:16:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C0F16E0E4;
	Wed,  5 Feb 2020 00:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E3A6E0E4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 00:16:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20118726-1500050 for multiple; Wed, 05 Feb 2020 00:16:30 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200204011032.582737-1-matthew.d.roper@intel.com>
 <158085960621.25089.12501443355272510481@emeril.freedesktop.org>
 <20200205001146.GS232048@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200205001146.GS232048@mdroper-desk1.amr.corp.intel.com>
Message-ID: <158086178795.6182.12075237934853041271@skylake-alporthouse-com>
Date: Wed, 05 Feb 2020 00:16:27 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Program_MBUS_with_rmw_d?=
 =?utf-8?q?uring_initialization?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2020-02-05 00:11:46)
> On Tue, Feb 04, 2020 at 11:40:06PM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: series starting with [1/2] drm/i915: Program MBUS with rmw during initialization
> > URL   : https://patchwork.freedesktop.org/series/72950/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_7866 -> Patchwork_16408
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_16408 absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_16408, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/index.html
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_16408:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@gem_ctx_create@basic-files:
> >     - fi-skl-6770hq:      NOTRUN -> [INCOMPLETE][1]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-skl-6770hq/igt@gem_ctx_create@basic-files.html
> 
> Unrelated to this series.  These patches only touch a function that's
> exclusive to gen11+, so it would have no impact on SKL (which in this
> case seems to have just crashed or been disconnected with no visible
> errors).

ext4 panicked, not for the first time on that machine.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
