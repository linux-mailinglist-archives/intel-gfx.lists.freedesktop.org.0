Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE6B1BE1EC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 17:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA656EF2C;
	Wed, 29 Apr 2020 15:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77ECB6EF2B;
 Wed, 29 Apr 2020 15:02:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21059723-1500050 for multiple; Wed, 29 Apr 2020 16:02:21 +0100
MIME-Version: 1.0
In-Reply-To: <c989a6dc-152c-7a6f-5ca4-7732c5f66c61@intel.com>
References: <20200429145113.588577-1-chris@chris-wilson.co.uk>
 <c989a6dc-152c-7a6f-5ca4-7732c5f66c61@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158817253952.4620.8004487048097223425@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 29 Apr 2020 16:02:19 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] perf: Flush the work
 between rounds of gen8-unprivileged-single-ctx-counter
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lionel Landwerlin (2020-04-29 15:57:41)
> Oh... Is that on a low end platform?

glk. But it was mostly that it got stuck in the rut of hitting -EAGAIN.

/* This needs to be investigated... From time
 * to time, the work we kick off doesn't seem
 * to happen. WTH?? */

Hmm. And that's before we release everything, so yes the leak is real
and not being slow.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
