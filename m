Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9772D2D29CC
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 12:31:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABDA6E0CF;
	Tue,  8 Dec 2020 11:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA1246E0CE;
 Tue,  8 Dec 2020 11:31:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23252528-1500050 for multiple; Tue, 08 Dec 2020 11:31:16 +0000
MIME-Version: 1.0
In-Reply-To: <5a032c6e-cd4a-1c17-5629-80803d8477b2@linux.intel.com>
References: <20201207161150.1841453-1-chris@chris-wilson.co.uk>
 <20201207161150.1841453-2-chris@chris-wilson.co.uk>
 <20201208110405.GO7444@platvala-desk.ger.corp.intel.com>
 <5a032c6e-cd4a-1c17-5629-80803d8477b2@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Petri Latvala <petri.latvala@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 08 Dec 2020 11:31:15 +0000
Message-ID: <160742707541.25187.5864506770070262093@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915/query: Directly check query
 results against GETPARAM
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

Quoting Tvrtko Ursulin (2020-12-08 11:18:56)
> 
> On 08/12/2020 11:04, Petri Latvala wrote:
> > On Mon, Dec 07, 2020 at 04:11:50PM +0000, Chris Wilson wrote:
> >> Simplify the cross-check by asserting that the existence of an engine in
> >> the list matches the existence of the engine as reported by GETPARAM.
> >> By using the comparison, we check both directions at once.
> >>
> >> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >> Cc: Petri Latvala <petri.latvala@intel.com>
> > 
> > 
> > For the series,
> > Reviewed-by: Petri Latvala <petri.latvala@intel.com>
> 
> Yeah it's a yes from me as well. Either test was merged with or before 
> the engine map feature so it had to be a bit more backward compatible.

As a sanity check,

drm/i915: Allow a context to define its set of engines
CommitDate: Wed May 22 08:40:31 2019 +0100

drm/i915: Engine discovery query
CommitDate: Wed May 22 14:17:55 2019 +0100

So they are paired. If the kernel supports the engine query, it will
support the engine map.

> I wonder at which point we re-implement gem_has_xcs family to use the 
> query and move the get_param based tests to a single legacy test.

gem_has_xcs() is a quirk of igt, and we are very very close to
completely removing it. The only place where it remains relevant is
verifying that we do not break the existing GETPARAM (so this test and
gem_exec_param).

That seems like an afternoon task to move the GETPARAM into a dungeon
and throw away the key.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
