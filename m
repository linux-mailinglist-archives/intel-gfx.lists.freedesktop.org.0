Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47070435AC7
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 08:18:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B1E06EA2A;
	Thu, 21 Oct 2021 06:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 896FB6EA2A;
 Thu, 21 Oct 2021 06:18:43 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 508AB68BEB; Thu, 21 Oct 2021 08:18:39 +0200 (CEST)
Date: Thu, 21 Oct 2021 08:18:39 +0200
From: Christoph Hellwig <hch@lst.de>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Christoph Hellwig <hch@lst.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 matthew.auld@intel.com
Message-ID: <20211021061839.GA27953@lst.de>
References: <20210326055505.1424432-1-hch@lst.de>
 <20210326055505.1424432-3-hch@lst.de>
 <20211020154005.uk6u4ovcmlhpyubk@ldmartin-desk2>
 <20211020193751.GS174703@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211020193751.GS174703@worktop.programming.kicks-ass.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 2/4] mm: add a io_mapping_map_user helper
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 20, 2021 at 09:37:51PM +0200, Peter Zijlstra wrote:
> > I'm not sure what exactly brought me to check this, but while debugging
> > I noticed this outside the header guard. But then after some more checks I
> > saw nothing actually selects CONFIG_IO_MAPPING because commit using
> > it was reverted in commit 0e4fe0c9f2f9 ("Revert "i915: use io_mapping_map_user"")
> > 
> > Is this something we want to re-attempt moving to mm/ ?
> 
> Yes, it would be very good to unexport apply_to_page_range(), it's a
> terrible interface to expose.

Yes.  We need to get back to this rather sooner than later.  I'm a little
swamped unfortunately.
