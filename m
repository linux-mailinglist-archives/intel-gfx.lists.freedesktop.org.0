Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F3E1CB640
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 19:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAFC36E277;
	Fri,  8 May 2020 17:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51E36E271;
 Fri,  8 May 2020 17:46:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21154318-1500050 for multiple; Fri, 08 May 2020 18:46:03 +0100
MIME-Version: 1.0
In-Reply-To: <20200508135631.8099-2-janusz.krzysztofik@linux.intel.com>
References: <20200508135631.8099-1-janusz.krzysztofik@linux.intel.com>
 <20200508135631.8099-2-janusz.krzysztofik@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158895996053.30605.3233207844142672435@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 08 May 2020 18:46:00 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/2] tests/gem_exec_nop:
 Kill obsolete pass/fail metric
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

Quoting Janusz Krzysztofik (2020-05-08 14:56:30)
> Commit 870c774b866c ("igt/gem_exec_nop: Add expectancy of independent
> execution between engines") extended a "basic" subtest (now
> "basic-series") with a pass/fail metric based on comparison of parallel
> execution time to be less than an average * 2.  Since then, that limit
> has been raised quite a few times:
> - by commit 41a26b5152a5 ("igt/gem_exec_nop: Relax parallel assertion
>   for short rings") to maximum + minimum,
> - by commit 7bd4f918c461 ("igt/gem_exec_nop: Explain the parallel
>   execution assertion") to maximum + minimum * 10/9,
> - by commit a0eebbddecaa ("igt/gem_exec_nop: Relax assertion for
>   parallel execution") to sum * 2.
> 
> With the criteria relaxed up to that extent, the purpose of that check
> has been limited to a showcase for an old GuC failure.  Since that is
> now obsolete, kill that assert.
> 
> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
