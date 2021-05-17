Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0573831C5
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 16:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F24076E9B0;
	Mon, 17 May 2021 14:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05AAC6E96A
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 12:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+pTARd/J+Nn5q3ByAbyk/qheF0T8+IAYZW0neGnkNm0=; b=hZVpyqZ0bo24554QSUuKPU47V8
 PHGgjab6IazWR79JIaq3y/ZsKgnMjI8lsJP4oJkkc6iM6YOqNt+2apHYhoLypQ23JSLt+YNeO0VsA
 nGJgycsNs3nlcdDLA/zTPBh8HqQmhI6WidmBen3r7/lPAjBbxYoudY+kIRRtD8aFP+ib5RjTuxvwJ
 /QVIKh93c2FSBnGfSvD/FL7e1tLfMqa2VPnERb7i/Hz769h2ROS2gOymOqLjCM9lmzxXBELl0Mzg3
 2b8RgP4eYbEZN02PG7V4WuI1sUrX+u5VQj8G8XDM3eeXCmnZWla/erQSxgWQfLflcgqHo5/49X30j
 DWPbDZ5g==;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1licMt-00CtlD-9F; Mon, 17 May 2021 12:29:09 +0000
Date: Mon, 17 May 2021 13:29:07 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <YKJhk9nrDs3oWe46@infradead.org>
References: <20210407122337.77493-1-andriy.shevchenko@linux.intel.com>
 <YKJfZXn3P/ZdslRP@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YKJfZXn3P/ZdslRP@smile.fi.intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Mon, 17 May 2021 14:43:06 +0000
Subject: Re: [Intel-gfx] [PATCH v1 1/1] drm/i915: Include only needed
 headers in ascii85.h
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Btw, can someone please add a few comments to ascii85.h?
I have no idea WTF "ascii85" is, why it matters and how the two helpers
should be used.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
