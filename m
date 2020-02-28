Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EA11735A6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 11:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C286EF27;
	Fri, 28 Feb 2020 10:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EF606EF27
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 10:52:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20383038-1500050 for multiple; Fri, 28 Feb 2020 10:52:26 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200227124356.1625616-1-lionel.g.landwerlin@intel.com>
 <158282308214.8627.3259451249681135908@skylake-alporthouse-com>
In-Reply-To: <158282308214.8627.3259451249681135908@skylake-alporthouse-com>
Message-ID: <158288714402.24106.13125137836039850454@skylake-alporthouse-com>
Date: Fri, 28 Feb 2020 10:52:24 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: reintroduce wait on OA
 configuration completion
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

Quoting Chris Wilson (2020-02-27 17:04:42)
> Quoting Lionel Landwerlin (2020-02-27 12:43:56)
> > We still need to wait for the initial OA configuration to happen
> > before we enable OA report writes to the OA buffer.
> 
> I can confirm this fixes the hang Lionel reported on Skylake [still odd
> that we can only get this to be an issue on skl]. However, Lionel
> mentioned that we should be more careful and ensure the emit_oa_config()
> request is scheduled last. We're currently looking at different ways we
> can do that.

Fwiw, this patch works and fixes the problem. I prefer not adding
a single use temporary to i915_perf_stream, but I leave that choice to
Lionel.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
