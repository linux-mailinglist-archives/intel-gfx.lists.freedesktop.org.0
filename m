Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 355B354CC8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 12:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5096E0DC;
	Tue, 25 Jun 2019 10:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D048C6E0D5;
 Tue, 25 Jun 2019 10:54:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 03:54:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="172322768"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by orsmga002.jf.intel.com with ESMTP; 25 Jun 2019 03:54:25 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.143]) by
 IRSMSX102.ger.corp.intel.com ([169.254.2.159]) with mapi id 14.03.0439.000;
 Tue, 25 Jun 2019 11:54:24 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [PATCH i-g-t v4 0/4] Use C11 atomics
Thread-Index: AQHVKqk0WpL3/mm1Gk6yFiaqOBplG6asIqYA
Date: Tue, 25 Jun 2019 10:54:23 +0000
Message-ID: <7643ddeebd6cba07197b76b9c646436029f0027b.camel@intel.com>
References: <cover.1561393147.git.guillaume.tucker@collabora.com>
In-Reply-To: <cover.1561393147.git.guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <DF38D6C14574304DA0A30423FC59E56C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v4 0/4] Use C11 atomics
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

T24gTW9uLCAyMDE5LTA2LTI0IGF0IDE3OjIyICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBUaGlzIHNlcmllcyByZXBsYWNlcyBjYWxscyB0byB0aGUgX19zeW5jXyogZnVuY3Rpb25z
IHdpdGggdGhlIG1vcmUNCj4gcmVjZW50IGF0b21pY18qIG9uZXMgZGVmaW5lZCBpbiBzdGRhdG9t
aWMuaCBpbiBnZW1fY3JlYXRlIGFuZA0KPiBzd19zeW5jLiAgSXQgYWxzbyBhZGRzIGRlcGVuZGVu
Y3kgb24gbGliYXRvbWljIHdoZW4gcmVxdWlyZWQsIHRoYXQgaXMNCj4gdG8gc2F5IHdoZW4gdGhl
IENQVSBhcmNoaXRlY3R1cmUgZG9lc24ndCBwcm92aWRlIG5hdGl2ZSBzdXBwb3J0IGZvcg0KPiBz
b21lIGF0b21pYyBvcGVyYXRpb25zLiAgVGhpcyBtYWtlcyB0aGUgdGVzdHMgbW9yZSBwb3J0YWJs
ZSwgaW4NCj4gcGFydGljdWxhciBmb3IgMzItYml0IE1JUFMgd2hpY2ggZG9lc24ndCBzdXBwb3J0
IDY0LWJpdCBhdG9taWNzLg0KDQpUaGFua3MgZm9yIHRoaXMgc2VyaWVzISBQdXNoZWQ6DQoNClRv
IGdpdGxhYi5mcmVlZGVza3RvcC5vcmc6ZHJtL2lndC1ncHUtdG9vbHMuZ2l0DQogICBhNmY1Y2M4
NTRlZmIuLjVlYWZhMzNkYmRiMSAgbWFzdGVyIC0+IG1hc3Rlcg0KDQo+IHYyOg0KPiAgLSBhZGQg
bGlua2VyIHRlc3QgdG8gb25seSBhZGQgZGVwZW5kZW5jeSBvbiBsaWJhdG9taWMgd2hlbiBuZWVk
ZWQNCj4gIC0gb25seSBhZGQgbGliYXRvbWljIGRlcGVuZGVuY3kgdG8gZ2VtX2NyZWF0ZSBhbmQg
c3dfc3luYw0KPiAgLSB1c2Ugc3RkYXRvbWljLmggYW5kIF9BdG9taWMgdHlwZSBtb2RpZmllcg0K
PiAgLSBleHBsaWNpdGx5IHJlcXVpcmUgbGliYXRvbWljIGluIGFsbCBEb2NrZXIgaW1hZ2VzDQo+
IA0KPiB2MzoNCj4gIC0gdXNlIHN1Yi1hcmNoIGxpYmF0b21pYzEgaW4gRGViaWFuIGRvY2tlciBp
bWFnZXMNCj4gIC0gdXNlIG51bGxfZGVwIGluIG1lc29uLmJ1aWxkDQo+IA0KPiB2NDoNCj4gIC0g
cmViYXNlIHdpdGggY2hhbmdlcyBpbiBEb2NrZXJmaWxlLmRlYmlhbi1taW5pbWFsDQo+IA0KPiBH
dWlsbGF1bWUgVHVja2VyICg0KToNCj4gICBtZXNvbjogYWRkIGxpYmF0b21pYyBkZXBlbmRlbmN5
DQo+ICAgZ2l0bGFiLWNpOiBhZGQgbGliYXRvbWljIHRvIGRvY2tlciBpbWFnZXMNCj4gICBpOTE1
L2dlbV9jcmVhdGU6IHVzZSBhdG9taWNfKiBpbnN0ZWFkIG9mIF9fc3luY18qDQo+ICAgdGVzdHMv
c3dfc3luYzogdXNlIGF0b21pY18qIGluc3RlYWQgb2YgX19zeW5jXyoNCj4gDQo+ICBEb2NrZXJm
aWxlLmRlYmlhbi1hcm02NCAgIHwgIDEgKw0KPiAgRG9ja2VyZmlsZS5kZWJpYW4tYXJtaGYgICB8
ICAxICsNCj4gIERvY2tlcmZpbGUuZGViaWFuLW1pbmltYWwgfCAgMSArDQo+ICBEb2NrZXJmaWxl
LmZlZG9yYSAgICAgICAgIHwgIDIgKy0NCj4gIG1lc29uLmJ1aWxkICAgICAgICAgICAgICAgfCAx
NCArKysrKysrKysrKysrKw0KPiAgdGVzdHMvTWFrZWZpbGUuYW0gICAgICAgICB8ICAzICsrLQ0K
PiAgdGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMgICB8IDE2ICsrKysrKysrKysrKy0tLS0NCj4gIHRl
c3RzL21lc29uLmJ1aWxkICAgICAgICAgfCAxNyArKysrKysrKysrKysrKystLQ0KPiAgdGVzdHMv
c3dfc3luYy5jICAgICAgICAgICB8IDEyICsrKysrKy0tLS0tLQ0KPiAgOSBmaWxlcyBjaGFuZ2Vk
LCA1MyBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+IDIuMjAuMQ0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
