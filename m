Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC3F23479C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 16:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537396EABE;
	Fri, 31 Jul 2020 14:18:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7028E6EABE
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 14:18:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21994355-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 15:18:24 +0100
MIME-Version: 1.0
In-Reply-To: <20200731141245.11483-1-chris@chris-wilson.co.uk>
References: <20200731141245.11483-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
Cc: 
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 15:18:23 +0100
Message-ID: <159620510319.21624.1832352469860898912@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Decouple obj<->fence reference
 cycles on freeing the GT pool
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

Quoting Chris Wilson (2020-07-31 15:12:45)
> Make sure that the obj->base.resv does not hold a reference to a fence
> that itself has an active reference on the object. There is no automatic

The active reference is pruned. I was thinking of other reference cycles
that may exist, but I do not think apply to the users of the buffer
pool. There is still an advantage here in that the pruning of that
reference may be delayed, so a kick here could release the memory
faster.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
