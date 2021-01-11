Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC732F18C2
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 15:54:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7E06E0EB;
	Mon, 11 Jan 2021 14:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA3046E0EB;
 Mon, 11 Jan 2021 14:54:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23560234-1500050 for multiple; Mon, 11 Jan 2021 14:54:26 +0000
MIME-Version: 1.0
In-Reply-To: <161037673549.25135.10724540793887363649@emeril.freedesktop.org>
References: <X/xMdcewtft7+QFM@mwanda>
 <161037673549.25135.10724540793887363649@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] ✗ Fi.CI.BUILD: failure for drm/i915/selftests: Fix some error codes (rev2)
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jan 2021 14:54:23 +0000
Message-ID: <161037686369.28181.18246181673451896020@build.alporthouse.com>
User-Agent: alot/0.9
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

Quoting Patchwork (2021-01-11 14:52:15)
> == Series Details ==
> 
> Series: drm/i915/selftests: Fix some error codes (rev2)
> URL   : https://patchwork.freedesktop.org/series/85704/
> State : failure
> 
> == Summary ==
> 
> Applying: drm/i915: selftest_lrc: Fix error code in live_preempt_user()
> Using index info to reconstruct a base tree...
> M       drivers/gpu/drm/i915/gt/selftest_lrc.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/i915/gt/selftest_lrc.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/selftest_lrc.c

Don't worry; I've applied the patch manually and pushed.

Thanks,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
