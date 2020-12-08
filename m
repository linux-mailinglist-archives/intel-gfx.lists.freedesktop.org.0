Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBC32D3284
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 20:04:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19496E951;
	Tue,  8 Dec 2020 19:04:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC776E951
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Dec 2020 19:04:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23257963-1500050 for multiple; Tue, 08 Dec 2020 19:04:27 +0000
MIME-Version: 1.0
In-Reply-To: <20201208185702.31852-1-chris@chris-wilson.co.uk>
References: <20201208185702.31852-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Dec 2020 19:04:26 +0000
Message-ID: <160745426641.31456.12363443172320792891@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Disable preparser around
 MI_SEMAPHORE_WAIT
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

Quoting Chris Wilson (2020-12-08 18:57:02)
> @@ -5015,6 +5010,7 @@ gen11_emit_fini_breadcrumb_rcs(struct i915_request *request, u32 *cs)
>  
>  static u32 *gen12_emit_preempt_busywait(struct i915_request *request, u32 *cs)
>  {
> +       *cs++ = gen12_preparser_disable(true); /* Wa_1607297627:tgl,dg1,rkl */
>         *cs++ = MI_SEMAPHORE_WAIT_TOKEN |
>                 MI_SEMAPHORE_GLOBAL_GTT |
>                 MI_SEMAPHORE_POLL |

I'm wondering if MI_SEMAPHORE_POLL prevents idling & RDOP, so the w/a is
not required?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
