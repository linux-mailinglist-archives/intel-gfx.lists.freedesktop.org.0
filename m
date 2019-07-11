Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 309BA65FFF
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 21:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C562D6E268;
	Thu, 11 Jul 2019 19:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 705416E268
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 19:32:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 12:32:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="168727080"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga003.jf.intel.com with ESMTP; 11 Jul 2019 12:32:32 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX108.amr.corp.intel.com ([169.254.9.235]) with mapi id 14.03.0439.000;
 Thu, 11 Jul 2019 12:32:32 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "pebolle@tiscali.nl" <pebolle@tiscali.nl>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
Thread-Index: AQHVNzBm8CIMNghqKU6lUG8vwFsPdKbEfMKAgAAES4CAAAOcAIAADhGAgABJpoCAAAV9gIABY9wA
Date: Thu, 11 Jul 2019 19:32:31 +0000
Message-ID: <a522eb05e65fe5068c519f0c2ce44d894a9526db.camel@intel.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <1562770874.3213.14.camel@HansenPartnership.com>
 <93b8a186f4c8b4dae63845a20bd49ae965893143.camel@tiscali.nl>
 <1562776339.3213.50.camel@HansenPartnership.com>
 <5245d2b3d82f11d2f988a3154814eb42dcb835c5.camel@tiscali.nl>
 <1562780135.3213.58.camel@HansenPartnership.com>
 <a23e93d918f8be5aea4af0b87efbf9c3d143d2fb.camel@tiscali.nl>
 <1562797129.3213.111.camel@HansenPartnership.com>
