Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CCC2B68F9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 16:46:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3920089B70;
	Tue, 17 Nov 2020 15:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35C8589B70
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 15:46:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23020330-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 15:46:18 +0000
MIME-Version: 1.0
In-Reply-To: <20201117154252.12956-1-chris@chris-wilson.co.uk>
References: <20201117154252.12956-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
Cc: 
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 15:46:21 +0000
Message-ID: <160562798132.22621.12604307418279695843@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Register DMAR fault handler
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

Quoting Chris Wilson (2020-11-17 15:42:52)
> Attach a iommu [DMAR] fault handler for our device and try and reset the
> GPU upon a fault. At worst this will allow us to more quickly recover
> from a fault, rather than wait 10s for the hangcheck to determine a
> stuctk GPU. At best, it will immediately restart the GPU and paper over
> the bad iommu.

Scratch that, it was just good luck in test runs. Still received a

[   40.695947] DMAR: DRHD: handling fault status reg 3
[   40.696128] DMAR: [DMA Write] Request device [00:02.0] PASID ffffffff fault addr 54000 [fault reason 07] Next page table ptr is invalid

with no sign of our fault_handler() being invoked.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
