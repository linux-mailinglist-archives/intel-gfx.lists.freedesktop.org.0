Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4BF58DF78
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 20:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018D2C047D;
	Tue,  9 Aug 2022 18:54:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7670214A5FE;
 Tue,  9 Aug 2022 18:54:07 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id A225E68AA6; Tue,  9 Aug 2022 20:54:03 +0200 (CEST)
Date: Tue, 9 Aug 2022 20:54:03 +0200
From: "hch@lst.de" <hch@lst.de>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220809185403.GB15307@lst.de>
References: <20220726153935.2272777-1-bob.beckett@collabora.com>
 <1160a7c31084ab2259088e4bfe88b41ad61c2bcc.camel@intel.com>
 <db9f787e-c3e4-d353-da57-80cb7a135d86@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <db9f787e-c3e4-d353-da57-80cb7a135d86@linux.intel.com>
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Hellstrom,
 Thomas" <thomas.hellstrom@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "kernel@collabora.com" <kernel@collabora.com>, "hch@lst.de" <hch@lst.de>,
 "Auld, Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 09, 2022 at 12:36:50PM +0100, Tvrtko Ursulin wrote:
>
> Digging through git history at least running as Xen dom0 looks to have been 
> impacted, but commits such as abb0deacb5a6 ("drm/i915: Fallback to single 
> PAGE_SIZE segments for DMA remapping") are older and suggest problem was 
> generic. 1625e7e549c5 ("drm/i915: make compact dma scatter lists creation 
> work with SWIOTLB backend.") as well. So it looks it did work behind 
> swiotlb despite those missing calls you highlighted.

Hmm.  xen-swiotlb bounce buffers as soon as any single mapping that
straddles a Xen page size boundary.  Could the magic value there
somehow made all mappings small enough to just avoid bounce buffering
for Xen by more or less accident?
