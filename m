Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F4D1CFA32
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 18:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020EE89257;
	Tue, 12 May 2020 16:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C229891FA;
 Tue, 12 May 2020 16:11:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21175263-1500050 for multiple; Tue, 12 May 2020 17:11:18 +0100
MIME-Version: 1.0
In-Reply-To: <20200512140736.22096-1-janusz.krzysztofik@linux.intel.com>
References: <20200512140736.22096-1-janusz.krzysztofik@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158929987732.20930.7608676212881403390@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 12 May 2020 17:11:17 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/gem_test_engine: Add no device
 reopen variant
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
Cc: Marcin Bernatowicz <marcin.bernatowicz@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-05-12 15:07:36)
> Some tests may need to take care of closing all device file descriptors
> even on subtest failure.  For example, if a test would like to
> effectively unload the driver module after a subtest failure, that
> wouldn't be possible if any device file descriptors were kept open.
> That may happen if the subtest wants to use gem_test_engine() helper as
> it reopens the device for its internal use and may certainly leave it
> open on failure.

I'm not completely satisfied with gem_test_engine(). The 'test' is
always better defined by the callers, as what is it testing exactly?

We can kill the i915_pm_rpm waste of time, which leaves gem_eio and that
is also dubious.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
