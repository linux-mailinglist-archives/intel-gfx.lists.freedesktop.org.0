Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDA214E458
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 21:57:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB646E911;
	Thu, 30 Jan 2020 20:57:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0336E6E910;
 Thu, 30 Jan 2020 20:57:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20065386-1500050 for multiple; Thu, 30 Jan 2020 20:56:58 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200130205256.2021-1-tvrtko.ursulin@linux.intel.com>
References: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
 <20200130205256.2021-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <158041781735.18112.13290397906308346272@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 30 Jan 2020 20:56:57 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/i915/gem_ctx_persistence:
 Convert engine subtests to dynamic
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-01-30 20:52:56)
> @@ -772,91 +787,64 @@ igt_main
>                 igt_allow_hang(i915, 0, 0);
>         }
>  
> -       igt_subtest("idempotent")
> -               test_idempotent(i915);
> -
> -       igt_subtest("clone")
> -               test_clone(i915);
> -
> -       igt_subtest("file")
> -               test_nonpersistent_file(i915);
> -
> -       igt_subtest("process")
> -               test_process(i915);
> -
> -       igt_subtest("processes")
> -               test_processes(i915);
> -
> -       igt_subtest("hostile")
> -               test_nohangcheck_hostile(i915);
> -       igt_subtest("hang")
> -               test_nohangcheck_hang(i915);

Could we keep these outside of the engine subtest groups?
I'd like to keep them distinct as they aren't written with verifying
engines per se, but the general context parameter.

There should be per-engine equivalents to the above already where
appropriate.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