In-Reply-To: <1562797129.3213.111.camel@HansenPartnership.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.133]
Content-ID: <63A26A140C29274B84ED02677C2B33C3@intel.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFtZXMgYW5kIFBhdWwNCg0KQ291bGQgeW91IHNoYXJlIGEgZG1lc2cgb3V0cHV0IG9mIHlv
dXIgc3lzdGVtIGFmdGVyIHRoZSBidWcgb2NjdXIgd2l0aA0KdGhpcyBrZXJuZWwgcGFyYW1ldGVy
cyAiZHJtLmRlYnVnPTB4MWUgbG9nX2J1Zl9sZW49NE0iPyBBbHNvIHRoZSBvdXRwdXQNCm9mIC9z
eXMva2VybmVsL2RlYnVnL2RyaS8wL2k5MTVfZWRwX3Bzcl9zdGF0dXMNCg0KVGhhbmtzDQoNCg0K
T24gV2VkLCAyMDE5LTA3LTEwIGF0IDE1OjE4IC0wNzAwLCBKYW1lcyBCb3R0b21sZXkgd3JvdGU6
DQo+IE9uIFdlZCwgMjAxOS0wNy0xMCBhdCAyMzo1OSArMDIwMCwgUGF1bCBCb2xsZSB3cm90ZToN
Cj4gPiBKYW1lcyBCb3R0b21sZXkgc2NocmVlZiBvcCB3byAxMC0wNy0yMDE5IG9tIDEwOjM1IFst
MDcwMF06DQo+ID4gPiBJIGNhbiBnZXQgYmFjayB0byBpdCB0aGlzIGFmdGVybm9vbiwgd2hlbiBJ
J20gZG9uZSB3aXRoIHRoZQ0KPiA+ID4gbWVldGluZw0KPiA+ID4gcmVxdWlyZW1lbnRzIGFuZCBk
b2luZyBvdGhlciBkZXYgc3R1ZmYuDQo+ID4gDQo+ID4gSSd2ZSBzdGFydGVkIGJpc2VjdGluZyB1
c2luZyB5b3VyIHN1Z2dlc3Rpb24gb2YgdGhhdCBkcm0gbWVyZ2U6DQo+ID4gICAgICQgZ2l0IGJp
c2VjdCBsb2cNCj4gPiAgICAgZ2l0IGJpc2VjdCBzdGFydA0KPiA+ICAgICAjIGdvb2Q6IFs4OWMz
YjM3YWY4N2VjMTgzYjY2NmQ4MzQyOGNiMjhjYzQyMTY3MWE2XSBNZXJnZQ0KPiA+IGdpdDovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9kYXZlbS9pZGUNCj4gPiAgICAg
Z2l0IGJpc2VjdCBnb29kIDg5YzNiMzdhZjg3ZWMxODNiNjY2ZDgzNDI4Y2IyOGNjNDIxNjcxYTYN
Cj4gPiAgICAgIyBiYWQ6IFthMmQ2MzVkZWNiZmE5YzFlNGFlMTVjYjA1YjY4YjI1NTlmN2Y4Mjdj
XSBNZXJnZSB0YWcNCj4gPiAnZHJtLQ0KPiA+IG5leHQtMjAxOS0wNS0wOScgb2YgZ2l0Oi8vYW5v
bmdpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybQ0KPiA+ICAgICBnaXQgYmlzZWN0IGJhZCBhMmQ2
MzVkZWNiZmE5YzFlNGFlMTVjYjA1YjY4YjI1NTlmN2Y4MjdjDQo+ID4gICAgICMgYmFkOiBbYWQy
YzQ2N2FhOTJlMjgzZTllODAwOWJiOWViMjlhNWM2YTJkMTIxN10gZHJtL2k5MTU6DQo+ID4gVXBk
YXRlIERSSVZFUl9EQVRFIHRvIDIwMTkwNDE3DQo+ID4gICAgIGdpdCBiaXNlY3QgYmFkIGFkMmM0
NjdhYTkyZTI4M2U5ZTgwMDliYjllYjI5YTVjNmEyZDEyMTcNCj4gPiANCj4gPiBHaXQgdG9sZCBt
ZSBJIGhhdmUgbmluZSBzdGVwcyBhZnRlciB0aGlzLiBTbyBhdCB0d28gaG91cnMgcGVyIHN0ZXAN
Cj4gPiBJDQo+ID4gbWlnaHQNCj4gPiBwaW5wb2ludCB0aGUgb2ZmZW5kaW5nIGNvbW1pdCBieSBG
cmlkYXkgdGhlIDEydGguIElmIEknbSBsdWNreS4NCj4gPiAoVGhlcmUgYXJlDQo+ID4gb3RoZXIg
dGhpbmdzIHRvIGRvIHRoYW4gYmlzZWN0aW5nIHRoaXMgaXNzdWUuKQ0KPiA+IA0KPiA+IElmIHlv
dSBmaW5kIHRoYXQgY29tbWl0IGJlZm9yZSBJIGRvLCBJJ2xsIGJlIGFsbCBlYXJzLg0KPiANCj4g
U3VyZSAuLi4gSSdtIGRvaW5nIHRoZSBob2xpc3RpYyB0aGluZyBhbmQgbG9va2luZyBhdCB0aGUg
dHJlZSBpbiB0aGF0DQo+IGJyYW5jaC4gIEl0IHNlZW1zIHRvIGNvbnNpc3Qgb2YgNyBpOTE1IHVw
ZGF0ZXMNCj4gDQo+IGMwOWQzOTE2NmQ4YTNmMzc4ODY4MGIzMmRiYjBhNDBhNzBkZTMyZTIgRFJJ
VkVSX0RBVEUgdG8gMjAxOTAyMDcNCj4gNDdlZDU1YTliYjllMjg0ZDQ2ZDZmMjQ4OWUzMmE1M2I1
OTE1MjgwOSBEUklWRVJfREFURSB0byAyMDE5MDIyMA0KPiBmNGVjYjhhZTcwZGU4NjcxMGU4NTEz
OGNlNDlhZjVjNjg5OTUxOTUzIERSSVZFUl9EQVRFIHRvIDIwMTkwMzExDQo+IDEyODRlYzk4NTU3
MjIzMmFjZTQ4MTc0NzZiYWViMmQ4MmI2MGJlN2EgRFJJVkVSX0RBVEUgdG8gMjAxOTAzMjANCj4g
YTAxYjJjNmY0N2Q4NmM3ZDFhOWZhODIyYjNiOTFlYzIzM2I2MTc4NCBEUklWRVJfREFURSB0byAy
MDE5MDMyOA0KPiAyOGQ2MThlOWFiODZmMjZhMzFhZjBiMjM1Y2VkNTViZWIzZTM0M2M4IERSSVZF
Ul9EQVRFIHRvIDIwMTkwNDA0DQo+IGFkMmM0NjdhYTkyZTI4M2U5ZTgwMDliYjllYjI5YTVjNmEy
ZDEyMTcgRFJJVkVSX0RBVEUgdG8gMjAxOTA0MTcNCj4gDQo+IFNvIEkgZmlndXJlZCBJJ2Qgc2Vl
IGlmIEkgY2FuIGxvY2F0ZSB0aGUgcHJvYmxlbSBieSBiaXNlY3Rpb24gb2YNCj4gdGhvc2UNCj4g
cGx1cyBpbnNwZWN0aW9uLg0KPiANCj4gSmFtZXMNCj4gDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
