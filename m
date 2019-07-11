Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 897AF6623B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 01:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F55B6E293;
	Thu, 11 Jul 2019 23:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92D616E293
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 23:28:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 16:28:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,480,1557212400"; 
 d="scan'208,223";a="160222077"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga008.jf.intel.com with ESMTP; 11 Jul 2019 16:28:26 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jul 2019 16:28:26 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.161]) with mapi id 14.03.0439.000;
 Thu, 11 Jul 2019 16:28:26 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "pebolle@tiscali.nl" <pebolle@tiscali.nl>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
Thread-Index: AQHVN8s6u18XhfEo0kuWcj/kjNqW06bGT1sAgAAD6QCAAADBAIAAGPCAgAAIRACAAANRAIAABuIAgAAHAoA=
Date: Thu, 11 Jul 2019 23:28:26 +0000
Message-ID: <55f4d1c242d684ca2742e8c14613d810a9ee9504.camel@intel.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
 <1562875878.2840.0.camel@HansenPartnership.com>
 <27a5b2ca8cfc79bf617387a363ea7192acc4e1f0.camel@intel.com>
 <1562876880.2840.12.camel@HansenPartnership.com>
 <1562882235.13723.1.camel@HansenPartnership.com>
 <dad073fb4b06cf0abb7ab702a9474b9c443186eb.camel@intel.com>
 <1562884722.15001.3.camel@HansenPartnership.com>
 <2c4edfabf49998eb5da3a6adcabc006eb64bfe90.camel@tiscali.nl>
In-Reply-To: <2c4edfabf49998eb5da3a6adcabc006eb64bfe90.camel@tiscali.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.133]
Content-Type: multipart/mixed;
 boundary="_002_55f4d1c242d684ca2742e8c14613d810a9ee9504camelintelcom_"
MIME-Version: 1.0
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_002_55f4d1c242d684ca2742e8c14613d810a9ee9504camelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-ID: <0BB81FDAC0A0F248B3189E827A380C2D@intel.com>
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDE5LTA3LTEyIGF0IDAxOjAzICswMjAwLCBQYXVsIEJvbGxlIHdyb3RlOg0KPiBK
YW1lcyBCb3R0b21sZXkgc2NocmVlZiBvcCBkbyAxMS0wNy0yMDE5IG9tIDE1OjM4IFstMDcwMF06
DQo+ID4gT24gVGh1LCAyMDE5LTA3LTExIGF0IDIyOjI2ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiA+IEl0IGV2ZW50dWFsbHkgY29tZXMgYmFjayBmcm9tIHNjcmVlbiBmcmVlemU/IExp
a2UgbW92aW5nIHRoZQ0KPiA+ID4gbW91c2Ugb3INCj4gPiA+IHR5cGluZyBicmluZ3MgaXQgYmFj
az8NCj4gPiANCj4gPiBObywgaXQgc2VlbXMgdG8gYmUgZnJvemVuIGZvciBhbGwgdGltZSAoYXQg
bGVhc3QgdW50aWwgSSBnb3QgYm9yZWQNCj4gPiB3YWl0aW5nLCB3aGljaCB3YXMgcHJvYmFibHkg
MjAgbWludXRlcykuICBFdmVuIGlmIEkgcmVib290IHRoZQ0KPiA+IG1hY2hpbmUsDQo+ID4gdGhl
IGN1cnJlbnQgc2NyZWVuIHN0YXRlIHN0YXlzIHVudGlsIHRoZSBzeXN0ZW0gcG93ZXJzIG9mZi4N
Cj4gDQo+IEFzIEkgbWVudGlvbmVkIGVhcmxpZXIsIGEgc3VzcGVuZC9yZXN1bWUgY3ljbGUgdW5m
cmVlemVzIHRoZSBzY3JlZW4uDQo+IA0KPiBBbmQgSSBzZWVtIHRvIHJlbWVtYmVyIHRoYXQsIGlm
IHRoZSBnbm9tZSBzY3JlZW4tbG9ja2luZyBldmVudHVhbGx5DQo+IGtpY2tzIGluLA0KPiB1bmxv
Y2tpbmcgdGhlIHNjcmVlbiBzdGlsbCB3b3JrcywgYXMgdGhlIHNjcmVlbiB0aGVuIGlzbid0IGZy
b3plbg0KPiBhbnltb3JlLg0KPiANCj4gVGhhbmtzLA0KDQpUaGFua3MgZm9yIGFsbCB0aGUgaW5m
b3JtYXRpb24gUGF1bC4NCg0KQ291bGQgdGVzdCB3aXRoIHRoZSBwYXRjaCBhdHRhY2hlZD8NCg0K
SWYgdGhlIGlzc3VlIGhhcHBlbnMgYWdhaW4gY291bGQgc2VuZCB0aGUgb3V0cHV0IG9mOg0KDQov
c3lzL2tlcm5lbC9kZWJ1Zy9kcmkvMC9lRFAtMS9pOTE1X3Bzcl9zaW5rX3N0YXR1cw0KL3N5cy9r
ZXJuZWwvZGVidWcvZHJpLzAvaTkxNV9lZHBfcHNyX3N0YXR1cw0KDQpUaGFua3Mgc28gbXVjaCBm
b3IgYWxsIHRoZSBoZWxwDQoNCj4gDQo+IA0KPiBQYXVsIEJvbGxlDQo+IA0K

