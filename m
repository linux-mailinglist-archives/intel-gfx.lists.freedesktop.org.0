Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 150FC2FDB42
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 22:00:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E4C89B03;
	Wed, 20 Jan 2021 21:00:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D6989A59
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 20:59:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23654360-1500050 for multiple; Wed, 20 Jan 2021 20:59:48 +0000
MIME-Version: 1.0
In-Reply-To: <161116596844.3420.4138630766326614766@build.alporthouse.com>
References: <20210120154019.5146-1-chris@chris-wilson.co.uk>
 <CAM0jSHPUoT2eKs0MgUoJ9UBB96hgtZGmQuZSDrE8vGkRSOXpoQ@mail.gmail.com>
 <161116596844.3420.4138630766326614766@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 20 Jan 2021 20:59:47 +0000
Message-ID: <161117638753.7444.16304169600967757321@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Allow importing of shmemfs
 objects into any device
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2021-01-20 18:06:08)
> Quoting Matthew Auld (2021-01-20 17:46:10)
> > On Wed, 20 Jan 2021 at 15:40, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > >
> > > If we import a shmemfs object between devices, for example from
> > > Tigerlake to DG1, we can simply reuse the native object and its backing
> > > store.
> > 
> > Hmmm interesting, so does that include re-using the actual sg mapping
> > for the backing pages? Does that work out-of-the-box between different
> > devices assuming we have iommu enabled?
> 
> Indeed interesting; the dma_addr_t are supposed to be local to a device.

On reflection, we are expected to use cross-device dma_addr_t with
dma-buf. It's the exporter who assigns the dma_addr_t for the importer
to use, and they are always given from the original device.

Maybe not so bad. Definitely needs testing to see what happens in
practice.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
