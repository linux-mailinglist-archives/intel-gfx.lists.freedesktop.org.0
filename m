Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE5C156881
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 04:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FC96E431;
	Sun,  9 Feb 2020 03:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 637BE6E423;
 Sun,  9 Feb 2020 03:35:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Feb 2020 19:34:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,419,1574150400"; d="scan'208";a="265473127"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by fmsmga002.fm.intel.com with ESMTP; 08 Feb 2020 19:34:58 -0800
Received: from irsmsx606.ger.corp.intel.com (163.33.146.139) by
 IRSMSX107.ger.corp.intel.com (163.33.3.99) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 9 Feb 2020 03:34:57 +0000
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 9 Feb 2020 03:34:57 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Sun, 9 Feb 2020 03:34:56 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 04/17] drm/i915/dp: Add writing of DP SDPs (Secondary
 Data Packet)
Thread-Index: AQHV3D6iuvVfPf6Bq0+CAEzgscNXeagSO02A
Date: Sun, 9 Feb 2020 03:34:56 +0000
Message-ID: <e22a59534e1bd395c57e6d3eb88eb550312bb81b.camel@intel.com>
References: <20200203232014.906651-1-gwan-gyeong.mun@intel.com>
 <20200203232014.906651-5-gwan-gyeong.mun@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F823DCF97@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F823DCF97@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.14.133]