--_002_55f4d1c242d684ca2742e8c14613d810a9ee9504camelintelcom_
Content-Type: text/x-patch;
	name="0001-hack-drm-i915-psr-Always-set-PSR1-training-times-to-.patch"
Content-Description: 0001-hack-drm-i915-psr-Always-set-PSR1-training-times-to-.patch
Content-Disposition: attachment;
	filename="0001-hack-drm-i915-psr-Always-set-PSR1-training-times-to-.patch";
	size=1330; creation-date="Thu, 11 Jul 2019 23:28:25 GMT";
	modification-date="Thu, 11 Jul 2019 23:28:25 GMT"
Content-ID: <625E70F7BD10A945933B96A284864956@intel.com>
Content-Transfer-Encoding: base64

RnJvbSBlZTQ5NWUyZTg3OWU3MTgxODNkMWI2NWFmMzczOTNiNTM1ZWViOTY2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiA9P1VURi04P3E/Sm9zPUMzPUE5PTIwUm9iZXJ0bz0yMGRlPTIw
U291emE/PSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkRhdGU6IFRodSwgMTEgSnVsIDIwMTkgMTY6
MTk6MTIgLTA3MDAKU3ViamVjdDogW1BBVENIXSBoYWNrOiBkcm0vaTkxNS9wc3I6IEFsd2F5cyBz
ZXQgUFNSMSB0cmFpbmluZyB0aW1lcyB0byBtYXgKTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1U
eXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04CkNvbnRlbnQtVHJhbnNmZXItRW5jb2Rpbmc6
IDhiaXQKClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bzci5jIHwgNCArKysr
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wc3Iu
YwppbmRleCA5NjM2NjNiYTBlZGYuLjgzY2EyNmUxMTliNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cHNyLmMKQEAgLTQ0NCw2ICs0NDQsNyBAQCBzdGF0aWMgdTMyIGludGVsX3BzcjFfZ2V0X3RwX3Rp
bWUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMSkKIAkJdmFsIHw9IEVEUF9QU1JfVFA0X1RJTUVfMFVTOwogCisJLyoKIAlpZiAoZGV2X3By
aXYtPnZidC5wc3IudHAxX3dha2V1cF90aW1lX3VzID09IDApCiAJCXZhbCB8PSBFRFBfUFNSX1RQ
MV9USU1FXzB1czsKIAllbHNlIGlmIChkZXZfcHJpdi0+dmJ0LnBzci50cDFfd2FrZXVwX3RpbWVf
dXMgPD0gMTAwKQpAQCAtNDYxLDYgKzQ2Miw5IEBAIHN0YXRpYyB1MzIgaW50ZWxfcHNyMV9nZXRf
dHBfdGltZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCQl2YWwgfD0gRURQX1BTUl9UUDJf
VFAzX1RJTUVfNTAwdXM7CiAJZWxzZQogCQl2YWwgfD0gRURQX1BTUl9UUDJfVFAzX1RJTUVfMjUw
MHVzOworCSovCisJdmFsIHw9IEVEUF9QU1JfVFAxX1RJTUVfMjUwMHVzOworCXZhbCB8PSBFRFBf
UFNSX1RQMl9UUDNfVElNRV8yNTAwdXM7CiAKIAlpZiAoaW50ZWxfZHBfc291cmNlX3N1cHBvcnRz
X2hicjIoaW50ZWxfZHApICYmCiAJICAgIGRybV9kcF90cHMzX3N1cHBvcnRlZChpbnRlbF9kcC0+
ZHBjZCkpCi0tIAoyLjIyLjAKCg==

--_002_55f4d1c242d684ca2742e8c14613d810a9ee9504camelintelcom_
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--_002_55f4d1c242d684ca2742e8c14613d810a9ee9504camelintelcom_--
