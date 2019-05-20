Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5585D2386F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 15:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C2B0892B8;
	Mon, 20 May 2019 13:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6BA9892B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 13:42:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 06:42:37 -0700
X-ExtLoop1: 1
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by orsmga002.jf.intel.com with ESMTP; 20 May 2019 06:42:36 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.166]) by
 IRSMSX103.ger.corp.intel.com ([169.254.3.133]) with mapi id 14.03.0415.000;
 Mon, 20 May 2019 14:42:35 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] Revert "ICL HACK: Disable ACPI idle driver"
Thread-Index: AQHVDAsfoaJeTxXi+E6lOqTxs8OLH6ZvzsEAgAQ8s6A=
Date: Mon, 20 May 2019 13:42:35 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D0766EF943@IRSMSX106.ger.corp.intel.com>
References: <1558026716-26053-1-git-send-email-anshuman.gupta@intel.com>
 <20190517215930.GA25107@aswarup-desk>
In-Reply-To: <20190517215930.GA25107@aswarup-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjQ5ZjYxODItMmY0NC00ZWEzLWFiOWEtNjI5NzJkN2JlNWZjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicldaUWx4Y0NwNXpqSmZocUs2ZWFlWXNhYzVjc245ZWcyZTlpXC95RmdGNVwvamlCV2xobGMrQWh3TmplQlc1Zld6In0=
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Revert "ICL HACK: Disable ACPI idle driver"
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
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Syrjala,
 Ville" <ville.syrjala@intel.com>, "Peres, Martin" <martin.peres@intel.com>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SEksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCBb
bWFpbHRvOmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxm
IE9mDQo+IEFkaXR5YSBTd2FydXANCj4gU2VudDogbGF1YW50YWkgMTguIHRvdWtva3V1dGEgMjAx
OSAxLjAwDQo+IFRvOiBHdXB0YSwgQW5zaHVtYW4gPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4N
Cj4gQ2M6IFZldHRlciwgRGFuaWVsIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT47IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IFN5cmphbGEsIFZpbGxlIDx2aWxsZS5zeXJqYWxh
QGludGVsLmNvbT47IFBlcmVzLCBNYXJ0aW4gPG1hcnRpbi5wZXJlc0BpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIFJldmVydCAiSUNMIEhBQ0s6IERpc2FibGUg
QUNQSSBpZGxlIGRyaXZlciINCj4gDQo+IFRoZSBwYXRjaCBsb29rcyBmaW5lIHRvIG1lLg0KPiBP
biBUaHUsIE1heSAxNiwgMjAxOSBhdCAxMDo0MTo1NlBNICswNTMwLCBBbnNodW1hbiBHdXB0YSB3
cm90ZToNCj4gPiBUaGlzIHJldmVydHMgY29tbWl0IDk5YjY5ZGI1NzU0NGVjN2VkNDI3NjA3ZjFh
MmExODU4YTdkNDNiNjENCj4gPiBDb3JlLWZvci1DSTpJQ0xfb25seSAgRGlzYWJsZSBBQ1BJIGlk
bGUgZHJpdmVyLg0KPiA+DQo+ID4gVGhpcyBoYWNrIGhhcyBiZWVuIHByb3ZpZGVkIGNvbnNpZGVy
aW5nIHRoZSBCdWcgYXNzZXNzbWVudCB0aGF0IEFDUEkNCj4gPiBpZGxlIGRyaXZlciBwYWdlIGZh
dWx0IGNhdXNlcyBiZWxvdyBidWcuDQo+ID4gRkRPIGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTEwODg0MA0KPiA+IEJ1dCB0aGlzIGJ1ZyBpcyBzdGlsbCByZXBy
b2R1Y2libGUgYWZ0ZXIgZGlzYWJsaW5nIEFDUEkgaWRsZSBkcml2ZXIuDQo+ID4NCj4gPiBJdCBs
b29rcyAicmN1X3ByZWVtcHQgc2VsZi1kZXRlY3RlZCBzdGFsbCBvbiBDUFUiIGNhdXNlcyB0byBo
dW5nDQo+ID4ga3dvcmtlciBhbmQgZm9sbG93ZWQgYnkgcGFuaWMgcmVzdWx0ZWQgdGhpcyBidWcu
DQo+ID4NCj4gPiBIZW5jZSBpdCBtYWtlIHNlbnNlIHRvIHJldmVydCB0aGlzIHBhdGNoLg0KPiA+
DQo+ID4gQ2M6IG1hcnRpbi5wZXJlc0BpbnRlbC5jb20NCj4gPiBDYzogZGFuaWVsLnZldHRlckBp
bnRlbC5jb20NCj4gPiBDYzogdmlsbGUuc3lyamFsYUBpbnRlbC5jb20NCj4gDQo+IFJldmlld2Vk
LWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4NCkFyZSB3ZSBub3cg
b2sgdG8gbWVyZ2UgdGhpcyBvcj8gQ2hyaXMsIFZpbGxlPyANCg0KPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0K
PiA+ICBkcml2ZXJzL2FjcGkvcHJvY2Vzc29yX2RyaXZlci5jIHwgMTggKy0tLS0tLS0tLS0tLS0t
LS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTcgZGVsZXRpb25zKC0p
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY3BpL3Byb2Nlc3Nvcl9kcml2ZXIuYw0K
PiA+IGIvZHJpdmVycy9hY3BpL3Byb2Nlc3Nvcl9kcml2ZXIuYyBpbmRleCBlZTg0MmEyZi4uOWQ2
YWZmMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2FjcGkvcHJvY2Vzc29yX2RyaXZlci5jDQo+
ID4gKysrIGIvZHJpdmVycy9hY3BpL3Byb2Nlc3Nvcl9kcml2ZXIuYw0KPiA+IEBAIC0zNSwxMiAr
MzUsNiBAQA0KPiA+DQo+ID4gICNpbmNsdWRlIDxhY3BpL3Byb2Nlc3Nvci5oPg0KPiA+DQo+ID4g
LS8qIE9ubHkgZm9yIENvcmUtZm9yLUNJIHNvIGRvbid0IHdhbnQgaWE2NCB0byBmYWlsIGNvbXBp
bGF0aW9uLiovDQo+ID4gLSNpZmRlZiBDT05GSUdfWDg2IC0jaW5jbHVkZSA8YXNtL2NwdV9kZXZp
Y2VfaWQuaD4gLSNpbmNsdWRlDQo+ID4gPGFzbS9pbnRlbC1mYW1pbHkuaD4gLSNlbmRpZg0KPiA+
IC0NCj4gPiAgI2luY2x1ZGUgImludGVybmFsLmgiDQo+ID4NCj4gPiAgI2RlZmluZSBBQ1BJX1BS
T0NFU1NPUl9OT1RJRllfUEVSRk9STUFOQ0UgMHg4MCBAQCAtNjQsMTMgKzU4LDYgQEANCj4gPiBz
dGF0aWMgY29uc3Qgc3RydWN0IGFjcGlfZGV2aWNlX2lkIHByb2Nlc3Nvcl9kZXZpY2VfaWRzW10g
PSB7ICB9Ow0KPiA+IE1PRFVMRV9ERVZJQ0VfVEFCTEUoYWNwaSwgcHJvY2Vzc29yX2RldmljZV9p
ZHMpOw0KPiA+DQo+ID4gLSNkZWZpbmUgSUNQVShtb2RlbCkJeyBYODZfVkVORE9SX0lOVEVMLCA2
LCBtb2RlbCwgWDg2X0ZFQVRVUkVfQU5ZLCB9DQo+ID4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgeDg2
X2NwdV9pZCBpbnRlbF9jcHVfaWRzW10gPSB7DQo+ID4gLQlJQ1BVKElOVEVMX0ZBTTZfSUNFTEFL
RV9NT0JJTEUpLAkvKiBJQ0wgKi8NCj4gPiAtCXt9DQo+ID4gLX07DQo+ID4gLU1PRFVMRV9ERVZJ
Q0VfVEFCTEUoeDg2Y3B1LCBpbnRlbF9jcHVfaWRzKTsNCj4gPiAtDQo+ID4gIHN0YXRpYyBzdHJ1
Y3QgZGV2aWNlX2RyaXZlciBhY3BpX3Byb2Nlc3Nvcl9kcml2ZXIgPSB7DQo+ID4gIAkubmFtZSA9
ICJwcm9jZXNzb3IiLA0KPiA+ICAJLmJ1cyA9ICZjcHVfc3Vic3lzLA0KPiA+IEBAIC0yMzksNyAr
MjI2LDYgQEAgc3RhdGljIGlubGluZSB2b2lkIGFjcGlfcHNzX3BlcmZfZXhpdChzdHJ1Y3QNCj4g
PiBhY3BpX3Byb2Nlc3NvciAqcHIsICBzdGF0aWMgaW50IF9fYWNwaV9wcm9jZXNzb3Jfc3RhcnQo
c3RydWN0DQo+ID4gYWNwaV9kZXZpY2UgKmRldmljZSkgIHsNCj4gPiAgCXN0cnVjdCBhY3BpX3By
b2Nlc3NvciAqcHIgPSBhY3BpX2RyaXZlcl9kYXRhKGRldmljZSk7DQo+ID4gLQljb25zdCBzdHJ1
Y3QgeDg2X2NwdV9pZCAqaWQ7DQo+ID4gIAlhY3BpX3N0YXR1cyBzdGF0dXM7DQo+ID4gIAlpbnQg
cmVzdWx0ID0gMDsNCj4gPg0KPiA+IEBAIC0yNTMsOSArMjM5LDcgQEAgc3RhdGljIGludCBfX2Fj
cGlfcHJvY2Vzc29yX3N0YXJ0KHN0cnVjdCBhY3BpX2RldmljZQ0KPiAqZGV2aWNlKQ0KPiA+ICAJ
aWYgKHJlc3VsdCAmJiAhSVNfRU5BQkxFRChDT05GSUdfQUNQSV9DUFVfRlJFUV9QU1MpKQ0KPiA+
ICAJCWRldl9kYmcoJmRldmljZS0+ZGV2LCAiQ1BQQyBkYXRhIGludmFsaWQgb3Igbm90IHByZXNl
bnRcbiIpOw0KPiA+DQo+ID4gLQlpZCA9IHg4Nl9tYXRjaF9jcHUoaW50ZWxfY3B1X2lkcyk7DQo+
ID4gLQlpZiAoIWlkICYmICghY3B1aWRsZV9nZXRfZHJpdmVyKCkgfHwgY3B1aWRsZV9nZXRfZHJp
dmVyKCkgPT0NCj4gPiAtCQkmYWNwaV9pZGxlX2RyaXZlcikpDQo+ID4gKwlpZiAoIWNwdWlkbGVf
Z2V0X2RyaXZlcigpIHx8IGNwdWlkbGVfZ2V0X2RyaXZlcigpID09DQo+ID4gKyZhY3BpX2lkbGVf
ZHJpdmVyKQ0KPiA+ICAJCWFjcGlfcHJvY2Vzc29yX3Bvd2VyX2luaXQocHIpOw0KPiA+DQo+ID4g
IAlyZXN1bHQgPSBhY3BpX3Bzc19wZXJmX2luaXQocHIsIGRldmljZSk7DQo+ID4gLS0NCj4gPiAy
LjcuNA0KPiA+DQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
