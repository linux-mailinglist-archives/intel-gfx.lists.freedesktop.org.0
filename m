Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA72914C847
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 10:43:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D16716F4CB;
	Wed, 29 Jan 2020 09:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D26E76F4CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 09:43:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20044828-1500050 for multiple; Wed, 29 Jan 2020 09:43:06 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200129093343.194570-1-matthew.auld@intel.com>
In-Reply-To: <20200129093343.194570-1-matthew.auld@intel.com>
Message-ID: <158029098494.10244.13635623200273937778@skylake-alporthouse-com>
Date: Wed, 29 Jan 2020 09:43:04 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/selftests/perf: measure memcpy
 bw between regions
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

Quoting Matthew Auld (2020-01-29 09:33:43)
> Measure the memcpy bw between our CPU accessible regions, trying all
> supported mapping combinations(WC, WB) across various sizes.
> 
> v2:
>     use smaller sizes
>     throw in memcpy32/memcpy64/memcpy_from_wc
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>

Looks good, already dispelling some of my theories about rep mov :)

Runs fast enough not to worry about and the results seem to match rough
expectations.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
