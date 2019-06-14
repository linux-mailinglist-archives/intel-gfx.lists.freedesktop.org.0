Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F3A456F9
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 10:07:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F6B48944A;
	Fri, 14 Jun 2019 08:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2720E8941E;
 Fri, 14 Jun 2019 08:07:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 01:07:30 -0700
X-ExtLoop1: 1
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2019 01:07:28 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 IRSMSX153.ger.corp.intel.com ([169.254.9.219]) with mapi id 14.03.0415.000;
 Fri, 14 Jun 2019 09:07:28 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t v2 1/4] meson: add libatomic dependency
Thread-Index: AQHVIe95evnpkY7gRUiJP1ElnlUSe6aau9mA
Date: Fri, 14 Jun 2019 08:07:27 +0000
Message-ID: <d479de99f2729dbd0f2f0615b41ebeaff025cc9a.camel@intel.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
 <b1e0d69a8352f9fd2e65293f2292086f4ef260e7.1560433744.git.guillaume.tucker@collabora.com>
In-Reply-To: <b1e0d69a8352f9fd2e65293f2292086f4ef260e7.1560433744.git.guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <C64AE69AAE50924393491A9D121878B9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 1/4] meson: add libatomic
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

T24gVGh1LCAyMDE5LTA2LTEzIGF0IDE0OjUzICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBBZGQgY29uZGl0aW9uYWwgZGVwZW5kZW5jeSBvbiBsaWJhdG9taWMgaW4gb3JkZXIgdG8g
YmUgYWJsZSB0byB1c2UgdGhlDQo+IF9fYXRvbWljXyogZnVuY3Rpb25zIGluc3RlYWQgb2YgdGhl
IG9sZGVyIF9fc3luY18qIG9uZXMuICBUaGUNCj4gbGliYXRvbWljIGxpYnJhcnkgaXMgb25seSBu
ZWVkZWQgd2hlbiB0aGVyZSBhcmVuJ3QgYW55IG5hdGl2ZSBzdXBwb3J0DQo+IG9uIHRoZSBjdXJy
ZW50IGFyY2hpdGVjdHVyZSwgc28gYSBsaW5rZXIgdGVzdCBpcyB1c2VkIGZvciB0aGlzDQo+IHB1
cnBvc2UuICBUaGlzIGVuYWJsZXMgYXRvbWljIG9wZXJhdGlvbnMgdG8gYmUgb24gYSB3aWRlciBu
dW1iZXIgb2YNCj4gYXJjaGl0ZWN0dXJlcyBpbmNsdWRpbmcgTUlQUy4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4N
Cj4gLS0tDQo+ICBtZXNvbi5idWlsZCB8IDEzICsrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWVzb24uYnVpbGQgYi9t
ZXNvbi5idWlsZA0KPiBpbmRleCA2MjY4YzU4ZDM2MzQuLmRhMjVhMjhmMzI2OCAxMDA2NDQNCj4g
LS0tIGEvbWVzb24uYnVpbGQNCj4gKysrIGIvbWVzb24uYnVpbGQNCj4gQEAgLTE3OSw2ICsxNzks
MTkgQEAgbWF0aCA9IGNjLmZpbmRfbGlicmFyeSgnbScpDQo+ICByZWFsdGltZSA9IGNjLmZpbmRf
bGlicmFyeSgncnQnKQ0KPiAgZGxzeW0gPSBjYy5maW5kX2xpYnJhcnkoJ2RsJykNCj4gIHpsaWIg
PSBjYy5maW5kX2xpYnJhcnkoJ3onKQ0KPiAraWYgY2MubGlua3MoJycnDQo+ICsjaW5jbHVkZSA8
c3RkaW50Lmg+DQo+ICtpbnQgbWFpbih2b2lkKSB7DQo+ICsgIHVpbnQzMl90IHgzMiA9IDA7DQo+
ICsgIHVpbnQ2NF90IHg2NCA9IDA7DQo+ICsgIF9fYXRvbWljX2xvYWRfbigmeDMyLCBfX0FUT01J
Q19TRVFfQ1NUKTsNCj4gKyAgX19hdG9taWNfbG9hZF9uKCZ4NjQsIF9fQVRPTUlDX1NFUV9DU1Qp
Ow0KDQpNaW5vcjogbWF5YmUgd2UgY291bGQndmUgdXNlZCBzdGRhdG9taWMuaCdzIGF0b21pY18q
IGZ1bmN0aW9ucyAod2l0aG91dA0KdGhlICJfXyIgcHJlZml4KSBmb3IgY29uc2lzdGVuY3kgd2l0
aCB0aGUgYWN0dWFsIElHVCBjb2RlPw0KDQo+ICsgIHJldHVybiAwOw0KPiArfScnJywgbmFtZSA6
ICdidWlsdC1pbiBhdG9taWNzJykNCj4gKwlsaWJhdG9taWMgPSBbXQ0KDQpXZSBjb3VsZCB1c2Ug
bnVsbF9kZXAgaW5zdGVhZCwgdG8gbWFrZSBpdCBjb25zaXN0ZW50IHdpdGggdGhlIG90aGVyDQpi
cmFuY2guDQoNCj4gK2Vsc2UNCj4gKwlsaWJhdG9taWMgPSBjYy5maW5kX2xpYnJhcnkoJ2F0b21p
YycpDQo+ICtlbmRpZg0KPiAgDQo+ICBpZiBjYy5oYXNfaGVhZGVyKCdsaW51eC9rZC5oJykNCj4g
IAljb25maWcuc2V0KCdIQVZFX0xJTlVYX0tEX0gnLCAxKQ0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
