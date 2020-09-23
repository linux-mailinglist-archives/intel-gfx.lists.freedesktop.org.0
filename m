Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1BB2758EB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 15:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88C7F6E4F8;
	Wed, 23 Sep 2020 13:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14DD76E4F8;
 Wed, 23 Sep 2020 13:41:23 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4FDA86736F; Wed, 23 Sep 2020 15:41:18 +0200 (CEST)
Date: Wed, 23 Sep 2020 15:41:17 +0200
From: Christoph Hellwig <hch@lst.de>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200923134117.GB9893@lst.de>
References: <20200918163724.2511-1-hch@lst.de>
 <20200918163724.2511-5-hch@lst.de>
 <9b5d40af-7378-9e68-ca51-73b2148287f3@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b5d40af-7378-9e68-ca51-73b2148287f3@linux.intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: use vmap in
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
 Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, xen-devel@lists.xenproject.org,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Nitin Gupta <ngupta@vflare.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 23, 2020 at 10:52:33AM +0100, Tvrtko Ursulin wrote:
>
> On 18/09/2020 17:37, Christoph Hellwig wrote:
>> i915_gem_object_map implements fairly low-level vmap functionality in
>> a driver.  Split it into two helpers, one for remapping kernel memory
>> which can use vmap, and one for I/O memory that uses vmap_pfn.
>>
>> The only practical difference is that alloc_vm_area prefeaults the
>> vmalloc area PTEs, which doesn't seem to be required here for the
>> kernel memory case (and could be added to vmap using a flag if actually
>> required).
>
> Patch looks good to me.
>
> Series did not get a CI run from our side because of a different base so I 
> don't know if you would like to have a run there? If so you would need to 
> rebase against git://anongit.freedesktop.org/drm-tip drm-tip and you could 
> even send a series to intel-gfx-trybot@lists.freedesktop.org, suppressing 
> cc, to check it out without sending a copy to the real mailing list.

It doesn't seem like I can post to any freedesktop list, as I always
get rejection messages.  But I'll happily prepare a branch if one
of you an feed it into your CI.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
