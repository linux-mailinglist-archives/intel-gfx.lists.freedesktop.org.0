Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BBB290017
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 10:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5208F6E115;
	Fri, 16 Oct 2020 08:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E456C6E115
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 08:44:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22732115-1500050 for multiple; Fri, 16 Oct 2020 09:43:53 +0100
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB2956DF219D9F3F46DAE1CDB3CD030@DM6PR11MB2956.namprd11.prod.outlook.com>
References: <20201015195023.32346-1-chris@chris-wilson.co.uk>
 <DM6PR11MB2956DF219D9F3F46DAE1CDB3CD030@DM6PR11MB2956.namprd11.prod.outlook.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Shi, Yang A" <yang.a.shi@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 09:43:53 +0100
Message-ID: <160283783335.3047.17395434970082935636@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Delay execlist processing for
 tgl
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Shi, Yang A (2020-10-16 02:08:24)
> Hi Chris:
>         
>         How to determine the length of the magic delay in here?

That is the question. I started with a large udelay, played with moving
it around and shortening (5us) to try and isolate what is going on. An
arbitrary delay is awful as it is guaranteed to fail since it imposes no
barrier/serialisation, mmio often have the desired side-effect, if you
can tickle the right one.

Still this is nothing more than empirical evidence (an easily reproduced
hang that goes away), and not a hard explanation. An uncached read upon
acking the preemption event, is a pretty nasty nuisance (it's 80% of our
CS bottom half) but as compromises go, it could be far worse.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
