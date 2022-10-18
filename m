Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A358602E8E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 16:33:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320B610E62E;
	Tue, 18 Oct 2022 14:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21F1A10E243;
 Tue, 18 Oct 2022 14:33:25 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id A17A968C7B; Tue, 18 Oct 2022 16:33:20 +0200 (CEST)
Date: Tue, 18 Oct 2022 16:33:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jan Beulich <jbeulich@suse.com>
Message-ID: <20221018143320.GA19106@lst.de>
References: <20221018082413.GA25785@lst.de>
 <a5966644-72d7-4b25-83d1-9765d0593e44@suse.com>
 <20221018110243.GA4655@lst.de>
 <d67ceabb-b31a-59e6-fc77-8d6c48b277f2@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d67ceabb-b31a-59e6-fc77-8d6c48b277f2@suse.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] i915 "GPU HANG",
 bisected to a2daa27c0c61 "swiotlb: simplify swiotlb_max_segment"
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
 Stefano Stabellini <sstabellini@kernel.org>, regressions@lists.linux.dev,
 dri-devel@lists.freedesktop.org, Anshuman Khandual <anshuman.khandual@arm.com>,
 intel-gfx@lists.freedesktop.org,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Marek =?iso-8859-1?Q?Marczykowski-G=F3recki?=
 <marmarek@invisiblethingslab.com>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, iommu@lists.linux.dev,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 xen-devel@lists.xenproject.org, Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 18, 2022 at 04:21:43PM +0200, Jan Beulich wrote:
> Leaving the "i915 abuses" part aside (because I can't tell what exactly the
> abuse is), but assuming that "can't cope with bounce buffering" means they
> don't actually use the allocated buffers, I'd suggest this:

Except for one odd place i915 never uses dma_alloc_* but always allocates
memory itself and then maps it, but then treats it as if it was a
dma_alloc_coherent allocations, that is never does ownership changes.

> I've dropped the TDX related remark because I don't think it's meaningful
> for PV guests.

This remark is for TDX in general, not Xen related.  With TDX and other
confidentatial computing schemes, all DMA must be bounce buffered, and
all drivers skipping dma_sync* calls are broken.

> Otoh I've left the "abuses ignores" word sequence as is, no
> matter that it reads odd to me. Plus, as hinted at before, I'm not
> convinced the IS_ENABLED() use is actually necessary or warranted here.

If we don't need the IS_ENABLED is not needed I'm all for dropping it.
But unless I misread the code, on arm/arm64 even PV guests are 1:1
mapped so that all Linux physically contigous memory also is Xen
contigous, so we don't need the hack.
