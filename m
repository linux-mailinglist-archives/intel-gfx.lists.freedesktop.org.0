Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7691012FC1B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 19:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C5E89DD8;
	Fri,  3 Jan 2020 18:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D228189DD8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 18:10:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19763528-1500050 for multiple; Fri, 03 Jan 2020 18:10:33 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200103121505.1862904-2-chris@chris-wilson.co.uk>
References: <20200103121505.1862904-1-chris@chris-wilson.co.uk>
 <20200103121505.1862904-2-chris@chris-wilson.co.uk>
Message-ID: <157807503114.11773.18101235356523353804@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 03 Jan 2020 18:10:31 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Extend fault
 handler selftests to all memory regions
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-01-03 12:15:05)
> From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> 
> Instead of testing individually our new fault handlers, iterate over all
> memory regions and test all from one interface.
> 
> Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
> We also need an igt_mmap_gpu to truly test lmem.

But not strictly necessary since we compare using discontguous pin_map()
which we have validated as being what the GPU sees.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
