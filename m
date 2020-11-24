Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 782BE2C304A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 19:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A4DD6E509;
	Tue, 24 Nov 2020 18:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E42B89EB8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 09:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=6Gu1xP1wU7I/rfYIMvgeind8yZFCZ8tV4LGh9s+HSI0=; b=P5e8LGXhX38B78U9JG7GL8LjoQ
 d2KXGKUC/Fs9Ty19bJJwlTTiYYAcaHlwktzXnPxCw4mt278k2474H7Zp009QOace2mZuCG5/QxQEd
 GNNxv5tFPVGbs/eQ/MHjM19iNwOiL5RR9xTui7HOTl/S46njQyFb3qT44AXR6AKKAxkNMXaiAc3t6
 B7ai/tqJkARP0uH9oimWQ4wf2GytjD8nw9f8WsBZi2aADw8MvmZza8d63zqgLPhptJbGKq4MkruYq
 XkBwkoCWr/dJFoi1lrsoke1CC6P33L10PgiLox1WX20PhC8YGtj0eMF4H/1Hu7Ft7EiFnDzf2Lknp
 yrnTGL1Q==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1khUqE-0000Px-Cm; Tue, 24 Nov 2020 09:42:30 +0000
Date: Tue, 24 Nov 2020 09:42:30 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201124094230.GF31963@infradead.org>
References: <cover.1606153547.git.jani.nikula@intel.com>
 <85cabc6d4b0d0ca43d4e0fb94897ccd16e3b7930.1606153547.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85cabc6d4b0d0ca43d4e0fb94897ccd16e3b7930.1606153547.git.jani.nikula@intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Tue, 24 Nov 2020 18:59:06 +0000
Subject: Re: [Intel-gfx] [PATCH 6/9] ath10k: make relay callbacks const
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
 ath10k@lists.infradead.org, Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 23, 2020 at 07:59:26PM +0200, Jani Nikula wrote:
> Now that relay_open() accepts const callbacks, make relay callbacks
> const.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
