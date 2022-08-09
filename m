Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2845658DF60
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 20:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB07BA37A8;
	Tue,  9 Aug 2022 18:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E788BF746;
 Tue,  9 Aug 2022 18:52:03 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id F0ABB68AA6; Tue,  9 Aug 2022 20:51:57 +0200 (CEST)
Date: Tue, 9 Aug 2022 20:51:57 +0200
From: "hch@lst.de" <hch@lst.de>
To: "Hellstrom, Thomas" <thomas.hellstrom@intel.com>
Message-ID: <20220809185157.GA15307@lst.de>
References: <20220726153935.2272777-1-bob.beckett@collabora.com>
 <1160a7c31084ab2259088e4bfe88b41ad61c2bcc.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1160a7c31084ab2259088e4bfe88b41ad61c2bcc.camel@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: stop using swiotlb
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
Cc: "airlied@linux.ie" <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "kernel@collabora.com" <kernel@collabora.com>, "hch@lst.de" <hch@lst.de>,
 "Auld, Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 08, 2022 at 03:48:02PM +0000, Hellstrom, Thomas wrote:
> This whole thing looks a bit strange to me since with SWIOTLB actually
> used for i915, the driver should malfunction anyway as it doesn't do
> any dma_sync_sg_for_cpu() or dma_sync_sg_for_device(),

Yeah, I can't actually see any syncs in i915.

> and the driver
> assumes all coherent dma. Is that SWIOTLB=force kernel option still
> available?

Yes, although it is (and always has been) lower case swiotlb for the
option.

> Also, correct me if I'm wrong, but the original driver segment size
> appears to mean "the largest contiguous area that can be handled either
> by the device or the dma mapping layer" rather than the total space
> available for dma mappings? Not completely sure what
> dma_max_mapping_size() is returning, though?

dma_max_mapping_size is sort of both.  It is is the largest contigous
size, but we really should not go above that to avoid starvation.
