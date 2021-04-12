Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F2735BBD6
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 10:13:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782DD89E86;
	Mon, 12 Apr 2021 08:13:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EBD489E86
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 08:13:21 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8089C68C4E; Mon, 12 Apr 2021 10:13:17 +0200 (CEST)
Date: Mon, 12 Apr 2021 10:13:17 +0200
From: Christoph Hellwig <hch@lst.de>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20210412081317.GA4372@lst.de>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.568192782@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412080611.568192782@infradead.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 1/7] mm: Unexport
 apply_to_existing_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, keescook@chromium.org,
 intel-gfx@lists.freedesktop.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 chris@chris-wilson.co.uk, linux-mm@kvack.org, boris.ostrovsky@oracle.com,
 hch@lst.de, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 12, 2021 at 10:00:13AM +0200, Peter Zijlstra wrote:
> There are no modular in-tree users, remove the EXPORT.
> 
> This is an unsafe function in that it gives direct access to the
> page-tables.
> 
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
