Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF4D1C42DD
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 19:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC4E6E44D;
	Mon,  4 May 2020 17:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2C3C6E06E;
 Mon,  4 May 2020 16:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MJiG06idgkhQ7ETomKvk+pXIhWmcVzgg6Sh67pMiRa8=; b=KSO+cu4KS04f9QMSMnoEgpz4lP
 xEUzzhMHMNy0nNQLb/oWLnGEmta0IgfeMaWPLFVU8v0KE5Q/SQ/kf7eZZQbtkWd1mh1jOtqlamJpr
 YN+qE50vHOxXepS7SXteLP+Jz8YM7GoPnzdBjtA78HfjZE5ci7Ix61JXsgZmNOz3ITCwjRyIZY+8f
 VyOZXfNmnntPRCfh/xfRBQBe6qX2/BPIpwkpCgcPE5LJxYzBjMyx5sO7eU8s1XolUvo0+SbSxsYHA
 IxtQuHWPpYcGkzHJS2c5PU+nqLHZ77pbjoE7P9V0lYxoaoYguZ5auscSJkpBNu3v2LiCVcQSeLZB2
 eIpOBNEQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jVdYo-0007fF-8J; Mon, 04 May 2020 16:03:14 +0000
Date: Mon, 4 May 2020 09:03:14 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200504160314.GA26373@infradead.org>
References: <20200430221016.3866-1-Jason@zx2c4.com>
 <20200501180731.GA2485@infradead.org>
 <158853721918.8377.18286963845226122104@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158853721918.8377.18286963845226122104@build.alporthouse.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Mon, 04 May 2020 17:32:53 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: check to see if SIMD registers
 are available before using SIMD
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, bigeasy@linutronix.de,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, stable@vger.kernel.org,
 tglx@linutronix.de, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, May 03, 2020 at 09:20:19PM +0100, Chris Wilson wrote:
> > Err, why does i915 implements its own uncached memcpy instead of relying
> > on core functionality to start with?
> 
> What is this core functionality that provides movntqda?

A sensible name might be memcpy_uncached or mempcy_nontemporal.
But the important point is that this should be arch code with a common
fallback rather than hacking it up in drivers.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
