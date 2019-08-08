Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5AB85F92
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 12:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1E86E81B;
	Thu,  8 Aug 2019 10:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C47E6E819;
 Thu,  8 Aug 2019 10:26:55 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8BF8768B02; Thu,  8 Aug 2019 12:26:52 +0200 (CEST)
Date: Thu, 8 Aug 2019 12:26:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20190808102652.GC648@lst.de>
References: <20190806231548.25242-1-jgg@ziepe.ca>
 <20190806231548.25242-3-jgg@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806231548.25242-3-jgg@ziepe.ca>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v3 hmm 02/11] mm/mmu_notifiers: do not
 speculatively allocate a mmu_notifier_mm
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

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDg6MTU6MzlQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IEZyb206IEphc29uIEd1bnRob3JwZSA8amdnQG1lbGxhbm94LmNvbT4KPiAKPiBB
IHByaW9yIGNvbW1pdCBlMGYzYzNmNzhkYTIgKCJtbS9tbXVfbm90aWZpZXI6IGluaXQgbm90aWZp
ZXIgaWYgbmVjZXNzYXJ5IikKPiBtYWRlIGFuIGF0dGVtcHQgYXQgZG9pbmcgdGhpcywgYnV0IGhh
ZCB0byBiZSByZXZlcnRlZCBhcyBjYWxsaW5nCj4gdGhlIEdGUF9LRVJORUwgYWxsb2NhdG9yIHVu
ZGVyIHRoZSBpX21tYXBfbXV0ZXggY2F1c2VzIGRlYWRsb2NrLCBzZWUKPiBjb21taXQgMzVjZmEy
YjBiNDkxICgibW0vbW11X25vdGlmaWVyOiBhbGxvY2F0ZSBtbXVfbm90aWZpZXIgaW4gYWR2YW5j
ZSIpLgo+IAo+IEhvd2V2ZXIsIHdlIGNhbiBhdm9pZCB0aGF0IHByb2JsZW0gYnkgZG9pbmcgdGhl
IGFsbG9jYXRpb24gb25seSB1bmRlcgo+IHRoZSBtbWFwX3NlbSwgd2hpY2ggaXMgYWxyZWFkeSBo
YXBwZW5pbmcuCj4gCj4gU2luY2UgYWxsIHdyaXRlcnMgdG8gbW0tPm1tdV9ub3RpZmllcl9tbSBo
b2xkIHRoZSB3cml0ZSBzaWRlIG9mIHRoZQo+IG1tYXBfc2VtIHJlYWRpbmcgaXQgdW5kZXIgdGhh
dCBzZW0gaXMgZGV0ZXJtaW5pc3RpYyBhbmQgd2UgY2FuIHVzZSB0aGF0IHRvCj4gZGVjaWRlIGlm
IHRoZSBhbGxvY2F0aW9uIHBhdGggaXMgcmVxdWlyZWQsIHdpdGhvdXQgc3BlY3VsYXRpb24uCj4g
Cj4gVGhlIGFjdHVhbCB1cGRhdGUgdG8gbW11X25vdGlmaWVyX21tIG11c3Qgc3RpbGwgYmUgZG9u
ZSB1bmRlciB0aGUKPiBtbV90YWtlX2FsbF9sb2NrcygpIHRvIGVuc3VyZSByZWFkLXNpZGUgY29o
ZXJlbmN5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphc29uIEd1bnRob3JwZSA8amdnQG1lbGxhbm94
LmNvbT4KCkxvb2tzIGdvb2QsCgpSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBs
c3QuZGU+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
