Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98277399EE
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jun 2019 02:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AECAF891D1;
	Sat,  8 Jun 2019 00:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17103891D1
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jun 2019 00:25:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 17:25:04 -0700
X-ExtLoop1: 1
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 07 Jun 2019 17:25:04 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 17:25:04 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.81]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 17:25:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 23/23] drm/i915: WARN about invalid lane reversal in
 TBT-alt/DP-alt modes
Thread-Index: AQHVGuYwekRth4ptIUeEpLRBDBYocqaRXZyAgAADK4A=
Date: Sat, 8 Jun 2019 00:25:03 +0000
Message-ID: <4892265e868bbae69c0decfc6faeafde0aa0dce5.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-24-imre.deak@intel.com>
 <bf7c00a293f0ffd333e22bbfd1112c114515657b.camel@intel.com>
In-Reply-To: <bf7c00a293f0ffd333e22bbfd1112c114515657b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <074B15C177D7A045B12A9305B93E7701@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 23/23] drm/i915: WARN about invalid lane
 reversal in TBT-alt/DP-alt modes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA2LTA3IGF0IDE3OjEzIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBPbiBUdWUsIDIwMTktMDYtMDQgYXQgMTc6NTggKzAzMDAsIEltcmUgRGVhayB3
cm90ZToNCj4gPiBMYW5lIHJldmVyc2FsIGhhcHBlbnMgb25seSBpbiB0aGUgRklBIG1vZHVsZSBm
b3IgVEJULWFsdC9EUC1hbHQNCj4gPiBtb2RlLA0KPiA+IHNvDQo+ID4gV0FSTiBpZiBsYW5lIHJl
dmVyc2FsIGlzIGF0dGVtcHRlZCBhdCBhIGRpZmZlcmVudCBsZXZlbC4gU2VlIHRoZQ0KPiA+IEJT
cGVjIERESV9CVUZfQ1RMIHJlZ2lzdGVyIGRlc2NyaXB0aW9uLg0KPiANCj4gUmV2aWV3ZWQtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQpIaSBJbXJl
DQoNCkdvaW5nIHRvIHJldmlldyB0aGUgcmVuYW1pbmcgYWZ0ZXIgd2VkbmVzZGF5IGlmIG5vIG9u
ZSBkb2VzLCBwbGVhc2UgZ28NCmFoZWFkIGFuZCBwdXNoIHRoZSBvbmVzIHJldmlld2VkLg0KDQo+
IA0KPiA+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KPiA+
IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiBD
YzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMgfCAyICsrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGRpLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5jDQo+
ID4gaW5kZXggOWMxOThmMWEzYTkxLi41ZjUzNWYxN2Q3YjMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kZGkuYw0KPiA+IEBAIC0zNTkxLDYgKzM1OTEsOCBAQCBzdGF0aWMgdm9pZA0K
PiA+IGludGVsX2RkaV9zZXRfZmlhX2xhbmVfY291bnQoc3RydWN0DQo+ID4gaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwNCj4gPiAgCXUzMiB2YWwgPSBJOTE1X1JFQUQoUE9SVF9UWF9ERkxFWERQTUxF
MSk7DQo+ID4gIAlib29sIGxhbmVfcmV2ZXJzYWwgPSBkaWdfcG9ydC0+c2F2ZWRfcG9ydF9iaXRz
ICYNCj4gPiBERElfQlVGX1BPUlRfUkVWRVJTQUw7DQo+ID4gIA0KPiA+ICsJV0FSTl9PTihsYW5l
X3JldmVyc2FsICYmIGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRfTEVHQUNZKTsNCj4gPiAr
DQo+ID4gIAl2YWwgJj0gfkRGTEVYRFBNTEUxX0RQTUxFVENfTUFTSyh0Y19wb3J0KTsNCj4gPiAg
CXN3aXRjaCAocGlwZV9jb25maWctPmxhbmVfY291bnQpIHsNCj4gPiAgCWNhc2UgMToNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
