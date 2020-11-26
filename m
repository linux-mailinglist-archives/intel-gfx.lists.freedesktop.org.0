Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8572C8956
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 17:21:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9AC6E563;
	Mon, 30 Nov 2020 16:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9C56E59D;
 Thu, 26 Nov 2020 07:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=SZR0GsSdbfjBui5Wk4EHWw9OSPLPRtpE0HYG9GmPIUI=; b=Jhxn/jtf9uxD1lSCrVk5FVgQSu
 NOlyvNStYP9XzDhPWeJzEETQCAdVqezYOpUkxJWXSnEm86Mk89+8lTEmb3+BrNYwF62gYEKoB8vKC
 hvx9Zj1uy0++ELp8zg36GpZ1hiN7cdKD2mK1lPRqBqIl5/7qu/6m/90RjVxdkYbg+JwAEGXvFxX00
 /Xm+rpVXJntmATI7+2EwhEVx7WAncvUDikE/3Xff/+N9tM7rq3TS0cOkumygttnblYNxunSjQcX6g
 Fbg0VxO7Hav5CzJWXReGWEUHTOFI0GiLVL1CZfUh/sxj5CXhw+HqoEN9Tsms8HIUiyd1j9dBMihs/
 c2Rhf8Iw==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kiBZf-0007qP-K7; Thu, 26 Nov 2020 07:20:16 +0000
Date: Thu, 26 Nov 2020 07:20:15 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20201126072015.GA29730@infradead.org>
References: <20201125162532.1299794-1-daniel.vetter@ffwll.ch>
 <20201125162532.1299794-5-daniel.vetter@ffwll.ch>
 <CAKMK7uGXfqaPUtnX=VgA3tFn3S+Gt9GV+kPguakZ6FF_n8LKuA@mail.gmail.com>
 <20201125180606.GQ5487@ziepe.ca>
 <20201125181129.GA1858@infradead.org>
 <20201125235720.GR5487@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201125235720.GR5487@ziepe.ca>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Mon, 30 Nov 2020 16:21:38 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: don't set page->mapping
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
Cc: linux-xfs@vger.kernel.org, Thomas Hellstrom <thellstrom@vmware.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christoph Hellwig <hch@infradead.org>, Linux MM <linux-mm@kvack.org>,
 Huang Rui <ray.huang@amd.com>, Brian Paul <brianp@vmware.com>,
 linux-fsdevel@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 25, 2020 at 07:57:20PM -0400, Jason Gunthorpe wrote:
> annotate is OK, I used that for a long time..
> 
> My main gripe was it didn't setup the to/cc until after the annotate
> editor closes.

I put the To/Cc into the cover letter text file.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
