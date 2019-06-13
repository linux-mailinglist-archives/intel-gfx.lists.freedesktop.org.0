Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A239E4361F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 14:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDE2895F5;
	Thu, 13 Jun 2019 12:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DA6895F5;
 Thu, 13 Jun 2019 12:58:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 05:58:02 -0700
X-ExtLoop1: 1
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jun 2019 05:58:01 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 13 Jun 2019 13:58:00 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.28]) with mapi id 14.03.0415.000;
 Thu, 13 Jun 2019 13:58:00 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t 1/4] tests: add libatomic dependency
Thread-Index: AQHVGgM0BTQQHnzFGEGX9Y2/gIIQwKaOK1kAgAtecoCAAADAAA==
Date: Thu, 13 Jun 2019 12:57:59 +0000
Message-ID: <e0bb778a0882dc99f3b0b19e51f49d132f043705.camel@intel.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
 <a5f5b7c277c99682721fc998932895ebbb5646fe.camel@intel.com>
 <05c4aa32-3103-d82f-e596-90537d48a10d@collabora.com>
In-Reply-To: <05c4aa32-3103-d82f-e596-90537d48a10d@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <D1C4A2EBCCD77845858491168ABC3F25@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] tests: add libatomic
 dependency
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA2LTEzIGF0IDEzOjU1ICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBPbiAwNi8wNi8yMDE5IDA4OjE4LCBTZXIsIFNpbW9uIHdyb3RlOg0KPiA+IE9uIE1vbiwg
MjAxOS0wNi0wMyBhdCAxMjo1NCArMDEwMCwgR3VpbGxhdW1lIFR1Y2tlciB3cm90ZToNCj4gPiA+
IEFkZCBkZXBlbmRlbmN5IHRvIGxpYmF0b21pYyBpbiBvcmRlciB0byBiZSBhYmxlIHRvIHVzZSB0
aGUgX19hdG9taWNfKg0KPiA+ID4gZnVuY3Rpb25zIGluc3RlYWQgb2YgdGhlIG9sZGVyIF9fc3lu
Y18qIG9uZXMuICBUaGlzIGlzIHRvIGVuYWJsZQ0KPiA+ID4gYXRvbWljIG9wZXJhdGlvbnMgb24g
YSB3aWRlciBudW1iZXIgb2YgYXJjaGl0ZWN0dXJlcyBpbmNsdWRpbmcgTUlQUy4NCj4gPiANCj4g
PiBUaGFua3MgZm9yIHlvdXIgcGF0Y2ghIEkgaGF2ZSBhIGZldyBxdWVzdGlvbnMgYmVjYXVzZSBJ
IGRvbid0IGtub3cgd2VsbA0KPiA+IGhvdyBsaWJhdG9taWMgd29ya3MuDQo+IA0KPiBUaGFua3Mg
Zm9yIHRoZSByZXZpZXchDQo+IA0KPiA+IERvIHdlIHdhbnQgdG8gYWx3YXlzIGxpbmsgYWdhaW5z
dCBsaWJhdG9taWM/IEZvciBpbnN0YW5jZSBMTFZNIHRyaWVzIHRvDQo+ID4gY29tcGlsZSBhIHBy
b2dyYW0gd2l0aCBhdG9taWMgYmVmb3JlIGZhbGxpbmcgYmFjayB0byBsaWJhdG9taWM6DQo+ID4g
aHR0cHM6Ly9naXRodWIuY29tL2xsdm0tbWlycm9yL2xsdm0vYmxvYi9tYXN0ZXIvY21ha2UvbW9k
dWxlcy9DaGVja0F0b21pYy5jbWFrZQ0KPiA+IA0KPiA+IFNob3VsZCB0aGlzIGRlcGVuZGVuY3kg
YmUgbWFuZGF0b3J5Pw0KPiANCj4gSSd2ZSBoYWQgYSBsb29rIGFyb3VuZCwgdGhlIHNob3J0IGFu
c3dlciBpcyB3ZSBzaG91bGQgbWFrZSB0aGlzDQo+IGRlcGVuZGVuY3kgb3B0aW9uYWwuICBJJ20g
c2VuZGluZyBhIHYyIG9mIHRoaXMgc2VyaWVzIHdoaWNoDQo+IGFkZHJlc3NlcyB0aGlzIGlzc3Vl
Lg0KPiANCj4gRnJvbSB3aGF0IEkgdW5kZXJzdGFuZCwgbGlua2luZyBhZ2FpbnN0IGxpYmF0b21p
YyBpcyBhY3R1YWxseQ0KPiBvbmx5IG5lZWRlZCB3aGVuIHNvbWUgYXRvbWljIG9wZXJhdGlvbnMg
YXJlbid0IHN1cHBvcnRlZCBuYXRpdmVseQ0KPiBieSBhIENQVSBhcmNoaXRlY3R1cmUuICBGb3Ig
ZXhhbXBsZSwgdGhpcyBpcyB0aGUgY2FzZSB3aXRoIDY0LWJpdA0KPiBhdG9taWNzIG9uIDMyLWJp
dCBNSVBTLiAgSWYgdGhlIENQVSBjYW4ndCBkbyBhbiBhdG9taWMgb3BlcmF0aW9uDQo+IGFuZCB0
aGVyZSdzIG5vIGxpYmF0b21pYyBhdmFpbGFibGUsIHRoZW4gaXQgd29uJ3QgYnVpbGQuICBTbyBJ
J3ZlDQo+IG1hZGUgYSB0ZXN0IGluIG1lc29uLmJ1aWxkIHRvIGNoZWNrIHdoZXRoZXIgbGlua2lu
ZyBhZ2FpbnN0DQo+IGxpYmF0b21pYyBpcyByZXF1aXJlZCBvciBub3QsIHRvIGRyb3AgdGhlIGRl
cGVuZGVuY3kgd2hlbiBpdA0KPiBpc24ndC4gIEkndmUgdmVyaWZpZWQgdGhhdCB0aGUgdGVzdCBw
YXNzZXMgb24geDg2IChpLmUuIG5vDQo+IGRlcGVuZGVuY3kpIGFuZCBmYWlscyBvbiAzMi1iaXQg
TUlQUyAoaS5lLiB3aXRoIGRlcGVuZGVuY3kpLg0KDQpOaWNlISBMb29rcyBsaWtlIGEgZ29vZCBp
ZGVhIHRvIG1lLg0KDQo+IEd1aWxsYXVtZQ0KPiANCj4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBH
dWlsbGF1bWUgVHVja2VyIDxndWlsbGF1bWUudHVja2VyQGNvbGxhYm9yYS5jb20+DQo+ID4gPiAt
LS0NCj4gPiA+ICBtZXNvbi5idWlsZCAgICAgICB8IDEgKw0KPiA+ID4gIHRlc3RzL21lc29uLmJ1
aWxkIHwgMiArLQ0KPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9tZXNvbi5idWlsZCBiL21lc29u
LmJ1aWxkDQo+ID4gPiBpbmRleCA2MjY4YzU4ZDM2MzQuLjRlNWJiMzIzZmE0OSAxMDA2NDQNCj4g
PiA+IC0tLSBhL21lc29uLmJ1aWxkDQo+ID4gPiArKysgYi9tZXNvbi5idWlsZA0KPiA+ID4gQEAg
LTE3OSw2ICsxNzksNyBAQCBtYXRoID0gY2MuZmluZF9saWJyYXJ5KCdtJykNCj4gPiA+ICByZWFs
dGltZSA9IGNjLmZpbmRfbGlicmFyeSgncnQnKQ0KPiA+ID4gIGRsc3ltID0gY2MuZmluZF9saWJy
YXJ5KCdkbCcpDQo+ID4gPiAgemxpYiA9IGNjLmZpbmRfbGlicmFyeSgneicpDQo+ID4gPiArbGli
YXRvbWljID0gY2MuZmluZF9saWJyYXJ5KCdhdG9taWMnKQ0KPiA+ID4gIA0KPiA+ID4gIGlmIGNj
Lmhhc19oZWFkZXIoJ2xpbnV4L2tkLmgnKQ0KPiA+ID4gIAljb25maWcuc2V0KCdIQVZFX0xJTlVY
X0tEX0gnLCAxKQ0KPiA+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL21lc29uLmJ1aWxkIGIvdGVzdHMv
bWVzb24uYnVpbGQNCj4gPiA+IGluZGV4IDgwNjc2NmU1MTY2Ny4uNjg3N2NjZDU5MjM1IDEwMDY0
NA0KPiA+ID4gLS0tIGEvdGVzdHMvbWVzb24uYnVpbGQNCj4gPiA+ICsrKyBiL3Rlc3RzL21lc29u
LmJ1aWxkDQo+ID4gPiBAQCAtMjMzLDcgKzIzMyw3IEBAIGk5MTVfcHJvZ3MgPSBbDQo+ID4gPiAg
CSdpOTE1X3N1c3BlbmQnLA0KPiA+ID4gIF0NCj4gPiA+ICANCj4gPiA+IC10ZXN0X2RlcHMgPSBb
IGlndF9kZXBzIF0NCj4gPiA+ICt0ZXN0X2RlcHMgPSBbIGlndF9kZXBzLCBsaWJhdG9taWMgXQ0K
PiA+ID4gIA0KPiA+ID4gIGlmIGxpYmRybV9ub3V2ZWF1LmZvdW5kKCkNCj4gPiA+ICAJdGVzdF9w
cm9ncyArPSBbDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
