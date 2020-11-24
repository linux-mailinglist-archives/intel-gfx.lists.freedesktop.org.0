Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A44F2C3056
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 19:59:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 681C989361;
	Tue, 24 Nov 2020 18:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC83589AC2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 09:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=F27KcdxnSBH0rGkXOypmCAQ/Zpct2KlOr6/o6Q2kSLo=; b=lsjV8Tp4SDXOFa8bbktFq1L3jN
 yCemMkWUAEPjQSpEEdgMLHu/FwEx5cy5hiEdkXLR5oXEknqtUDiyWn7ydZtf2Jl7xFA1NFFoSA1+A
 etWfdHLzedI4qb6f8xkrJuW3vu+oFt5AQy9QJsmqEq55RXOLokR0Y5M1RHIAt6nUL7tYtUWlbSNBA
 ZP7PVidU1UawcRdNyssG2sLqI6AvQw4UKQh60EWsx7E7xOC9BSmcU+b57rqN5YdyjQiNntIzSVOMM
 Bro97cfkJlje3I1Pa+RKkDU/KsFMWriw52+JxQiRdEoR0pFOj53GbXFfD12yjXVbPDWWEYnw56Dtu
 4/pH4fgA==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1khUlN-0008Pf-0e; Tue, 24 Nov 2020 09:37:29 +0000
Date: Tue, 24 Nov 2020 09:37:28 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201124093728.GB31963@infradead.org>
References: <cover.1606153547.git.jani.nikula@intel.com>
 <e40642f3b027d2bb6bc851ddb60e0a61ea51f5f8.1606153547.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e40642f3b027d2bb6bc851ddb60e0a61ea51f5f8.1606153547.git.jani.nikula@intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Tue, 24 Nov 2020 18:59:06 +0000
Subject: Re: [Intel-gfx] [PATCH 2/9] relay: require non-NULL callbacks in
 relay_open()
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
Cc: Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 23, 2020 at 07:59:22PM +0200, Jani Nikula wrote:
> There are no clients passing NULL callbacks, which makes sense as it
> wouldn't even create a file. Require non-NULL callbacks, and throw away
> the handling for NULL callbacks.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
