Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D405722BFF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 08:22:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA4D7891B3;
	Mon, 20 May 2019 06:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96BED891B1;
 Mon, 20 May 2019 06:22:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 May 2019 23:22:33 -0700
X-ExtLoop1: 1
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by fmsmga007.fm.intel.com with ESMTP; 19 May 2019 23:22:32 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.93]) by
 irsmsx110.ger.corp.intel.com ([169.254.15.227]) with mapi id 14.03.0415.000;
 Mon, 20 May 2019 07:22:31 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>, "rodrigosiqueiramelo@gmail.com"
 <rodrigosiqueiramelo@gmail.com>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Thread-Topic: [igt-dev] [PATCH V2 i-g-t] lib: Drop __kms_addfb() wrapper
Thread-Index: AQHVDpazAQAKgTveuEuDRoq2D1+stqZzesiA
Date: Mon, 20 May 2019 06:22:31 +0000
Message-ID: <e3f73e494da43c172b4e3ed35f6949258233e1af.camel@intel.com>
References: <20190519230036.y73fer7uq4i7lpat@smtp.gmail.com>
In-Reply-To: <20190519230036.y73fer7uq4i7lpat@smtp.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <2FD1F0D5AC74AD489B0C586E941A9A65@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH V2 i-g-t] lib: Drop __kms_addfb()
 wrapper
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgUm9kcmlnbywNCg0KT24gU3VuLCAyMDE5LTA1LTE5IGF0IDIwOjAwIC0wMzAwLCBSb2RyaWdv
IFNpcXVlaXJhIHdyb3RlOg0KPiBUaGUgZnVuY3Rpb24gX19rbXNfYWRkZmIoKSBhbmQgZHJtTW9k
ZUFkZEZCMldpdGhNb2RpZmllcnMoKSBoYXZlIGENCj4gc2ltaWxhciBjb2RlLiBEdWUgdG8gdGhp
cyBzaW1pbGFyaXR5LCB0aGlzIGNvbW1pdCByZXBsYWNlcyBhbGwgdGhlDQo+IG9jY3VycmVuY2Vz
IG9mICBfX2ttc19hZGRmYigpIGJ5IGRybU1vZGVBZGRGQjJXaXRoTW9kaWZpZXJzKCkgYW5kIGFk
ZHMNCj4gdGhlIHJlcXVpcmVkIGFkYXB0YXRpb25zLg0KPiANCj4gVjE6IEFya2FkaXVzeiBIaWxl
cg0KPiAgLSBGaXggYXJyYXkgaW5pdGlhbGl6YXRpb24NCj4gIC0gRHJvcCBfX2ttc19hZGRmYigp
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBSb2RyaWdvIFNpcXVlaXJhIDxyb2RyaWdvc2lxdWVpcmFt
ZWxvQGdtYWlsLmNvbT4NCj4gLS0tDQo+ICBsaWIvaWd0X2ZiLmMgICAgICAgICAgICAgICAgICAg
IHwgMTQgKysrKysrKysrLS0tLS0NCj4gIGxpYi9pb2N0bF93cmFwcGVycy5jICAgICAgICAgICAg
fCAzMyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gIGxpYi9pb2N0bF93cmFw
cGVycy5oICAgICAgICAgICAgfCAxMSAtLS0tLS0tLS0tLQ0KPiAgdGVzdHMva21zX2F2YWlsYWJs
ZV9tb2Rlc19jcmMuYyB8IDE0ICsrKysrKysrKy0tLS0tDQo+ICB0ZXN0cy9rbXNfZHJhd19jcmMu
YyAgICAgICAgICAgIHwgMTAgKysrKysrLS0tLQ0KPiAgdGVzdHMvcHJpbWVfdmdlbS5jICAgICAg
ICAgICAgICB8IDE0ICsrKysrKysrLS0tLS0tDQo+ICA2IGZpbGVzIGNoYW5nZWQsIDMyIGluc2Vy
dGlvbnMoKyksIDY0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2xpYi9pZ3RfZmIu
YyBiL2xpYi9pZ3RfZmIuYw0KPiBpbmRleCBkNDkyOTAxOS4uYmFjM2IyMWMgMTAwNjQ0DQo+IC0t
LSBhL2xpYi9pZ3RfZmIuYw0KPiArKysgYi9saWIvaWd0X2ZiLmMNCj4gQEAgLTEyMzUsNiArMTIz
NSw5IEBAIGlndF9jcmVhdGVfZmJfd2l0aF9ib19zaXplKGludCBmZCwgaW50IHdpZHRoLCBpbnQg
aGVpZ2h0LA0KPiAgCQkJICAgc3RydWN0IGlndF9mYiAqZmIsIHVpbnQ2NF90IGJvX3NpemUsDQo+
ICAJCQkgICB1bnNpZ25lZCBib19zdHJpZGUpDQo+ICB7DQo+ICsJdWludDMyX3QgaGFuZGxlc1s0
XSA9IHt9Ow0KPiArCXVpbnQ2NF90IG1vZGlmaWVyc1s0XSA9IHt9Ow0KPiArDQo+ICAJLyogRklY
TUUgYWxsb3cgdGhlIGNhbGxlciB0byBwYXNzIHRoZXNlIGluICovDQo+ICAJZW51bSBpZ3RfY29s
b3JfZW5jb2RpbmcgY29sb3JfZW5jb2RpbmcgPSBJR1RfQ09MT1JfWUNCQ1JfQlQ3MDk7DQo+ICAJ
ZW51bSBpZ3RfY29sb3JfcmFuZ2UgY29sb3JfcmFuZ2UgPSBJR1RfQ09MT1JfWUNCQ1JfTElNSVRF
RF9SQU5HRTsNCj4gQEAgLTEyNjIsMTEgKzEyNjUsMTIgQEAgaWd0X2NyZWF0ZV9mYl93aXRoX2Jv
X3NpemUoaW50IGZkLCBpbnQgd2lkdGgsIGludCBoZWlnaHQsDQo+ICAJaWYgKGZiLT5tb2RpZmll
ciB8fCBpZ3RfaGFzX2ZiX21vZGlmaWVycyhmZCkpDQo+ICAJCWZsYWdzID0gTE9DQUxfRFJNX01P
REVfRkJfTU9ESUZJRVJTOw0KPiAgDQo+IC0JZG9fb3JfZGllKF9fa21zX2FkZGZiKGZiLT5mZCwg
ZmItPmdlbV9oYW5kbGUsDQo+IC0JCQkgICAgICBmYi0+d2lkdGgsIGZiLT5oZWlnaHQsDQo+IC0J
CQkgICAgICBmYi0+ZHJtX2Zvcm1hdCwgZmItPm1vZGlmaWVyLA0KPiAtCQkJICAgICAgZmItPnN0
cmlkZXMsIGZiLT5vZmZzZXRzLCBmYi0+bnVtX3BsYW5lcywgZmxhZ3MsDQo+IC0JCQkgICAgICAm
ZmItPmZiX2lkKSk7DQo+ICsJbWVtc2V0KGhhbmRsZXMsIGZiLT5nZW1faGFuZGxlLCBmYi0+bnVt
X3BsYW5lcyk7DQo+ICsJbWVtc2V0KG1vZGlmaWVycywgbW9kaWZpZXIsIGZiLT5udW1fcGxhbmVz
KTsNCg0KbWVtc2V0IGlzIG9ubHkgYWJsZSB0byBmaWxsIGJ5dGVzLiBUaGlzIHdvbid0IHdvcmsg
Zm9yIGxhcmdlciB2YWx1ZXMuDQoNCj4gKwlkb19vcl9kaWUoZHJtTW9kZUFkZEZCMldpdGhNb2Rp
ZmllcnMoZmItPmZkLCBmYi0+d2lkdGgsIGZiLT5oZWlnaHQsDQo+ICsJCQkJCSAgICAgZmItPmRy
bV9mb3JtYXQsIGhhbmRsZXMsDQo+ICsJCQkJCSAgICAgZmItPnN0cmlkZXMsIGZiLT5vZmZzZXRz
LA0KPiArCQkJCQkgICAgIG1vZGlmaWVycywgJmZiLT5mYl9pZCwgZmxhZ3MpKTsNCj4gIA0KPiAg
CXJldHVybiBmYi0+ZmJfaWQ7DQo+ICB9DQo+IGRpZmYgLS1naXQgYS9saWIvaW9jdGxfd3JhcHBl
cnMuYyBiL2xpYi9pb2N0bF93cmFwcGVycy5jDQo+IGluZGV4IDI4MGZkZDYyLi4wZjAwOTcxZCAx
MDA2NDQNCj4gLS0tIGEvbGliL2lvY3RsX3dyYXBwZXJzLmMNCj4gKysrIGIvbGliL2lvY3RsX3dy
YXBwZXJzLmMNCj4gQEAgLTE0NTMsMzYgKzE0NTMsMyBAQCB2b2lkIGlndF9yZXF1aXJlX2ZiX21v
ZGlmaWVycyhpbnQgZmQpDQo+ICB7DQo+ICAJaWd0X3JlcXVpcmUoaWd0X2hhc19mYl9tb2RpZmll
cnMoZmQpKTsNCj4gIH0NCj4gLQ0KPiAtaW50IF9fa21zX2FkZGZiKGludCBmZCwgdWludDMyX3Qg
aGFuZGxlLA0KPiAtCQl1aW50MzJfdCB3aWR0aCwgdWludDMyX3QgaGVpZ2h0LA0KPiAtCQl1aW50
MzJfdCBwaXhlbF9mb3JtYXQsIHVpbnQ2NF90IG1vZGlmaWVyLA0KPiAtCQl1aW50MzJfdCBzdHJp
ZGVzWzRdLCB1aW50MzJfdCBvZmZzZXRzWzRdLA0KPiAtCQlpbnQgbnVtX3BsYW5lcywgdWludDMy
X3QgZmxhZ3MsIHVpbnQzMl90ICpidWZfaWQpDQo+IC17DQo+IC0Jc3RydWN0IGRybV9tb2RlX2Zi
X2NtZDIgZjsNCj4gLQlpbnQgcmV0LCBpOw0KPiAtDQo+IC0JaWYgKGZsYWdzICYgRFJNX01PREVf
RkJfTU9ESUZJRVJTKQ0KPiAtCQlpZ3RfcmVxdWlyZV9mYl9tb2RpZmllcnMoZmQpOw0KPiAtDQo+
IC0JbWVtc2V0KCZmLCAwLCBzaXplb2YoZikpOw0KPiAtDQo+IC0JZi53aWR0aCAgPSB3aWR0aDsN
Cj4gLQlmLmhlaWdodCA9IGhlaWdodDsNCj4gLQlmLnBpeGVsX2Zvcm1hdCA9IHBpeGVsX2Zvcm1h
dDsNCj4gLQlmLmZsYWdzID0gZmxhZ3M7DQo+IC0NCj4gLQlmb3IgKGkgPSAwOyBpIDwgbnVtX3Bs
YW5lczsgaSsrKSB7DQo+IC0JCWYuaGFuZGxlc1tpXSA9IGhhbmRsZTsNCj4gLQkJZi5tb2RpZmll
cltpXSA9IG1vZGlmaWVyOw0KPiAtCQlmLnBpdGNoZXNbaV0gPSBzdHJpZGVzW2ldOw0KPiAtCQlm
Lm9mZnNldHNbaV0gPSBvZmZzZXRzW2ldOw0KPiAtCX0NCj4gLQ0KPiAtCXJldCA9IGlndF9pb2N0
bChmZCwgRFJNX0lPQ1RMX01PREVfQURERkIyLCAmZik7DQo+IC0NCj4gLQkqYnVmX2lkID0gZi5m
Yl9pZDsNCj4gLQ0KPiAtCXJldHVybiByZXQgPCAwID8gLWVycm5vIDogcmV0Ow0KPiAtfQ0KPiBk
aWZmIC0tZ2l0IGEvbGliL2lvY3RsX3dyYXBwZXJzLmggYi9saWIvaW9jdGxfd3JhcHBlcnMuaA0K
PiBpbmRleCAwMzIxMWM5Ny4uNGFmYzNlMDkgMTAwNjQ0DQo+IC0tLSBhL2xpYi9pb2N0bF93cmFw
cGVycy5oDQo+ICsrKyBiL2xpYi9pb2N0bF93cmFwcGVycy5oDQo+IEBAIC0yMDksMTcgKzIwOSw2
IEBAIHN0cnVjdCBsb2NhbF9kcm1fbW9kZV9mYl9jbWQyIHsNCj4gIGJvb2wgaWd0X2hhc19mYl9t
b2RpZmllcnMoaW50IGZkKTsNCj4gIHZvaWQgaWd0X3JlcXVpcmVfZmJfbW9kaWZpZXJzKGludCBm
ZCk7DQo+ICANCj4gLS8qKg0KPiAtICogX19rbXNfYWRkZmI6DQo+IC0gKg0KPiAtICogQ3JlYXRl
cyBhIGZyYW1lYnVmZmVyIG9iamVjdC4NCj4gLSAqLw0KPiAtaW50IF9fa21zX2FkZGZiKGludCBm
ZCwgdWludDMyX3QgaGFuZGxlLA0KPiAtCQl1aW50MzJfdCB3aWR0aCwgdWludDMyX3QgaGVpZ2h0
LA0KPiAtCQl1aW50MzJfdCBwaXhlbF9mb3JtYXQsIHVpbnQ2NF90IG1vZGlmaWVyLA0KPiAtCQl1
aW50MzJfdCBzdHJpZGVzWzRdLCB1aW50MzJfdCBvZmZzZXRzWzRdLA0KPiAtCQlpbnQgbnVtX3Bs
YW5lcywgdWludDMyX3QgZmxhZ3MsIHVpbnQzMl90ICpidWZfaWQpOw0KPiAtDQo+ICAvKioNCj4g
ICAqIHRvX3VzZXJfcG9pbnRlcjoNCj4gICAqDQo+IGRpZmYgLS1naXQgYS90ZXN0cy9rbXNfYXZh
aWxhYmxlX21vZGVzX2NyYy5jIGIvdGVzdHMva21zX2F2YWlsYWJsZV9tb2Rlc19jcmMuYw0KPiBp
bmRleCA1MGI1NTIyYS4uOWU1ZjFmZDUgMTAwNjQ0DQo+IC0tLSBhL3Rlc3RzL2ttc19hdmFpbGFi
bGVfbW9kZXNfY3JjLmMNCj4gKysrIGIvdGVzdHMva21zX2F2YWlsYWJsZV9tb2Rlc19jcmMuYw0K
PiBAQCAtMTcyLDkgKzE3MiwxMCBAQCBzdGF0aWMgYm9vbCBzZXR1cF9mYihkYXRhX3QgKmRhdGEs
IGlndF9vdXRwdXRfdCAqb3V0cHV0LCBpZ3RfcGxhbmVfdCAqcGxhbmUsDQo+ICB7DQo+ICAJZHJt
TW9kZU1vZGVJbmZvICptb2RlOw0KPiAgCXVpbnQ2NF90IHcsIGg7DQo+ICsJdWludDMyX3QgaGFu
ZGxlc1s0XSA9IHt9Ow0KPiArCXVpbnQ2NF90IG1vZGlmaWVyc1s0XSA9IHt9Ow0KPiAgCXNpZ25l
ZCByZXQsIGdlbXNpemUgPSAwOw0KPiAgCXVuc2lnbmVkIHRpbGVfd2lkdGgsIHRpbGVfaGVpZ2h0
Ow0KPiAtCWludCBudW1fcGxhbmVzID0gMTsNCj4gIAl1aW50NjRfdCB0aWxpbmc7DQo+ICAJaW50
IGJwcCA9IDA7DQo+ICAJaW50IGk7DQo+IEBAIC0yMjUsMTAgKzIyNiwxMyBAQCBzdGF0aWMgYm9v
bCBzZXR1cF9mYihkYXRhX3QgKmRhdGEsIGlndF9vdXRwdXRfdCAqb3V0cHV0LCBpZ3RfcGxhbmVf
dCAqcGxhbmUsDQo+ICANCj4gIAlpZ3RfYXNzZXJ0X2VxKHJldCwgMCk7DQo+ICANCj4gLQlyZXQg
PSBfX2ttc19hZGRmYihkYXRhLT5nZnhfZmQsIGRhdGEtPmdlbV9oYW5kbGUsIHcsIGgsDQo+IC0J
CQkgIGZvcm1hdCwgdGlsaW5nLCBkYXRhLT5mYi5zdHJpZGVzLCBkYXRhLT5mYi5vZmZzZXRzLA0K
PiAtCQkJICBudW1fcGxhbmVzLCBMT0NBTF9EUk1fTU9ERV9GQl9NT0RJRklFUlMsDQo+IC0JCQkg
ICZkYXRhLT5mYi5mYl9pZCk7DQo+ICsJbWVtc2V0KGhhbmRsZXMsIGRhdGEtPmdlbV9oYW5kbGUs
IDEpOw0KPiArCW1lbXNldChtb2RpZmllcnMsIHRpbGluZywgMSk7DQoNCkRpdHRvLg0KDQo+ICsJ
cmV0ID0gZHJtTW9kZUFkZEZCMldpdGhNb2RpZmllcnMoZGF0YS0+Z2Z4X2ZkLCB3LCBoLCBmb3Jt
YXQsDQo+ICsJCQkJCSBoYW5kbGVzLCBkYXRhLT5mYi5zdHJpZGVzLA0KPiArCQkJCQkgZGF0YS0+
ZmIub2Zmc2V0cywgbW9kaWZpZXJzLA0KPiArCQkJCQkgJmRhdGEtPmZiLmZiX2lkLA0KPiArCQkJ
CQkgTE9DQUxfRFJNX01PREVfRkJfTU9ESUZJRVJTKTsNCj4gIA0KPiAgCWlmKHJldCA8IDApIHsN
Cj4gIAkJaWd0X2luZm8oIkNyZWF0aW5nIGZiIGZvciBmb3JtYXQgJXMgZmFpbGVkLCByZXR1cm4g
Y29kZSAlZFxuIiwNCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2ttc19kcmF3X2NyYy5jIGIvdGVzdHMv
a21zX2RyYXdfY3JjLmMNCj4gaW5kZXggZWExNGRiOWEuLjUwN2U2YTdjIDEwMDY0NA0KPiAtLS0g
YS90ZXN0cy9rbXNfZHJhd19jcmMuYw0KPiArKysgYi90ZXN0cy9rbXNfZHJhd19jcmMuYw0KPiBA
QCAtMTU1LDE3ICsxNTUsMTkgQEAgc3RhdGljIHZvaWQgZ2V0X21ldGhvZF9jcmMoZW51bSBpZ3Rf
ZHJhd19tZXRob2QgbWV0aG9kLCB1aW50MzJfdCBkcm1fZm9ybWF0LA0KPiAgDQo+ICBzdGF0aWMg
Ym9vbCBmb3JtYXRfaXNfc3VwcG9ydGVkKHVpbnQzMl90IGZvcm1hdCwgdWludDY0X3QgbW9kaWZp
ZXIpDQo+ICB7DQo+IC0JdWludDMyX3QgZ2VtX2hhbmRsZSwgZmJfaWQ7DQo+ICsJdWludDMyX3Qg
Z2VtX2hhbmRsZSwgZmJfaWQsIGhhbmRsZXNbNF0gPSB7fTsNCj4gIAl1bnNpZ25lZCBpbnQgb2Zm
c2V0c1s0XSA9IHt9Ow0KPiAgCXVuc2lnbmVkIGludCBzdHJpZGVzWzRdID0ge307DQo+ICsJdWlu
dDY0X3QgbW9kaWZpZXJzWzRdID0ge307DQo+ICAJaW50IHJldDsNCj4gIA0KPiAgCWdlbV9oYW5k
bGUgPSBpZ3RfY3JlYXRlX2JvX3dpdGhfZGltZW5zaW9ucyhkcm1fZmQsIDY0LCA2NCwNCj4gIAkJ
CQkJCSAgIGZvcm1hdCwgbW9kaWZpZXIsDQo+ICAJCQkJCQkgICAwLCBOVUxMLCAmc3RyaWRlc1sw
XSwgTlVMTCk7DQo+IC0JcmV0ID0gIF9fa21zX2FkZGZiKGRybV9mZCwgZ2VtX2hhbmRsZSwgNjQs
IDY0LA0KPiAtCQkJICAgZm9ybWF0LCBtb2RpZmllciwgc3RyaWRlcywgb2Zmc2V0cywgMSwNCj4g
LQkJCSAgIExPQ0FMX0RSTV9NT0RFX0ZCX01PRElGSUVSUywgJmZiX2lkKTsNCj4gKwltZW1zZXQo
aGFuZGxlcywgZ2VtX2hhbmRsZSwgMSk7DQoNCkRpdHRvDQoNCj4gKwlyZXQgPSBkcm1Nb2RlQWRk
RkIyV2l0aE1vZGlmaWVycyhkcm1fZmQsIDY0LCA2NCwgZm9ybWF0LCBoYW5kbGVzLA0KPiArCQkJ
CQkgc3RyaWRlcywgb2Zmc2V0cywgbW9kaWZpZXJzLCAmZmJfaWQsDQo+ICsJCQkJCSBMT0NBTF9E
Uk1fTU9ERV9GQl9NT0RJRklFUlMpOw0KPiAgCWRybU1vZGVSbUZCKGRybV9mZCwgZmJfaWQpOw0K
PiAgCWdlbV9jbG9zZShkcm1fZmQsIGdlbV9oYW5kbGUpOw0KPiAgDQo+IGRpZmYgLS1naXQgYS90
ZXN0cy9wcmltZV92Z2VtLmMgYi90ZXN0cy9wcmltZV92Z2VtLmMNCj4gaW5kZXggMDllMzM3M2Iu
LjI4Njk1N2U4IDEwMDY0NA0KPiAtLS0gYS90ZXN0cy9wcmltZV92Z2VtLmMNCj4gKysrIGIvdGVz
dHMvcHJpbWVfdmdlbS5jDQo+IEBAIC03NjEsNiArNzYxLDcgQEAgc3RhdGljIHZvaWQgdGVzdF9m
bGlwKGludCBpOTE1LCBpbnQgdmdlbSwgdW5zaWduZWQgaGFuZykNCj4gIAlmb3IgKGludCBpID0g
MDsgaSA8IDI7IGkrKykgew0KPiAgCQl1aW50MzJfdCBzdHJpZGVzWzRdID0ge307DQo+ICAJCXVp
bnQzMl90IG9mZnNldHNbNF0gPSB7fTsNCj4gKwkJdWludDMyX3QgaGFuZGxlc1s0XSA9IHt9Ow0K
PiAgCQlpbnQgZmQ7DQo+ICANCj4gIAkJYm9baV0ud2lkdGggPSBtb2RlLT5oZGlzcGxheTsNCj4g
QEAgLTc3NiwxMiArNzc3LDEzIEBAIHN0YXRpYyB2b2lkIHRlc3RfZmxpcChpbnQgaTkxNSwgaW50
IHZnZW0sIHVuc2lnbmVkIGhhbmcpDQo+ICAJCXN0cmlkZXNbMF0gPSBib1tpXS5waXRjaDsNCj4g
IA0KPiAgCQkvKiBNYXkgc2tpcCBpZiBpOTE1IGhhcyBubyBkaXNwbGF5cyAqLw0KPiAtCQlpZ3Rf
cmVxdWlyZShfX2ttc19hZGRmYihpOTE1LCBoYW5kbGVbaV0sDQo+IC0JCQkJCWJvW2ldLndpZHRo
LCBib1tpXS5oZWlnaHQsDQo+IC0JCQkJCURSTV9GT1JNQVRfWFJHQjg4ODgsIEk5MTVfVElMSU5H
X05PTkUsDQo+IC0JCQkJCXN0cmlkZXMsIG9mZnNldHMsIDEsDQo+IC0JCQkJCUxPQ0FMX0RSTV9N
T0RFX0ZCX01PRElGSUVSUywNCj4gLQkJCQkJJmZiX2lkW2ldKSA9PSAwKTsNCj4gKwkJbWVtc2V0
KGhhbmRsZXMsIGhhbmRsZVtpXSwxKTsNCg0KRGl0dG8NCg0KKFN0eWxlOiBtaXNzaW5nIHNwYWNl
IGFmdGVyIGNvbW1hKQ0KDQo+ICsJCWlndF9yZXF1aXJlKGRybU1vZGVBZGRGQjJXaXRoTW9kaWZp
ZXJzKGk5MTUsIGJvW2ldLndpZHRoLCBib1tpXS5oZWlnaHQsDQo+ICsJCQkJCQkgICAgICAgRFJN
X0ZPUk1BVF9YUkdCODg4OCwNCj4gKwkJCQkJCSAgICAgICBoYW5kbGVzLCBzdHJpZGVzLCBvZmZz
ZXRzLA0KPiArCQkJCQkJICAgICAgIEk5MTVfVElMSU5HX05PTkUsICZmYl9pZFtpXSwNCj4gKwkJ
CQkJCSAgICAgICBMT0NBTF9EUk1fTU9ERV9GQl9NT0RJRklFUlMpID09IDApOw0KPiArDQo+ICAJ
CWlndF9hc3NlcnQoZmJfaWRbaV0pOw0KPiAgCX0NCj4gIA0KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBpZ3QtZGV2IG1haWxpbmcgbGlzdA0KPiBp
Z3QtZGV2QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lndC1kZXYNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
