Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D39CF17C84B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 23:28:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29896ED7E;
	Fri,  6 Mar 2020 22:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 302AB6ED7E
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 22:28:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 14:28:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,523,1574150400"; d="scan'208";a="230211820"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga007.jf.intel.com with ESMTP; 06 Mar 2020 14:28:48 -0800
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 6 Mar 2020 14:28:48 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.229]) with mapi id 14.03.0439.000;
 Fri, 6 Mar 2020 14:28:47 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tgl: Make wa_1606700617 permanent
Thread-Index: AQHV8xpS7ebu4j0w80m7m+0FsUmTqqg8rWQA
Date: Fri, 6 Mar 2020 22:28:47 +0000
Message-ID: <2e5aa1b91d0c5aa94be067d3c0c88730df0b9897.camel@intel.com>
References: <20200305181204.28856-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200305181204.28856-1-swathi.dhanavanthri@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <1AB21664399BE840BE773B1710AEC773@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Make wa_1606700617 permanent
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

T24gVGh1LCAyMDIwLTAzLTA1IGF0IDEwOjEyIC0wODAwLCBTd2F0aGkgRGhhbmF2YW50aHJpIHdy
b3RlOg0KPiBUaGlzIHdvcmthcm91bmQgaXMgdG8gZGlzYWJsZSBGRiBET1AgQ2xvY2sgZ2F0aW5n
LiBUaGUgZml4DQo+IGluIEIwIHdhcyBiYWNrZWQgb3V0IGR1ZSB0byB0aW1pbmcgcmVhc29ucyBh
bmQgZGVjaWRlZCB0bw0KPiBiZSBtYWRlIHBlcm1hbmVudC4NCj4gQnNwZWM6IDUyODkwDQoNClJl
dmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cg0KPiANCj4gU2lnbmVkLW9mZi1ieTogU3dhdGhpIERoYW5hdmFudGhyaSA8c3dhdGhpLmRoYW5h
dmFudGhyaUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYyB8IDEwICsrKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gaW5kZXggY2I3ZDg1YzQyZjEzLi5hOWQxOTc1
YjUyNDUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYw0KPiBAQCAtMTMzNywxMSArMTMzNyw2IEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzDQo+ICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkNCj4g
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsNCj4gIA0KPiAg
CWlmIChJU19UR0xfUkVWSUQoaTkxNSwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKSB7DQo+
IC0JCS8qIFdhXzE2MDY3MDA2MTc6dGdsICovDQo+IC0JCXdhX21hc2tlZF9lbih3YWwsDQo+IC0J
CQkgICAgIEdFTjlfQ1NfREVCVUdfTU9ERTEsDQo+IC0JCQkgICAgIEZGX0RPUF9DTE9DS19HQVRF
X0RJU0FCTEUpOw0KPiAtDQo+ICAJCS8qDQo+ICAJCSAqIFdhXzE2MDcxMzgzMzY6dGdsDQo+ICAJ
CSAqIFdhXzE2MDcwNjM5ODg6dGdsDQo+IEBAIC0xMzkzLDYgKzEzODgsMTEgQEAgcmNzX2VuZ2lu
ZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MNCj4gKmVuZ2luZSwgc3RydWN0IGk5MTVf
d2FfbGlzdCAqd2FsKQ0KPiAgCQkvKiBXYV8xNDA5ODA0ODA4OnRnbCAqLw0KPiAgCQl3YV9tYXNr
ZWRfZW4od2FsLCBHRU43X1JPV19DSElDS0VOMiwNCj4gIAkJCSAgICAgR0VOMTJfUFVTSF9DT05T
VF9ERVJFRl9IT0xEX0RJUyk7DQo+ICsNCj4gKwkJLyogV2FfMTYwNjcwMDYxNzp0Z2wgKi8NCj4g
KwkJd2FfbWFza2VkX2VuKHdhbCwNCj4gKwkJCSAgICAgR0VOOV9DU19ERUJVR19NT0RFMSwNCj4g
KwkJCSAgICAgRkZfRE9QX0NMT0NLX0dBVEVfRElTQUJMRSk7DQo+ICAJfQ0KPiAgDQo+ICAJaWYg
KElTX0dFTihpOTE1LCAxMSkpIHsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
