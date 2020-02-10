Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36559158151
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 18:26:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85AA26E21A;
	Mon, 10 Feb 2020 17:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CDFC6E21A
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 17:26:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20178391-1500050 for multiple; Mon, 10 Feb 2020 17:25:25 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200210164215.528610-1-chris@chris-wilson.co.uk>
References: <20200210164215.528610-1-chris@chris-wilson.co.uk>
Message-ID: <158135552303.5235.5373144390800393321@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 10 Feb 2020 17:25:23 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Avoid resetting ring->head
 outside of its timeline mutex
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-02-10 16:42:15)
> We manipulate ring->head while active in i915_request_retire underneath
> the timeline manipulation. We cannot rely on a stable ring->head outside
> of the timeline->mutex, in particular while setting up the context for
> resume and reset.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1126
Fixes: 0881954965e3 ("drm/i915: Introduce intel_context.pin_mutex for pin management")
Fixes: e5dadff4b093 ("drm/i915: Protect request retirement with timeline->mutex")
> References: f3c0efc9fe7a ("drm/i915/execlists: Leave resetting ring to intel_ring")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
