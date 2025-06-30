Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A999DAED4C6
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 08:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4157210E398;
	Mon, 30 Jun 2025 06:41:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="ZejtL3sm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A22310E398;
 Mon, 30 Jun 2025 06:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=EGTTLrFnUeqEt2LkPOIc08Ji7tLkFOls0h+QkE/PVjc=; b=ZejtL3sm8QRhn8xcCFFNMRUL5+
 0p7qJLSYpjYurp0fqdmTke9LZp+wa5u/DPr2M2a4rWyOnqixEjMud8JtVP9k/ud3+EzI567qwEmKl
 2mNIqLQPd4psFOKCKguyQ/Em0h9PQKYZNBoWsnq7ml1C9HrGmd8yap79ONNpYS5/CxtR90oliYys5
 S0NpLfICJfIyRoYslKnSAh47MCq1iELTLHWXmbbfwyfLY/UyKQiB2AReAz55sg3bfb0JTKFF7mU6Y
 LhVeWFX7hDzkKSoHGg2nslJ9BLS5KGSoJWZdNRQka+3RT+Y//LfBZlQzUxjZ1EDkVNgRUv4GWaBPM
 bptOJZKg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1uW8CX-00000001MDX-03Ey;
 Mon, 30 Jun 2025 06:41:13 +0000
Date: Sun, 29 Jun 2025 23:41:12 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Matthew Wilcox <willy@infradead.org>
Cc: =?utf-8?B?6ZmI5rab5rab?= Taotao Chen <chentaotao@didiglobal.com>,
 "tytso@mit.edu" <tytso@mit.edu>, "hch@infradead.org" <hch@infradead.org>,
 "adilger.kernel@dilger.ca" <adilger.kernel@dilger.ca>,
 "brauner@kernel.org" <brauner@kernel.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>,
 "airlied@gmail.com" <airlied@gmail.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "chentao325@qq.com" <chentao325@qq.com>,
 "frank.li@vivo.com" <frank.li@vivo.com>
Subject: Re: [PATCH v3 4/4] ext4: support uncached buffered I/O
Message-ID: <aGIxiOeJ_-lmRmiT@infradead.org>
References: <20250627110257.1870826-1-chentaotao@didiglobal.com>
 <20250627110257.1870826-5-chentaotao@didiglobal.com>
 <aF7OzbVwXqbJaLQA@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aF7OzbVwXqbJaLQA@casper.infradead.org>
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

On Fri, Jun 27, 2025 at 06:03:09PM +0100, Matthew Wilcox wrote:
> On Fri, Jun 27, 2025 at 11:03:13AM +0000, 陈涛涛 Taotao Chen wrote:
> > +++ b/fs/ext4/inode.c
> > @@ -1270,6 +1270,9 @@ static int ext4_write_begin(const struct kiocb *iocb,
> >  	if (unlikely(ret))
> >  		return ret;
> >  
> > +	if (iocb->ki_flags & IOCB_DONTCACHE)
> > +		fgp |= FGP_DONTCACHE;
> 
> I think this needs to be:
> 
> 	if (iocb && iocb->ki_flags & IOCB_DONTCACHE)
> 
> because it's legit to call write_begin with a NULL argument.  The
> 'file' was always an optional argument, and we should preserve that
> optionality with this transformation.

write_begin and write_end are only callbacks through helpers called
by the file system.  So if the file system never passes a NULL
file/kiocb it doesn't need to check for it.

> I wonder if it's worth abstracting some of this boilerplate.  Something
> like:
> 
> struct folio *write_begin_get_folio(iocb, mapping, index, len)
> {
> 	fgf_t fgflags = FGP_WRITEBEGIN;
> 
> 	if (iocb && iocb->ki_flags & IOCB_DONTCACHE)
> 		fgflags |= FGP_DONTCACHE;
> 	fgflags |= fgf_set_order(len);
> 
> 	return __filemap_get_folio(mapping, index, fgflags,
> 			mapping_gfp_mask(mapping));
> }

But this helper still seems useful.

