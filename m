Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCC2A7B8D1
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 10:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1937B10EA63;
	Fri,  4 Apr 2025 08:26:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="tqgQ+ZAI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2AD610EA63;
 Fri,  4 Apr 2025 08:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oraxD8aMa5Ju/0vnsP/hcRb2KGBRetYjxu8XH5KcdDM=; b=tqgQ+ZAI13WIHA+fNSs8NHoX3s
 z8IJ44dv8nuoiw+jyiPTGW3Z5EeB6WUPInEoTrNeMSTCbxHdIZna/wHMGBZNaDzpo+HpdqXgJJK/5
 aciJdw8KAQLtbNDnRLOM8jWoWXhSQnynFWRdspyjR/pLUt5h1D0eym8qq1VLb+wFuubsrKmuemtaH
 QuMQ7YALe7p0d+SyyVrg+0SpKbTx7D5p5WxzNabWNKf5g/DqNyoq8Y3GpYGrIpHcXpBHaMYsjkki3
 JVkGvBXTOKb4dGnk0nnRhs//xR5ZcFPTyvm5wBMl7+pPavcxeTEKVnpUvgMRO2oofwedE2ul/zqKS
 jDCzOKHw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.1 #2 (Red
 Hat Linux)) id 1u0cNh-0000000B8KM-1Xm2;
 Fri, 04 Apr 2025 08:26:29 +0000
Date: Fri, 4 Apr 2025 01:26:29 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: linux-fsdevel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-mm@kvack.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 6/9] i915: Use writeback_iter()
Message-ID: <Z--XtaM7Z3zbjzAu@infradead.org>
References: <20250402150005.2309458-1-willy@infradead.org>
 <20250402150005.2309458-7-willy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402150005.2309458-7-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 02, 2025 at 04:00:00PM +0100, Matthew Wilcox (Oracle) wrote:
> Convert from an inefficient loop to the standard writeback iterator.

Not for this patch but a follow on:  we really need to improve the
abstraction for using shmem for driver a bit.  Drivers implementing
their own writeback_iter based loop is a bad idea.   Instead the
code here in __shmem_writeback and the similar version in ttm need to
be consolidated into a nicely abstracted highlevel API in shmem.c.

Similarly for the mess these drivers cause by calling into the
write_begin and write_end aops.

