Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D68B7028
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 02:42:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCFC76F4B5;
	Thu, 19 Sep 2019 00:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D66366F4B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 00:42:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 17:42:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="271040118"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga001.jf.intel.com with ESMTP; 18 Sep 2019 17:42:04 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Sep 2019 17:42:03 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.240]) with mapi id 14.03.0439.000;
 Wed, 18 Sep 2019 17:42:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Set proper voltage level for 324 and 326.4
 cdclks
Thread-Index: AQHVZCl5CZw6ZUQLykmBayNEqoqJrKcysx+A
Date: Thu, 19 Sep 2019 00:42:02 +0000
Message-ID: <d8bdb1b66252e884f717f682c673d0b6c6a75ac5.camel@intel.com>
References: <20190905203527.25487-1-matthew.d.roper@intel.com>
In-Reply-To: <20190905203527.25487-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <BAE0026088EC6D428CB61CC7704CA381@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Set proper voltage level for 324
 and 326.4 cdclks
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA5LTA1IGF0IDEzOjM1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGVzZSBuZXcgY2RjbGsgdmFsdWVzIHNob3VsZCBiZSBhY2NvdW50ZWQgZm9yIGluIHRoZSB2b2x0
YWdlIGxldmVsDQo+IHNlbGVjdGlvbiAod2UgY2FuIHVzZSB0aGUgc2FtZSB2b2x0YWdlIGxldmVs
IGFzIDMwNy4yIGFuZCAzMTIgcmF0aGVyDQo+IHRoYW4gYnVtcGluZyB1cCB1cCB0byB0aGUgbmV4
dCBoaWdoZXIgbGV2ZWwpLg0KDQpKdXN0IGNoZWNrZWQgdGhpcyBwYWdlIGFuZCB0aGVyZSBpcyBj
aGFuZ2UgZHJhZnQgaW4gcHJvZ3Jlc3MsIGxldHMgd2FpdA0KZm9yIHRoZSBvZmZpY2lhbCB1cGRh
dGUgdG8gcmV2aWV3IHRoaXMgb25lLg0KDQo+IA0KPiBCc3BlYzogMjE4MDkNCj4gQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gVGhlIEVI
TCBhbmQgVEdMIHBhcnRzIG9mIHRoZSBic3BlYyBoYXZlbid0IGFjdHVhbGx5IHVwZGF0ZWQgdGhl
aXINCj4gdm9sdGFnZSByZXF1aXJlbWVudCB0YWJsZXMgdG8gbWVudGlvbiB0aGUgbmV3IGNkY2xr
IGZyZXF1ZW5jaWVzIGF0DQo+IGFsbCwNCj4gc28gSSdtIGFzc3VtaW5nIGhlcmUgdGhhdCB0aG9z
ZSBwbGF0Zm9ybXMgd2lsbCBmb2xsb3cgSUNMJ3MgbGVhZCBvZg0KPiB1c2luZyB0aGUgc2FtZSB2
b2x0YWdlIGxldmVsIGFzIHRoZSAzMDcvMzEyIGNsb2Nrcy4gIEkndmUgZmlsZWQgYQ0KPiB0aWNr
ZXQNCj4gd2l0aCB0aGUgaGFyZHdhcmUgdGVhbSB0byBjb25maXJtIHRoaXM7IHdlIHNob3VsZCBo
b2xkIG9mZiBvbg0KPiBhY3R1YWxseQ0KPiBtZXJnaW5nIHRoZXNlIGNoYW5nZXMgdW50aWwgd2Ug
Z2V0IGEgcmVzcG9uc2UuDQo+IA0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jIHwgNCArKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYw0KPiBpbmRleCBkM2U1NjYyOGFmNzAuLjEzMjlkM2U2MGUyNiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBAQCAtMTgzMyw3
ICsxODMzLDcgQEAgc3RhdGljIGludCBpY2xfY2FsY19jZGNsa19wbGxfdmNvKHN0cnVjdA0KPiBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IGNkY2xrKQ0KPiAgc3RhdGljIHU4IGljbF9j
YWxjX3ZvbHRhZ2VfbGV2ZWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiBp
bnQgY2RjbGspDQo+ICB7DQo+ICAJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgew0KPiAt
CQlpZiAoY2RjbGsgPiAzMTIwMDApDQo+ICsJCWlmIChjZGNsayA+IDMyNjQwMCkNCj4gIAkJCXJl
dHVybiAyOw0KPiAgCQllbHNlIGlmIChjZGNsayA+IDE4MDAwMCkNCj4gIAkJCXJldHVybiAxOw0K
PiBAQCAtMTg0Miw3ICsxODQyLDcgQEAgc3RhdGljIHU4IGljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwo
c3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgY2RjbGspDQo+ICAJfSBl
bHNlIHsNCj4gIAkJaWYgKGNkY2xrID4gNTU2ODAwKQ0KPiAgCQkJcmV0dXJuIDI7DQo+IC0JCWVs
c2UgaWYgKGNkY2xrID4gMzEyMDAwKQ0KPiArCQllbHNlIGlmIChjZGNsayA+IDMyNjQwMCkNCj4g
IAkJCXJldHVybiAxOw0KPiAgCQllbHNlDQo+ICAJCQlyZXR1cm4gMDsNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
