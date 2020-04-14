Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80701A7469
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 09:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78986E46C;
	Tue, 14 Apr 2020 07:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C94F6E459;
 Tue, 14 Apr 2020 07:13:28 +0000 (UTC)
IronPort-SDR: 0rhdTxUpOh2iE6dU0PNAvfvVL2l/h2tNY0S6cOYpNpmcYWOxAsXOxTaGvuKqHlXs6yBaizmH5h
 EbiOnXHd1Ngw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 00:13:27 -0700
IronPort-SDR: 3mzTZiupNXsl0k5QcLc9AHNCJBc5G9UIIEYO8qCIUclLUzsoEbBJJHUqxdgJkxiNvCr7gq5Idq
 YjsPeTwaKt8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,381,1580803200"; d="scan'208";a="426968243"
Received: from joy-optiplex-7040.sh.intel.com (HELO joy-OptiPlex-7040)
 ([10.239.13.16])
 by orsmga005.jf.intel.com with ESMTP; 14 Apr 2020 00:13:22 -0700
Date: Tue, 14 Apr 2020 03:03:44 -0400
From: Yan Zhao <yan.y.zhao@intel.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200414070344.GF10586@joy-OptiPlex-7040>
References: <20200404094101.672954-1-hch@lst.de>
 <20200404094101.672954-3-hch@lst.de>
 <20200407030845.GA10586@joy-OptiPlex-7040>
 <20200413132730.GB14455@lst.de>
 <20200414000410.GE10586@joy-OptiPlex-7040>
 <20200414070013.GA23680@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414070013.GA23680@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Reply-To: Yan Zhao <yan.y.zhao@intel.com>
Cc: Jens Axboe <axboe@kernel.dk>, Felipe Balbi <balbi@kernel.org>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jason Wang <jasowang@redhat.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 io-uring@vger.kernel.org, linux-mm@kvack.org, intel-gfx@lists.freedesktop.org,
 linux-fsdevel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 virtualization@lists.linux-foundation.org, intel-gvt-dev@lists.freedesktop.org,
 Felix Kuehling <Felix.Kuehling@amd.com>, Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 14, 2020 at 09:00:13AM +0200, Christoph Hellwig wrote:
> On Mon, Apr 13, 2020 at 08:04:10PM -0400, Yan Zhao wrote:
> > > I can't think of another way for a kernel thread to have a mm indeed.
> > for example, before calling to vfio_dma_rw(), a kernel thread has already
> > called use_mm(), then its current->mm is not null, and it has flag
> > PF_KTHREAD.
> > in this case, we just want to allow the copy_to_user() directly if
> > current->mm == mm, rather than call another use_mm() again.
> > 
> > do you think it makes sense?
> 
> I mean no other way than using use_mm.  That being said nesting
> potentional use_mm callers sounds like a rather bad idea, and we
> should avoid that.
yes, agree.
I was explaining why we just use "current->mm == NULL"
(not "current->flag & PF_KTHREAD") as a criteria to call use_mm()
in vfio_dma_rw(), which you might ask us when you take that part into your
series. :)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
