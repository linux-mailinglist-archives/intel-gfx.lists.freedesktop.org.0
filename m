Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5610278D85
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 18:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 440EB6ED04;
	Fri, 25 Sep 2020 16:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEBC36ED04;
 Fri, 25 Sep 2020 16:02:49 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id CB6F368B02; Fri, 25 Sep 2020 18:02:42 +0200 (CEST)
Date: Fri, 25 Sep 2020 18:02:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <20200925160242.GA18229@lst.de>
References: <20200924135853.875294-1-hch@lst.de>
 <20200924135853.875294-9-hch@lst.de>
 <CAM0jSHPaqpX2A5T4iybfLF+F=cBX05GW8u54cUe7AG0QKDJt2g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHPaqpX2A5T4iybfLF+F=cBX05GW8u54cUe7AG0QKDJt2g@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915: use vmap in
 i915_gem_object_map
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Minchan Kim <minchan@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>, x86@kernel.org,
 kernel list <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 Matthew Wilcox <willy@infradead.org>, xen-devel@lists.xenproject.org,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Nitin Gupta <ngupta@vflare.org>, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 25, 2020 at 03:08:59PM +0100, Matthew Auld wrote:
> > +       i = 0;
> > +       for_each_sgt_page(page, iter, obj->mm.pages)
> > +               pages[i++] = page;
> > +       vaddr = vmap(pages, n_pages, 0, pgprot);
> > +       if (pages != stack)
> > +               kvfree(pages);
> > +       return vaddr;
> > +}

> > -       return area->addr;
> > +       for_each_sgt_daddr(addr, iter, obj->mm.pages)
> > +               pfns[i++] = (iomap + addr) >> PAGE_SHIFT;
> 
> Missing the i = 0 fix from Dan?

Yeah, looks like I only managed to apply the one in the page based
version above.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
