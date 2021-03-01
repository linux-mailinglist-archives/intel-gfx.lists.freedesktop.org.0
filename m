Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E8A3279A5
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 09:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677356E512;
	Mon,  1 Mar 2021 08:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD4A6E512;
 Mon,  1 Mar 2021 08:46:03 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id E262D68BEB; Mon,  1 Mar 2021 09:45:59 +0100 (CET)
Date: Mon, 1 Mar 2021 09:45:59 +0100
From: Christoph Hellwig <hch@lst.de>
To: Christoph Hellwig <hch@lst.de>, Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Peter Zijlstra <peterz@infradead.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org
Message-ID: <20210301084559.GA29133@lst.de>
References: <20210301083320.943079-1-hch@lst.de>
 <YDypXb3M1uVBxcyH@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YDypXb3M1uVBxcyH@phenom.ffwll.local>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] add remap_pfn_range_notrack instead of reinventing
 it in i915
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

On Mon, Mar 01, 2021 at 09:44:13AM +0100, Daniel Vetter wrote:
> On Mon, Mar 01, 2021 at 09:33:18AM +0100, Christoph Hellwig wrote:
> > Hi all,
> > 
> > i915 has some reason to want to avoid the track_pfn_remap overhead in
> > remap_pfn_range.  Add a function to the core VM to do just that rather
> > than reinventing the functionality poorly in the driver.
> 
> It's not _notrack it's "rely on the tracking established by the struct
> io_mapping". Exporting a _notrack version to drivers sounds like not
> something we want to ever do. So I think you want a helper which takes the
> io_mapping, and not something that encourages drivers to go full stupid.

As far as I can tell there is no struct io_mapping anywhere near
remap_io_sg.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
