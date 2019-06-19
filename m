Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAB44C409
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 01:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 249476E48E;
	Wed, 19 Jun 2019 23:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E0566E48E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 23:16:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:16:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="243456812"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga001.jf.intel.com with ESMTP; 19 Jun 2019 16:16:53 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 16:16:53 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.59]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 16:16:53 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/ehl/dsi: Enable AFE over PPI
 strap
Thread-Index: AQHVJhB5izg3G5yXa0CZIPYcql8jLKakDJGAgAAGzgA=
Date: Wed, 19 Jun 2019 23:16:52 +0000
Message-ID: <931b1ad26ebfb2fc595e139a3aeae2ea19dd0118.camel@intel.com>
References: <20190618200000.15847-1-jose.souza@intel.com>
 <20190618200000.15847-2-jose.souza@intel.com>
 <20190619225231.GK14321@mdroper-desk.amr.corp.intel.com>
In-Reply-To: <20190619225231.GK14321@mdroper-desk.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <341E5793D2D3FF48888D13915BB65B6A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/ehl/dsi: Enable AFE over PPI
 strap
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA2LTE5IGF0IDE1OjUyIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUdWUsIEp1biAxOCwgMjAxOSBhdCAwMTowMDowMFBNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphDQo+IHdyb3RlOg0KPiA+IFRoZSBvdGhlciBhZGRpdGlvbmFsIHN0ZXAgaW4gdGhlIERT
SSBzZXF1cWVuY2UgZm9yIEVITC4NCj4gPiANCj4gPiBCU3BlYzogMjA1OTcNCj4gPiBDYzogVW1h
IFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gPiBDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCA4ICsrKysrKysrDQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgIHwgNCArKysrDQo+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMNCj4gPiBpbmRleCBlZTg1NDI4YjMwOWYuLjNhNjAxYzczOWZjNiAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+ID4gQEAgLTU0
Miw2ICs1NDIsMTQgQEAgc3RhdGljIHZvaWQNCj4gPiBnZW4xMV9kc2lfc2V0dXBfZHBoeV90aW1p
bmdzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQ0KPiA+ICAJCQlJOTE1X1dSSVRFKERT
SV9UQV9USU1JTkdfUEFSQU0ocG9ydCksIHRtcCk7DQo+ID4gIAkJfQ0KPiA+ICAJfQ0KPiA+ICsN
Cj4gPiArCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpIHsNCj4gPiArCQlmb3JfZWFjaF9k
c2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBvcnRzKSB7DQo+ID4gKwkJCXRtcCA9IEk5MTVfUkVB
RChJQ0xfRFBIWV9DSEtOKHBvcnQpKTsNCj4gPiArCQkJdG1wIHw9IElDTF9EUEhZX0NIS05fQUZF
X09WRVJfUFBJX1NUUkFQOw0KPiA+ICsJCQlJOTE1X1dSSVRFKElDTF9EUEhZX0NIS04ocG9ydCks
IHRtcCk7DQo+ID4gKwkJfQ0KPiA+ICsJfQ0KPiA+ICB9DQo+ID4gIA0KPiA+ICBzdGF0aWMgdm9p
ZCBnZW4xMV9kc2lfZ2F0ZV9jbG9ja3Moc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBpbmRleCAxZjJjM2ViZGY4N2IuLmRj
N2IzNGNmOGI0MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IEBAIC0x
OTkzLDYgKzE5OTMsMTAgQEAgZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgew0KPiA+ICAjZGVmaW5l
ICAgTl9TQ0FMQVIoeCkJCQkoKHgpIDw8IDI0KQ0KPiA+ICAjZGVmaW5lICAgTl9TQ0FMQVJfTUFT
SwkJCSgweDdGIDw8IDI0KQ0KPiA+ICANCj4gPiArI2RlZmluZSBfSUNMX0RQSFlfQ0hLTl9SRUcJ
CQkweDE5NA0KPiA+ICsjZGVmaW5lIElDTF9EUEhZX0NIS04ocG9ydCkJCQlfTU1JTyhfSUNMX0NP
TUINCj4gPiBPUEhZKHBvcnQpICsgX0lDTF9EUEhZX0NIS05fUkVHKQ0KPiA+ICsjZGVmaW5lICAg
SUNMX0RQSFlfQ0hLTl9BRkVfT1ZFUl9QUElfU1RSQVAJKDEgPDwgNykNCj4gPiArDQo+IA0KPiBT
aW5jZSB0aGlzIGlzIGEgbmV3IHJlZ2lzdGVyLCBzaG91bGQgd2UgYmUgdXNpbmcgUkVHX0JJVCgp
IGZvciB0aGUNCj4gYml0DQo+IGRlZmluaXRpb24gYXMgZGVzY3JpYmVkIGF0IHRoZSB0b3Agb2Yg
dGhlIGZpbGU/DQoNCkkgd2lsbCBkbyB0aGF0Lg0KVGhhbmtzDQoNCj4gDQo+IE90aGVyIHRoYW4g
dGhhdCwgdGhpcyBhbGwgbWF0Y2hlcyB0aGUgYnNwZWMgc28NCj4gDQo+IFJldmlld2VkLWJ5OiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiANCj4gDQo+ID4gICNkZWZp
bmUgTUdfUEhZX1BPUlRfTE4obG4sIHBvcnQsIGxuMHAxLCBsbjBwMiwgbG4xcDEpIFwNCj4gPiAg
CV9NTUlPKF9QT1JUKChwb3J0KSAtIFBPUlRfQywgbG4wcDEsIGxuMHAyKSArIChsbikgKiAoKGxu
MXAxKSAtDQo+ID4gKGxuMHAxKSkpDQo+ID4gIA0KPiA+IC0tIA0KPiA+IDIuMjIuMA0KPiA+IA0K
PiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4g
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
