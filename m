Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D013F23DB7D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 18:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE8B89B55;
	Thu,  6 Aug 2020 16:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FEE189B55
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Aug 2020 16:02:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22052057-1500050 for multiple; Thu, 06 Aug 2020 17:02:50 +0100
MIME-Version: 1.0
In-Reply-To: <20200325192429.GA8865@SDF.ORG>
References: <20200325192429.GA8865@SDF.ORG>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: George Spelvin <lkml@SDF.ORG>, intel-gfx@lists.freedesktop.org
Date: Thu, 06 Aug 2020 17:02:48 +0100
Message-ID: <159672976886.16647.12305306734931965936@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH]
 drivers/gpu/drm/i915/selftests/i915_buddy.c: Fix bug
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
Cc: lkml@sdf.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting George Spelvin (2020-03-25 19:24:29)
> igt_mm_config() calls ilog2() on the (pseudo)random 21-bit number
> s>>12.  Once in 2 million seeds, this is zero and ilog2 summons
> the nasal demons.

I ran into a similar bug with random returning 0 and remembered this
patch sitting around.

Pushed, and many thanks for the fix!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
