Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EFB2A7D5F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 12:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F5496E1ED;
	Thu,  5 Nov 2020 11:42:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7BCD6E1ED
 for <Intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 11:42:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22901344-1500050 for multiple; Thu, 05 Nov 2020 11:42:11 +0000
MIME-Version: 1.0
In-Reply-To: <20201105113842.1395391-1-tvrtko.ursulin@linux.intel.com>
References: <20201104134743.916027-2-tvrtko.ursulin@linux.intel.com>
 <20201105113842.1395391-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu, 05 Nov 2020 11:42:09 +0000
Message-ID: <160457652932.19889.3551483397528669579@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC v2 2/2] drm/i915: Use ABI engine class in
 error state ecode
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

Quoting Tvrtko Ursulin (2020-11-05 11:38:42)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Instead of printing out the internal engine mask, which can change between
> kernel versions making it difficult to map to actual engines, present a
> bitmask of hanging engines ABI classes. For example:
> 
>   [drm] GPU HANG: ecode 9:8:24dffffd, in gem_exec_schedu [1334]
> 
> Engine ABI class is useful to quickly categorize render vs media etc hangs
> in bug reports. Considering virtual engine even more so than the current
> scheme.
> 
> v2:
>  * Do not re-order fields. (Chris)
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Both patches look sane, so preemptive
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
