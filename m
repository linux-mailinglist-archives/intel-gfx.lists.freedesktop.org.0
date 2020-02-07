Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCB2154FD2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 01:42:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2219F6E514;
	Fri,  7 Feb 2020 00:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF9F16E514
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 00:42:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 16:42:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,411,1574150400"; d="scan'208";a="255264265"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 06 Feb 2020 16:42:01 -0800
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 6 Feb 2020 16:42:01 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 FMSMSX119.amr.corp.intel.com ([169.254.14.203]) with mapi id 14.03.0439.000;
 Thu, 6 Feb 2020 16:42:00 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/tgl: Update cdclk voltage level settings
Thread-Index: AQHV3UunF3plQUaaREiGrDdbhcopfqgPalSA
Date: Fri, 7 Feb 2020 00:41:59 +0000
Message-ID: <5d3697f79d9de9bfc5aabb187697669534ca59a7.camel@intel.com>
References: <20200207001417.1229251-1-matthew.d.roper@intel.com>
 <20200207001417.1229251-2-matthew.d.roper@intel.com>
In-Reply-To: <20200207001417.1229251-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.27]
Content-ID: <DA6D1457308ED743B9677761FC7873B2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Update cdclk voltage
 level settings
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTAyLTA2IGF0IDE2OjE0IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBB
IHJlY2VudCBic3BlYyB1cGRhdGUgYWRkZWQgYW4gZXh0cmEgdm9sdGFnZSBsZXZlbCB0aGF0IHdl
IGRpZG4ndA0KPiBoYXZlDQo+IG9uIElDTCBhbmQgbmV3IGNyaXRlcmlhIGZvciBzZWxlY3Rpbmcg
dGhlIGxldmVsLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IEJzcGVjOiA0OTIwOA0KPiBDYzogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBBbnVzaGEgU3JpdmF0c2Eg
PGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMTkgKysrKysrKysrKysrKysrKysrLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgIHwgIDQgKysrLQ0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRleCA3MTU0
YTIyODgzMTAuLjU1YjVkZDE2OWM1MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBAQCAtMTI5NSw2ICsxMjk1LDE4IEBAIHN0YXRpYyB1OCBl
aGxfY2FsY192b2x0YWdlX2xldmVsKGludCBjZGNsaykNCj4gIAkJcmV0dXJuIDA7DQo+ICB9DQo+
ICANCj4gK3N0YXRpYyB1OCB0Z2xfY2FsY192b2x0YWdlX2xldmVsKGludCBjZGNsaykNCj4gK3sN
Cj4gKwlpZiAoY2RjbGsgPiA1NTY4MDApDQo+ICsJCXJldHVybiAzOw0KPiArCWVsc2UgaWYgKGNk
Y2xrID4gMzI2NDAwKQ0KPiArCQlyZXR1cm4gMjsNCj4gKwllbHNlIGlmIChjZGNsayA+IDMxMjAw
MCkNCj4gKwkJcmV0dXJuIDE7DQo+ICsJZWxzZQ0KPiArCQlyZXR1cm4gMDsNCj4gK30NCj4gKw0K
PiAgc3RhdGljIHZvaWQgY25sX3JlYWRvdXRfcmVmY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwNCj4gIAkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY2RjbGtfY29uZmlnICpjZGNs
a19jb25maWcpDQo+ICB7DQo+IEBAIC0yNzExLDcgKzI3MjMsMTIgQEAgdm9pZCBpbnRlbF91cGRh
dGVfcmF3Y2xrKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gICAqLw0K
PiAgdm9pZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikNCj4gIHsNCj4gLQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7DQo+ICsJ
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsNCj4gKwkJZGV2X3ByaXYtPmRpc3BsYXku
c2V0X2NkY2xrID0gYnh0X3NldF9jZGNsazsNCj4gKwkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNl
dF9jYWxjX2NkY2xrID0NCj4gYnh0X21vZGVzZXRfY2FsY19jZGNsazsNCj4gKwkJZGV2X3ByaXYt
PmRpc3BsYXkuY2FsY192b2x0YWdlX2xldmVsID0NCj4gdGdsX2NhbGNfdm9sdGFnZV9sZXZlbDsN
Cj4gKwkJZGV2X3ByaXYtPmNkY2xrLnRhYmxlID0gaWNsX2NkY2xrX3RhYmxlOw0KPiArCX0gZWxz
ZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7DQo+ICAJCWRldl9wcml2LT5kaXNwbGF5
LnNldF9jZGNsayA9IGJ4dF9zZXRfY2RjbGs7DQo+ICAJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVz
ZXRfY2FsY19jZGNsayA9DQo+IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7DQo+ICAJCWRldl9wcml2
LT5kaXNwbGF5LmNhbGNfdm9sdGFnZV9sZXZlbCA9DQo+IGVobF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCBm
ZjYzOGZjNmUzZjUuLjA4YTY2YjhhMjVjZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC00MjA2LDcgKzQyMDYsOSBAQCBzdGF0aWMgYm9vbCBp
bnRlbF9kZGlfaXNfYXVkaW9fZW5hYmxlZChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsDQo+ICB2b2lkIGludGVsX2RkaV9jb21wdXRlX21pbl92b2x0YWdlX2xldmVsKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdiwNCj4gIAkJCQkJIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAgew0KPiAtCWlmIChJU19FTEtIQVJUTEFLRShk
ZXZfcHJpdikgJiYgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA+DQo+IDU5NDAwMCkNCj4gKwlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMiAmJiBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID4NCj4g
NTk0MDAwKQ0KPiArCQljcnRjX3N0YXRlLT5taW5fdm9sdGFnZV9sZXZlbCA9IDI7DQo+ICsJZWxz
ZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmIGNydGNfc3RhdGUtPnBvcnRfY2xvY2sg
Pg0KPiA1OTQwMDApDQo+ICAJCWNydGNfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsID0gMzsNCj4g
IAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmIGNydGNfc3RhdGUtPnBvcnRf
Y2xvY2sgPg0KPiA1OTQwMDApDQo+ICAJCWNydGNfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsID0g
MTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
