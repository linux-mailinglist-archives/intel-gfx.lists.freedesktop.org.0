Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C32CF21750B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 19:20:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EAAA89E05;
	Tue,  7 Jul 2020 17:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EB489C94;
 Tue,  7 Jul 2020 17:20:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21744017-1500050 for multiple; Tue, 07 Jul 2020 18:20:33 +0100
MIME-Version: 1.0
In-Reply-To: <CALqoU4y61Yc5ndaLSO3WoGSPxGm1nJJufk3U=uxhZe3sT1Xyzg@mail.gmail.com>
References: <20200707160012.1299338-1-chris@chris-wilson.co.uk>
 <CALqoU4y61Yc5ndaLSO3WoGSPxGm1nJJufk3U=uxhZe3sT1Xyzg@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: lepton <ytht.net@gmail.com>
Date: Tue, 07 Jul 2020 18:20:32 +0100
Message-ID: <159414243217.17526.6453360763938648186@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/vgem: Do not allocate backing
 shmemfs file for an import dmabuf object
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
Cc: "# v4 . 10+" <stable@vger.kernel.org>, Christian König <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting lepton (2020-07-07 18:05:21)
> On Tue, Jul 7, 2020 at 9:00 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > If we assign obj->filp, we believe that the create vgem bo is native and
> > allow direct operations like mmap() assuming it behaves as backed by a
> > shmemfs inode. When imported from a dmabuf, the obj->pages are
> > not always meaningful and the shmemfs backing store misleading.
> >
> > Note, that regular mmap access to a vgem bo is via the dumb buffer API,
> > and that rejects attempts to mmap an imported dmabuf,
> What do you mean by "regular mmap access" here?  It looks like vgem is
> using vgem_gem_dumb_map as .dumb_map_offset callback then it doesn't call
> drm_gem_dumb_map_offset

As I too found out, and so had to correct my story telling.

By regular mmap() access I mean mmap on the vgem bo [via the dumb buffer
API] as opposed to mmap() via an exported dma-buf fd. I had to look at
igt to see how it was being used.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
