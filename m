Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDADE3CC8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 22:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413C86E789;
	Thu, 24 Oct 2019 20:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30B76E789
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 20:10:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 13:10:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="204348176"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Oct 2019 13:10:14 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.210]) by
 ORSMSX102.amr.corp.intel.com ([169.254.3.181]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 13:10:14 -0700
From: "Hiatt, Don" <don.hiatt@intel.com>
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i914/guc: Fix resume on platforms w/o
 GuC submission but enabled
Thread-Index: AQHViohM005e6yyaHEGJsPy5MI+iM6dqkbcA//+mlyA=
Date: Thu, 24 Oct 2019 20:10:14 +0000
Message-ID: <97654A90DB924C44A3AE6C902A3FEAC15F974189@ORSMSX106.amr.corp.intel.com>
References: <20191024162958.11839-1-don.hiatt@intel.com>
 <eef06e56375258b594a476e72ec7325954cd6d80.camel@intel.com>
In-Reply-To: <eef06e56375258b594a476e72ec7325954cd6d80.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzAxMTI5ZGItOWYwMy00YzU5LThkNDgtZDhlYjUxZjQ0ZThmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY3pOSlwvMVNRRHFQTHVcL2phRGJMbFliN3l6TFRvMW0xdGU5NTVheHcxcHJ1NFdSaTl3S0hpbFl3eXhyS1AxVGlaIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i914/guc: Fix resume on platforms w/o
 GuC submission but enabled
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

PiBPbiBUaHUsIDIwMTktMTAtMjQgYXQgMDk6MjkgLTA3MDAsIGRvbi5oaWF0dEBpbnRlbC5jb20g
d3JvdGU6DQo+ID4gRnJvbTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPg0KPiA+DQo+
ID4gQ2hlY2sgdG8gc2VlIGlmIEd1QyBzdWJtaXNzaW9uIGlzIGVuYWJsZWQgYmVmb3JlIHJlcXVl
c3RpbmcgdGhlDQo+ID4gRVhJVF9TX1NUQVRFIGFjdGlvbi4NCj4gPg0KPiA+IE9uIHNvbWUgcGxh
dGZvcm1zIChlLmcuIEtCTCkgdGhhdCBkbyBub3Qgc3VwcG9ydCBHdUMgc3VibWlzc2lvbiwgYnV0
DQo+ID4gdGhlIHVzZXIgZW5hYmxlZCB0aGUgR3VDIGNvbW11bmljYXRpb24gKGUuZyBmb3IgSHVD
IGF1dGhlbnRpY2F0aW9uKQ0KPiA+IGNhbGxpbmcgdGhlIEd1QyBFWElUX1NfU1RBVEUgYWN0aW9u
IHJlc3VsdHMgaW4gbG9zZSBvZiBhYmlsaXR5IHRvDQo+ID4gZW50ZXIgUkM2LiBHdWFyZCBhZ2Fp
bnN0IHRoaXMgYnkgb25seSByZXF1ZXN0aW5nIHRoZSBHdUMgYWN0aW9uIG9uDQo+ID4gcGxhdGZv
cm1zIHRoYXQgc3VwcG9ydCBHdUMgc3VibWlzc2lvbi4NCj4gPg0KPiA+IEkndmUgdmVyZmllZCB0
aGF0IGludGVsX2d1Y19yZXN1bWUoKSBvbmx5IGdldHMgY2FsbGVkIHdoZW4gZHJpdmVyDQo+ID4g
aXMgbG9hZGVkIHdpdGg6IGd1Y19lbmFibGU9ezEsMiwzfSwgYWxsIG90aGVyIGNhc2VzIChubyBh
cmdzLA0KPiA+IGd1Y19lbmFibGU9ezAsLTF9IHRoZSBpbnRlbF9ndWNfcmVzdW1lKCkgaXMgbm90
IGNhbGxlZC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjLmMgfCA1ICsrKystDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjLmMNCj4gPiBpbmRleCAzN2Y3YmNiZjdkYWMuLjMzMzE4ZWQxMzVjMCAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jDQo+ID4gQEAgLTU2NSw3ICs1NjUs
MTAgQEAgaW50IGludGVsX2d1Y19yZXN1bWUoc3RydWN0IGludGVsX2d1YyAqZ3VjKQ0KPiA+ICAJ
CUdVQ19QT1dFUl9EMCwNCj4gPiAgCX07DQo+ID4NCj4gPiAtCXJldHVybiBpbnRlbF9ndWNfc2Vu
ZChndWMsIGFjdGlvbiwgQVJSQVlfU0laRShhY3Rpb24pKTsNCj4gPiArCWlmIChndWMtPnN1Ym1p
c3Npb25fc3VwcG9ydGVkKQ0KPiANCj4gSGV5IERvbiwNCj4gDQo+IEkgbWlnaHQgYmUgbWlzc2lu
ZyBzb21ldGhpbmcgaGVyZSwgYnV0IGdsYW5jaW5nIG92ZXIgdGhlIGNvZGUgZm9yDQo+IHN1Ym1p
c3Npb25fc3VwcG9ydGVkLCBpdCBsb29rcyBsaWtlIHRoaXMgcmVsaWVzIG9uIHRoZSBhdmFpbGFi
aWxpdHkgb2YNCj4gdGhlIGZpcm13YXJlIGZvciB0aGUgaW50ZW5kZWQgcGxhdGZvcm0uIExvb2tp
bmcgYXQgdGhlIEd1QyB0YWJsZSBmb3INCj4gS0JMLCBJIGRvIHNlZSB0aGlzIHByZXNlbnQgKHVz
aW5nIEtCTCBwZXIgeW91ciBjb21taXQgYWJvdmUpLiBTbw0KPiB3b3VsZG4ndCB0aGlzIHJldHVy
biB0cnVlIGhlcmUgaWYgZW5hYmxlX2d1YyBpcyBzZXQgdG8gMSBvciAzPw0KPiANCj4gVGhhbmtz
LA0KPiBTdHVhcnQNCg0KSGkgU3R1YXJ0LA0KDQpLQkwgZG9lcyBub3Qgc3VwcG9ydCBHdUMgc3Vi
bWlzc2lvbiwganVzdCBIdUMgYXV0aGVudGljYXRpb24uIEkndmUgaW5zdHJ1bWVudGVkDQp0aGUg
Y29kZSBhbmQgdmVyaWZpZWQgdGhhdCBhbGwgZ3VjLT5zdWJtaXNzaW9uX3N1cHBvcnRlZCBpcyBh
bHdheXMgZmFsc2Ugd2hlbiBndWNfZW5hYmxlDQppcyBzZXQgZm9yIEtCTC4NCg0KVGhhbmtzLA0K
DQpkb24NCg0KPiANCj4gPiArCQlyZXR1cm4gaW50ZWxfZ3VjX3NlbmQoZ3VjLCBhY3Rpb24sIEFS
UkFZX1NJWkUoYWN0aW9uKSk7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+ID4gIH0NCj4gPg0K
PiA+ICAvKioNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
