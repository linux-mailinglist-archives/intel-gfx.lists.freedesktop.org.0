Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7874B1A66EF
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 15:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795AD89F45;
	Mon, 13 Apr 2020 13:27:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E330089F41;
 Mon, 13 Apr 2020 13:27:33 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id AEBD868BEB; Mon, 13 Apr 2020 15:27:30 +0200 (CEST)
Date: Mon, 13 Apr 2020 15:27:30 +0200
From: Christoph Hellwig <hch@lst.de>
To: Yan Zhao <yan.y.zhao@intel.com>
Message-ID: <20200413132730.GB14455@lst.de>
References: <20200404094101.672954-1-hch@lst.de>
 <20200404094101.672954-3-hch@lst.de>
 <20200407030845.GA10586@joy-OptiPlex-7040>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407030845.GA10586@joy-OptiPlex-7040>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 2/6] i915/gvt/kvm: a NULL ->mm does not mean
 a thread is a kthread
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
Cc: Jens Axboe <axboe@kernel.dk>, Felipe Balbi <balbi@kernel.org>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 intel-gvt-dev@lists.freedesktop.org, Felix Kuehling <Felix.Kuehling@amd.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, io-uring@vger.kernel.org, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org, linux-fsdevel@vger.kernel.org,
 Alex Deucher <alexander.deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 virtualization@lists.linux-foundation.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 06, 2020 at 11:08:46PM -0400, Yan Zhao wrote:
> hi
> we were removing this code. see
> https://lore.kernel.org/kvm/20200313031109.7989-1-yan.y.zhao@intel.com/

This didn't make 5.7-rc1.

> The implementation of vfio_dma_rw() has been in vfio next tree.
> https://github.com/awilliam/linux-vfio/commit/8d46c0cca5f4dc0538173d62cd36b1119b5105bc


This made 5.7-rc1, so I'll update the series to take it into account.

T
> in vfio_dma_rw(),  we still use
> bool kthread = current->mm == NULL.
> because if current->mm != NULL and current->flags & PF_KTHREAD, instead
> of calling use_mm(), we first check if (current->mm == mm) and allow copy_to_user() if it's true.
> 
> Do you think it's all right?

I can't think of another way for a kernel thread to have a mm indeed.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
