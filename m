Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 980C71AE160
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 17:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED72B6EC44;
	Fri, 17 Apr 2020 15:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 277816EC44
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 15:42:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20935436-1500050 for multiple; Fri, 17 Apr 2020 16:42:32 +0100
MIME-Version: 1.0
In-Reply-To: <20200417152244.77623-1-michael.j.ruhl@intel.com>
References: <20200417152244.77623-1-michael.j.ruhl@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Michael J. Ruhl" <michael.j.ruhl@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158713815129.2062.12766316238588477850@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 16:42:31 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
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

Quoting Michael J. Ruhl (2020-04-17 16:22:44)
> DMA_MASK bit values are different for different generations.
> 
> This will become more difficult to manage over time with the open
> coded usage of different versions of the device.
> 
> Fix by:
>   adding dma_mask_size to the device info configuration,
>   updating open code call sequence to the latest interface,
>   refactoring into a common function for setting the dma_mask
> 
> Note: GEN(5) and down is also set in intel_gmch_probe().

Assume we pull that code into i915.ko, we will one day.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
