Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EAF1C2046
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 00:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445436ECE7;
	Fri,  1 May 2020 22:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1C926ED24;
 Fri,  1 May 2020 18:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=CCU7COW6TmuLlpd3D8olwzP6MeUGfBALcg7l9bZ+L6o=; b=lDsKQuLyt8dSCCyWvNbGxrsxVi
 ag11nO5AZ7PpT8J0JqUP/25/z+jtILd25a7PqmRVtY/uOBBWYPMdORBqRGxspy7PbRWRSJd4aIXbX
 aOJkocCHCjYoFjDXNhoWO3hBkg8LaCbOpJJqAqedszFeATpQV7pZe8gchBJzx/9MdurbQGehXR+4w
 6fLd7cRRLGCr3bHPMCwKGZ3FMS9/74Kz6WHawoEe4rhX3CVrPvtvTNbGYiR8gE3YAnhzSnOnQ7QVp
 Ra2JKSjcQjYRXHfGcxkouCbHzVqQKCF6RSZYfHawzuqd7deLquZrCTW271AxVg07y4vByoPGl/18Y
 6p2GU2Yw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jUa4R-0004pn-M6; Fri, 01 May 2020 18:07:31 +0000
Date: Fri, 1 May 2020 11:07:31 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Message-ID: <20200501180731.GA2485@infradead.org>
References: <20200430221016.3866-1-Jason@zx2c4.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430221016.3866-1-Jason@zx2c4.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 01 May 2020 22:04:16 +0000
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 stable@vger.kernel.org, tglx@linutronix.de, bigeasy@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 30, 2020 at 04:10:16PM -0600, Jason A. Donenfeld wrote:
> Sometimes it's not okay to use SIMD registers, the conditions for which
> have changed subtly from kernel release to kernel release. Usually the
> pattern is to check for may_use_simd() and then fallback to using
> something slower in the unlikely case SIMD registers aren't available.
> So, this patch fixes up i915's accelerated memcpy routines to fallback
> to boring memcpy if may_use_simd() is false.

Err, why does i915 implements its own uncached memcpy instead of relying
on core functionality to start with?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
