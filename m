Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7781A7684FE
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Jul 2023 13:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F3210E08A;
	Sun, 30 Jul 2023 11:19:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9000710E08A;
 Sun, 30 Jul 2023 11:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kbiG19oZd/dSLtXDQyp/3XUeAYx519PsJLOOLc1diN8=; b=FcIwHFr1i0uI+4Q3Gz2kHXpaz/
 8PgE6DxOAjio4iAk93OSpSPJDPmQ0IkXSn8fqF1f5WbwAVPa9LDEJFVuyz93BBNbNJ65bRGqFglAI
 5/B/BCsWZy4FfbSdVZoezNwjJ9QqWhFJNLHEU522nAQacE/f2K85CYniJur3g2JizBbWG86YFHSME
 O8t04Ax7RTohEVH8BqB8FGr5t9+EY4S86SrbDJvhwFROsNr711hyHv/pV++/gPU4N5jDOV/t71d7z
 CnHWLlTKUH7FpOjPlBM3Q2oni+ETqrKBSDEwRzwqLE6FJSJtKhN3sHPpstpV/klY75i+msbXMkz3f
 3QZ2fzAg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qQ4Rr-00Dsdl-5I; Sun, 30 Jul 2023 11:18:55 +0000
Date: Sun, 30 Jul 2023 12:18:55 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Zhu Yanjun <yanjun.zhu@linux.dev>
Message-ID: <ZMZHH5Xc507OZA1O@casper.infradead.org>
References: <20230621164557.3510324-1-willy@infradead.org>
 <20230621164557.3510324-4-willy@infradead.org>
 <a2a2180c-62ac-452f-0737-26f01f228c79@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a2a2180c-62ac-452f-0737-26f01f228c79@linux.dev>
Subject: Re: [Intel-gfx] [PATCH 03/13] scatterlist: Add sg_set_folio()
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
Cc: linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-afs@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Jul 30, 2023 at 07:01:26PM +0800, Zhu Yanjun wrote:
> Does the following function have folio version?
> 
> "
> int sg_alloc_append_table_from_pages(struct sg_append_table *sgt_append,
> 		struct page **pages, unsigned int n_pages, unsigned int offset,
> 		unsigned long size, unsigned int max_segment,
> 		unsigned int left_pages, gfp_t gfp_mask)
> "

No -- I haven't needed to convert anything that uses
sg_alloc_append_table_from_pages() yet.  It doesn't look like it should
be _too_ hard to add a folio version.
