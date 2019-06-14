Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1448545700
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 10:11:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09A2289020;
	Fri, 14 Jun 2019 08:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B7489020;
 Fri, 14 Jun 2019 08:11:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 01:11:20 -0700
X-ExtLoop1: 1
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jun 2019 01:11:19 -0700
Received: from irsmsx112.ger.corp.intel.com (10.108.20.5) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 14 Jun 2019 09:11:18 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 irsmsx112.ger.corp.intel.com ([169.254.1.21]) with mapi id 14.03.0415.000;
 Fri, 14 Jun 2019 09:11:18 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t v2 3/4] i915/gem_create: use atomic_*
 instead of __sync_*
Thread-Index: AQHVIe98V9O5CY+h2kaxGxBAWgrOw6aavO0A
Date: Fri, 14 Jun 2019 08:11:17 +0000
Message-ID: <2f7e2f61265d094eb13071d8dc0a6ea23d1f5d62.camel@intel.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
 <4eab9010dbe8d6e24d47c0c51b99dfa3f9475e5d.1560433744.git.guillaume.tucker@collabora.com>
In-Reply-To: <4eab9010dbe8d6e24d47c0c51b99dfa3f9475e5d.1560433744.git.guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <AC0633671001F640B9A2045DC617B03A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 3/4] i915/gem_create: use
 atomic_* instead of __sync_*
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
Og0KPiBUaGlzIGZpeGVzIGJ1aWxkcyBvbiBzb21lIGFyY2hpdGVjdHVyZXMsIGluIHBhcnRpY3Vs
YXIgTUlQUyB3aGljaA0KPiBkb2Vzbid0IGhhdmUgX19zeW5jX2FkZF9hbmRfZmV0Y2hfOCBhbmQg
X19zeW5jX3ZhbF9jb21wYXJlX2FuZF9zd2FwXzgNCj4gZm9yIDY0LWJpdCB2YXJpYWJsZSBoYW5k
bGluZy4NCj4gDQo+ICogcmVwbGFjZSBjYWxscyB0byB0aGUgb2xkZXIgX19zeW5jXyogZnVuY3Rp
b25zIHdpdGggdGhlIG5ldyBhdG9taWNfKg0KPiAgIHN0YW5kYXJkIG9uZXMNCj4gKiB1c2UgdGhl
IF9BdG9taWMgdHlwZSBtb2RpZmllciBhcyByZXF1aXJlZCB3aXRoIHN0ZGF0b21pYy5oIGZ1bmN0
aW9ucw0KPiAqIGFkZCBkZXBlbmRlbmN5IGZvciBnZW1fY3JlYXRlIG9uIGxpYmF0b21pYw0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogR3VpbGxhdW1lIFR1Y2tlciA8Z3VpbGxhdW1lLnR1Y2tlckBjb2xs
YWJvcmEuY29tPg0KDQpMR1RNIQ0KDQpSZXZpZXdlZC1ieTogU2ltb24gU2VyIDxzaW1vbi5zZXJA
aW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgdGVzdHMvTWFrZWZpbGUuYW0gICAgICAgfCAgMiArLQ0K
PiAgdGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMgfCAxNiArKysrKysrKysrKystLS0tDQo+ICB0ZXN0
cy9tZXNvbi5idWlsZCAgICAgICB8ICA5ICsrKysrKysrLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAy
MSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rlc3Rz
L01ha2VmaWxlLmFtIGIvdGVzdHMvTWFrZWZpbGUuYW0NCj4gaW5kZXggNWE0MjhiOGFjMjEzLi5i
YmQzODZjOWMyZGIgMTAwNjQ0DQo+IC0tLSBhL3Rlc3RzL01ha2VmaWxlLmFtDQo+ICsrKyBiL3Rl
c3RzL01ha2VmaWxlLmFtDQo+IEBAIC05MCw3ICs5MCw3IEBAIEFNX0xERkxBR1MgPSAtV2wsLS1h
cy1uZWVkZWQNCj4gIGRybV9pbXBvcnRfZXhwb3J0X0NGTEFHUyA9ICQoQU1fQ0ZMQUdTKSAkKFRI
UkVBRF9DRkxBR1MpDQo+ICBkcm1faW1wb3J0X2V4cG9ydF9MREFERCA9ICQoTERBREQpIC1scHRo
cmVhZA0KPiAgZ2VtX2NyZWF0ZV9DRkxBR1MgPSAkKEFNX0NGTEFHUykgJChUSFJFQURfQ0ZMQUdT
KQ0KPiAtZ2VtX2NyZWF0ZV9MREFERCA9ICQoTERBREQpIC1scHRocmVhZA0KPiArZ2VtX2NyZWF0
ZV9MREFERCA9ICQoTERBREQpIC1scHRocmVhZCAtbGF0b21pYw0KPiAgZ2VtX2Nsb3NlX3JhY2Vf
Q0ZMQUdTID0gJChBTV9DRkxBR1MpICQoVEhSRUFEX0NGTEFHUykNCj4gIGdlbV9jbG9zZV9yYWNl
X0xEQUREID0gJChMREFERCkgLWxwdGhyZWFkDQo+ICBnZW1fY3R4X3RocmFzaF9DRkxBR1MgPSAk
KEFNX0NGTEFHUykgJChUSFJFQURfQ0ZMQUdTKQ0KPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9n
ZW1fY3JlYXRlLmMgYi90ZXN0cy9pOTE1L2dlbV9jcmVhdGUuYw0KPiBpbmRleCA0M2NiZjQ1ZjI4
OWIuLjkwMDhjZDhhMjFlMyAxMDA2NDQNCj4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMN
Cj4gKysrIGIvdGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMNCj4gQEAgLTQ1LDYgKzQ1LDcgQEANCj4g
ICNpbmNsdWRlIDxzeXMvdGltZS5oPg0KPiAgI2luY2x1ZGUgPGdldG9wdC5oPg0KPiAgI2luY2x1
ZGUgPHB0aHJlYWQuaD4NCj4gKyNpbmNsdWRlIDxzdGRhdG9taWMuaD4NCj4gIA0KPiAgI2luY2x1
ZGUgPGRybS5oPg0KPiAgDQo+IEBAIC0xNTYsNyArMTU3LDE0IEBAIHN0YXRpYyB2b2lkIGludmFs
aWRfbm9uYWxpZ25lZF9zaXplKGludCBmZCkNCj4gIAlnZW1fY2xvc2UoZmQsIGNyZWF0ZS5oYW5k
bGUpOw0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgdWludDY0X3QgZ2V0X25wYWdlcyh1aW50NjRfdCAq
Z2xvYmFsLCB1aW50NjRfdCBucGFnZXMpDQo+ICtzdGF0aWMgdWludDY0X3QgYXRvbWljX2NvbXBh
cmVfc3dhcF91NjQoX0F0b21pYyh1aW50NjRfdCkgKnB0ciwNCj4gKwkJCQkJdWludDY0X3Qgb2xk
dmFsLCB1aW50NjRfdCBuZXd2YWwpDQo+ICt7DQo+ICsJYXRvbWljX2NvbXBhcmVfZXhjaGFuZ2Vf
c3Ryb25nKHB0ciwgJm9sZHZhbCwgbmV3dmFsKTsNCj4gKwlyZXR1cm4gb2xkdmFsOw0KPiArfQ0K
PiArDQo+ICtzdGF0aWMgdWludDY0X3QgZ2V0X25wYWdlcyhfQXRvbWljKHVpbnQ2NF90KSAqZ2xv
YmFsLCB1aW50NjRfdCBucGFnZXMpDQo+ICB7DQo+ICAJdWludDY0X3QgdHJ5LCBvbGQsIG1heDsN
Cj4gIA0KPiBAQCAtMTY1LDEzICsxNzMsMTMgQEAgc3RhdGljIHVpbnQ2NF90IGdldF9ucGFnZXMo
dWludDY0X3QgKmdsb2JhbCwgdWludDY0X3QgbnBhZ2VzKQ0KPiAgCQlvbGQgPSBtYXg7DQo+ICAJ
CXRyeSA9IDEgKyBucGFnZXMgJSAobWF4IC8gMik7DQo+ICAJCW1heCAtPSB0cnk7DQo+IC0JfSB3
aGlsZSAoKG1heCA9IF9fc3luY192YWxfY29tcGFyZV9hbmRfc3dhcChnbG9iYWwsIG9sZCwgbWF4
KSkgIT0gb2xkKTsNCj4gKwl9IHdoaWxlICgobWF4ID0gYXRvbWljX2NvbXBhcmVfc3dhcF91NjQo
Z2xvYmFsLCBvbGQsIG1heCkpICE9IG9sZCk7DQo+ICANCj4gIAlyZXR1cm4gdHJ5Ow0KPiAgfQ0K
PiAgDQo+ICBzdHJ1Y3QgdGhyZWFkX2NsZWFyIHsNCj4gLQl1aW50NjRfdCBtYXg7DQo+ICsJX0F0
b21pYyh1aW50NjRfdCkgbWF4Ow0KPiAgCWludCB0aW1lb3V0Ow0KPiAgCWludCBpOTE1Ow0KPiAg
fTsNCj4gQEAgLTIwMiw3ICsyMTAsNyBAQCBzdGF0aWMgdm9pZCAqdGhyZWFkX2NsZWFyKHZvaWQg
KmRhdGEpDQo+ICAJCX0NCj4gIAkJZ2VtX2Nsb3NlKGk5MTUsIGNyZWF0ZS5oYW5kbGUpOw0KPiAg
DQo+IC0JCV9fc3luY19hZGRfYW5kX2ZldGNoKCZhcmctPm1heCwgbnBhZ2VzKTsNCj4gKwkJYXRv
bWljX2ZldGNoX2FkZCgmYXJnLT5tYXgsIG5wYWdlcyk7DQo+ICAJfQ0KPiAgDQo+ICAJcmV0dXJu
IE5VTEw7DQo+IGRpZmYgLS1naXQgYS90ZXN0cy9tZXNvbi5idWlsZCBiL3Rlc3RzL21lc29uLmJ1
aWxkDQo+IGluZGV4IGYxNjhmYmJhZTJhOC4uZmZkNDMyZDM4MTkzIDEwMDY0NA0KPiAtLS0gYS90
ZXN0cy9tZXNvbi5idWlsZA0KPiArKysgYi90ZXN0cy9tZXNvbi5idWlsZA0KPiBAQCAtMTEwLDcg
KzExMCw2IEBAIGk5MTVfcHJvZ3MgPSBbDQo+ICAJJ2dlbV9jbG9zZV9yYWNlJywNCj4gIAknZ2Vt
X2NvbmN1cnJlbnRfYmxpdCcsDQo+ICAJJ2dlbV9jcHVfcmVsb2MnLA0KPiAtCSdnZW1fY3JlYXRl
JywNCj4gIAknZ2VtX2NzX3ByZWZldGNoJywNCj4gIAknZ2VtX2NzX3RsYicsDQo+ICAJJ2dlbV9j
dHhfYmFkX2Rlc3Ryb3knLA0KPiBAQCAtMjc3LDYgKzI3NiwxNCBAQCBmb3JlYWNoIHByb2cgOiBp
OTE1X3Byb2dzDQo+ICAJdGVzdF9saXN0ICs9IHByb2cNCj4gIGVuZGZvcmVhY2gNCj4gIA0KPiAr
dGVzdF9leGVjdXRhYmxlcyArPSBleGVjdXRhYmxlKCdnZW1fY3JlYXRlJywNCj4gKwkgICBqb2lu
X3BhdGhzKCdpOTE1JywgJ2dlbV9jcmVhdGUuYycpLA0KPiArCSAgIGRlcGVuZGVuY2llcyA6IHRl
c3RfZGVwcyArIFsgbGliYXRvbWljIF0sDQo+ICsJICAgaW5zdGFsbF9kaXIgOiBsaWJleGVjZGly
LA0KPiArCSAgIGluc3RhbGxfcnBhdGggOiBsaWJleGVjZGlyX3JwYXRoZGlyLA0KPiArCSAgIGlu
c3RhbGwgOiB0cnVlKQ0KPiArdGVzdF9saXN0ICs9ICdnZW1fY3JlYXRlJw0KPiArDQo+ICB0ZXN0
X2V4ZWN1dGFibGVzICs9IGV4ZWN1dGFibGUoJ2dlbV9jdHhfc3NldScsDQo+ICAJICAgam9pbl9w
YXRocygnaTkxNScsICdnZW1fY3R4X3NzZXUuYycpLA0KPiAgCSAgIGRlcGVuZGVuY2llcyA6IHRl
c3RfZGVwcyArIFsgbGliX2lndF9wZXJmIF0sDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
