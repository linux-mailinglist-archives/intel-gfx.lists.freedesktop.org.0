Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 008651A0C42
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 12:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB58489D89;
	Tue,  7 Apr 2020 10:51:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A4246E826
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 10:51:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20826240-1500050 for multiple; Tue, 07 Apr 2020 11:51:11 +0100
MIME-Version: 1.0
In-Reply-To: <368ed897-311b-2237-54cb-8c9cf26527c4@linux.intel.com>
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
 <20200403091300.14734-9-chris@chris-wilson.co.uk>
 <368ed897-311b-2237-54cb-8c9cf26527c4@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158625667260.8918.18433618047035214543@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 07 Apr 2020 11:51:12 +0100
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/gem: Allow combining
 submit-fences with syncobj
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

Quoting Tvrtko Ursulin (2020-04-07 11:44:45)
> 
> On 03/04/2020 10:12, Chris Wilson wrote:
> > Fixes: a88b6e4cbafd ("drm/i915: Allow specification of parallel execbuf")
> 
> It looks like new uapi on the technical level, even though from a higher 
> level it is just an application of existing uapi across more modes, so 
> why fixes and who is the consumer?

Submitting semaphores from userspace for batches under construction
[passed between processes via syncobj/sync-file]. iris has a bug where
it is trying to wait on a future fence to be submitted and cannot --
but we already have the uapi to handle that elsewhere.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
