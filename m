Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6FC15337B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 15:56:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68B6F6F5EF;
	Wed,  5 Feb 2020 14:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632656F5EF
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 14:56:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20125602-1500050 for multiple; Wed, 05 Feb 2020 14:56:14 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200204211853.1323966-1-chris@chris-wilson.co.uk>
 <20200205093540.1718688-1-chris@chris-wilson.co.uk>
 <87o8ud9jfx.fsf@gaia.fi.intel.com>
In-Reply-To: <87o8ud9jfx.fsf@gaia.fi.intel.com>
Message-ID: <158091457254.3271.15423203470647988677@skylake-alporthouse-com>
Date: Wed, 05 Feb 2020 14:56:12 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable use of hwsp_cacheline for
 kernel_context
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

Quoting Mika Kuoppala (2020-02-05 14:50:58)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Currently on execlists, we use a local hwsp for the kernel_context,
> > rather than the engine's HWSP, as this is the default for execlists.
> > However, seqno rollover requires allocating a new HWSP cachline, and may
> 
> s/cachline/cacheline

That's the only thing stopping an r-b? :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
