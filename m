Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9A8377ECB
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 10:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B535C89D81;
	Mon, 10 May 2021 08:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF9DE89D81;
 Mon, 10 May 2021 08:58:27 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5AF7367373; Mon, 10 May 2021 10:58:23 +0200 (CEST)
Date: Mon, 10 May 2021 10:58:23 +0200
From: Christoph Hellwig <hch@lst.de>
To: youling257 <youling257@gmail.com>
Message-ID: <20210510085823.GA1466@lst.de>
References: <20210326055505.1424432-5-hch@lst.de>
 <20210508193329.28394-1-youling257@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508193329.28394-1-youling257@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 4/4] i915: fix remap_io_sg to verify the
 pgprot
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
Cc: peterz@infradead.org, daniel.vetter@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 chris@chris-wilson.co.uk, linux-mm@kvack.org, akpm@linux-foundation.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, May 09, 2021 at 03:33:29AM +0800, youling257 wrote:
> This patch cause "x86/PAT : surfaceflinger:1440 map pfn RAM range req write-combining for [mem 0x064a2000-0x064a2fff], got write-back" problem.
> my 2GB ram Bay trail z3735f tablet runing on android-x86, "i915: fix remap_io_sg to verify the pgprot" cause this problem.

So this is the memtype verification added by the patch, meaning that the
old code did in fact not call into track_pfn_remap with the right flags.

Can the i915 maintainers take a look at making sure the page permissions
here make sense?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
