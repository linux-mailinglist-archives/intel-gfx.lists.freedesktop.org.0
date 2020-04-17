Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 138F71AE65B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B14E6EA05;
	Fri, 17 Apr 2020 19:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B2F6EA05
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 19:55:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20938209-1500050 for multiple; Fri, 17 Apr 2020 20:55:11 +0100
MIME-Version: 1.0
In-Reply-To: <20200417195107.68732-1-michael.j.ruhl@intel.com>
References: <20200417195107.68732-1-michael.j.ruhl@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Michael J. Ruhl" <michael.j.ruhl@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158715330999.2062.12066493041843592892@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 20:55:09 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Refactor setting dma info to a
 common helper
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

Quoting Michael J. Ruhl (2020-04-17 20:51:07)
> DMA_MASK bit values are different for different generations.
> 
> This will become more difficult to manage over time with the open
> coded usage of different versions of the device.
> 
> Fix by:
>   disallow setting of dma mask in AGP path (< GEN(5) for i915,
>   add dma_mask_size to the device info configuration,
>   updating open code call sequence to the latest interface,
>   refactoring into a common function for setting the dma segment
>   and mask info
> 
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
> cc: Brian Welty <brian.welty@intel.com>
> cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> 
> ---
> v1: removed i915 depenancy from agp path for dma mask
>     Consolidated segment size and work arounds to the helper
> v2: added r-b

You don't need to resend for adding r-b by itself, patchwork will do
that, and the committer should be checking the output from pw. dim then
double checks that we haven't missed anything vital.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
