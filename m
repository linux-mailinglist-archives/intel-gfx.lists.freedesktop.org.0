Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2554DAF7
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 22:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2C86E7D8;
	Thu, 20 Jun 2019 20:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 930836E7D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 20:11:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 13:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="151043023"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga007.jf.intel.com with ESMTP; 20 Jun 2019 13:11:09 -0700
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 20 Jun 2019 13:11:09 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx163.amr.corp.intel.com ([169.254.6.39]) with mapi id 14.03.0439.000;
 Thu, 20 Jun 2019 13:11:09 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH] drm/i915/ehl: Add missing VECS engine
Thread-Index: AQHVIvls5g71+nWHykeWuNvzy4MJd6acLVqAgAlKoQA=
Date: Thu, 20 Jun 2019 20:11:07 +0000
Message-ID: <ac175948c1c9cf1e14da97903916458816569dd5.camel@intel.com>
References: <20190614213749.15870-1-jose.souza@intel.com>
 <20190614221739.GF32200@mdroper-desk.amr.corp.intel.com>
In-Reply-To: <20190614221739.GF32200@mdroper-desk.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <2C23B96DAB19C34C823F1F7EA0112FC3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Add missing VECS engine
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA2LTE0IGF0IDE1OjE3IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBGcmksIEp1biAxNCwgMjAxOSBhdCAwMjozNzo0OVBNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphDQo+IHdyb3RlOg0KPiA+IEVITCBjYW4gaGF2ZSB1cCB0byBvbmUgVkVDUyh2aWRlbyBl
bmhhbmNlbWVudCkgZW5naW5lLCBzbyBhZGQgaXQgdG8NCj4gPiB0aGUgZGV2aWNlX2luZm8uDQo+
IA0KPiBCc3BlYyAyOTE1MCBoYXMgYSBmb290bm90ZSBvbiBWRWJveCB0aGF0IGluZGljYXRlcyAi
UGFzcy10aHJvdWdoDQo+IG9ubHksDQo+IG5vIFZFYm94IHByb2Nlc3NpbmcgbG9naWMuIiAgVGhh
dCBub3RlIHNlZW1zIGEgYml0IHZhZ3VlLCBidXQgSSB0aGluaw0KPiBJDQo+IHNhdyBzb21lIG1v
cmUgZGV0YWlsZWQgaW5mbyBpbiB0aGUgcGFzdCBzb21ld2hlcmUgdGhhdCBpbmRpY2F0ZWQgdGhl
DQo+IFZFQ1MgY29tbWFuZCBzdHJlYW1lciBpcyBzdGlsbCB0ZWNobmljYWxseSBwcmVzZW50IGJ1
dCBkb2Vzbid0DQo+IGFjdHVhbGx5DQo+IGRvIGFueSB2aWRlbyBlbmhhbmNlbWVudCBvbiBFSEw7
IGl0IGp1c3QgcGFzc2VzIGNvbnRlbnQgdGhyb3VnaCB0bw0KPiBTRkMuDQo+IA0KPiBJJ20gbm90
IHRlcnJpYmx5IHBsdWdnZWQgaW50byB0aGUgbWVkaWEgc2lkZSBvZiB0aGUgd29ybGQsIHNvIEkn
bSBub3QNCj4gc3VyZSBpZiB3ZSB3YW50IHRvIGV4cG9zZSBWRUNTIHRvIHVzZXJzcGFjZSBpZiBp
dCdzIGJhc2ljYWxseSBhIG5vb3ANCj4gYW5kDQo+IGRvZXNuJ3QgZG8gd2hhdCBpdCBub3JtYWxs
eSBkb2VzIG9uIG90aGVyIHBsYXRmb3Jtcy4gIEJzcGVjIHBhZ2UgNTIyOQ0KPiBpbXBsaWVzIHRo
YXQgU0ZDIGNhbiBiZSBmZWQgZGlyZWN0bHkgYnkgdGhlIGRlY29kZSBlbmdpbmUgd2l0aG91dA0K
PiBnb2luZw0KPiB0aHJvdWdoIFZFQk9YLCBzbyBJJ20gbm90IHN1cmUgaWYgbWVkaWEgdXNlcnNw
YWNlIHdvdWxkIGV2ZXIgaGF2ZSBhDQo+IHVzZQ0KPiBmb3IgdGhlIHBhc3N0aHJvdWdoLW9ubHkg
VkVDUyBzdHJlYW1lci4NCj4gDQo+IFdlIHNob3VsZCBwcm9iYWJseSBhc2sgc29tZW9uZSBvbiB0
aGUgbWVkaWEgdGVhbSB3aGF0IHRoZWlyIHRob3VnaHRzDQo+IGFyZQ0KPiBvbiB0aGlzLg0KDQpJ
IGp1c3Qgc2VudCBhIHF1ZXN0aW9uIHRvIG1lZGlhIHRlYW0gYnV0IGluIGFueSBjYXNlIHdlIGFy
ZSBnb2luZyBuZWVkDQp0byBzb21lIGNoYW5nZSBhcm91bmQgaXQgb3RoZXJ3aXNlIGRyaXZlciB3
b3VsZCBjcmFzaCB3aGVuDQpDT05GSUdfRFJNX0k5MTVfREVCVUdfR0VNIGlzIHNldDoNCg0KaW50
ZWxfZGV2aWNlX2luZm9faW5pdF9tbWlvKCkNCglHRU1fQlVHX09OKHZlYm94X21hc2sgIT0gVkVC
T1hfTUFTSyhkZXZfcHJpdikpOw0KDQo+IA0KPiANCj4gTWF0dA0KPiANCj4gPiBCU3BlYzogMjkx
NTINCj4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+IENj
OiBCb2IgUGFhdXdlIDxib2Iuai5wYWF1d2VAaW50ZWwuY29tPg0KPiA+IENjOiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiA+IENjOiBDbGludCBUYXlsb3IgPENsaW50
b24uQS5UYXlsb3JAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMiArLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYw0KPiA+IGluZGV4IDQ4MmYxZDBmMTc3MC4uMmM1ZjY0Y2NhZGI1IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+ID4gQEAgLTc2MCw3ICs3NjAsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvDQo+ID4gaW50ZWxfZWxraGFydGxha2VfaW5mbyA9
IHsNCj4gPiAgCUdFTjExX0ZFQVRVUkVTLA0KPiA+ICAJUExBVEZPUk0oSU5URUxfRUxLSEFSVExB
S0UpLA0KPiA+ICAJLnJlcXVpcmVfZm9yY2VfcHJvYmUgPSAxLA0KPiA+IC0JLmVuZ2luZV9tYXNr
ID0gQklUKFJDUzApIHwgQklUKEJDUzApIHwgQklUKFZDUzApLA0KPiA+ICsJLmVuZ2luZV9tYXNr
ID0gQklUKFJDUzApIHwgQklUKEJDUzApIHwgQklUKFZDUzApIHwgQklUKFZFQ1MwKSwNCj4gPiAg
CS5wcGd0dF9zaXplID0gMzYsDQo+ID4gIH07DQo+ID4gIA0KPiA+IC0tIA0KPiA+IDIuMjIuMA0K
PiA+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
