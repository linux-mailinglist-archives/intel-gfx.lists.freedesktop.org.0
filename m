Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CE1A239BE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 08:09:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B68310E18A;
	Fri, 31 Jan 2025 07:09:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="19USrSK8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4522410E18A
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 07:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bFZeVzxc3dnxjC50vEGlk+B1OaTDn6eywIz+QQYfG18=; b=19USrSK8nOecNvKzEcmCroOnUg
 QP/xAC4fvv+9djwMr0UGK61nUGfO3q3MID7qK9ZXob1FwQeI9ueLnyXdMQF8M25jtI8uGmiDflsHi
 wdTQmJs1KDrPtCj8nemA4YsMYPRf2bwj/R2KKIpwULmP1gGwgKi/BKKP0RieMxlbxP/dZWzcMyx/L
 zL4nyEp6HPYDPoIW2E78qWsWSzWaPjFbcgkI1x4ZVHgLPxd7/F3Kq8YcJu3AQPWi2vpkdzzI1ieRq
 oKmYqcqTgb9HKxb6zV8t3t9HZBhFVmUYnWCgQRQFr4rnpA/ehytqcSe1HO2c7Z2jzggDltGM6W3zs
 AczPQwIA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tdl9N-0000000A5Rn-48B8; Fri, 31 Jan 2025 07:09:13 +0000
Date: Thu, 30 Jan 2025 23:09:13 -0800
From: Christoph Hellwig <hch@infradead.org>
To: "Vishal Moola (Oracle)" <vishal.moola@gmail.com>
Cc: akpm@linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, hch@infradead.org, urezki@gmail.com,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] mm/vmalloc: Introduce vmap_file()
Message-ID: <Z5x3GQAzN3S-plD9@infradead.org>
References: <20250131001806.92349-1-vishal.moola@gmail.com>
 <20250131001806.92349-2-vishal.moola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250131001806.92349-2-vishal.moola@gmail.com>
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

On Thu, Jan 30, 2025 at 04:18:05PM -0800, Vishal Moola (Oracle) wrote:
> +	rcu_read_lock();
> +	xas_for_each(&xas, folio, last) {

This only maps folios currently in the page cache, which makes it
usefull for everything except ramfs-style purely in-memory file systems.
I.e. for the shmem use case in the second patch it fails to swap in
swapped out tmpfs folios.

> +EXPORT_SYMBOL(vmap_file);

EXPORT_SYMBOL_GPL for any advances vmalloc-layer functionality, please.

