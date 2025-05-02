Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8F1AA7505
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 16:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E1810E940;
	Fri,  2 May 2025 14:33:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dHReBjq/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6285B10E940
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 May 2025 14:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746196408; x=1777732408;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=v5Rp66tCR2rfRjAtXWG6b4cJR5z56dbvWtUuTIKvNmA=;
 b=dHReBjq/fNMLdH9v6KeQ+fsQIJvj5v+aUwmZVi7UQYZCSY4hW9vMzhVo
 b4xb5AOfccfraSWvUTy1d51tFkhjU9vLAVNef5a+gSrezBOJ8HpxZg1LA
 GE7k+JOh80a2MS3fqSnP3zXM7P/Ryn72cD5tsgjCfwnOD6jP354n3JbvR
 ttneg6WheyEYor3ftJF8Sd3ZFugqC5tg9mBpkt3RARhGVkKrc1nI565Ht
 pbc3vluyfb73DVPoTjlCfn85FjJnzaWpnNOqbRHbOEwCybXCehMmyTNs5
 Y2QCXAMEV7T49AW2JL+KlDxtYekmcxzSw9nDbck9zpE55ROAJk+hKeGPR g==;
X-CSE-ConnectionGUID: RH9WsHNbR5ygQnnMjE3zoQ==
X-CSE-MsgGUID: 4XKbwX3VRVKDWQnX+8w3HA==
X-IronPort-AV: E=McAfee;i="6700,10204,11421"; a="70382630"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="70382630"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 07:33:28 -0700
X-CSE-ConnectionGUID: drzra865TBe7hccIYwHQ6w==
X-CSE-MsgGUID: +aQln23+R/+E76SOFmi5qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="139832217"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO [10.245.246.151])
 ([10.245.246.151])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 07:33:26 -0700
Message-ID: <2238f487c71e07aa71ffd3b1b07e3deb72674d3b.camel@linux.intel.com>
Subject: Re: [PATCH 11/11] fs: Remove aops->writepage
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Fan Ni <nifan.cxl@gmail.com>, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, intel-gfx@lists.freedesktop.org
Date: Fri, 02 May 2025 16:33:23 +0200
In-Reply-To: <Z-wTw5p5r4yPGfFE@casper.infradead.org>
References: <20250307135414.2987755-1-willy@infradead.org>
 <20250307135414.2987755-12-willy@infradead.org> <Z9d2JH33sLeCuzfE@fan>
 <Z9eVdplZKs2XVB9J@casper.infradead.org>
 <Z9iibbHs-jHTu7LP@casper.infradead.org>
 <9937a6346feccb7ab739aff63a084f63f3ad4382.camel@linux.intel.com>
 <Z-wTw5p5r4yPGfFE@casper.infradead.org>
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
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

Hi, Matthew,

On Tue, 2025-04-01 at 17:26 +0100, Matthew Wilcox wrote:
> On Tue, Mar 18, 2025 at 09:10:38AM +0100, Thomas Hellstr=C3=B6m wrote:
> > On Mon, 2025-03-17 at 22:30 +0000, Matthew Wilcox wrote:
> > > This patch fixes the compilation problem.=C2=A0 But I don't understan=
d
> > > why
> > > it's messing with the reclaim flag.=C2=A0 Thomas, can you explain?
> >=20
> > Hi, Sorry for not responding earlier. The patch that uses
> > writepage()
> > here has been around for quite some time waiting for reviews / acks
> > so
> > I failed to notice that it's going away.
>=20
> My turn to be sorry for dropping this conversation ...

Once again my turn. This disappeared in the mail flood. Sorry about
that.

>=20
> > Anyway the reclaim flag clearing follows that of pageout() in
> > vmscan.c
> > which was also the case for the i915_gem_shmem.c usage in
> > __shmem_writeback(). My understanding was that if the writeback was
> > already completed at that point, the reclaim flag was no longer
> > desirable.
>=20
> I think the question is really why you're setting it in the first
> place.
> Setting the reclaim flag indicates that you want the folio removed
> from
> the page cache as soon as possible.=C2=A0

So when the shmem swapout has been called, My understanding was that
the page had been moved from the page cache to the swap cache and now
written out to disc and this is all part of reclaim.

When TTM reaches this part of the code, it's always called from a
shrinker with the aim of freeing up memory as soon as possible.

So if this is incorrect or unsuitable usage of the reclaim flag, we
should of course remove the manipulation of it. (IIRC I was also a bit
confused as to why it didn't seem to be protected by a lock in the
callsites I looked at)=C2=A0

__shmem_writeback() in i915_gem_shmem.c and
pageout() in mm/vmscan.c

Thanks,
Thomas



>  Other changes in flight are about
> to make this more aggressive --=C2=A0 instead of waiting for the folio to
> reach the end of the writeout queue, it'll be removed upon I/O
> completion.
>=20
> It doesn't seem to me that this is what you actually want for TTM,
> but perhaps I've misunderstood the intent of the code.

