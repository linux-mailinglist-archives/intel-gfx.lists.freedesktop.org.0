Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DF3223892
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 11:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D686E0B7;
	Fri, 17 Jul 2020 09:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65F3E6E0C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 09:39:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21847385-1500050 for multiple; Fri, 17 Jul 2020 10:39:04 +0100
MIME-Version: 1.0
In-Reply-To: <20200717093541.17030-2-chris@chris-wilson.co.uk>
References: <20200717093541.17030-1-chris@chris-wilson.co.uk>
 <20200717093541.17030-2-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jul 2020 10:39:04 +0100
Message-ID: <159497874449.13677.14631637008188862960@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Replace
 intel_engine_transfer_stale_breadcrumbs
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

Quoting Chris Wilson (2020-07-17 10:35:39)
> After staring at the breadcrumb enabling/cancellation and coming to the
> conclusion that the cause of the mysterious stale breadcrumbs must the
> act of submitting a completed requests, we can then redirect those
> completed requests onto a dedicated signaled_list at the time of
> construction and so eliminate intel_engine_transfer_stale_breadcrumbs().
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
