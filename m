Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B50C29CF8A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 11:39:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73A26E516;
	Wed, 28 Oct 2020 10:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07DB86EB82;
 Tue, 27 Oct 2020 18:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ueT7v/ug264msf+mSaH0QCMQsIO6o9z3ClQckle+Jks=; b=i49o8MWwOVHUMNFtxElm61SAKY
 AZQrmhKjqpfq59Y0Hb3t3cEaTznrlvFcuc/JZghsOsKKNHzBsE9zfXabfGFJSpOaMvc5rZo7Thrig
 D3k4Md+yzAsi8YOG7iDeIV/3TFlsABGaBbM/vUY/9YcpuWBVH3K8Pc5hvGD1Q96TNnrR/TK/mYDWn
 YIoo3iVVk/9c54hclgO33suFi7CWPE95OBKe0ZBGGFV2JJnnFf91mMAEbVX280fcQxRmcFc4jSsa0
 hkm5/D52GOHvzVl7rmuiJ+drTSdTSDarUrmsFkWTC4m/6lAVROWl68aWqhNFuxJRV9nLuwdPMqhi0
 cDtVBz1A==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kXU3g-0003rm-2q; Tue, 27 Oct 2020 18:51:00 +0000
Date: Tue, 27 Oct 2020 18:51:00 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20201027185100.GD12824@infradead.org>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-3-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023122216.2373294-3-daniel.vetter@ffwll.ch>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Wed, 28 Oct 2020 10:39:45 +0000
Subject: Re: [Intel-gfx] [PATCH 03/65] mm: Track mmu notifiers in
 fs_reclaim_acquire/release
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
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Chinner <david@fromorbit.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian K??nig <christian.koenig@amd.com>, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, Jason Gunthorpe <jgg@mellanox.com>, Qian Cai <cai@lca.pw>,
 linux-fsdevel@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Is there a list that has the cover letter and the whole series?
I've only found fragments (and mostly the same fragments) while
wading through my backlog in various list folders..
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
