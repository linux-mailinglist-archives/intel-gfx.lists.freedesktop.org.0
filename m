Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC44E1C8D17
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 15:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC3BB6E10E;
	Thu,  7 May 2020 13:56:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 317446E108
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 13:56:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21138861-1500050 for multiple; Thu, 07 May 2020 14:56:44 +0100
MIME-Version: 1.0
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E8663010E2094F8@FMSMSX108.amr.corp.intel.com>
References: <20200506205920.24233-1-chris@chris-wilson.co.uk>
 <20200506205920.24233-12-chris@chris-wilson.co.uk>
 <14063C7AD467DE4B82DEDB5C278E8663010E2094F8@FMSMSX108.amr.corp.intel.com>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158885980224.20858.10019801670820346317@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 07 May 2020 14:56:42 +0100
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

Quoting Ruhl, Michael J (2020-05-07 14:53:00)
> 
> 
> >-----Original Message-----
> >From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
> >Wilson
> >diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> >b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> >index 3a146aa2593b..d3a86a4d5c04 100644
> >--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> >+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> >@@ -288,8 +288,7 @@ int i915_gem_schedule_fill_pages_blt(struct
> >drm_i915_gem_object *obj,
> >
> >       i915_gem_object_lock(obj);
> >       err = i915_sw_fence_await_reservation(&work->wait,
> >-                                            obj->base.resv, NULL,
> >-                                            true, I915_FENCE_TIMEOUT,
> >+                                            obj->base.resv, NULL, true, 0,
> 
> Did you miss this one, or is the '0' on purpose?

It should be 0, as it should be only handling internal fences which may
take as long as required and should not be timed out.

Still this is a placeholder function and should not be taken too
seriously.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
