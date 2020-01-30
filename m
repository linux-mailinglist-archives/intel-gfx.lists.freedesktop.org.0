Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4501914D454
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 01:08:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A2E6E053;
	Thu, 30 Jan 2020 00:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1812F6E053
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 00:08:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20053644-1500050 for multiple; Thu, 30 Jan 2020 00:08:17 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
References: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
Message-ID: <158034289619.14720.17130468410548664486@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 30 Jan 2020 00:08:16 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: extract engine WA programming
 to common resume function
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

Quoting Daniele Ceraolo Spurio (2020-01-29 23:58:59)
> The workarounds are a common "feature" across gens and submission
> mechanisms and we already call the other WA related functions from
> common engine ones (<setup/cleanup>_common), so it makes sense to
> do the same with WA application. Medium-term, This will help us
> reduce the duplication once the GuC resume function is added, but short
> term it will also allow us to use the workaround lists for pre-gen8
> engine workarounds.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>

Ok, we've already made the apply functions gentle and not blow up when
called on early gen, and moving the apply into a common path doesn't
hinder future plans.

The only counter argument is that this is building a midlayer, and that
the point of vfuncs is that you call into the backend and the backend
picks and chooses which helpers to use.

So we have to be really confident that this is truly universal and not a
trap for future. But at the same time, we're quite adapt at
deconstructing when we need to.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
