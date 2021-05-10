Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1FA37929D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 17:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC81C6E4AE;
	Mon, 10 May 2021 15:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F7906E4AB;
 Mon, 10 May 2021 15:25:28 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id E63D667373; Mon, 10 May 2021 17:25:25 +0200 (CEST)
Date: Mon, 10 May 2021 17:25:25 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20210510152525.GA30093@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: [Intel-gfx] i915 and swiotlb_max_segment
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
Cc: intel-gfx@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 dri-devel@lists.freedesktop.org,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

swiotlb_max_segment is a rather strange "API" export by swiotlb.c,
and i915 is the only (remaining) user.

swiotlb_max_segment returns 0 if swiotlb is not in use, 1 if
SWIOTLB_FORCE is set or swiotlb-zen is set, and the swiotlb segment
size when swiotlb is otherwise enabled.

i915 then uses it to:

 a) decided on the max order in i915_gem_object_get_pages_internal
 b) decide on a max segment size in i915_sg_segment_size

for a) it really seems i915 should switch to dma_alloc_noncoherent
or dma_alloc_noncontigous ASAP instead of using alloc_page and
streaming DMA mappings.  Any chance I could trick one of the i915
maintaines into doing just that given that the callchain is not
exactly trivial?

For b) I'm not sure swiotlb and i915 really agree on the meaning
of the value.  swiotlb_set_max_segment basically returns the entire
size of the swiotlb buffer, while i915 seems to use it to limit
the size each scatterlist entry.  It seems like dma_max_mapping_size
might be the best value to use here.

Once that is fixed I'd like to kill off swiotlb_max_segment as it is
a horribly confusing API.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