Content-ID: <A8C47D66C54C7648BF8A98398B8DBFFA@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 04/17] drm/i915/dp: Add writing of DP
 SDPs (Secondary Data Packet)
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
Cc: "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTAyLTA1IGF0IDIxOjM5ICswNTMwLCBTaGFua2FyLCBVbWEgd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBkcmktZGV2ZWwgPGRyaS1k
ZXZlbC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgR3dh
bi0NCj4gPiBneWVvbmcgTXVuDQo+ID4gU2VudDogVHVlc2RheSwgRmVicnVhcnkgNCwgMjAyMCA0
OjUwIEFNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzog
bGludXgtZmJkZXZAdmdlci5rZXJuZWwub3JnOyBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+ID4gU3ViamVjdDogW1BBVENIIHYzIDA0LzE3XSBkcm0vaTkxNS9kcDogQWRkIHdyaXRp
bmcgb2YgRFAgU0RQcw0KPiA+IChTZWNvbmRhcnkgRGF0YQ0KPiA+IFBhY2tldCkNCj4gDQo+IERy
b3AgdGhpbmdzIGluICgpLCBub3QgbmVlZGVkLg0KPiANCj4gPiBJdCBhZGRzIHJvdXRpbmVzIHRo
YXQgd3JpdGUgRFAgVlNDIFNEUCBhbmQgRFAgSERSIE1ldGFkYXRhDQo+ID4gSW5mb2ZyYW1lIFNE
UC4NCj4gPiBJbiBvcmRlciB0byBwYWNrIERQIFZTQyBTRFAsIGl0IGFkZHMgaW50ZWxfZHBfdnNj
X3NkcF9wYWNrKCkNCj4gPiBmdW5jdGlvbi4NCj4gPiBJdCBmb2xsb3dzIERQIDEuNGEgc3BlYy4g
W1RhYmxlIDItMTE2OiBWU0MgU0RQIEhlYWRlciBCeXRlc10gYW5kDQo+ID4gW1RhYmxlIDItMTE3
OiBWU0MNCj4gPiBTRFAgUGF5bG9hZCBmb3IgREIxNiB0aHJvdWdoIERCMThdDQo+ID4gDQo+ID4g
SW4gb3JkZXIgdG8gcGFjayBEUCBIRFIgTWV0YWRhdGEgSW5mb2ZyYW1lIFNEUCwgaXQgYWRkcw0K
PiA+IGludGVsX2RwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVfc2RwX3BhY2soKSBmdW5jdGlvbi4N
Cj4gPiBBbmQgaXQgZm9sbG93cyBEUCAxLjRhIHNwZWMuDQo+ID4gKFtUYWJsZSAyLTEyNTogSU5G
T0ZSQU1FIFNEUCB2MS4yIEhlYWRlciBCeXRlc10gYW5kIFtUYWJsZSAyLTEyNjoNCj4gPiBJTkZP
RlJBTUUNCj4gPiBTRFAgdjEuMiBQYXlsb2FkIERhdGEgQnl0ZXMgLSBEQjAgdGhyb3VnaCBEQjMx
XSkgYW5kIENUQS04NjEtRw0KPiA+IHNwZWMuIFtUYWJsZS00Mg0KPiA+IER5bmFtaWMgUmFuZ2Ug
YW5kIE1hc3RlcmluZyBJbmZvRnJhbWVdLg0KPiA+IA0KPiA+IEEgbWFjaGFuaXNtIGFuZCBhIG5h
bWluZyBydWxlIG9mIGludGVsX2RwX3NldF9pbmZvZnJhbWVzKCkgZnVuY3Rpb24NCj4gPiByZWZl
cmVuY2VzDQo+IA0KPiBUeXBvIGluIG1lY2hhbmlzbS4NCj4gDQo+ID4gaW50ZWxfZW5jb2Rlci0+
c2V0X2luZm9mcmFtZXMoKSBvZiBpbnRlbF9oZG1pLmMgLg0KPiA+IFZTQyBTRFAgaXMgdXNlZCBm
b3IgUFNSIGFuZCBQaXhlbCBFbmNvZGluZyBhbmQgQ29sb3JpbWV0cnkgRm9ybWF0cw0KPiA+IGNh
c2VzLg0KPiA+IEJlY2F1c2UgUFNSIHJvdXRpbmUgaGFzIGl0cyBvd24gcm91dGluZSBvZiB3cml0
aW5nIGEgVlNDIFNEUCwgd2hlbg0KPiA+IHRoZSBQU1IgaXMNCj4gPiBlbmFibGVkLCBpbnRlbF9k
cF9zZXRfaW5mb2ZyYW1lcygpIGRvZXMgbm90IHdyaXRlIGEgVlNDIFNEUC4NCj4gPiANCj4gPiB2
MzoNCj4gPiAgIC0gRXhwbGljaXRseSBkaXNhYmxlIHVudXNlZCBESVBzIChBVkksIEdDUCwgVlMs
IFNQRCwgRFJNLiBUaGV5DQo+ID4gd2lsbCBiZQ0KPiA+ICAgICB1c2VkIGZvciBIRE1JKSwgd2hl
biBpbnRlbF9kcF9zZXRfaW5mb2ZyYW1lcygpIGZ1bmN0aW9uIHdpbGwgYmUNCj4gPiBjYWxsZWQu
DQo+ID4gICAtIFJlcGxhY2UgYSBzdHJ1Y3R1cmUgbmFtZSB0byBkcm1fZHBfdnNjX3NkcCBmcm9t
DQo+ID4gaW50ZWxfZHBfdnNjX3NkcC4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5
ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDE5NA0KPiA+ICsrKysrKysrKysr
KysrKysrKysrKysrKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmggfCAgIDMgKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE5NyBpbnNlcnRpb25zKCspDQo+ID4g
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5k
ZXggYjI2NWI1YzU5OWYyLi5kZDdlNTU4ODAwMWUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gQEAgLTQ3MzEsNiArNDczMSwyMDAgQEAgaW50
ZWxfZHBfbmVlZHNfdnNjX3NkcChjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+
ID4gKmNydGNfc3RhdGUsDQo+ID4gIAlyZXR1cm4gZmFsc2U7DQo+ID4gIH0NCj4gPiANCj4gPiAr
c3RhdGljIHNzaXplX3QgaW50ZWxfZHBfdnNjX3NkcF9wYWNrKGNvbnN0IHN0cnVjdCBkcm1fZHBf
dnNjX3NkcA0KPiA+ICp2c2MsDQo+ID4gKwkJCQkgICAgIHN0cnVjdCBkcF9zZHAgKnNkcCwgc2l6
ZV90IHNpemUpIHsNCj4gPiArCXNpemVfdCBsZW5ndGggPSBzaXplb2Yoc3RydWN0IGRwX3NkcCk7
DQo+ID4gKw0KPiA+ICsJaWYgKHNpemUgPCBsZW5ndGgpDQo+ID4gKwkJcmV0dXJuIC1FTk9TUEM7
DQo+ID4gKw0KPiA+ICsJbWVtc2V0KHNkcCwgMCwgc2l6ZSk7DQo+ID4gKw0KPiA+ICsJLyoNCj4g
PiArCSAqIFByZXBhcmUgVlNDIEhlYWRlciBmb3IgU1UgYXMgcGVyIERQIDEuNGEgc3BlYywgVGFi
bGUgMi0xMTkNCj4gPiArCSAqIFZTQyBTRFAgSGVhZGVyIEJ5dGVzDQo+ID4gKwkgKi8NCj4gPiAr
CXNkcC0+c2RwX2hlYWRlci5IQjAgPSAwOyAvKiBTZWNvbmRhcnktRGF0YSBQYWNrZXQgSUQgPSAw
ICovDQo+ID4gKwlzZHAtPnNkcF9oZWFkZXIuSEIxID0gdnNjLT5zZHBfdHlwZTsgLyogU2Vjb25k
YXJ5LWRhdGEgUGFja2V0DQo+ID4gVHlwZSAqLw0KPiA+ICsJc2RwLT5zZHBfaGVhZGVyLkhCMiA9
IHZzYy0+cmV2aXNpb247IC8qIFJldmlzaW9uIE51bWJlciAqLw0KPiA+ICsJc2RwLT5zZHBfaGVh
ZGVyLkhCMyA9IHZzYy0+bGVuZ3RoOyAvKiBOdW1iZXIgb2YgVmFsaWQgRGF0YQ0KPiA+IEJ5dGVz
ICovDQo+ID4gKw0KPiA+ICsJLyogVlNDIFNEUCBQYXlsb2FkIGZvciBEQjE2IHRocm91Z2ggREIx
OCAqLw0KPiA+ICsJLyogUGl4ZWwgRW5jb2RpbmcgYW5kIENvbG9yaW1ldHJ5IEZvcm1hdHMgICov
DQo+ID4gKwlzZHAtPmRiWzE2XSA9ICh2c2MtPmNvbG9yc3BhY2UgJiAweGYpIDw8IDQ7IC8qIERC
MTZbNzo0XSAqLw0KPiA+ICsJc2RwLT5kYlsxNl0gfD0gdnNjLT5jb2xvcmltZXRyeSAmIDB4Zjsg
LyogREIxNlszOjBdICovDQo+ID4gKw0KPiA+ICsJc3dpdGNoICh2c2MtPmJwYykgew0KPiA+ICsJ
Y2FzZSA4Og0KPiA+ICsJCXNkcC0+ZGJbMTddID0gMHgxOyAvKiBEQjE3WzM6MF0gKi8NCj4gPiAr
CQlicmVhazsNCj4gPiArCWNhc2UgMTA6DQo+ID4gKwkJc2RwLT5kYlsxN10gPSAweDI7DQo+ID4g
KwkJYnJlYWs7DQo+ID4gKwljYXNlIDEyOg0KPiA+ICsJCXNkcC0+ZGJbMTddID0gMHgzOw0KPiA+
ICsJCWJyZWFrOw0KPiA+ICsJY2FzZSAxNjoNCj4gPiArCQlzZHAtPmRiWzE3XSA9IDB4NDsNCj4g
PiArCQlicmVhazsNCj4gPiArCWRlZmF1bHQ6DQo+ID4gKwkJTUlTU0lOR19DQVNFKHZzYy0+YnBj
KTsNCj4gDQo+IDZicGMgaXMgbm90IGhhbmRsZWQgaGVyZSwgYWRkIHRoYXQgYXMgd2VsbC4NCj4g
DQpZZXMsIEkgbWlzc2VkIDZicGMgY2FzZSwgSSdsbCB1cGRhdGUgaXQuDQo+ID4gKwkJYnJlYWs7
DQo+ID4gKwl9DQo+ID4gKwkvKiBEeW5hbWljIFJhbmdlIGFuZCBDb21wb25lbnQgQml0IERlcHRo
ICovDQo+ID4gKwlpZiAodnNjLT5keW5hbWljX3JhbmdlID09IERQX0RZTkFNSUNfUkFOR0VfQ1RB
KQ0KPiA+ICsJCXNkcC0+ZGJbMTddIHw9IDB4ODA7ICAvKiBEQjE3WzddICovDQo+ID4gKw0KPiA+
ICsJLyogQ29udGVudCBUeXBlICovDQo+ID4gKwlzZHAtPmRiWzE4XSA9IHZzYy0+Y29udGVudF90
eXBlICYgMHg3Ow0KPiA+ICsNCj4gPiArCXJldHVybiBsZW5ndGg7DQo+ID4gK30NCj4gPiArDQo+
ID4gK3N0YXRpYyBzc2l6ZV90DQo+ID4gK2ludGVsX2RwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVf
c2RwX3BhY2soY29uc3Qgc3RydWN0DQo+ID4gaGRtaV9kcm1faW5mb2ZyYW1lDQo+ID4gKmRybV9p
bmZvZnJhbWUsDQo+ID4gKwkJCQkJIHN0cnVjdCBkcF9zZHAgKnNkcCwNCj4gPiArCQkJCQkgc2l6
ZV90IHNpemUpDQo+ID4gK3sNCj4gPiArCXNpemVfdCBsZW5ndGggPSBzaXplb2Yoc3RydWN0IGRw
X3NkcCk7DQo+ID4gKwljb25zdCBpbnQgaW5mb2ZyYW1lX3NpemUgPSBIRE1JX0lORk9GUkFNRV9I
RUFERVJfU0laRSArDQo+ID4gSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkU7DQo+ID4gKwl1bnNpZ25l
ZCBjaGFyIGJ1ZltIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRSArDQo+ID4gSERNSV9EUk1fSU5G
T0ZSQU1FX1NJWkVdOw0KPiA+ICsJc3NpemVfdCBsZW47DQo+ID4gKw0KPiA+ICsJaWYgKHNpemUg
PCBsZW5ndGgpDQo+ID4gKwkJcmV0dXJuIC1FTk9TUEM7DQo+ID4gKw0KPiA+ICsJbWVtc2V0KHNk
cCwgMCwgc2l6ZSk7DQo+ID4gKw0KPiA+ICsJbGVuID0gaGRtaV9kcm1faW5mb2ZyYW1lX3BhY2tf
b25seShkcm1faW5mb2ZyYW1lLCBidWYsDQo+ID4gc2l6ZW9mKGJ1ZikpOw0KPiA+ICsJaWYgKGxl
biA8IDApIHsNCj4gPiArCQlEUk1fREVCVUdfS01TKCJidWZmZXIgc2l6ZSBpcyBzbWFsbGVyIHRo
YW4gaGRyIG1ldGFkYXRhDQo+ID4gaW5mb2ZyYW1lXG4iKTsNCj4gPiArCQlyZXR1cm4gLUVOT1NQ
QzsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlpZiAobGVuICE9IGluZm9mcmFtZV9zaXplKSB7DQo+
ID4gKwkJRFJNX0RFQlVHX0tNUygid3Jvbmcgc3RhdGljIGhkciBtZXRhZGF0YSBzaXplXG4iKTsN
Cj4gPiArCQlyZXR1cm4gLUVOT1NQQzsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwkvKg0KPiA+ICsJ
ICogU2V0IHVwIHRoZSBpbmZvZnJhbWUgc2RwIHBhY2tldCBmb3IgSERSIHN0YXRpYyBtZXRhZGF0
YS4NCj4gPiArCSAqIFByZXBhcmUgVlNDIEhlYWRlciBmb3IgU1UgYXMgcGVyIERQIDEuNGEgc3Bl
YywNCj4gPiArCSAqIFRhYmxlIDItMTAwIGFuZCBUYWJsZSAyLTEwMQ0KPiA+ICsJICovDQo+ID4g
Kw0KPiA+ICsJLyogU2Vjb25kYXJ5LURhdGEgUGFja2V0IElELCAwMGggZm9yIG5vbi1BdWRpbyBJ
TkZPRlJBTUUgKi8NCj4gPiArCXNkcC0+c2RwX2hlYWRlci5IQjAgPSAwOw0KPiA+ICsJLyoNCj4g
PiArCSAqIFBhY2tldCBUeXBlIDgwaCArIE5vbi1hdWRpbyBJTkZPRlJBTUUgVHlwZSB2YWx1ZQ0K
PiA+ICsJICogSERNSV9JTkZPRlJBTUVfVFlQRV9EUk06IDB4ODcNCj4gPiArCSAqIC0gODBoICsg
Tm9uLWF1ZGlvIElORk9GUkFNRSBUeXBlIHZhbHVlDQo+ID4gKwkgKiAtIEluZm9GcmFtZSBUeXBl
OiAweDA3DQo+ID4gKwkgKiAgICBbQ1RBLTg2MS1HIFRhYmxlLTQyIER5bmFtaWMgUmFuZ2UgYW5k
IE1hc3RlcmluZw0KPiA+IEluZm9GcmFtZV0NCj4gPiArCSAqLw0KPiA+ICsJc2RwLT5zZHBfaGVh
ZGVyLkhCMSA9IGRybV9pbmZvZnJhbWUtPnR5cGU7DQo+ID4gKwkvKg0KPiA+ICsJICogTGVhc3Qg
U2lnbmlmaWNhbnQgRWlnaHQgQml0cyBvZiAoRGF0YSBCeXRlIENvdW50IOKAkyAxKQ0KPiA+ICsJ
ICogaW5mb2ZyYW1lX3NpemUgLSAxDQo+ID4gKwkgKi8NCj4gPiArCXNkcC0+c2RwX2hlYWRlci5I
QjIgPSAweDFEOw0KPiA+ICsJLyogSU5GT0ZSQU1FIFNEUCBWZXJzaW9uIE51bWJlciAqLw0KPiA+
ICsJc2RwLT5zZHBfaGVhZGVyLkhCMyA9ICgweDEzIDw8IDIpOw0KPiA+ICsJLyogQ1RBIEhlYWRl
ciBCeXRlIDIgKElORk9GUkFNRSBWZXJzaW9uIE51bWJlcikgKi8NCj4gPiArCXNkcC0+ZGJbMF0g
PSBkcm1faW5mb2ZyYW1lLT52ZXJzaW9uOw0KPiA+ICsJLyogQ1RBIEhlYWRlciBCeXRlIDMgKExl
bmd0aCBvZiBJTkZPRlJBTUUpOg0KPiA+IEhETUlfRFJNX0lORk9GUkFNRV9TSVpFICovDQo+ID4g
KwlzZHAtPmRiWzFdID0gZHJtX2luZm9mcmFtZS0+bGVuZ3RoOw0KPiA+ICsJLyoNCj4gPiArCSAq
IENvcHkgSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkUgc2l6ZSBmcm9tIGEgYnVmZmVyIGFmdGVyDQo+
IA0KPiBDb21tZW50IExvb2tzIGluY29tcGxldGUuDQo+IA0KSSBtaXNzZWQgc29tZSBjb21tZW50
cywgSSdsbCB1cGRhdGUgaXQuDQo+ID4gKwkgKi8NCj4gPiArCUJVSUxEX0JVR19PTihzaXplb2Yo
c2RwLT5kYikgPCBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRSArIDIpOw0KPiA+ICsJbWVtY3B5KCZz
ZHAtPmRiWzJdLCAmYnVmW0hETUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpFXSwNCj4gPiArCSAgICAg
ICBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRSk7DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIFNp
emUgb2YgRFAgaW5mb2ZyYW1lIHNkcCBwYWNrZXQgZm9yIEhEUiBzdGF0aWMgbWV0YWRhdGEgaXMN
Cj4gPiBjb25zaXN0IG9mDQo+IA0KPiBEcm9wICJpcyINCj4gDQpJbmNsdWRlcyB0aGlzLCBJJ2xs
IHBvbGlzaCBwb2xpc2ggY29tbWl0IG1lc3NhZ2UgYW5kIGNvbW1lbnRzLg0KDQo+ID4gKwkgKiAt
IERQIFNEUCBIZWFkZXIoc3RydWN0IGRwX3NkcF9oZWFkZXIpOiA0IGJ5dGVzDQo+ID4gKwkgKiAt
IFR3byBEYXRhIEJsb2NrczogMiBieXRlcw0KPiA+ICsJICogICAgQ1RBIEhlYWRlciBCeXRlMiAo
SU5GT0ZSQU1FIFZlcnNpb24gTnVtYmVyKQ0KPiA+ICsJICogICAgQ1RBIEhlYWRlciBCeXRlMyAo
TGVuZ3RoIG9mIElORk9GUkFNRSkNCj4gPiArCSAqIC0gSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkU6
IDI2IGJ5dGVzDQo+ID4gKwkgKg0KPiA+ICsJICogUHJpb3IgdG8gR0VOMTEncyBHTVAgcmVnaXN0
ZXIgc2l6ZSBpcyBpZGVudGljYWwgdG8gRFAgSERSDQo+ID4gc3RhdGljIG1ldGFkYXRhDQo+ID4g
KwkgKiBpbmZvZnJhbWUgc2l6ZS4gQnV0IEdFTjExKyBoYXMgbGFyZ2VyIHRoYW4gdGhhdCBzaXpl
LA0KPiA+IHdyaXRlX2luZm9mcmFtZQ0KPiA+ICsJICogd2lsbCBwYWQgcmVzdCBvZiB0aGUgc2l6
ZS4NCj4gPiArCSAqLw0KPiA+ICsJcmV0dXJuIHNpemVvZihzdHJ1Y3QgZHBfc2RwX2hlYWRlcikg
KyAyICsNCj4gPiBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRTsgfQ0KPiA+ICsNCj4gPiArc3RhdGlj
IHZvaWQgaW50ZWxfd3JpdGVfZHBfc2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0K
PiA+ICsJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19z
dGF0ZSwNCj4gPiArCQkJICAgICAgIHVuc2lnbmVkIGludCB0eXBlKQ0KPiA+ICt7DQo+ID4gKwlz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCA9DQo+ID4gZW5jX3RvX2Rp
Z19wb3J0KGVuY29kZXIpOw0KPiA+ICsJc3RydWN0IGRwX3NkcCBzZHAgPSB7fTsNCj4gPiArCXNz
aXplX3QgbGVuOw0KPiA+ICsNCj4gPiArCWlmICgoY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5lbmFi
bGUgJg0KPiA+ICsJICAgICBpbnRlbF9oZG1pX2luZm9mcmFtZV9lbmFibGUodHlwZSkpID09IDAp
DQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCXN3aXRjaCAodHlwZSkgew0KPiA+ICsJY2Fz
ZSBEUF9TRFBfVlNDOg0KPiA+ICsJCWxlbiA9IGludGVsX2RwX3ZzY19zZHBfcGFjaygmY3J0Y19z
dGF0ZS0NCj4gPiA+aW5mb2ZyYW1lcy52c2MsICZzZHAsDQo+ID4gKwkJCQkJICAgIHNpemVvZihz
ZHApKTsNCj4gPiArCQlicmVhazsNCj4gPiArCWNhc2UgSERNSV9QQUNLRVRfVFlQRV9HQU1VVF9N
RVRBREFUQToNCj4gPiArCQlsZW4gPQ0KPiA+IGludGVsX2RwX2hkcl9tZXRhZGF0YV9pbmZvZnJh
bWVfc2RwX3BhY2soJmNydGNfc3RhdGUtDQo+ID4gPiBpbmZvZnJhbWVzLmRybS5kcm0sDQo+ID4g
KwkJCQkJCQkgICAgICAgJnNkcCwNCj4gPiBzaXplb2Yoc2RwKSk7DQo+ID4gKwkJYnJlYWs7DQo+
ID4gKwlkZWZhdWx0Og0KPiA+ICsJCU1JU1NJTkdfQ0FTRSh0eXBlKTsNCj4gPiArCQlicmVhazsN
Cj4gPiArCX0NCj4gPiArDQo+ID4gKwlpZiAoV0FSTl9PTihsZW4gPCAwKSkNCj4gPiArCQlyZXR1
cm47DQo+ID4gKw0KPiA+ICsJaW50ZWxfZGlnX3BvcnQtPndyaXRlX2luZm9mcmFtZShlbmNvZGVy
LCBjcnRjX3N0YXRlLCB0eXBlLA0KPiA+ICZzZHAsIGxlbik7DQo+ID4gK30NCj4gPiArDQo+ID4g
K3ZvaWQgaW50ZWxfZHBfc2V0X2luZm9mcmFtZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsDQo+ID4gKwkJCSAgICAgYm9vbCBlbmFibGUsDQo+ID4gKwkJCSAgICAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gKwkJCSAgICAgY29uc3Qgc3RydWN0
IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gPiAqY29ubl9zdGF0ZSkgew0KPiA+ICsJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7DQo+
ID4gKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIp
Ow0KPiA+ICsJaTkxNV9yZWdfdCByZWcgPSBIU1dfVFZJREVPX0RJUF9DVEwoY3J0Y19zdGF0ZS0N
Cj4gPiA+Y3B1X3RyYW5zY29kZXIpOw0KPiA+ICsJdTMyIGRpcF9lbmFibGUgPSBWSURFT19ESVBf
RU5BQkxFX0FWSV9IU1cgfA0KPiA+IFZJREVPX0RJUF9FTkFCTEVfR0NQX0hTVyB8DQo+ID4gKwkJ
CSBWSURFT19ESVBfRU5BQkxFX1ZTX0hTVyB8DQo+ID4gVklERU9fRElQX0VOQUJMRV9HTVBfSFNX
IHwNCj4gPiArCQkJIFZJREVPX0RJUF9FTkFCTEVfU1BEX0hTVyB8DQo+ID4gVklERU9fRElQX0VO
QUJMRV9EUk1fR0xLOw0KPiA+ICsJdTMyIHZhbCA9IEk5MTVfUkVBRChyZWcpOw0KPiA+ICsNCj4g
PiArCS8qIFRPRE86IEFkZCBEU0MgY2FzZSAoRElQX0VOQUJMRV9QUFMpICovDQo+ID4gKwkvKiBX
aGVuIFBTUiBpcyBlbmFibGVkLCB0aGlzIHJvdXRpbmUgZG9lc24ndCBkaXNhYmxlIFZTQyBESVAg
Ki8NCj4gPiArCWlmIChpbnRlbF9wc3JfZW5hYmxlZChpbnRlbF9kcCkpDQo+ID4gKwkJdmFsICY9
IH5kaXBfZW5hYmxlOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCXZhbCAmPSB+KGRpcF9lbmFibGUgfCBW
SURFT19ESVBfRU5BQkxFX1ZTQ19IU1cpOw0KPiANCj4gZGlwX2VuYWJsZSBoYXMgVklERU9fRElQ
X0VOQUJMRV9WU0NfSFNXIGFscmVhZHkgaW4gaXQuIFBsZWFzZSBmaXgNCj4gdGhpcy4NCj4gDQpE
ZWNsYXJpbmcgb2YgZGlwX2VuYWJsZSBkb2VzIG5vdCBpbmNsdWRlIFZJREVPX0RJUF9FTkFCTEVf
VlNDX0hTVy4NCnRoZXJlZm9yZSB3ZSBuZWVkIGl0IGhlcmUgdG8gZGlzYWJsZSBWU0MgU0RQIERJ
UC4NCg0KPiA+ICsNCj4gPiArCWlmICghZW5hYmxlKSB7DQo+ID4gKwkJSTkxNV9XUklURShyZWcs
IHZhbCk7DQo+ID4gKwkJUE9TVElOR19SRUFEKHJlZyk7DQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsJ
fQ0KPiA+ICsNCj4gPiArCUk5MTVfV1JJVEUocmVnLCB2YWwpOw0KPiA+ICsJUE9TVElOR19SRUFE
KHJlZyk7DQo+ID4gKw0KPiA+ICsJLyogV2hlbiBQU1IgaXMgZW5hYmxlZCwgVlNDIFNEUCBpcyBo
YW5kbGVkIGJ5IFBTUiByb3V0aW5lICovDQo+ID4gKwlpZiAoIWludGVsX3Bzcl9lbmFibGVkKGlu
dGVsX2RwKSkNCj4gPiArCQlpbnRlbF93cml0ZV9kcF9zZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSwg
RFBfU0RQX1ZTQyk7DQo+ID4gKw0KPiA+ICsJaW50ZWxfd3JpdGVfZHBfc2RwKGVuY29kZXIsIGNy
dGNfc3RhdGUsDQo+ID4gK0hETUlfUEFDS0VUX1RZUEVfR0FNVVRfTUVUQURBVEEpOyB9DQo+ID4g
Kw0KPiA+ICBzdGF0aWMgdm9pZA0KPiA+ICBpbnRlbF9kcF9zZXR1cF92c2Nfc2RwKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gIAkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLCBkaWZmDQo+ID4gLS1naXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5oDQo+ID4gaW5kZXggM2RhMTY2MDU0Nzg4Li4wZGMwOWE0NjNlZTEgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+ID4gQEAg
LTExNiw2ICsxMTYsOSBAQCB2b2lkIGludGVsX2RwX3ZzY19lbmFibGUoc3RydWN0IGludGVsX2Rw
DQo+ID4gKmludGVsX2RwLCAgdm9pZA0KPiA+IGludGVsX2RwX2hkcl9tZXRhZGF0YV9lbmFibGUo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiAgCQkJCSAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkJCSAgY29uc3Qgc3RydWN0IGRy
bV9jb25uZWN0b3Jfc3RhdGUNCj4gPiAqY29ubl9zdGF0ZSk7DQo+ID4gK3ZvaWQgaW50ZWxfZHBf
c2V0X2luZm9mcmFtZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGJvb2wNCj4gPiBl
bmFibGUsDQo+ID4gKwkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsDQo+ID4gKwkJCSAgICAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4g
PiAqY29ubl9zdGF0ZSk7DQo+ID4gIGJvb2wgaW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7DQo+ID4gDQo+ID4gIHN0YXRpYyBpbmxpbmUg
dW5zaWduZWQgaW50IGludGVsX2RwX3VudXNlZF9sYW5lX21hc2soaW50DQo+ID4gbGFuZV9jb3Vu
dCkNCj4gPiAtLQ0KPiA+IDIuMjQuMQ0KPiA+IA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gZHJpLWRldmVsIG1haWxpbmcgbGlzdA0KPiA+
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbA0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
