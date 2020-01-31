Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 798B014E676
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 01:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D616E939;
	Fri, 31 Jan 2020 00:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F6BD6E939
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 00:16:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 16:16:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,383,1574150400"; d="scan'208";a="277942991"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Jan 2020 16:16:24 -0800
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 16:16:23 -0800
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.185]) by
 ORSMSX124.amr.corp.intel.com ([169.254.2.73]) with mapi id 14.03.0439.000;
 Thu, 30 Jan 2020 16:16:23 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: Implement Wa_1606931601
Thread-Index: AQHV1vcPxbov7r8CMk2dSwUv7A2N26gEM9oA//+r3+A=
Date: Fri, 31 Jan 2020 00:16:23 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734822AB42@ORSMSX108.amr.corp.intel.com>
References: <20200129224206.10577-1-anusha.srivatsa@intel.com>
 <20200130204250.GC116423@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200130204250.GC116423@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Implement Wa_1606931601
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUm9wZXIsIE1hdHRoZXcg
RCA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEphbnVhcnkg
MzAsIDIwMjAgMTI6NDMgUE0NCj4gVG86IFNyaXZhdHNhLCBBbnVzaGEgPGFudXNoYS5zcml2YXRz
YUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBDZXJh
b2xvIFNwdXJpbywgRGFuaWVsZQ0KPiA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvdGdsOiBJbXBsZW1lbnQgV2FfMTYwNjkz
MTYwMQ0KPiANCj4gT24gV2VkLCBKYW4gMjksIDIwMjAgYXQgMDI6NDI6MDZQTSAtMDgwMCwgQW51
c2hhIFNyaXZhdHNhIHdyb3RlOg0KPiA+IERpc2FibGUgSW50ZXIgYW5kIGludHJhIFJlYWQgU3Vw
cHJlc3Npb24gKGJpdCAxNSkgYW5kIEVhcmx5IFJlYWQgYW5kDQo+ID4gU3JjIFN3YXAgKGJpdCAx
NCkgYnkgc2V0dGluZyB0aGUgY2hpY2tlbiByZWdpc3Rlci4NCj4gPg0KPiA+IEJTcGVjOiA0NjA0
NSw1Mjg5MA0KPiA+DQo+ID4gdjI6IEZvbGxvdyB0aGUgQnNwZWMgaW1wbGVtZW50YXRpb24gZm9y
IHRoZSBXQS4NCj4gPiB2MzogSGF2ZSAyIHNlcGFyYXRlIGRlZmluZXMgZm9yIGJpdCAxNCBhbmQg
MTUuDQo+ID4gLSBSZW5hbWUgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgd2l0aCBUR0xfIHByZWZpeA0K
PiANCj4gVGhlIGhhcmR3YXJlIGd1eXMgY2hhbmdlZCB0aGVpciBtaW5kIGFnYWluIGFuZCB3ZSdy
ZSBiYWNrIHRvIG9ubHkgbmVlZGluZw0KPiBiaXQgMTQgbm93LiAgVGhleSB1cGRhdGVkIHRoZSBi
c3BlYyBhbmQgdGhlIHVuZGVybHlpbmcgZGF0YWJhc2UgeWV0IGFnYWluLg0KPiA6LS8NCiDimLkN
Cg0KPiA+DQo+ID4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+
ID4gU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jIHwgNiArKysrKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICAgICB8IDIgKysNCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jDQo+ID4gaW5kZXggNWE3ZGIyNzlmNzAyLi4xZjg0Y2Q1OTVmODggMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gPiBAQCAtNTkz
LDYgKzU5MywxMiBAQCBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0
DQo+IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLA0KPiA+ICAJd2FfYWRkKHdhbCwgRkZfTU9ERTIs
IEZGX01PREUyX1REU19USU1FUl9NQVNLLCB2YWwsDQo+ID4gIAkgICAgICAgSVNfVEdMX1JFVklE
KGVuZ2luZS0+aTkxNSwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApID8gMCA6DQo+ID4gIAkJ
CSAgICBGRl9NT0RFMl9URFNfVElNRVJfTUFTSyk7DQo+ID4gKw0KPiA+ICsJLyogV2FfMTYwNjkz
MTYwMTp0Z2wgKi8NCj4gPiArCVdBX1NFVF9CSVRfTUFTS0VEKEdFTjdfUk9XX0NISUNLRU4yLA0K
PiA+ICsJCQkgIEdFTjEyX0VBUkxZX1JFQURfU1JDMF9ESVNBQkxFIHwNCj4gPiArDQo+IEdFTjEy
X0lOVEVSX0lOVFJBX1JFQURfU1VQUFJFU1NJT05fRElTQUJMRSk7DQo+IA0KPiBJIHRoaW5rIERh
bmllbGUgYWxyZWFkeSBtZW50aW9uZWQgdGhpcyBvbiB0aGUgb3RoZXIgZGlzY3Vzc2lvbiwgYnV0
DQo+IFJPV19DSElDS0VOMiBpc24ndCBwYXJ0IG9mIHRoZSBjb250ZXh0IGltYWdlIG9uIGdlbjEy
IChzZWUgYnNwZWMgcGFnZQ0KPiA0NjI1NSkuICBUaGlzIGlzIGEgY2hhbmdlIGZyb20gSUNMIHdo
ZXJlIGl0ICp3YXMqIHBhcnQgb2YgdGhlIGNvbnRleHQgKHNlZQ0KPiBic3BlYyBwYWdlIDE4OTA3
KSwgc28gZXZlbiB0aG91Z2ggd2UgaGFuZGxlZCB0aGlzIHJlZ2lzdGVyIGluIHRoZQ0KPiBjdHhf
d29ya2Fyb3VuZHNfaW5pdCBmb3IgSUNMLCB0aGF0J3Mgbm90IHRoZSBhcHByb3ByaWF0ZSBwbGFj
ZSB0byBwdXQgaXQgZm9yDQo+IFRHTC4NCkFncmVlZC4gDQoNCj4gU2luY2UgdGhpcyBpc24ndCBh
IGNvbnRleHQgd29ya2Fyb3VuZCwgd2UgbmVlZCB0byBkZXRlcm1pbmUgd2hldGhlciBpdCdzIGEN
Cj4gZ2VuZXJhbCBHVCB3b3JrYXJvdW5kICh3aGljaCB3b3VsZCBiZSBpbml0aWFsaXplZCBpbg0K
PiB0Z2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdCkgb3IgYW4gZW5naW5lIHdvcmthcm91bmQgKHdoaWNo
IHdvdWxkIGJlDQo+IGluaXRpYWxpemVkIGluIHtyY3MseGNzfV9lbmdpbmVfd2FfaW5pdC4gIElu
IHRoaXMgY2FzZSB0aGUgcmVnaXN0ZXIgd2UncmUNCj4gbW9kaWZ5aW5nIGlzIDB4ZTQ5YzsgYWNj
b3JkaW5nIHRvIGJzcGVjIHBhZ2UgNTIwNzggdGhpcyBmYWxscyBpbiBvbmUgb2YgdGhlDQo+IGZv
cmNld2FrZSByYW5nZXMgbGlzdGVkIHVuZGVyIHRoZSByZW5kZXIgZW5naW5lIGNvbHVtbiAoMEUw
MDAtMEU4RkYpLiANCg0KVGhlIHJlZ2lzdGVyIHdlIGFyZSBzZXR0aW5nIGlzIDB4ZTRmNC4gVGhp
cyBjb21lcyB1bmRlciBSZW5kZXIgZW5naW5lLiBBZGRpbmcgdGhpcyBjaGFuZ2UgdG8gcmNzX2Vu
Z2luZV93YV9pbml0KCkuDQoNCj4gU28gSQ0KPiBiZWxpZXZlIGluIHRoaXMgY2FzZSB0aGF0IG1l
YW5zIHdlIHdhbnQgdG8gdXBkYXRlDQo+IHJjc19lbmdpbmVfd2FfaW5pdCgpIHdpdGggdGhpcyB3
b3JrYXJvdW5kIC0tLSB0aGF0IGVuc3VyZXMgdGhhdCB0aGUNCj4gd29ya2Fyb3VuZCB3aWxsIGJl
IHJlLWFwcGxpZWQgYW55IHRpbWUgdGhlIGVuZ2luZSBpcyByZXNldCAoZXZlbiBpZiBpdCdzIG5v
dCBhDQo+IGZ1bGwtR1BVIHJlc2V0KS4NClllcy4gQWRkaW5nIHRoaXMgdG8gcmNzX2VuZ2luZV93
YV9pbml0KCkuDQoNCg0KQW51c2hhIA0KPiANCj4gTWF0dA0KPiANCj4gPiArDQo+ID4gIH0NCj4g
Pg0KPiA+ICBzdGF0aWMgdm9pZA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4
IDRjNzJiOGFjMGYyZS4uNzBlYWQ4MDljNzA2DQo+ID4gMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgNCj4gPiBAQCAtOTE0OSw2ICs5MTQ5LDggQEAgZW51bSB7DQo+ID4gICNkZWZp
bmUgICBET1BfQ0xPQ0tfR0FUSU5HX0RJU0FCTEUJKDEgPDwgMCkNCj4gPiAgI2RlZmluZSAgIFBV
U0hfQ09OU1RBTlRfREVSRUZfRElTQUJMRQkoMSA8PCA4KQ0KPiA+ICAjZGVmaW5lICAgR0VOMTFf
VERMX0NMT0NLX0dBVElOR19GSVhfRElTQUJMRQkoMSA8PCAxKQ0KPiA+ICsjZGVmaW5lICAgR0VO
MTJfRUFSTFlfUkVBRF9TUkMwX0RJU0FCTEUJCSgxIDw8IDE0KQ0KPiA+ICsjZGVmaW5lICAgR0VO
MTJfSU5URVJfSU5UUkFfUkVBRF9TVVBQUkVTU0lPTl9ESVNBQkxFCSgxIDw8DQo+IDE1KQ0KPiA+
DQo+ID4gICNkZWZpbmUgSFNXX1JPV19DSElDS0VOMwkJX01NSU8oMHhlNDljKQ0KPiA+ICAjZGVm
aW5lICBIU1dfUk9XX0NISUNLRU4zX0wzX0dMT0JBTF9BVE9NSUNTX0RJU0FCTEUgICAgKDEgPDwg
NikNCj4gPiAtLQ0KPiA+IDIuMjUuMA0KPiA+DQo+IA0KPiAtLQ0KPiBNYXR0IFJvcGVyDQo+IEdy
YXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyDQo+IFZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQN
Cj4gSW50ZWwgQ29ycG9yYXRpb24NCj4gKDkxNikgMzU2LTI3OTUNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
