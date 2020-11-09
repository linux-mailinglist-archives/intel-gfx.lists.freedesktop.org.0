Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0B22AC5CF
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 21:15:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E293789244;
	Mon,  9 Nov 2020 20:15:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21F0F89244
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 20:15:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22943185-1500050 for multiple; Mon, 09 Nov 2020 20:15:07 +0000
MIME-Version: 1.0
In-Reply-To: <CAOFGe96Hs+7GXT=vNmB14oXRnNjLna7D67Pm1G9jrkc3ws3=+w@mail.gmail.com>
References: <20190720143132.17522-1-chris@chris-wilson.co.uk>
 <65da19be-2696-8d60-e055-63a37101cf6b@linux.intel.com>
 <156388293186.31349.1576327527372090940@skylake-alporthouse-com>
 <87pnm0qtr2.fsf@riseup.net>
 <156397886241.31349.9195166642161638629@skylake-alporthouse-com>
 <87a7d3qjzx.fsf@riseup.net>
 <CAOFGe96Hs+7GXT=vNmB14oXRnNjLna7D67Pm1G9jrkc3ws3=+w@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Francisco Jerez <currojerez@riseup.net>,
 Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 09 Nov 2020 20:15:05 +0000
Message-ID: <160495290548.21258.15679039374837190397@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable atomics in L3 for gen9
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>, Marcin Ślusarz <marcin.slusarz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jason Ekstrand (2020-11-09 19:52:26)
> We need to land this patch.  The number of bugs we have piling up in
> Mesa gitlab related to this is getting a lot larger than I'd like.
> I've gone back and forth with various HW and SW people internally for
> countless e-mail threads and there is no other good workaround.  Yes,
> the perf hit to atomics sucks but, fortunately, most games don't use
> them heavily enough for it to make a significant impact.  We should
> just eat the perf hit and fix the hangs.

Drat, I thought you had found an alternative fix in the
bad GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC w/a.

So be it.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
