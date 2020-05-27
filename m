Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F431E42EC
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 15:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 791186E2EC;
	Wed, 27 May 2020 13:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B162B6E2EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 13:07:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21309517-1500050 for multiple; Wed, 27 May 2020 14:05:44 +0100
MIME-Version: 1.0
In-Reply-To: <20200527130214.1239-1-chris@chris-wilson.co.uk>
References: <20200527130214.1239-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <159058474373.30979.15365604573895964133@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 27 May 2020 14:05:43 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Prevent timeslicing into
 unpreemptible requests
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

Quoting Chris Wilson (2020-05-27 14:02:14)
> We have a I915_REQUEST_NOPREEMPT flag that we set when we must prevent
> the HW from preempting during the course of this request. We need to
> honour this flag and protect the HW even if we have a heartbeat request,
> or other maximum priority barrier, pending. As such, restrict the
> timeslicing check to avoid preempting into the topmost priority band,
> leaving the unpreemptable requests in blissful peace running
> uninterrupted on the HW.
> 

Fixes: 2a98f4e65bba ("drm/i915: add infrastructure to hold off preemption on a request")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
