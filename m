Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF9D3E4D69
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 21:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 038CC89838;
	Mon,  9 Aug 2021 19:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E6F89838
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Aug 2021 19:51:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="275801520"
X-IronPort-AV: E=Sophos;i="5.84,308,1620716400"; d="scan'208";a="275801520"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2021 12:51:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,308,1620716400"; d="scan'208";a="483713773"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 09 Aug 2021 12:51:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 9 Aug 2021 12:51:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 9 Aug 2021 12:51:35 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Mon, 9 Aug 2021 12:51:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
CC: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH] drm/i915: Free all DMC payloads
Thread-Index: AQHXjVeDDciv7+AHxUOg+4G1s6sD0KtsC+mA
Date: Mon, 9 Aug 2021 19:51:35 +0000
Message-ID: <3ecaacb7c7975f3f906a26054c9f550e7b632d3e.camel@intel.com>
References: <20210809194805.3793060-1-lucas.demarchi@intel.com>
In-Reply-To: <20210809194805.3793060-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <4708CC6ADC533B449541CB8CB57606BB@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Free all DMC payloads
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTA4LTA5IGF0IDEyOjQ4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPg0KPiANCj4g
RnJlZSBhbGwgdGhlIERNQyBwYXlsb2Fkcywgbm90IGp1c3QgRE1DX01BSU4uDQo+IA0KPiB1bnJl
ZmVyZW5jZWQgb2JqZWN0IDB4ZmZmZjg4ZmYzMmQ0ZDgwMCAoc2l6ZSAxMDI0KToNCj4gICBjb21t
ICJrd29ya2VyLzE6NSIsIHBpZCA3MDEsIGppZmZpZXMgNDI5NDkwNDIzOSAoYWdlIDEwOS43MzZz
KQ0KPiAgIGhleCBkdW1wIChmaXJzdCAzMiBieXRlcyk6DQo+ICAgICA0MCA0MCAwMCAwYyAwMyAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAgQEAuLi4uLi4uLi4uLi4uLg0KPiAgICAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgIC4uLi4uLi4u
Li4uLi4uLi4NCj4gICBiYWNrdHJhY2U6DQo+ICAgICBbPDAwMDAwMDAwYmE5ZDBkOTU+XSBkbWNf
bG9hZF93b3JrX2ZuKzB4MzRkLzB4NTEwIFtpOTE1XQ0KPiAgICAgWzwwMDAwMDAwMDEwNDlmY2Fi
Pl0gcHJvY2Vzc19vbmVfd29yaysweDI2MS8weDU1MA0KPiAgICAgWzwwMDAwMDAwMGVlYjk5NWFj
Pl0gd29ya2VyX3RocmVhZCsweDQ5LzB4M2MwDQo+ICAgICBbPDAwMDAwMDAwMjEwMzFkYzM+XSBr
dGhyZWFkKzB4MTBiLzB4MTQwDQo+ICAgICBbPDAwMDAwMDAwNGEwZjY5ZWU+XSByZXRfZnJvbV9m
b3JrKzB4MWYvMHgzMA0KPiB1bnJlZmVyZW5jZWQgb2JqZWN0IDB4ZmZmZjg4ZmYwYmRlNDAwMCAo
c2l6ZSAxMDI0KToNCj4gICBjb21tICJrd29ya2VyLzA6MyIsIHBpZCA3MDgsIGppZmZpZXMgNDI5
NDkwNDQ2OSAoYWdlIDEwOC44MTZzKQ0KPiAgIGhleCBkdW1wIChmaXJzdCAzMiBieXRlcyk6DQo+
ICAgICA0MCA0MCAwMCAwYyAwMSAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAgQEAu
Li4uLi4uLi4uLi4uLg0KPiAgICAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgIC4uLi4uLi4uLi4uLi4uLi4NCj4gICBiYWNrdHJhY2U6DQo+ICAgICBbPDAw
MDAwMDAwYmE5ZDBkOTU+XSBkbWNfbG9hZF93b3JrX2ZuKzB4MzRkLzB4NTEwIFtpOTE1XQ0KPiAg
ICAgWzwwMDAwMDAwMDEwNDlmY2FiPl0gcHJvY2Vzc19vbmVfd29yaysweDI2MS8weDU1MA0KPiAg
ICAgWzwwMDAwMDAwMGVlYjk5NWFjPl0gd29ya2VyX3RocmVhZCsweDQ5LzB4M2MwDQo+ICAgICBb
PDAwMDAwMDAwMjEwMzFkYzM+XSBrdGhyZWFkKzB4MTBiLzB4MTQwDQo+ICAgICBbPDAwMDAwMDAw
NGEwZjY5ZWU+XSByZXRfZnJvbV9mb3JrKzB4MWYvMHgzMA0KDQoNClJldmlld2VkLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gRml4ZXM6
IDNkNTkyOGExNjhhOSAoImRybS9pOTE1L3hlbHBkOiBQaXBlIEEgRE1DIHBsdWdnaW5nIikNCj4g
Q2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4gQ2M6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzLnAud2lsc29uQGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYyB8IDUgKysrKy0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBpbmRleCAzYzNjNmNiNWMw
ZGYuLmIzYzhlMWM0NTBlZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kbWMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RtYy5jDQo+IEBAIC04MDUsMTEgKzgwNSwxNCBAQCB2b2lkIGludGVsX2RtY191Y29kZV9y
ZXN1bWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgICovDQo+ICB2b2lk
IGludGVsX2RtY191Y29kZV9maW5pKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikN
Cj4gIHsNCj4gKwlpbnQgaWQ7DQo+ICsNCj4gIAlpZiAoIUhBU19ETUMoZGV2X3ByaXYpKQ0KPiAg
CQlyZXR1cm47DQo+ICANCj4gIAlpbnRlbF9kbWNfdWNvZGVfc3VzcGVuZChkZXZfcHJpdik7DQo+
ICAJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIGRldl9wcml2LT5kbWMud2FrZXJlZik7DQo+
ICANCj4gLQlrZnJlZShkZXZfcHJpdi0+ZG1jLmRtY19pbmZvW0RNQ19GV19NQUlOXS5wYXlsb2Fk
KTsNCj4gKwlmb3IgKGlkID0gMDsgaWQgPCBETUNfRldfTUFYOyBpZCsrKQ0KPiArCQlrZnJlZShk
ZXZfcHJpdi0+ZG1jLmRtY19pbmZvW2lkXS5wYXlsb2FkKTsNCj4gIH0NCg0K
