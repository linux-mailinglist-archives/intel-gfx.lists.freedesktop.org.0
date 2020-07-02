Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A7C211F6C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 11:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F46E6E109;
	Thu,  2 Jul 2020 09:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1645D6E22B
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 09:06:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21685750-1500050 for multiple; Thu, 02 Jul 2020 10:06:14 +0100
MIME-Version: 1.0
In-Reply-To: <85c43d207aaa164ef62eb3e412394500b4f3575b.camel@intel.com>
References: <20200630233310.10191-1-matthew.s.atwood@intel.com>
 <159363946619.16670.8162521072571505040@emeril.freedesktop.org>
 <85c43d207aaa164ef62eb3e412394500b4f3575b.camel@intel.com>
Subject: Re: [Intel-gfx]  ✓ Fi.CI.IGT: success for drm/i915/dp: Correctly advertise HBR3 for GEN11+ (rev2)
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Souza,
 Jose" <jose.souza@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 02 Jul 2020 10:06:16 +0100
Message-ID: <159368077601.22925.13484028850378656603@build.alporthouse.com>
User-Agent: alot/0.9
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

Quoting Souza, Jose (2020-07-02 00:24:19)
> On Wed, 2020-07-01 at 21:37 +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: drm/i915/dp: Correctly advertise HBR3 for GEN11+ (rev2)
> > URL   : https://patchwork.freedesktop.org/series/61546/
> > State : success
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_8679_full -> Patchwork_18050_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **SUCCESS**
> > 
> >   No regressions found.
> 
> Pushed to dinq, thanks for the patch.

Something to be concerned about is that this is causing fi-tgl-u2 to
exceed the allotted runtime for BAT. It adds something like 5s between
each test, adding more than 5 minutes to the incomplete test run before
it is killed, 40 tests [20%] short.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
