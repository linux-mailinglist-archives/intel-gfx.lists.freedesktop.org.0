Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F19C82B9AA5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A576E5CA;
	Thu, 19 Nov 2020 18:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E07D66E5CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:31:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23046372-1500050 for multiple; Thu, 19 Nov 2020 18:31:02 +0000
MIME-Version: 1.0
In-Reply-To: <030edf9e00ee4cc8bf204becd5ec53fc@intel.com>
References: <20201117222308.31551-1-steven.t.hampson@intel.com>,
 <160565211968.4536.839020621876876215@build.alporthouse.com>
 <4EE61155-0590-4677-952B-17E4E21BF3D3@intel.com>
 <160569674330.3553.1254692070520168643@build.alporthouse.com>
 <08d69a538ca24cc1806b160e2981b0b2@intel.com>
 <030edf9e00ee4cc8bf204becd5ec53fc@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Hampson, Steven T" <steven.t.hampson@intel.com>
Date: Thu, 19 Nov 2020 18:31:00 +0000
Message-ID: <160581066056.3416.9855362059832049802@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] i915/gem_flink_race: Fix error in buffer
 usage
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Hampson, Steven T (2020-11-19 18:18:14)
> Chris,
> 
> Is this acceptable?  Can it be merged?

It is of little use to print out that many numbers, so lets not and just
show some statistics instead as this is just meant to be a guide to the
reader as to whether the threads each received a reasonably fair
proportion of the _CPU_ time.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
