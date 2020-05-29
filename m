Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 447E01E8068
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 16:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EFB56E8AD;
	Fri, 29 May 2020 14:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E776E8AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 14:37:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21335775-1500050 for multiple; Fri, 29 May 2020 15:37:53 +0100
MIME-Version: 1.0
In-Reply-To: <87y2pastta.fsf@gaia.fi.intel.com>
References: <20200529130019.17977-1-chris@chris-wilson.co.uk>
 <87y2pastta.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159076307407.8851.10847605038685432539@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 29 May 2020 15:37:54 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Discard a misplaced GGTT vma
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

Quoting Mika Kuoppala (2020-05-29 15:24:17)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Across the many users of the GGTT vma (internal objects, mmapings,
> > display etc), we may end up with conflicting requirements for the
> > placement. Currently, we try to resolve the conflict by unbinding the
> > vma and rebinding it to match the new constraints; over time we will end
> > up with a GGTT that matches the most strict constraints over all
> > concurrent users. However, this causes a problem if the vma is currently
> > in use as we must wait until it is idle before moving it. But there is
> > no restriction on the number of views we may (apart from the limited
> 
> we may...have/impose?
we may have/create/use

From the object point-of-view, there is a presumption that is a single
normal view with as many partials as required (one expects up to
obj->size/chunk_size).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
