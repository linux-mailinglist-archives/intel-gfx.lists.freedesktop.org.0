Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9880A15CC82
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 21:45:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62FA86E3E5;
	Thu, 13 Feb 2020 20:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E53EE6E3E5;
 Thu, 13 Feb 2020 20:45:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20216871-1500050 for multiple; Thu, 13 Feb 2020 20:44:41 +0000
MIME-Version: 1.0
To: Dale B Stimson <dale.b.stimson@intel.com>, igt-dev@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200213192606.63025-1-dale.b.stimson@intel.com>
References: <20200213192606.63025-1-dale.b.stimson@intel.com>
Message-ID: <158162667762.4660.5467892000864292172@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 13 Feb 2020 20:44:37 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915/gem_engine_topology.c -
 intel_get_current_engine invalid result
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

Quoting Dale B Stimson (2020-02-13 19:26:06)
> Function intel_get_current_engine() should return NULL (instead of
> engine 0) if there are no engines.

There should be some igt to put basic use of for_each_engine() though
its paces. Nothing fancy, just complete a loop....

Andi, am I imagining this? I swear saw patches from you to do the
basics.

Anyway, there should be some, and this is worth adding to them,
for_each_context_engine() on an empty engines[] and assert we do not
enter the loop.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
