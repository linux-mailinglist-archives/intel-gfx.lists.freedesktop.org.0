Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF6A4A1F0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:20:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 611B86E185;
	Tue, 18 Jun 2019 13:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 552486E185;
 Tue, 18 Jun 2019 13:20:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 06:20:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="150270650"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by orsmga007.jf.intel.com with ESMTP; 18 Jun 2019 06:20:47 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.143]) by
 IRSMSX101.ger.corp.intel.com ([169.254.1.80]) with mapi id 14.03.0439.000;
 Tue, 18 Jun 2019 14:20:46 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [PATCH i-g-t v3 1/4] meson: add libatomic dependency
Thread-Index: AQHVJdFZXMaE7dfInU2P3MOpN9u/QaahVPSA
Date: Tue, 18 Jun 2019 13:20:45 +0000
Message-ID: <db85b6b438cbd4434e19ba1dd9556591e2618d1b.camel@intel.com>
References: <20190618122746.61310-1-guillaume.tucker@collabora.com>
 <20190618122746.61310-2-guillaume.tucker@collabora.com>
In-Reply-To: <20190618122746.61310-2-guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <2AA1ED66B4EC0D459423EAD8D4E8BF84@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 1/4] meson: add libatomic dependency
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

T24gVHVlLCAyMDE5LTA2LTE4IGF0IDEzOjI3ICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBBZGQgY29uZGl0aW9uYWwgZGVwZW5kZW5jeSBvbiBsaWJhdG9taWMgaW4gb3JkZXIgdG8g
YmUgYWJsZSB0byB1c2UgdGhlDQo+IF9fYXRvbWljXyogZnVuY3Rpb25zIGluc3RlYWQgb2YgdGhl
IG9sZGVyIF9fc3luY18qIG9uZXMuICBUaGUNCj4gbGliYXRvbWljIGxpYnJhcnkgaXMgb25seSBu
ZWVkZWQgd2hlbiB0aGVyZSBhcmVuJ3QgYW55IG5hdGl2ZSBzdXBwb3J0DQo+IG9uIHRoZSBjdXJy
ZW50IGFyY2hpdGVjdHVyZSwgc28gYSBsaW5rZXIgdGVzdCBpcyB1c2VkIGZvciB0aGlzDQo+IHB1
cnBvc2UuICBUaGlzIGVuYWJsZXMgYXRvbWljIG9wZXJhdGlvbnMgdG8gYmUgb24gYSB3aWRlciBu
dW1iZXIgb2YNCj4gYXJjaGl0ZWN0dXJlcyBpbmNsdWRpbmcgTUlQUy4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4N
Cj4gLS0tDQo+IA0KPiBOb3RlczoNCj4gICAgIHYyOiBhZGQgbGlua2VyIHRlc3QgZm9yIGxpYmF0
b21pYw0KPiAgICAgdjM6IHVzZSBudWxsX2RlcA0KPiANCj4gIG1lc29uLmJ1aWxkIHwgMTQgKysr
KysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvbWVzb24uYnVpbGQgYi9tZXNvbi5idWlsZA0KPiBpbmRleCA2MjY4YzU4ZDM2
MzQuLjExOGFkNjY3ZmZiNSAxMDA2NDQNCj4gLS0tIGEvbWVzb24uYnVpbGQNCj4gKysrIGIvbWVz
b24uYnVpbGQNCj4gQEAgLTE4MCw2ICsxODAsMjAgQEAgcmVhbHRpbWUgPSBjYy5maW5kX2xpYnJh
cnkoJ3J0JykNCj4gIGRsc3ltID0gY2MuZmluZF9saWJyYXJ5KCdkbCcpDQo+ICB6bGliID0gY2Mu
ZmluZF9saWJyYXJ5KCd6JykNCj4gIA0KPiAraWYgY2MubGlua3MoJycnDQo+ICsjaW5jbHVkZSA8
c3RkaW50Lmg+DQo+ICtpbnQgbWFpbih2b2lkKSB7DQo+ICsgIHVpbnQzMl90IHgzMiA9IDA7DQo+
ICsgIHVpbnQ2NF90IHg2NCA9IDA7DQo+ICsgIF9fYXRvbWljX2xvYWRfbigmeDMyLCBfX0FUT01J
Q19TRVFfQ1NUKTsNCj4gKyAgX19hdG9taWNfbG9hZF9uKCZ4NjQsIF9fQVRPTUlDX1NFUV9DU1Qp
Ow0KDQpTZWUgbXkgcmVwbHkgZm9yIHYyLiBJJ3ZlIGxvb2tlZCBpbnRvIHRoaXMgYSBsaXR0bGUg
Yml0IG1vcmUgYW5kIGl0DQpsb29rcyBsaWtlIF9fYXRvbWljXyogZnVuY3Rpb25zIGFyZSBhIEdD
QyBpbXBsZW1lbnRhdGlvbiBkZXRhaWwuIE9Jbg0Kb3RoZXIgd29yZHMsIHRoZSBDMTEgc3RhbmRh
cmQgWzFdIGRlZmluZXMgb25seSBhdG9taWNfKiBmdW5jdGlvbnMsIGFuZA0KR0NDIGltcGxlbWVu
dHMgdGhlbSB3aXRoIF9fYXRvbWljXyogYnVpbHRpbnMgd2hlbiB0aGUgcGxhdGZvcm0gc3VwcG9y
dHMNCml0LCBidXQgb3RoZXIgY29tcGlsZXJzIG1pZ2h0IG5vdCBleHBvc2UgdGhvc2UgYnVpbHRp
bnMgYW5kIHN0aWxsDQpzdXBwb3J0IGF0b21pY18qIGZ1bmN0aW9ucyB3aXRob3V0IHRoZW0uIFRo
aXMgYWxzbyBzZWVtcyB0byBiZSB3aGF0IFsyXQ0KZXhwbGFpbnM6DQoNCj4gVGhlIGZpcnN0IHNl
dCBvZiBsaWJyYXJ5IGZ1bmN0aW9ucyBhcmUgbmFtZWQgX19hdG9taWNfKi4gVGhpcyBzZXQgaGFz
DQo+IGJlZW4g4oCcc3RhbmRhcmRpemVk4oCdIGJ5IEdDQywgYW5kIGlzIGRlc2NyaWJlZCBiZWxv
dy4gKFNlZSBhbHNvIEdDQ+KAmXMNCj4gZG9jdW1lbnRhdGlvbikNCg0KKE5vdGljZSB0aGUgcXVv
dGVzIGFyb3VuZCDigJxzdGFuZGFyZGl6ZWTigJ0sIG1lYW5pbmcgdGhleSBhcmUgYSBHQ0MNCmV4
dGVuc2lvbikNCg0KWzFdOiBodHRwOi8vd3d3Lm9wZW4tc3RkLm9yZy9qdGMxL3NjMjIvd2cxNC93
d3cvZG9jcy9uMTU0OC5wZGYNClsyXTogaHR0cHM6Ly9sbHZtLm9yZy9kb2NzL0F0b21pY3MuaHRt
bA0KDQo+ICsgIHJldHVybiAwOw0KPiArfScnJywgbmFtZSA6ICdidWlsdC1pbiBhdG9taWNzJykN
Cj4gKwlsaWJhdG9taWMgPSBudWxsX2RlcA0KPiArZWxzZQ0KPiArCWxpYmF0b21pYyA9IGNjLmZp
bmRfbGlicmFyeSgnYXRvbWljJykNCj4gK2VuZGlmDQo+ICsNCj4gIGlmIGNjLmhhc19oZWFkZXIo
J2xpbnV4L2tkLmgnKQ0KPiAgCWNvbmZpZy5zZXQoJ0hBVkVfTElOVVhfS0RfSCcsIDEpDQo+ICBl
bmRpZg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
