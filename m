Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0671630235A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 10:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D88789BF6;
	Mon, 25 Jan 2021 09:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B58F589B8E;
 Mon, 25 Jan 2021 09:45:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23690693-1500050 for multiple; Mon, 25 Jan 2021 09:44:52 +0000
MIME-Version: 1.0
In-Reply-To: <YA6F3oF8mRaNQWjb@mwanda>
References: <YA6F3oF8mRaNQWjb@mwanda>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Zhenyu Wang <zhenyuw@linux.intel.com>
Date: Mon, 25 Jan 2021 09:44:53 +0000
Message-ID: <161156789392.31416.7341729779003502151@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: fix uninitialized return in
 intel_gvt_update_reg_whitelist()
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
Cc: Yan Zhao <yan.y.zhao@intel.com>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dan Carpenter (2021-01-25 08:48:30)
> Smatch found an uninitialized variable bug in this code:
> 
>     drivers/gpu/drm/i915/gvt/cmd_parser.c:3191 intel_gvt_update_reg_whitelist()
>     error: uninitialized symbol 'ret'.
> 
> The first thing that Smatch complains about is that "ret" isn't set if
> we don't enter the "for_each_engine(engine, &dev_priv->gt, id) {" loop.
> Presumably we always have at least one engine so that's a false
> positive.
> 
> But it's definitely a bug to not set "ret" if i915_gem_object_pin_map()
> fails.

True.
 
> Let's fix the bug and silence the false positive.
> 
> Fixes: 493f30cd086e ("drm/i915/gvt: parse init context to update cmd accessible reg whitelist")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
