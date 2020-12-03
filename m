Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E5D2CD82A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 14:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 861E96EB6A;
	Thu,  3 Dec 2020 13:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 449B86EB6A
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 13:49:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23202657-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Dec 2020 13:49:16 +0000
MIME-Version: 1.0
In-Reply-To: <20201203081616.1645-1-chris@chris-wilson.co.uk>
References: <20201203081616.1645-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
Cc: 
To: intel-gfx@lists.freedesktop.org
Date: Thu, 03 Dec 2020 13:49:15 +0000
Message-ID: <160700335502.22976.13123800660964204143@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/gt: Ignore repeated attempts
 to suspend request flow across reset
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

Quoting Chris Wilson (2020-12-03 08:16:13)
> Before reseting the engine, we suspend the execution of the guilty
> request, so that we can continue execution with a new context while we
> slowly compress the captured error state for the guilty context. However,
> if the reset fails, we will promptly attempt to reset the same request
> again, and discover the ongoing capture. Ignore the second attempt to
> suspend and capture the same request.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1168
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
Cc: <stable@vger.kernel.org> # v5.7+
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
