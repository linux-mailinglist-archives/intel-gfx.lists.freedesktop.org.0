Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6CB149655
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 16:46:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94B36E87A;
	Sat, 25 Jan 2020 15:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 488026E87A
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jan 2020 15:46:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20007039-1500050 for multiple; Sat, 25 Jan 2020 15:46:17 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200124013701.40609-1-umesh.nerlige.ramappa@intel.com>
 <0f632875-e78a-22f1-2259-d65fa5e74ef5@intel.com>
 <dcc5909a-f0e5-6572-b563-0ad4011bbbbe@intel.com>
In-Reply-To: <dcc5909a-f0e5-6572-b563-0ad4011bbbbe@intel.com>
Message-ID: <157996717527.2524.7465405548102511319@skylake-alporthouse-com>
Date: Sat, 25 Jan 2020 15:46:15 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Fix OA context id overlap
 with idle context id
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

Quoting Lionel Landwerlin (2020-01-25 15:02:21)
> On 25/01/2020 03:37, Lionel Landwerlin wrote:
> > On 24/01/2020 03:37, Umesh Nerlige Ramappa wrote:
> >> Engine context pinned in perf OA was set to same context id as
> >> the idle context. Set the context id to an unused value.
> >>
> >> Clear the sw context id field in lrc descriptor before ORing with
> >> ce->tag (Chris)
> >>
> >> Fixes: https://gitlab.freedesktop.org/drm/intel/issues/756
> 
> I think the Fixes: tag is to point to another commit. And I think you 
> want to point to the commit that you're fixing.
> 
> Not sure what you should use gitlab MRs.

We're using Closes: https://gitlab.fd.o/issues/# as a replacement for
Bugzilla:.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
