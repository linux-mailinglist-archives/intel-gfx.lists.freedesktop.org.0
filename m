Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4301323BF72
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 20:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95026E4B7;
	Tue,  4 Aug 2020 18:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C3AF6E4B7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Aug 2020 18:43:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22032779-1500050 for multiple; Tue, 04 Aug 2020 19:43:11 +0100
MIME-Version: 1.0
In-Reply-To: <20200804085954.350343-2-lionel.g.landwerlin@intel.com>
References: <20200804085954.350343-1-lionel.g.landwerlin@intel.com>
 <20200804085954.350343-2-lionel.g.landwerlin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 04 Aug 2020 19:43:12 +0100
Message-ID: <159656659231.4193.7733282804131526569@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: introduce a mechanism to
 extend execbuf2
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lionel Landwerlin (2020-08-04 09:59:53)
> We're planning to use this for a couple of new feature where we need
> to provide additional parameters to execbuf.
> 
> v2: Check for invalid flags in execbuffer2 (Lionel)
> 
> v3: Rename I915_EXEC_EXT -> I915_EXEC_USE_EXTENSIONS (Chris)
> 
> v4: Rebase
>     Move array fence parsing in i915_gem_do_execbuffer()
> 
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk> (v1)
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
