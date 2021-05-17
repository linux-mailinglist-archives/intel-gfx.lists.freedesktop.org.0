Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC223831CA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 16:43:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5B8A6E9B4;
	Mon, 17 May 2021 14:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from depni-mx.sinp.msu.ru (depni-mx.sinp.msu.ru [213.131.7.21])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60CCD6E071;
 Mon, 17 May 2021 13:09:44 +0000 (UTC)
Received: from spider (ip-95-220-118-46.bb.netbynet.ru [95.220.118.46])
 by depni-mx.sinp.msu.ru (Postfix) with ESMTPSA id 540D61BF45A;
 Mon, 17 May 2021 16:10:41 +0300 (MSK)
From: Serge Belyshev <belyshev@depni.sinp.msu.ru>
To: Christoph Hellwig <hch@lst.de>
References: <20210326055505.1424432-1-hch@lst.de>
 <20210326055505.1424432-5-hch@lst.de>
 <87pmxqiry6.fsf@depni.sinp.msu.ru> <20210517123716.GD15150@lst.de>
Date: Mon, 17 May 2021 16:09:42 +0300
In-Reply-To: <20210517123716.GD15150@lst.de> (Christoph Hellwig's message of
 "Mon, 17 May 2021 14:37:16 +0200")
Message-ID: <87lf8dik15.fsf@depni.sinp.msu.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.0.50 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 17 May 2021 14:43:06 +0000
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 dri-devel@lists.freedesktop.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Christoph Hellwig <hch@lst.de> writes:

> As an ad-hoc experiment:  can you replace the call to remap_pfn_range
> with remap_pfn_range_notrack (and export it if you build i915 modular)
> in remap_io_sg and see if that makes any difference?

That worked, thanks -- no artifacts seen.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
