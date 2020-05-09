Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF0E1CC082
	for <lists+intel-gfx@lfdr.de>; Sat,  9 May 2020 12:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E11189DA3;
	Sat,  9 May 2020 10:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4379C89DA3
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 May 2020 10:46:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21147219-1500050 for multiple; Sat, 09 May 2020 11:46:30 +0100
MIME-Version: 1.0
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E8663010E20C1C4@FMSMSX108.amr.corp.intel.com>
References: <20200506205920.24233-1-chris@chris-wilson.co.uk>
 <20200506205920.24233-12-chris@chris-wilson.co.uk>
 <14063C7AD467DE4B82DEDB5C278E8663010E2094F8@FMSMSX108.amr.corp.intel.com>
 <158885980224.20858.10019801670820346317@build.alporthouse.com>
 <14063C7AD467DE4B82DEDB5C278E8663010E20C1C4@FMSMSX108.amr.corp.intel.com>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158902118622.20071.15836050766689160768@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 09 May 2020 11:46:26 +0100
Subject: Re: [Intel-gfx] [PATCH 12/15] drm/i915: Replace the hardcoded
 I915_FENCE_TIMEOUT
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

Quoting Ruhl, Michael J (2020-05-08 14:54:50)
> >-----Original Message-----
> >From: Chris Wilson <chris@chris-wilson.co.uk>
> >Sent: Thursday, May 7, 2020 9:57 AM
> >To: Ruhl, Michael J <michael.j.ruhl@intel.com>; intel-
> >gfx@lists.freedesktop.org
> >Subject: Re: [Intel-gfx] [PATCH 12/15] drm/i915: Replace the hardcoded
> >I915_FENCE_TIMEOUT
> >
> >Quoting Ruhl, Michael J (2020-05-07 14:53:00)
> >>
> >>
> >> >-----Original Message-----
> >> >From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> >Chris
> >> >Wilson
> >> >diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> >> >b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> >> >index 3a146aa2593b..d3a86a4d5c04 100644
> >> >--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> >> >+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> >> >@@ -288,8 +288,7 @@ int i915_gem_schedule_fill_pages_blt(struct
> >> >drm_i915_gem_object *obj,
> >> >
> >> >       i915_gem_object_lock(obj);
> >> >       err = i915_sw_fence_await_reservation(&work->wait,
> >> >-                                            obj->base.resv, NULL,
> >> >-                                            true, I915_FENCE_TIMEOUT,
> >> >+                                            obj->base.resv, NULL, true, 0,
> >>
> >> Did you miss this one, or is the '0' on purpose?
> >
> >It should be 0, as it should be only handling internal fences which may
> >take as long as required and should not be timed out.
> >
> >Still this is a placeholder function and should not be taken too
> >seriously.
> 
> Assuming that the "placeholder function" is the _fill_pages_blt()...

It is. I'm not fond of await_reservation either. That extra 'exclude'
parameter belies a weakness of the one-size fits all approach. Just look
at the trouble we go to with i915_request_await_dma_fence() to determine
the "best" means of waiting on the fence, and then worry about how to fit
that into a more generic api.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
