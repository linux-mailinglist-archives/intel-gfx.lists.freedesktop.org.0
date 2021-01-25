Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 099A9302501
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 13:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E2689FAC;
	Mon, 25 Jan 2021 12:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A3389FAC;
 Mon, 25 Jan 2021 12:35:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23692780-1500050 for multiple; Mon, 25 Jan 2021 12:33:19 +0000
MIME-Version: 1.0
In-Reply-To: <20210125122650.4178417-1-arnd@kernel.org>
References: <20210125122650.4178417-1-arnd@kernel.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Arnd Bergmann <arnd@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon, 25 Jan 2021 12:33:20 +0000
Message-ID: <161157800073.27462.7610644354455990065@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] i915: Fix DRM_I915_WERROR dependencies
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
Cc: intel-gfx@lists.freedesktop.org, Arnd Bergmann <arnd@arndb.de>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Arnd Bergmann (2021-01-25 12:26:44)
> From: Arnd Bergmann <arnd@arndb.de>
> 
> CONFIG_DRM_I915_DEBUG now selects CONFIG_DRM_I915_WERROR, but fails
> to honor its dependencies:
> 
> WARNING: unmet direct dependencies detected for DRM_I915_WERROR
>   Depends on [n]: HAS_IOMEM [=y] && DRM_I915 [=m] && EXPERT [=y] && !COMPILE_TEST [=y]
>   Selected by [m]:
>   - DRM_I915_DEBUG [=y] && HAS_IOMEM [=y] && EXPERT [=y] && DRM_I915 [=m]

DRM_I915_DEBUG now depends on !COMPILE_TEST and EXPERT.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
