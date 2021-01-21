Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 257342FEF34
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 16:43:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A65F6E903;
	Thu, 21 Jan 2021 15:43:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026726E903
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 15:43:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23662266-1500050 for multiple; Thu, 21 Jan 2021 15:43:42 +0000
MIME-Version: 1.0
In-Reply-To: <20210121135430.676447-1-tvrtko.ursulin@linux.intel.com>
References: <20210121135430.676447-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu, 21 Jan 2021 15:43:42 +0000
Message-ID: <161124382217.3166.15980209128272182785@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Decrease number of subplatform
 bits
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

Quoting Tvrtko Ursulin (2021-01-21 13:54:30)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Commit 6ce1c33d6c36 ("drm/i915: Kill INTEL_SUBPLATFORM_AML") removed the
> only platform which used bit 2 so could also decrease the
> INTEL_SUBPLATFORM_BITS definition.
> 
> This is not a fixes material but still lets make it precise.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> References: 6ce1c33d6c36 ("drm/i915: Kill INTEL_SUBPLATFORM_AML")

With the usage of BITS corrected elsewhere,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
