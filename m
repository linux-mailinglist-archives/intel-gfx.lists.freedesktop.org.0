Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC541BFF93
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 17:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB4896E1DE;
	Thu, 30 Apr 2020 15:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E376E1DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 15:04:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21072751-1500050 for multiple; Thu, 30 Apr 2020 16:04:19 +0100
MIME-Version: 1.0
In-Reply-To: <20200430135536.1141443-2-lionel.g.landwerlin@intel.com>
References: <20200430135536.1141443-1-lionel.g.landwerlin@intel.com>
 <20200430135536.1141443-2-lionel.g.landwerlin@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158825905866.7361.10809995051449526398@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 30 Apr 2020 16:04:18 +0100
Subject: Re: [Intel-gfx] [PATCH v10 1/4] drm/i915/perf: break OA config
 buffer object in 2
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

Quoting Lionel Landwerlin (2020-04-30 14:55:33)
> We want to enable performance monitoring on multiple contexts to cover
> the Iris use case of using 2 GEM contexts (3D & compute).
> 
> So start by breaking the OA configuration BO which contains global &
> per context register writes.
> 
> NOA muxes & OA configurations are global, while FLEXEU register
> configurations are per context.
> 
> v2: Use an offset into the same VMA (Chris)
> 
> v3: Use a bitfield to select config parts to emit (Umesh)
> 
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Flashy bitfields, Batman.
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
