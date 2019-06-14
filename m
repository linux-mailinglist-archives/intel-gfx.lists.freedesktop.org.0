Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EBC461F0
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:01:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A208930A;
	Fri, 14 Jun 2019 15:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4BD899E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:01:27 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-6-Ae-vvi9EMKOPr28p6sbQQA-1;
 Fri, 14 Jun 2019 16:01:23 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri,
 14 Jun 2019 16:01:22 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 14 Jun 2019 16:01:22 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Christoph Hellwig' <hch@lst.de>
Thread-Topic: [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
Thread-Index: AQHVIrfpTFjppS25RkWUhwqPPyqZ4qabLzdw///7eICAABIeYA==
Date: Fri, 14 Jun 2019 15:01:22 +0000
Message-ID: <d93fd4c2c1584d92a05dd641929f6d63@AcuMS.aculab.com>
References: <20190614134726.3827-1-hch@lst.de>
 <20190614134726.3827-17-hch@lst.de>
 <a90cf7ec5f1c4166b53c40e06d4d832a@AcuMS.aculab.com>
 <20190614145001.GB9088@lst.de>
In-Reply-To: <20190614145001.GB9088@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: Ae-vvi9EMKOPr28p6sbQQA-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Ian Abbott <abbotti@mev.co.uk>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogJ0NocmlzdG9waCBIZWxsd2lnJwo+IFNlbnQ6IDE0IEp1bmUgMjAxOSAxNTo1MAo+IFRv
OiBEYXZpZCBMYWlnaHQKPiBPbiBGcmksIEp1biAxNCwgMjAxOSBhdCAwMjoxNTo0NFBNICswMDAw
LCBEYXZpZCBMYWlnaHQgd3JvdGU6Cj4gPiBEb2VzIHRoaXMgc3RpbGwgZ3VhcmFudGVlIHRoYXQg
cmVxdWVzdHMgZm9yIDE2ayB3aWxsIG5vdCBjcm9zcyBhIDE2ayBib3VuZGFyeT8KPiA+IEl0IGxv
b2tzIGxpa2UgeW91IGFyZSBsb3NpbmcgdGhlIGFsaWdubWVudCBwYXJhbWV0ZXIuCj4gCj4gVGhl
IERNQSBBUEkgbmV2ZXIgZ2F2ZSB5b3UgYWxpZ25tZW50IGd1YXJhbnRlZXMgdG8gc3RhcnQgd2l0
aCwKPiBhbmQgeW91IGNhbiBnZXQgbm90IG5hdHVyYWxseSBhbGlnbmVkIG1lbW9yeSBmcm9tIG1h
bnkgb2Ygb3VyCj4gY3VycmVudCBpbXBsZW1lbnRhdGlvbnMuCgpIbW1tLi4uCkkgdGhvdWdodCB0
aGF0IHdhcyBldmVuIGRvY3VtZW50ZWQuCgpJJ20gcHJldHR5IHN1cmUgdGhlcmUgaXMgYSBsb3Qg
b2YgY29kZSBvdXQgdGhlcmUgdGhhdCBtYWtlcyB0aGF0IGFzc3VtcHRpb24uCldpdGhvdXQgaXQg
bWFueSBkcml2ZXJzIHdpbGwgaGF2ZSB0byBhbGxvY2F0ZSBhbG1vc3QgZG91YmxlIHRoZQphbW91
bnQgb2YgbWVtb3J5IHRoZXkgYWN0dWFsbHkgbmVlZCBpbiBvcmRlciB0byBnZXQgdGhlIHJlcXVp
cmVkIGFsaWdubWVudC4KU28gaW5zdGVhZCBvZiBzYXZpbmcgbWVtb3J5IHlvdSdsbCBhY3R1YWxs
eSBtYWtlIG1vcmUgYmUgdXNlZC4KCglEYXZpZAoKLQpSZWdpc3RlcmVkIEFkZHJlc3MgTGFrZXNp
ZGUsIEJyYW1sZXkgUm9hZCwgTW91bnQgRmFybSwgTWlsdG9uIEtleW5lcywgTUsxIDFQVCwgVUsK
UmVnaXN0cmF0aW9uIE5vOiAxMzk3Mzg2IChXYWxlcykKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
