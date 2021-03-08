Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C6D330A29
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 10:18:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F9B6E83A;
	Mon,  8 Mar 2021 09:18:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC3C589C6C;
 Mon,  8 Mar 2021 09:18:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 24038370-1500050 for multiple; Mon, 08 Mar 2021 09:18:20 +0000
MIME-Version: 1.0
In-Reply-To: <20210308085952.8153-1-baijiaju1990@gmail.com>
References: <20210308085952.8153-1-baijiaju1990@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jia-Ju Bai <baijiaju1990@gmail.com>, airlied@linux.ie, daniel@ffwll.ch,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com, lkml@SDF.ORG,
 matthew.auld@intel.com, rodrigo.vivi@intel.com
Date: Mon, 08 Mar 2021 09:18:16 +0000
Message-ID: <161519509650.8241.14778072091965189208@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] gpu: drm: i915: fix error return code of
 igt_buddy_alloc_smoke()
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
Cc: intel-gfx@lists.freedesktop.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jia-Ju Bai (2021-03-08 08:59:52)
> When i915_random_order() returns NULL to order, no error return code of
> igt_buddy_alloc_smoke() is assigned.
> To fix this bug, err is assigned with -EINVAL in this case.

It would not be EINVAL since that is used for a reference failure, but
in this case the idea was to return 0 as no testing was done and the
ENOMEM was raised before testing began i.e. not an internal and
unexpected driver allocation failure.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
