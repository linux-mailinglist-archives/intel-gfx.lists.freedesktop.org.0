Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A19BA5711A7
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 07:01:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E00110EFD9;
	Tue, 12 Jul 2022 05:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2473B10EED0;
 Tue, 12 Jul 2022 05:01:01 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 995B768AA6; Tue, 12 Jul 2022 07:00:55 +0200 (CEST)
Date: Tue, 12 Jul 2022 07:00:55 +0200
From: Christoph Hellwig <hch@lst.de>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20220712050055.GA4727@lst.de>
References: <20220711082614.GA29487@lst.de> <YsyItfiuccW7iQln@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YsyItfiuccW7iQln@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] susetting the remaining swioltb couplin in DRM
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
Cc: dri-devel@lists.freedesktop.org, Karol Herbst <kherbst@redhat.com>,
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Ben Skeggs <bskeggs@redhat.com>, Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 11, 2022 at 04:31:49PM -0400, Rodrigo Vivi wrote:
> On Mon, Jul 11, 2022 at 10:26:14AM +0200, Christoph Hellwig wrote:
> > Hi i915 and nouveau maintainers,
> > 
> > any chance I could get some help to remove the remaining direct
> > driver calls into swiotlb, namely swiotlb_max_segment and
> > is_swiotlb_active.  Either should not matter to a driver as they
> > should be written to the DMA API.
> 
> Hi Christoph,
> 
> while we take a look here, could you please share the reasons
> behind sunsetting this calls?

Because they are a completely broken layering violation.  A driver has
absolutely no business knowing the dma-mapping violation.  The DMA
API reports what we think is all useful constraints (e.g.
dma_max_mapping_size()), and provides useful APIs to (e.g.
dma_alloc_noncoherent or dma_alloc_noncontiguous) to allocate pages
that can be mapped without bounce buffering and drivers should use
the proper API instead of poking into one particular implementation
and restrict it from changing.

swiotlb_max_segment in particular returns a value that isn't actually
correct (a driver can't just use all of swiotlb) AND actually doesn't
work as is in various scenarious that are becoming more common,
most notably host with memory encryption schemes that always require
bounce buffering.
