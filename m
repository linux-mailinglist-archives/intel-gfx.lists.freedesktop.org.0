Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 904AD82EEEA
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:28:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE05710E52B;
	Tue, 16 Jan 2024 12:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29E7010E9D7;
 Fri, 12 Jan 2024 02:22:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 116E2CE20CC;
 Fri, 12 Jan 2024 02:22:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CE15C433C7;
 Fri, 12 Jan 2024 02:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705026171;
 bh=tyTBV9IdekZEBA9xRLni4pD40DGjP3N58wftXn8ECG4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YKNsFv9kgq5yYP/cIwrMz0dnUCYFA0JwvReXfKnhB6RchpvGmsAMX2ImUNInYSbgy
 0MlIM5a6ChjbnWvGg/mMwr0MziKA+O4JdGkHyAFKZ6wqINFKUcPz/BfJ3s2YVBCCsl
 uDY11gr6C0B9G2Pw3NkDcWFKHJJmOnl8QaplWAE4dD+btdy8IedQvLy+g81SjRzopZ
 tP9ybX81j0pP7w+ZLI8qhv7/NhA9rS/yGXioHOISF+2caZdUoPDJ+RFG3KbrXsGD5z
 UDXQeHGHZd8y+6eHOCw2cgsZcDpl2uqRxVBJFnqHlNqe6+44bi3i9FKpv2pIo0+eMs
 xiRW06EpYwf1A==
Date: Thu, 11 Jan 2024 18:22:50 -0800
From: "Darrick J. Wong" <djwong@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 2/2] xfs: disable large folio support in xfile_create
Message-ID: <20240112022250.GU723010@frogsfrogsfrogs>
References: <20240110092109.1950011-1-hch@lst.de>
 <20240110092109.1950011-3-hch@lst.de>
 <20240110175515.GA722950@frogsfrogsfrogs>
 <20240110200451.GB722950@frogsfrogsfrogs>
 <20240111140053.51948fb3ed10e06d8e389d2e@linux-foundation.org>
 <ZaBvoWCCChU5wHDp@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZaBvoWCCChU5wHDp@casper.infradead.org>
X-Mailman-Approved-At: Tue, 16 Jan 2024 12:28:11 +0000
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
Cc: dri-devel@lists.freedesktop.org, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, Huang Rui <ray.huang@amd.com>,
 David Airlie <airlied@gmail.com>, Christoph Hellwig <hch@lst.de>,
 x86@kernel.org, Hugh Dickins <hughd@google.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-sgx@vger.kernel.org, Jarkko Sakkinen <jarkko@kernel.org>,
 keyrings@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Chandan Babu R <chandan.babu@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 11, 2024 at 10:45:53PM +0000, Matthew Wilcox wrote:
> On Thu, Jan 11, 2024 at 02:00:53PM -0800, Andrew Morton wrote:
> > On Wed, 10 Jan 2024 12:04:51 -0800 "Darrick J. Wong" <djwong@kernel.org> wrote:
> > 
> > > > > Fixing this will require a bit of an API change, and prefeably sorting out
> > > > > the hwpoison story for pages vs folio and where it is placed in the shmem
> > > > > API.  For now use this one liner to disable large folios.
> > > > > 
> > > > > Reported-by: Darrick J. Wong <djwong@kernel.org>
> > > > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > > 
> > > > Can someone who knows more about shmem.c than I do please review
> > > > https://lore.kernel.org/linux-xfs/20240103084126.513354-4-hch@lst.de/
> > > > so that I can feel slightly more confident as hch and I sort through the
> > > > xfile.c issues?
> > > > 
> > > > For this patch,
> > > > Reviewed-by: Darrick J. Wong <djwong@kernel.org>
> > > 
> > > ...except that I'm still getting 2M THPs even with this enabled, so I
> > > guess either we get to fix it now, or create our own private tmpfs mount
> > > so that we can pass in huge=never, similar to what i915 does. :(
> > 
> > What is "this"?  Are you saying that $Subject doesn't work, or that the
> > above-linked please-review patch doesn't work?
> 
> shmem pays no attention to the mapping_large_folio_support() flag,
> so the proposed fix doesn't work.  It ought to, but it has its own way
> of doing it that predates mapping_large_folio_support existing.

Yep.  It turned out to be easier to fix xfile.c to deal with large
folios than I thought it would be.  Or so I think.  We'll see what
happens on fstestscloud overnight.

--D
