Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4559151CCF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 23:08:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AABFE89DE5;
	Mon, 24 Jun 2019 21:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B11D89DE5
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 21:08:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 14:08:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,413,1557212400"; d="scan'208";a="163741298"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 24 Jun 2019 14:08:48 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Jun 2019 14:08:27 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX119.amr.corp.intel.com ([169.254.14.146]) with mapi id 14.03.0439.000;
 Mon, 24 Jun 2019 14:08:26 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/3] drm/i915/icl: Add new supported CD
 clocks
Thread-Index: AQHVJ8q0B3qQNSptjkmSHBXE2uQiFqamvvWAgAUIuoA=
Date: Mon, 24 Jun 2019 21:08:26 +0000
Message-ID: <ec248b29402b572f11502aae42d59ab647fe20bd.camel@intel.com>
References: <20190621004556.9614-1-jose.souza@intel.com>
 <20190621161553.GB24125@mdroper-desk.amr.corp.intel.com>
In-Reply-To: <20190621161553.GB24125@mdroper-desk.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <A89E2EF27CA1BF478BCEFD923A858009@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/icl: Add new supported CD
 clocks
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

T24gRnJpLCAyMDE5LTA2LTIxIGF0IDA5OjE1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUaHUsIEp1biAyMCwgMjAxOSBhdCAwNTo0NTo1NFBNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphDQo+IHdyb3RlOg0KPiA+IE5vdyAxODAsIDE3Mi44IGFuZCAxOTIgTUh6IGFyZSBzdXBw
b3J0ZWQuDQo+ID4gDQo+ID4gMTgwIGFuZCAxNzIuOCBNSHogQ0QgY2xvY2tzIHdpbGwgb25seSBi
ZSB1c2VkIHdoZW4gYXVkaW8gaXMgbm90DQo+ID4gZW5hYmxlZCBhcyBzdGF0ZSBieSBCU3BlYyBh
bmQgaW1wbGVtZW50ZWQgaW4NCj4gPiBpbnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKCksIENE
IGNsb2NrIG11c3QgYmUgYXQgbGVhc3QgdHdpY2Ugb2YNCj4gPiBBemFsaWEgQkNMSyBhbmQgQkNM
SyBieSBkZWZhdWx0IGlzIDk2IE1IeiwgaXQgY291bGQgYmUgc2V0IHRvIDQ4DQo+ID4gTUh6DQo+
ID4gYnV0IHdlIGFyZSBub3QgcmVhZGluZyBpdC4NCj4gPiANCj4gPiBCU3BlYzogMjA1OTgNCj4g
PiBCU3BlYzogMTU3MjkNCj4gPiBDYzogQ2xpbnQgVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGlu
dGVsLmNvbT4NCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gDQo+IEkgdGhpbmsgVmlsbGUgd2FudGVkIGEgJ3N0YXRpYycg
b24gdGhlIHJhbmdlIGFycmF5cy4gIEJ1dCBhc2lkZSBmcm9tDQo+IHRoYXQsIHRoZSBjaGFuZ2Vz
IGhlcmUgbWF0Y2ggdGhlIGJzcGVjLCBzbyANCj4gDQo+IFJldmlld2VkLWJ5OiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KDQpPaCBJIGZvcmdvdCB0aGF0Lg0KSSBkaWQg
dGhlIGF1ZGlvIHRlc3Qgd2hpbGUgb24gbG93IGNkIGNsb2NrIGZyZXF1ZW5jaWVzLCBnb2luZyB0
byB3YWl0DQpvbmUgbW9yZSBkYXkgYmVmb3JlIGZpeCB0aGF0Lg0KDQo+IA0KPiA+IC0tLQ0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAzMCArKysrKysr
KysrKysrKystLS0NCj4gPiAtLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25z
KCspLCA5IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+IGluZGV4IDg5OTNhYjI4MzU2Mi4uOGVlZjE3N2Iy
YmJkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYw0KPiA+IEBAIC0xNzU2LDkgKzE3NTYsMTAgQEAgc3RhdGljIHZvaWQgY25sX3Nhbml0aXpl
X2NkY2xrKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICANCj4g
PiAgc3RhdGljIGludCBpY2xfY2FsY19jZGNsayhpbnQgbWluX2NkY2xrLCB1bnNpZ25lZCBpbnQg
cmVmKQ0KPiA+ICB7DQo+ID4gLQlpbnQgcmFuZ2VzXzI0W10gPSB7IDMxMjAwMCwgNTUyMDAwLCA2
NDgwMDAgfTsNCj4gPiAtCWludCByYW5nZXNfMTlfMzhbXSA9IHsgMzA3MjAwLCA1NTY4MDAsIDY1
MjgwMCB9Ow0KPiA+IC0JaW50ICpyYW5nZXM7DQo+ID4gKwljb25zdCBpbnQgcmFuZ2VzXzI0W10g
PSB7IDE4MDAwMCwgMTkyMDAwLCAzMTIwMDAsIDU1MjAwMCwNCj4gPiA2NDgwMDAgfTsNCj4gPiAr
CWNvbnN0IGludCByYW5nZXNfMTlfMzhbXSA9IHsgMTcyODAwLCAxOTIwMDAsIDMwNzIwMCwgNTU2
ODAwLA0KPiA+IDY1MjgwMCB9Ow0KPiA+ICsJY29uc3QgaW50ICpyYW5nZXM7DQo+ID4gKwlpbnQg
bGVuLCBpOw0KPiA+ICANCj4gPiAgCXN3aXRjaCAocmVmKSB7DQo+ID4gIAlkZWZhdWx0Og0KPiA+
IEBAIC0xNzY2LDE5ICsxNzY3LDIyIEBAIHN0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGsoaW50IG1p
bl9jZGNsaywNCj4gPiB1bnNpZ25lZCBpbnQgcmVmKQ0KPiA+ICAJCS8qIGZhbGwgdGhyb3VnaCAq
Lw0KPiA+ICAJY2FzZSAyNDAwMDoNCj4gPiAgCQlyYW5nZXMgPSByYW5nZXNfMjQ7DQo+ID4gKwkJ
bGVuID0gQVJSQVlfU0laRShyYW5nZXNfMjQpOw0KPiA+ICAJCWJyZWFrOw0KPiA+ICAJY2FzZSAx
OTIwMDoNCj4gPiAgCWNhc2UgMzg0MDA6DQo+ID4gIAkJcmFuZ2VzID0gcmFuZ2VzXzE5XzM4Ow0K
PiA+ICsJCWxlbiA9IEFSUkFZX1NJWkUocmFuZ2VzXzE5XzM4KTsNCj4gPiAgCQlicmVhazsNCj4g
PiAgCX0NCj4gPiAgDQo+ID4gLQlpZiAobWluX2NkY2xrID4gcmFuZ2VzWzFdKQ0KPiA+IC0JCXJl
dHVybiByYW5nZXNbMl07DQo+ID4gLQllbHNlIGlmIChtaW5fY2RjbGsgPiByYW5nZXNbMF0pDQo+
ID4gLQkJcmV0dXJuIHJhbmdlc1sxXTsNCj4gPiAtCWVsc2UNCj4gPiAtCQlyZXR1cm4gcmFuZ2Vz
WzBdOw0KPiA+ICsJZm9yIChpID0gMDsgaSA8IGxlbjsgaSsrKSB7DQo+ID4gKwkJaWYgKG1pbl9j
ZGNsayA8PSByYW5nZXNbaV0pDQo+ID4gKwkJCXJldHVybiByYW5nZXNbaV07DQo+ID4gKwl9DQo+
ID4gKw0KPiA+ICsJV0FSTl9PTihtaW5fY2RjbGsgPiByYW5nZXNbbGVuIC0gMV0pOw0KPiA+ICsJ
cmV0dXJuIHJhbmdlc1tsZW4gLSAxXTsNCj4gPiAgfQ0KPiA+ICANCj4gPiAgc3RhdGljIGludCBp
Y2xfY2FsY19jZGNsa19wbGxfdmNvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gKmRldl9w
cml2LCBpbnQgY2RjbGspDQo+ID4gQEAgLTE3OTIsMTYgKzE3OTYsMjQgQEAgc3RhdGljIGludCBp
Y2xfY2FsY19jZGNsa19wbGxfdmNvKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LCBpbnQgY2RjbGspDQo+ID4gIAlkZWZhdWx0Og0KPiA+ICAJCU1JU1NJTkdfQ0FTRShjZGNs
ayk7DQo+ID4gIAkJLyogZmFsbCB0aHJvdWdoICovDQo+ID4gKwljYXNlIDE3MjgwMDoNCj4gPiAg
CWNhc2UgMzA3MjAwOg0KPiA+ICAJY2FzZSA1NTY4MDA6DQo+ID4gIAljYXNlIDY1MjgwMDoNCj4g
PiAgCQlXQVJOX09OKGRldl9wcml2LT5jZGNsay5ody5yZWYgIT0gMTkyMDAgJiYNCj4gPiAgCQkJ
ZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiAhPSAzODQwMCk7DQo+ID4gIAkJYnJlYWs7DQo+ID4gKwlj
YXNlIDE4MDAwMDoNCj4gPiAgCWNhc2UgMzEyMDAwOg0KPiA+ICAJY2FzZSA1NTIwMDA6DQo+ID4g
IAljYXNlIDY0ODAwMDoNCj4gPiAgCQlXQVJOX09OKGRldl9wcml2LT5jZGNsay5ody5yZWYgIT0g
MjQwMDApOw0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJY2FzZSAxOTIwMDA6DQo+ID4gKwkJV0FSTl9P
TihkZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9IDE5MjAwICYmDQo+ID4gKwkJCWRldl9wcml2LT5j
ZGNsay5ody5yZWYgIT0gMzg0MDAgJiYNCj4gPiArCQkJZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiAh
PSAyNDAwMCk7DQo+ID4gKwkJYnJlYWs7DQo+ID4gIAl9DQo+ID4gIA0KPiA+ICAJcmF0aW8gPSBj
ZGNsayAvIChkZXZfcHJpdi0+Y2RjbGsuaHcucmVmIC8gMik7DQo+ID4gLS0gDQo+ID4gMi4yMi4w
DQo+ID4gDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
