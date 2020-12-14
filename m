Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 797A72DA1ED
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 21:48:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA80896B0;
	Mon, 14 Dec 2020 20:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F2B3896B0;
 Mon, 14 Dec 2020 20:48:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23325155-1500050 for multiple; Mon, 14 Dec 2020 20:48:40 +0000
MIME-Version: 1.0
In-Reply-To: <7021dc5149a24438878f6540a0c4aed8@intel.com>
References: <20201212094354.3023502-1-chris@chris-wilson.co.uk>
 <7021dc5149a24438878f6540a0c4aed8@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Chang, Yu bruce" <yu.bruce.chang@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 20:48:40 +0000
Message-ID: <160797892093.13039.18269573801947438332@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Pass device fd to
 gem_mmappable_aperture_size()
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chang, Yu bruce (2020-12-14 18:45:04)
> +/**
> + * gem_mappable_aperture_size:
> + *
> + * Feature test macro to query the kernel for the mappable gpu aperture size.
> + * This is the area available for GTT memory mappings.
> + *
> + * Returns: The mappable gtt address space size.
> + */
> +uint64_t gem_mappable_aperture_size(int fd)
> +{
> +       struct pci_device *pci_dev = igt_device_get_pci_device(fd);
> 
> Does it make sense to eliminate the function intel_get_pci_device() if not
> being used anymore? But it can be a separate patch.

It's still used by tools. The complication there is that we mostly
need to lookup the pci device without loading i915.ko. 
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
