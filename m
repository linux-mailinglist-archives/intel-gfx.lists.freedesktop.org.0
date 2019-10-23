Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4C8E2648
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 00:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101976E08A;
	Wed, 23 Oct 2019 22:15:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 658E06E08A
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 22:15:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 15:15:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,222,1569308400"; d="scan'208";a="223350840"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga004.fm.intel.com with ESMTP; 23 Oct 2019 15:15:20 -0700
Received: from orsmsx111.amr.corp.intel.com ([169.254.12.154]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.210]) with mapi id 14.03.0439.000;
 Wed, 23 Oct 2019 15:15:20 -0700
From: "Chegondi, Harish" <harish.chegondi@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/1] drm/i915: skip the second CRC even
 for GEN 7 GPUs
Thread-Index: AQHViXL3bAHwPcJ8/0OzIvawCz+VoqdpQSWA
Date: Wed, 23 Oct 2019 22:15:19 +0000
Message-ID: <04bac1828ae32de4e7cc2e8ab5a5bd92f8b8545e.camel@intel.com>
References: <cover.1571813756.git.harish.chegondi@intel.com>
 <bce95a8734ab5ed10c9f26395671ca0995767d2a.1571813756.git.harish.chegondi@intel.com>
In-Reply-To: <bce95a8734ab5ed10c9f26395671ca0995767d2a.1571813756.git.harish.chegondi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.32.4 (3.32.4-1.fc30) 
x-originating-ip: [10.54.81.127]
Content-ID: <AB1AB78E63FFD04094CD9356C0890CDA@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915: skip the second CRC even
 for GEN 7 GPUs
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksDQoNCkV2ZW4gdGhvdWdoIEkgdHJpZWQgdG8gbGluayB0aGlzIHBhdGNoIHdpdGggaXQncyBm
aXJzdCB2ZXJzaW9uIGJ5DQpzcGVjaWZ5aW5nIC0taW4tcmVwbHktdG89PG1lc3NhZ2UtaWQ+LCBp
dCB3YXNuJ3Qgc3VjY2Vzc2Z1bC4gU28gaGVyZSBpcw0KdGhlIGxpbmsgdG8gdGhlIGZpcnN0IHZl
cnNpb24gb2YgdGhlIHBhdGNoIGFuZCB0aGUgZGlzY3Vzc2lvbi4NCg0KaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzMwNTE1My8/c2VyaWVzPTYwNjk3JnJldj0xDQoNClRo
ZSBmaXJzdCB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2ggaGFzIGJlZW4gIkFja2VkLWJ5IiBidXQgd2Fz
bid0DQoiUmV2aWV3ZWQtYnkiIGFzIHRoZSBwYXRjaCBhZGRzIGFub3RoZXIgd29ya2Fyb3VuZCBv
biB0b3Agb2YgYW4gYWxyZWFkeQ0KZXhpc3Rpbmcgd29ya2Fyb3VuZC4gVGhlIHBhdGNoIGRvZXNu
J3QgZml4IHRoZSBjYXVzZSBvZiBpbnZhbGlkIENSQ3MNCmJlaW5nIGdlbmVyYXRlZCB3aGljaCBz
dGlsbCBuZWVkcyB0byBiZSBpbnZlc3RpZ2F0ZWQgYW5kIGZpeGVkLiBJIGFtDQpyZWJhc2luZyBh
bmQgcmVzZW5kaW5nIHRoZSBwYXRjaCB0byBzZWVrIGZlZWRiYWNrIG9uIGhvdyB0byBtb3ZlDQpm
dXJ0aGVyIHdpdGggdGhpcyBwYXRjaC4NCg0KVGhhbmsgWW91DQpIYXJpc2gNCg0KT24gV2VkLCAy
MDE5LTEwLTIzIGF0IDAwOjI0IC0wNzAwLCBIYXJpc2ggQ2hlZ29uZGkgd3JvdGU6DQo+IGRpc3Bs
YXlfcGlwZV9jcmNfaXJxX2hhbmRsZXIoKSBza2lwcyB0aGUgZmlyc3QgQ1JDIGZvciBhbGwgR1BV
cyBhbmQNCj4gdGhlDQo+IHNlY29uZCBDUkMgZm9yIEdFTjgrIEdQVXMuIFRoZSBzZWNvbmQgQ1JD
IGlzIGludmFsaWQgZXZlbiBmb3IgQllUDQo+IHdoaWNoDQo+IGlzIGEgR0VONyBHUFUuIFNvLCBz
a2lwIHRoZSBzZWNvbmQgQ1JDIGV2ZW4gZm9yIEdFTjcgR1BVcy4NCj4gDQo+IHYyOiBSZWJhc2UN
Cj4gDQo+IENjOiBKYW5pIFNhYXJpbmVuIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT4NCj4gQ2M6
IFRvbWkgU2FydmVsYSA8dG9taS5wLnNhcnZlbGFAaW50ZWwuY29tPg0KPiBDYzogUGV0cmkgTGF0
dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1h
YXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCj4gQWNrZWQtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEhhcmlzaCBDaGVnb25k
aSA8aGFyaXNoLmNoZWdvbmRpQGludGVsLmNvbT4NCj4gUmVmZXJlbmNlczogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTkxDQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDQgKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYw0KPiBpbmRleCA1NzJhNWMzN2NjNjEuLjMxMmNhOWQ1MjkyYSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jDQo+IEBAIC0xNTY1LDExICsxNTY1LDExIEBAIHN0YXRpYyB2b2lkDQo+
IGRpc3BsYXlfcGlwZV9jcmNfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LA0KPiAgCSAqIGJvbmtlcnMuIFNvIGxldCdzIGp1c3Qgd2FpdCBmb3IgdGhlIG5leHQg
dmJsYW5rIGFuZCByZWFkDQo+ICAJICogb3V0IHRoZSBidWdneSByZXN1bHQuDQo+ICAJICoNCj4g
LQkgKiBPbiBHRU44KyBzb21ldGltZXMgdGhlIHNlY29uZCBDUkMgaXMgYm9ua2VycyBhcyB3ZWxs
LCBzbw0KPiArCSAqIE9uIEdFTjcrIHNvbWV0aW1lcyB0aGUgc2Vjb25kIENSQyBpcyBib25rZXJz
IGFzIHdlbGwsIHNvDQo+ICAJICogZG9uJ3QgdHJ1c3QgdGhhdCBvbmUgZWl0aGVyLg0KPiAgCSAq
Lw0KPiAgCWlmIChwaXBlX2NyYy0+c2tpcHBlZCA8PSAwIHx8DQo+IC0JICAgIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDggJiYgcGlwZV9jcmMtPnNraXBwZWQgPT0gMSkpIHsNCj4gKwkgICAgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gNyAmJiBwaXBlX2NyYy0+c2tpcHBlZCA9PSAxKSkgew0KPiAg
CQlwaXBlX2NyYy0+c2tpcHBlZCsrOw0KPiAgCQlzcGluX3VubG9jaygmcGlwZV9jcmMtPmxvY2sp
Ow0KPiAgCQlyZXR1cm47DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
