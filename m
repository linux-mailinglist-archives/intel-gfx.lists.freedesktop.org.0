Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EE018E17A
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2020 14:13:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3BA6E0DD;
	Sat, 21 Mar 2020 13:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36B56E0DD
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Mar 2020 13:13:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20643018-1500050 for multiple; Sat, 21 Mar 2020 13:12:19 +0000
MIME-Version: 1.0
In-Reply-To: <20200320174745.19995-1-chris@chris-wilson.co.uk>
References: <20200320130159.3922-2-chris@chris-wilson.co.uk>
 <20200320174745.19995-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158479633822.7882.284558700752110350@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 21 Mar 2020 13:12:18 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Pull tasklet
 interrupt-bh local to direct submission
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

Quoting Chris Wilson (2020-03-20 17:47:45)
> We dropped calling process_csb prior to handling direct submission in
> order to avoid the nesting of spinlocks and lift process_csb() and the
> majority of the tasklet out of irq-off. However, we do want to avoid
> ksoftirqd latency in the fast path, so try and pull the interrupt-bh
> local to direct submission if we can acquire the tasklet's lock.
> 
> v2: Tweak the balance to avoid over submitting lite-restores

Sigh. It's a driver problem with lock contention, mostly from aggressive
idling.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
