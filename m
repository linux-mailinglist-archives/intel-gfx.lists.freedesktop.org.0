Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B121CE041
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 18:17:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9889C6E4F8;
	Mon, 11 May 2020 16:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57C8D6E4F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 16:16:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21163092-1500050 for multiple; Mon, 11 May 2020 17:16:53 +0100
MIME-Version: 1.0
In-Reply-To: <158921363228.1729.5879156210323656119@build.alporthouse.com>
References: <20200511160803.15407-1-mika.kuoppala@linux.intel.com>
 <158921363228.1729.5879156210323656119@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158921381209.1729.9885468432351595414@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 11 May 2020 17:16:52 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Force pte cacheline to main memory
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

Quoting Chris Wilson (2020-05-11 17:13:52)
> Quoting Mika Kuoppala (2020-05-11 17:08:03)
> > We have problems of tgl not seeing a valid pte entry
> > when iommu is enabled. Add heavy handed flushing
> > of entry modification by flushing the cpu, cacheline
> > and then wcb. This forces the pte out to main memory
> > past this point regarless of promises of coherency.
> > 
> > This is an evolution of an experimental patch from
> > Chris Wilson of adding wmb for coherent partners,
> > by adding a clflush to force the cache->memory step.
> > 
> > Testcase: igt/gem_exec_fence/parallel
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> 
> Not only does it help tgl, but it is also helping with a coherency
> problem on Braswell. We see similar problems on gen9 and icl, and I have
> a trybot run to see if it helps with those.

It should be noted that Braswell is using WC kmaps of the PTE, so this
should not even be necessary... But if we drop the WC and keep the
clflush, it fails. Just to add to the confusion.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
