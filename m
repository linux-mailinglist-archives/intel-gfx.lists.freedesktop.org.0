Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEC711D8BE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 22:47:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0916E20A;
	Thu, 12 Dec 2019 21:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD7BE6E20A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 21:47:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19560773-1500050 for multiple; Thu, 12 Dec 2019 21:46:48 +0000
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <8adaffa2-66df-3e82-f3de-52648adbbe51@intel.com>
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
 <20191212140459.1307617-8-chris@chris-wilson.co.uk>
 <c3296483-db08-d747-7b80-ee2ca686f38b@intel.com>
 <8adaffa2-66df-3e82-f3de-52648adbbe51@intel.com>
Message-ID: <157618720881.2219.7087282744979900844@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 12 Dec 2019 21:46:48 +0000
Subject: Re: [Intel-gfx] [PATCH 08/33] drm/i915/gt: Mark context->state vma
 as active while pinned
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

Quoting Lionel Landwerlin (2019-12-12 21:35:00)
> On 12/12/2019 21:55, Lionel Landwerlin wrote:
> > On 12/12/2019 16:04, Chris Wilson wrote:
> >> As we use the active state to keep the vma alive while we are reading
> >> its contents during GPU error capture, we need to mark the
> >> context->state vma as active during execution if we want to include it
> >> in the error state.
> >>
> >> Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> >> Fixes: b1e3177bd1d8 ("drm/i915: Coordinate i915_active with its own 
> >> mutex")
> >> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com> 
> 
> 
> I'm wondering whether we want a test for this or some kind of assert in 
> the error capture.

Considered it, but it's not a fundamental part of the ABI, it's just
useful to have until we have something better. There are a few valid
reasons why we might not be able to capture it as well, it's best
effort.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
