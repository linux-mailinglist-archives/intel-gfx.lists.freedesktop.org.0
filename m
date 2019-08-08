Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5112C85A0B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 07:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56C16E787;
	Thu,  8 Aug 2019 05:51:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 508 seconds by postgrey-1.36 at gabe;
 Thu, 08 Aug 2019 05:51:11 UTC
Received: from ozlabs.org (bilbo.ozlabs.org [203.11.71.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE0096E781;
 Thu,  8 Aug 2019 05:51:11 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 463y252c4Xz9sN1;
 Thu,  8 Aug 2019 15:42:37 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: john.hubbard@gmail.com, Andrew Morton <akpm@linux-foundation.org>
In-Reply-To: <20190807013340.9706-39-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
 <20190807013340.9706-39-jhubbard@nvidia.com>
Date: Thu, 08 Aug 2019 15:42:34 +1000
Message-ID: <87k1botdpx.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 38/41] powerpc: convert put_page() to
 put_user_page*()
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?utf-8?B?SsOpcsO0?= =?utf-8?B?bWU=?= Glisse <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSm9obiwKCmpvaG4uaHViYmFyZEBnbWFpbC5jb20gd3JpdGVzOgo+IGRpZmYgLS1naXQgYS9h
cmNoL3Bvd2VycGMvbW0vYm9vazNzNjQvaW9tbXVfYXBpLmMgYi9hcmNoL3Bvd2VycGMvbW0vYm9v
azNzNjQvaW9tbXVfYXBpLmMKPiBpbmRleCBiMDU2Y2FlMzM4OGIuLmUxMjYxOTNiYTI5NSAxMDA2
NDQKPiAtLS0gYS9hcmNoL3Bvd2VycGMvbW0vYm9vazNzNjQvaW9tbXVfYXBpLmMKPiArKysgYi9h
cmNoL3Bvd2VycGMvbW0vYm9vazNzNjQvaW9tbXVfYXBpLmMKPiBAQCAtMjAzLDYgKzIwMiw3IEBA
IHN0YXRpYyB2b2lkIG1tX2lvbW11X3VucGluKHN0cnVjdCBtbV9pb21tdV90YWJsZV9ncm91cF9t
ZW1fdCAqbWVtKQo+ICB7Cj4gIAlsb25nIGk7Cj4gIAlzdHJ1Y3QgcGFnZSAqcGFnZSA9IE5VTEw7
Cj4gKwlib29sIGRpcnR5ID0gZmFsc2U7CgpJIGRvbid0IHRoaW5rIHlvdSBuZWVkIHRoYXQgaW5p
dGlhbGlzYXRpb24gZG8geW91PwoKPiAgCWlmICghbWVtLT5ocGFzKQo+ICAJCXJldHVybjsKPiBA
QCAtMjE1LDEwICsyMTUsOSBAQCBzdGF0aWMgdm9pZCBtbV9pb21tdV91bnBpbihzdHJ1Y3QgbW1f
aW9tbXVfdGFibGVfZ3JvdXBfbWVtX3QgKm1lbSkKPiAgCQlpZiAoIXBhZ2UpCj4gIAkJCWNvbnRp
bnVlOwo+ICAKPiAtCQlpZiAobWVtLT5ocGFzW2ldICYgTU1fSU9NTVVfVEFCTEVfR1JPVVBfUEFH
RV9ESVJUWSkKPiAtCQkJU2V0UGFnZURpcnR5KHBhZ2UpOwo+ICsJCWRpcnR5ID0gbWVtLT5ocGFz
W2ldICYgTU1fSU9NTVVfVEFCTEVfR1JPVVBfUEFHRV9ESVJUWTsKPiAtCQlwdXRfcGFnZShwYWdl
KTsKPiArCQlwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCZwYWdlLCAxLCBkaXJ0eSk7Cj4gIAkJ
bWVtLT5ocGFzW2ldID0gMDsKPiAgCX0KPiAgfQoKY2hlZXJzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
