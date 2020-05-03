Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 623941C2F2C
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 22:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF5A6E290;
	Sun,  3 May 2020 20:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC5F8972D;
 Sun,  3 May 2020 20:20:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21101043-1500050 for multiple; Sun, 03 May 2020 21:20:21 +0100
MIME-Version: 1.0
In-Reply-To: <20200501180731.GA2485@infradead.org>
References: <20200430221016.3866-1-Jason@zx2c4.com>
 <20200501180731.GA2485@infradead.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Christoph Hellwig <hch@infradead.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158853721918.8377.18286963845226122104@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sun, 03 May 2020 21:20:19 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: check to see if SIMD registers
 are available before using SIMD
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, dri-devel@lists.freedesktop.org, tglx@linutronix.de,
 bigeasy@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Christoph Hellwig (2020-05-01 19:07:31)
> On Thu, Apr 30, 2020 at 04:10:16PM -0600, Jason A. Donenfeld wrote:
> > Sometimes it's not okay to use SIMD registers, the conditions for which
> > have changed subtly from kernel release to kernel release. Usually the
> > pattern is to check for may_use_simd() and then fallback to using
> > something slower in the unlikely case SIMD registers aren't available.
> > So, this patch fixes up i915's accelerated memcpy routines to fallback
> > to boring memcpy if may_use_simd() is false.
> 
> Err, why does i915 implements its own uncached memcpy instead of relying
> on core functionality to start with?

What is this core functionality that provides movntqda?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
