Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C498399CC2
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 10:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B7A6F43F;
	Thu,  3 Jun 2021 08:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C210A6F43F;
 Thu,  3 Jun 2021 08:40:21 +0000 (UTC)
IronPort-SDR: +HVZj8A+3v0q4ccsI3MZczvg5m4DrDWz90wMl7FyOh4/o1RlwM5h1fd7MbK/6QP9CAhbo/H3tV
 ctaVkzw4qLRw==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="265171402"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="265171402"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 01:40:16 -0700
IronPort-SDR: zaG+TekgVIYKs3X+kNC3Jpsm3GjArPLb8T4622NANIInNlDbUKxCtdKvLc+2gWRl4PG2o1KJSB
 DWHRmeXMxOlg==
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="447770231"
Received: from nichilds-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.250])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 01:40:13 -0700
MIME-Version: 1.0
In-Reply-To: <YKZ8eqnSnaso3aoe@0xbeefdead.lan>
References: <20210510152525.GA30093@lst.de> <YKZ8eqnSnaso3aoe@0xbeefdead.lan>
To: Christoph Hellwig <hch@lst.de>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <162270961054.11739.9148402963893484386@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 03 Jun 2021 11:40:10 +0300
Subject: Re: [Intel-gfx] i915 and swiotlb_max_segment
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 iommu@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ Tvrtko to take a look

Quoting Konrad Rzeszutek Wilk (2021-05-20 18:12:58)
> On Mon, May 10, 2021 at 05:25:25PM +0200, Christoph Hellwig wrote:
> > Hi all,
> > 
> > swiotlb_max_segment is a rather strange "API" export by swiotlb.c,
> > and i915 is the only (remaining) user.
> > 
> > swiotlb_max_segment returns 0 if swiotlb is not in use, 1 if
> > SWIOTLB_FORCE is set or swiotlb-zen is set, and the swiotlb segment
> > size when swiotlb is otherwise enabled.
> > 
> > i915 then uses it to:
> > 
> >  a) decided on the max order in i915_gem_object_get_pages_internal
> >  b) decide on a max segment size in i915_sg_segment_size
> > 
> > for a) it really seems i915 should switch to dma_alloc_noncoherent
> > or dma_alloc_noncontigous ASAP instead of using alloc_page and
> > streaming DMA mappings.  Any chance I could trick one of the i915
> > maintaines into doing just that given that the callchain is not
> > exactly trivial?
> > 
> > For b) I'm not sure swiotlb and i915 really agree on the meaning
> > of the value.  swiotlb_set_max_segment basically returns the entire
> > size of the swiotlb buffer, while i915 seems to use it to limit
> > the size each scatterlist entry.  It seems like dma_max_mapping_size
> > might be the best value to use here.
> 
> Yes. The background behind that was SWIOTLB would fail because well, the
> size of the sg was too large. And some way to limit it to max size
> was needed - the dma_max_mapping_size "should" be just fine.
> 
> > 
> > Once that is fixed I'd like to kill off swiotlb_max_segment as it is
> > a horribly confusing API.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
