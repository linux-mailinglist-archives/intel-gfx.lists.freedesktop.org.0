Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0396223BF6F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 20:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A116E4B1;
	Tue,  4 Aug 2020 18:42:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 538B56E4B1
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Aug 2020 18:42:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22032775-1500050 for multiple; Tue, 04 Aug 2020 19:42:30 +0100
MIME-Version: 1.0
In-Reply-To: <20200804085954.350343-3-lionel.g.landwerlin@intel.com>
References: <20200804085954.350343-1-lionel.g.landwerlin@intel.com>
 <20200804085954.350343-3-lionel.g.landwerlin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 04 Aug 2020 19:42:31 +0100
Message-ID: <159656655139.4193.15369815764606779771@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: add syncobj timeline support
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

Quoting Lionel Landwerlin (2020-08-04 09:59:54)
> Introduces a new parameters to execbuf so that we can specify syncobj
> handles as well as timeline points.
> 
> v2: Reuse i915_user_extension_fn
> 
> v3: Check that the chained extension is only present once (Chris)
> 
> v4: Check that dma_fence_chain_find_seqno returns a non NULL fence (Lionel)
> 
> v5: Use BIT_ULL (Chris)
> 
> v6: Fix issue with already signaled timeline points,
>     dma_fence_chain_find_seqno() setting fence to NULL (Chris)
> 
> v7: Report ENOENT with invalid syncobj handle (Lionel)
> 
> v8: Check for out of order timeline point insertion (Chris)
> 
> v9: After explanations on
>     https://lists.freedesktop.org/archives/dri-devel/2019-August/229287.html
>     drop the ordering check from v8 (Lionel)
> 
> v10: Set first extension enum item to 1 (Jason)
> 
> v11: Rebase
> 
> v12: All multiple extension nodes of timeline syncobj (Chris)
> 
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Co-authored-by: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch> (v11)
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

One last detail Joonas will ask for is the Link: for the anv code.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
