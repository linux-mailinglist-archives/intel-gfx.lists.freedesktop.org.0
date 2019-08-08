Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFDB85FA6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 12:29:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9717A6E489;
	Thu,  8 Aug 2019 10:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE1F6E487;
 Thu,  8 Aug 2019 10:29:54 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id ECABD227A81; Thu,  8 Aug 2019 12:29:51 +0200 (CEST)
Date: Thu, 8 Aug 2019 12:29:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20190808102951.GE648@lst.de>
References: <20190806231548.25242-1-jgg@ziepe.ca>
 <20190806231548.25242-12-jgg@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806231548.25242-12-jgg@ziepe.ca>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v3 hmm 11/11] mm/mmu_notifiers: remove
 unregister_no_release
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 Ralph Campbell <rcampbell@nvidia.com>, Dimitri Sivanich <sivanich@sgi.com>,
 Gavin Shan <shangw@linux.vnet.ibm.com>, Andrea Righi <andrea@betterlinux.com>,
 linux-rdma@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>, "Kuehling,
 Felix" <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-mm@kvack.org, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 iommu@lists.linux-foundation.org, amd-gfx@lists.freedesktop.org,
 Jason Gunthorpe <jgg@mellanox.com>, Alex Deucher <alexander.deucher@amd.com>,
 intel-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDg6MTU6NDhQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IEZyb206IEphc29uIEd1bnRob3JwZSA8amdnQG1lbGxhbm94LmNvbT4KPiAKPiBt
bXVfbm90aWZpZXJfdW5yZWdpc3Rlcl9ub19yZWxlYXNlKCkgYW5kIG1tdV9ub3RpZmllcl9jYWxs
X3NyY3UoKSBubwo+IGxvbmdlciBoYXZlIGFueSB1c2VycywgdGhleSBoYXZlIGFsbCBiZWVuIGNv
bnZlcnRlZCB0byB1c2UKPiBtbXVfbm90aWZpZXJfcHV0KCkuCj4gCj4gU28gZGVsZXRlIHRoaXMg
ZGlmZmljdWx0IHRvIHVzZSBpbnRlcmZhY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFzb24gR3Vu
dGhvcnBlIDxqZ2dAbWVsbGFub3guY29tPgoKTG9va3MgZ29vZDoKClJldmlld2VkLWJ5OiBDaHJp
c3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
