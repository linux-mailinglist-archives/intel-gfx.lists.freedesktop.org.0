Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A44DF1C0283
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 18:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F25F6E934;
	Thu, 30 Apr 2020 16:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78066E934;
 Thu, 30 Apr 2020 16:30:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21074051-1500050 for multiple; Thu, 30 Apr 2020 17:30:20 +0100
MIME-Version: 1.0
In-Reply-To: <158826395564.31920.10899877855410388780@emeril.freedesktop.org>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
 <158826395564.31920.10899877855410388780@emeril.freedesktop.org>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] ✓ Fi.CI.BAT: success for series starting with [1/9] Revert "drm/i915/tgl: Include ro parts of l3 to invalidate"
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158826421955.7361.3520534534194174604@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 30 Apr 2020 17:30:19 +0100
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Patchwork (2020-04-30 17:25:55)
> == Series Details ==
> 
> Series: series starting with [1/9] Revert "drm/i915/tgl: Include ro parts of l3 to invalidate"
> URL   : https://patchwork.freedesktop.org/series/76777/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8401 -> Patchwork_17529
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**

Coherency/pipecontrol are the worst. How do we design tests to even
detect and probe for unknown missed flushes?

I wonder if there are some debug [context] registers that can tell us the
status of all caches? Set to nonzero for a dirty cache, and we're allowed
to set, but is then cleared by pipecontrol. Seems worth asking.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
