Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65163581BC
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 13:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 467636EAA0;
	Thu,  8 Apr 2021 11:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3601F6EA9A;
 Thu,  8 Apr 2021 11:28:28 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id EE14068B05; Thu,  8 Apr 2021 13:28:24 +0200 (CEST)
Date: Thu, 8 Apr 2021 13:28:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Christoph Hellwig <hch@lst.de>, Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Peter Zijlstra <peterz@infradead.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org
Message-ID: <20210408112824.GB9567@lst.de>
References: <20210326055505.1424432-1-hch@lst.de>
 <YG7cpchVvBAVgew7@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YG7cpchVvBAVgew7@phenom.ffwll.local>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] add remap_pfn_range_notrack instead of reinventing
 it in i915 v2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 08, 2021 at 12:36:21PM +0200, Daniel Vetter wrote:
> I've seen it's landed already in some tree, maybe if you can add the acks
> ftr?

Andrew has picked it up in -mm.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
