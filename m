Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EBB1830F0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 14:13:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D2BA6EAB1;
	Thu, 12 Mar 2020 13:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B066E6E487;
 Wed, 11 Mar 2020 15:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=SIqPqQL4E4jqHkpffGX9pDEDtDuqr9oIINOLiMZ97lI=; b=ENYhknSFl8/K5NlY4EPf9Auvnj
 qUAA16q+DsyWvkT0HMYKNGi+4561WycRIwnqzsgJJdmC9/iermrLG9eGBd9QEyr3+f6v3jMFOgrpy
 bRgs7v4vVxhl3qRg23yI8uUvzXfwIaAvjN7aiUIrSp1JH4A2ghP0lhPa+osE4j8OucHQVr7uXjbZn
 w/76MEQXIegQl51dZ6XWBuHDMIPxt/8wZom9zWExXNSNA6/BO6FcPYEB+3CCow2/X2Zvh2+vkMLRA
 61WI+RVKdlxXNDgPB5a0xK3U4wzmAzm5Q1/GHuzpN5IhcZ/0Pn3YUMi8ZcM+0anqiWN5+3I67Ffd0
 cpVtmnFA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jC3Hi-0006RL-K0; Wed, 11 Mar 2020 15:28:38 +0000
Date: Wed, 11 Mar 2020 08:28:38 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20200311152838.GA24280@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311135158.3310-2-christian.koenig@amd.com>
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
 dri-devel@lists.freedesktop.org, hch@infradead.org, jgg@ziepe.ca,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 11, 2020 at 02:51:53PM +0100, Christian K=F6nig wrote:
> This can be used by drivers to setup P2P DMA between device
> memory which is not backed by struct pages.
> =

> The drivers of the involved devices are responsible for
> setting up and tearing down DMA addresses as necessary
> using dma_map_resource().
> =

> The page pointer is set to NULL and only the DMA address,
> length and offset values are valid.

NAK.  The only valid way to fill DMA address in scatterlists is
dma_map_sg / dma_map_sg_attr.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
