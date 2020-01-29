Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A40214CB9C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 14:43:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B426F55B;
	Wed, 29 Jan 2020 13:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833DA6F55B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 13:43:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20047986-1500050 for multiple; Wed, 29 Jan 2020 13:42:26 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200129133912.810-1-mika.kuoppala@linux.intel.com>
References: <20200129133912.810-1-mika.kuoppala@linux.intel.com>
Message-ID: <158030534546.11197.11834221479926714378@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 29 Jan 2020 13:42:25 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Park faster to alleviate kept
 forcewake
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
Cc: Stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-01-29 13:39:12)
> To avoid context corruption on some gens, we need to hold forcewake
> for long periods of time. This leads to increased energy expenditure
> for mostly idle workloads.
> 
> To combat the increased power consumption, park GPU more hastily.
> 
> As the HW isn't so quick to end up in rc6, this software mechanism
> supplements it. So we can apply it, across all gens.
> 
> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Testcase: igt/i915_pm_rc6_residency/rc6-idle
> References: "Add RC6 CTX corruption WA"
> Cc: Stable <stable@vger.kernel.org>    # v4.19+
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Seems to work and play nice with the older style of locking,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
