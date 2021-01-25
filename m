Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2A8302503
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 13:36:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B9D6E0CC;
	Mon, 25 Jan 2021 12:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D576E0CC;
 Mon, 25 Jan 2021 12:36:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23692793-1500050 for multiple; Mon, 25 Jan 2021 12:34:39 +0000
MIME-Version: 1.0
In-Reply-To: <20210125122542.4144849-1-arnd@kernel.org>
References: <20210125122542.4144849-1-arnd@kernel.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Arnd Bergmann <arnd@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon, 25 Jan 2021 12:34:40 +0000
Message-ID: <161157808017.27462.17791510835963619576@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: fix non-SMP build failure
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

Quoting Arnd Bergmann (2021-01-25 12:25:34)
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The x86-specific wbinvd_on_all_cpus() function is exported
> through asm/smp.h, causing a build failure in the i915 driver
> when SMP is disabled:
> 
> drivers/gpu/drm/i915/i915_gem.c:1182:2: error: implicit declaration of function 'wbinvd_on_all_cpus' [-Werror,-Wimplicit-function-declaration]

I thought the code was already in i915_gem_pm.c (which included smp.h);
it is now.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
