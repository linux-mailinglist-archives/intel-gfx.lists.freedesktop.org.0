Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D51C321A8C2
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 22:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4A36EB2B;
	Thu,  9 Jul 2020 20:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F8EA6EB2B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 20:14:17 +0000 (UTC)
IronPort-SDR: VfirSFgOmDY1HgAaiK9JQyXkz4wxAj2nnbuUUJ5KTt0m98bvPSF7LNrMQ7VZ6k5q5iafvTggyT
 4r9EzSuCu1rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209626886"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="209626886"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 13:14:16 -0700
IronPort-SDR: ok6kfPDMWu1b6nEhE4ZfMNktnyV6qbeqtrSFvCOaHTc4zT2uuTD1PM4C3a9haFI9A1Nv18/Ljw
 sDdUeSLsCNlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="483927761"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jul 2020 13:14:13 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jul 2020 13:14:07 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx123.amr.corp.intel.com ([169.254.7.113]) with mapi id 14.03.0439.000;
 Thu, 9 Jul 2020 13:14:07 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: WARN if max vswing/pre-emphasis
 violates the DP spec
Thread-Index: AQHWVgGHk1Slfmxm5UWrR8KvEsz5IKkAJNOA
Date: Thu, 9 Jul 2020 20:14:05 +0000
Message-ID: <ac6ca9134c3e22fe045743f1c7a74deff6b2c2ac.camel@intel.com>
References: <20200709145845.18118-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200709145845.18118-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <F7F53298481EC84DB369107FB2F95E31@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: WARN if max vswing/pre-emphasis
 violates the DP spec
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

T24gVGh1LCAyMDIwLTA3LTA5IGF0IDE3OjU4ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQWNjb3JkaW5nIHRvIHRoZSBEUCBzcGVjIGEgRFBUWCBtdXN0IHN1cHBvcnQgdnN3aW5n
L3ByZS1lbXBoYXNpcw0KPiB1cCB0byBhbmQgaW5jbHVkaW5nIGxldmVsIDIuIExldmVsIDMgaXMg
b3B0aW9uYWwgKGFjdHVhbGx5IERQIDEuNGENCj4gc2VlbXMgdG8gbWFrZSBldmVuIGxldmVsIDMg
bWFuZGF0b3J5IGZvciBIQlIyLzMsIHdoaWxlIGxlYXZpbmcgaXQNCj4gb3B0aW9uYWwgZm9yIFJC
Ui9IQlIxKS4NCj4gDQo+IFdBUk4gaWYgb3V0IGVuY29kZXJzJyAudm9sdGFnZV9tYXgoKS8ucHJl
ZW1waF9tYXgoKSByZXR1cm4NCj4gYW4gaWxsZWdhbCB2YWx1ZS4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5n
LmMgfCA5ICsrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlu
a190cmFpbmluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5r
X3RyYWluaW5nLmMNCj4gaW5kZXggMjQ5MzE0MmE3MGU5Li5hMjNlZDcyOTA4NDMgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmlu
Zy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190
cmFpbmluZy5jDQo+IEBAIC01Miw2ICs1Miw3IEBAIHN0YXRpYyB1OCBkcF92b2x0YWdlX21heCh1
OCBwcmVlbXBoKQ0KPiAgdm9pZCBpbnRlbF9kcF9nZXRfYWRqdXN0X3RyYWluKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+ICAJCQkgICAgICAgY29uc3QgdTggbGlua19zdGF0dXNbRFBfTElO
S19TVEFUVVNfU0laRV0pDQo+ICB7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gIAl1OCB2ID0gMDsNCj4gIAl1OCBwID0gMDsNCj4g
IAlpbnQgbGFuZTsNCj4gQEAgLTY0LDEyICs2NSwyMCBAQCB2b2lkIGludGVsX2RwX2dldF9hZGp1
c3RfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAl9DQo+ICANCj4gIAlwcmVl
bXBoX21heCA9IGludGVsX2RwLT5wcmVlbXBoX21heChpbnRlbF9kcCk7DQo+ICsJZHJtX1dBUk5f
T05fT05DRSgmaTkxNS0+ZHJtLA0KPiArCQkJIHByZWVtcGhfbWF4ICE9IERQX1RSQUlOX1BSRV9F
TVBIX0xFVkVMXzIgJiYNCj4gKwkJCSBwcmVlbXBoX21heCAhPSBEUF9UUkFJTl9QUkVfRU1QSF9M
RVZFTF8zKTsNCg0KT2theSBtYXRjaGVzIGJ1dCBJIGd1ZXNzIHRoZSBwcmVlbXBoX21heCBmdW5j
dGlvbiBzaG91bGQgcmVjZWl2ZSBhcyBwYXJhbWV0ZXIgdGhlIHZvbHRhZ2UgbGV2ZWwgdG8gaXQg
cmV0dXJuIHRoZSBtYXggcHJlZW1waCBvZiB0aGF0IHZvbHRhZ2UgbGV2ZWwsDQpubz8NCg0KPiAr
DQo+ICAJaWYgKHAgPj0gcHJlZW1waF9tYXgpDQo+ICAJCXAgPSBwcmVlbXBoX21heCB8IERQX1RS
QUlOX01BWF9QUkVfRU1QSEFTSVNfUkVBQ0hFRDsNCj4gIA0KPiAgCXYgPSBtaW4odiwgZHBfdm9s
dGFnZV9tYXgocCkpOw0KPiAgDQo+ICAJdm9sdGFnZV9tYXggPSBpbnRlbF9kcC0+dm9sdGFnZV9t
YXgoaW50ZWxfZHApOw0KPiArCWRybV9XQVJOX09OX09OQ0UoJmk5MTUtPmRybSwNCj4gKwkJCSB2
b2x0YWdlX21heCAhPSBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xFVkVMXzIgJiYNCj4gKwkJCSB2
b2x0YWdlX21heCAhPSBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xFVkVMXzMpOw0KPiArDQo+ICAJ
aWYgKHYgPj0gdm9sdGFnZV9tYXgpDQo+ICAJCXYgPSB2b2x0YWdlX21heCB8IERQX1RSQUlOX01B
WF9TV0lOR19SRUFDSEVEOw0KPiAgDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
