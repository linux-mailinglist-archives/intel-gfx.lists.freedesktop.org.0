Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C538E2F8152
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 17:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16AF96E441;
	Fri, 15 Jan 2021 16:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869AC6E441;
 Fri, 15 Jan 2021 16:57:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23609022-1500050 for multiple; Fri, 15 Jan 2021 16:56:44 +0000
MIME-Version: 1.0
In-Reply-To: <c742707e-eb6d-6a22-3006-52dc3bf458d8@gmail.com>
References: <c742707e-eb6d-6a22-3006-52dc3bf458d8@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jinoh Kang <jinoh.kang.kr@gmail.com>, Marek Marczykowski-Górecki <marmarek@invisiblethingslab.com>
Date: Fri, 15 Jan 2021 16:56:42 +0000
Message-ID: <161072980241.18103.11713889922046524226@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/userptr: detect un-GUP-able pages
 early
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jinoh Kang (2021-01-15 16:23:31)
> If GUP-ineligible pages are passed to a GEM userptr object, -EFAULT is
> returned only when the object is actually bound.
> 
> The xf86-video-intel userspace driver cannot differentiate this
> condition, and marks the GPU as wedged.

The idea was to call gem_set_domain on the object to validate the pages
after creation. I only did that for read-only... I did however make mesa
use set-domain for validation.

As a question how are you getting to call userptr on something that
wasn't passed by SHM ipc?

> This not only disables graphics
> acceleration but may also cripple other functions such as VT switch.

That should be a non-sequitur; certainly VT switch works without ever
using the GPU.

> Solve this by "prefaulting" user pages on GEM object creation, testing
> whether all pages are eligible for get_user_pages() in the process.
> On failure, return -EFAULT so that userspace can fallback to software
> blitting.

See https://patchwork.freedesktop.org/series/33449/ for adding PROBE |
POPULATE flags.

But we can just use set-domain.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
