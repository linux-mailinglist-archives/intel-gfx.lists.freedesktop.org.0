Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AB31830F1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 14:13:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5BD6EAAF;
	Thu, 12 Mar 2020 13:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060F16E116;
 Thu, 12 Mar 2020 10:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=xfoxJqOJ26a7lwzPGQIADxdTJQgzT4rfzfYe/RpT1Rg=; b=FE/DKRL7ydDmayQrstwx7Edn2T
 ICP4V28DEgZAnyqOwrz63sQL8PyOVAPth60tktJM/OmYGM4GL8HAFHwASwOuunc/jhsehgiJ2Sdk1
 cd5fknuPm6HcjTB2kpG1s/0qpuPhjyJb4IPOoDywlv/R9PMO+tk+P+cmivVFc1nJnOOwTAshVMoNd
 kQcN14MA2x6/DhEkQ2lb3huVbQcVe3oZdG2b4n4jz125IfFSXK98yWCcVwzIFhdpApojKjoSMYXUG
 2xmz2Ht0NycVTMzJew0ryjyFxvWV/08VZkEHVkYeGwbeyyU4Rwpy0HR86OvpVbTI4jYxdVlzu9io/
 SEgouFPQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jCKwJ-0003r2-Gt; Thu, 12 Mar 2020 10:19:43 +0000
Date: Thu, 12 Mar 2020 03:19:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: christian.koenig@amd.com
Message-ID: <20200312101943.GA14618@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
 <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Thu, 12 Mar 2020 13:13:09 +0000
Subject: Re: [Intel-gfx] [PATCH 1/6] lib/scatterlist: add sg_set_dma_addr()
 function
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
Cc: David1.Zhou@amd.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 jgg@ziepe.ca, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 12, 2020 at 11:14:22AM +0100, Christian K=F6nig wrote:
> > > The page pointer is set to NULL and only the DMA address,
> > > length and offset values are valid.
> > NAK.  The only valid way to fill DMA address in scatterlists is
> > dma_map_sg / dma_map_sg_attr.
> =

> How can we then map PCIe BARs into an scatterlist which are not backed by
> struct pages?

You can't.  scatterlists by definition map memory backed by a struct
page.  If you want to map something else struct scatterlist is the
wrong structure and you need to use something else (which you should
anyway as struct scatterlist is a bad design patter, and the above
is only one of the many issues with it).
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
