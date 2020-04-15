Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 524301A9BD7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 13:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE8F56E966;
	Wed, 15 Apr 2020 11:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 061EE6E966
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 11:12:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20905309-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 12:12:01 +0100
MIME-Version: 1.0
In-Reply-To: <20200415110320.23158-1-chris@chris-wilson.co.uk>
References: <20200415100322.28378-1-chris@chris-wilson.co.uk>
 <20200415110320.23158-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158694912000.24667.11071769431150134608@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 15 Apr 2020 12:12:00 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Exercise basic RPS
 interrupt generation
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

Quoting Chris Wilson (2020-04-15 12:03:20)
> Since we depend upon RPS generating interrupts after evaluation
> intervals to determine when to up/down clock the GPU, it is imperative
> that we successfully enable interrupt generation! Verify that we do see
> an interrupt if we keep the GPU busy for an entire EI.

Hmm, I'm still getting stray UP interrupts when idle :(
If you can spot why, be my guest.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
