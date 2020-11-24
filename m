Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173482C3051
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 19:59:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420796E50D;
	Tue, 24 Nov 2020 18:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70D389EB8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 09:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BAinDqvjXXeY26FFo3tJLD7w0kcIj1lX/LqRWKFcxpA=; b=QovCW9fVrlRA63ZTYDa3NpXcvd
 LEsf2t4BoNCrQ8slb1LYNT6tZR/b1BXpJTDB3MUFHGfNrWLff4iV0YWLBDcAJ+RMubIUUqJL/iWZD
 zzcgzZtoFbimQFjRpYW8ZkHtbmwM9Zj9v/4WFqYklOJqldEySG135k0QjIUjxyF4prcaM+8Hzd6w8
 cNE7sjKBEaW6/YjYUQ+2gBxqFj/11MHu+5KHav09ByY5IiKI3EOAdD3AzCVJgDBelbf7KtxaFwx5u
 AL6+h1srPJr1RRF5iQ8B4FCBjDSP/gtz+UEstuWRNRcb4sNkOQVUHz1LmHcIBAodT7kKKJslATlLw
 T9s3N/Vg==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1khUqP-0000QO-OU; Tue, 24 Nov 2020 09:42:41 +0000
Date: Tue, 24 Nov 2020 09:42:41 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201124094241.GG31963@infradead.org>
References: <cover.1606153547.git.jani.nikula@intel.com>
 <44e3d65b71025c462948d0c554061dc7b40ab488.1606153547.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44e3d65b71025c462948d0c554061dc7b40ab488.1606153547.git.jani.nikula@intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Tue, 24 Nov 2020 18:59:06 +0000
Subject: Re: [Intel-gfx] [PATCH 7/9] ath11k: make relay callbacks const
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
 Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, ath11k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 23, 2020 at 07:59:27PM +0200, Jani Nikula wrote:
> Now that relay_open() accepts const callbacks, make relay callbacks
> const.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
