Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBE51A7FF0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 16:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF636E190;
	Tue, 14 Apr 2020 14:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5F76E1BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 14:38:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20896454-1500050 for multiple; Tue, 14 Apr 2020 15:38:14 +0100
MIME-Version: 1.0
In-Reply-To: <20200414122000.19353-1-mika.kuoppala@linux.intel.com>
References: <20200414122000.19353-1-mika.kuoppala@linux.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158687509325.24667.1519368526578466468@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 14 Apr 2020 15:38:13 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix indirect context size
 calculation
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

Quoting Mika Kuoppala (2020-04-14 13:20:00)
> Hardware needs cacheline count for indirect context size.
> Count of zero means that the feature is disabled.
> If we only divide size with cacheline bytes, we get
> one cacheline short of execution.

I thought we only emitted cacheline chunks by design?

I see us checking for
GEM_DEBUG_WARN_ON(!IS_ALIGNED(wa_bb[i]->offset, CACHELINE_BYTES)))
so what's the reason? I expect that's in the next patch.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
