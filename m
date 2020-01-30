Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A308D14E09F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 19:13:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03EBB6FA12;
	Thu, 30 Jan 2020 18:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C82B86FA12
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 18:13:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 10:13:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="222872617"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga008.jf.intel.com with ESMTP; 30 Jan 2020 10:13:39 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.198]) with mapi id 14.03.0439.000;
 Thu, 30 Jan 2020 10:13:38 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/9] drm/i915/dsb: Disable DSB until fixed
Thread-Index: AQHV1tDW12/GNQ4YxEiHt46Ys4kGO6gECncA
Date: Thu, 30 Jan 2020 18:13:38 +0000
Message-ID: <ede1226db2155f72e4bb5cce808c054016cbce9c.camel@intel.com>
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
 <20200129182034.26138-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20200129182034.26138-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.250]
Content-ID: <BF1C50ACCD03BA40B5AD51048DABBB2C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/dsb: Disable DSB until fixed
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

T24gV2VkLCAyMDIwLTAxLTI5IGF0IDIwOjIwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gT3VyIERTQiBzdXBwb3J0IGlzIGJvcmtlZC4gVGhlIERTQiBzZWVtcyB0byBnZXQgc3R1
Y2sgYW5kIHdlIGp1c3QNCj4gZ2V0Og0KPiBbZHJtOmludGVsX2RzYl9jb21taXQgW2k5MTVdXSBE
U0IgZXhlY3V0aW9uIHN0YXJ0ZWQgLSBoZWFkIDB4YThjMDAwLA0KPiB0YWlsIDB4MTBjMA0KPiBb
ZHJtOmludGVsX2RzYl9jb21taXQgW2k5MTVdXSAqRVJST1IqIFRpbWVkIG91dCB3YWl0aW5nIGZv
ciBEU0INCj4gd29ya2xvYWQgY29tcGxldGlvbi4NCj4gW2RybTppY2xfbG9hZF9sdXRzIFtpOTE1
XV0gRFNCIGVuZ2luZSBpcyBidXN5Lg0KPiANCj4gV2hpY2ggZXZlbiBzZWVtcyB0byByZXN1bHQg
aW4gdW5kZXJydW5zIG9uIHNvbWUgaW50ZXJuYWwgc3R1ZmYuDQo+IExldCdzIGp1c3QgZGlzYWJs
ZSBpdCBhbGwgdW50aWwgc29tZW9uZSBmaWd1cmVzIG91dCB3aGF0J3Mgd3JvbmcNCj4gd2l0aCBp
dC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMgfCA2ICsrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IDEyNzc2ZjA5ZjIyNy4uYTE2YTc4Y2QwZWJlIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTEwNSw3
ICsxMDUsMTEgQEAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gIAl1
MzIgKmJ1ZjsNCj4gIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gIA0KPiAtCWlmICghSEFT
X0RTQihpOTE1KSkNCj4gKwkvKg0KPiArCSAqIEZJWE1FIERTQiBzdXBwb3J0IGlzIGJ1c3RlZC4g
RFNCIHRlbmRzIHRvIGJlDQo+ICsJICogYnVzeSB3aGVuIGl0IHNob3VsZG4ndCBiZS4gRGlzYWJs
ZSB1bnRpbCBmaXhlZC4NCj4gKwkgKi8NCj4gKwlpZiAodHJ1ZSB8fCAhSEFTX0RTQihpOTE1KSkN
Cj4gIAkJcmV0dXJuIGRzYjsNCj4gIA0KPiAgCWlmIChkc2ItPnJlZmNvdW50KysgIT0gMCkNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
