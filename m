Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 725F54B261
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 08:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E1E46E2A0;
	Wed, 19 Jun 2019 06:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21E466E29E;
 Wed, 19 Jun 2019 06:50:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 23:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="164940752"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
 by orsmga006.jf.intel.com with ESMTP; 18 Jun 2019 23:50:39 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.143]) by
 IRSMSX108.ger.corp.intel.com ([169.254.11.46]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 07:50:38 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [PATCH i-g-t v3 2/4] gitlab-ci: add libatomic to docker images
Thread-Index: AQHVJdFibLmsmrYZZU6bzFo+LJWC46aiekaA
Date: Wed, 19 Jun 2019 06:50:37 +0000
Message-ID: <b19353c7c4b602b58aa3a326d6ed5a09fe7dd7c9.camel@intel.com>
References: <20190618122746.61310-1-guillaume.tucker@collabora.com>
 <20190618122746.61310-3-guillaume.tucker@collabora.com>
In-Reply-To: <20190618122746.61310-3-guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <735FDB203DBAFE41A2B6B7ABFEEEA720@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 2/4] gitlab-ci: add libatomic to
 docker images
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
Og0KPiBBZGQgbGliYXRvbWljIHRvIHRoZSBGZWRvcmEgZG9ja2VyIGltYWdlIHNvIGl0IGNhbiBs
aW5rIGJpbmFyaWVzIHRoYXQNCj4gdXNlIF9fYXRvbWljXyogZnVuY3Rpb25zLiAgQWxzbyBleHBs
aWNpdGx5IGFkZCBsaWJhdG9taWMxIHRvIERlYmlhbg0KPiBkb2NrZXIgaW1hZ2VzIGFzIGl0IGlz
IG5lZWRlZCBpbiBwYXJ0aWN1bGFyIG9uIG5vbi14ODYgYXJjaGl0ZWN0dXJlcw0KPiBmb3IgcnVu
LXRpbWUgbGlua2FnZS4NCg0KUGVyICJbUEFUQ0ggaS1nLXQgdjMgMS80XSBtZXNvbjogYWRkIGxp
YmF0b21pYyBkZXBlbmRlbmN5IiwgZG8gd2UgbmVlZA0KbGliYXRvbWljIGZvciBhbGwgb2YgdGhl
c2UgaW1hZ2VzPw0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgVHVja2VyIDxndWls
bGF1bWUudHVja2VyQGNvbGxhYm9yYS5jb20+DQo+IC0tLQ0KPiANCj4gTm90ZXM6DQo+ICAgICB2
MjogYWRkIGxpYmF0b21pYzEgaW4gRGViaWFuIGRvY2tlciBpbWFnZXMNCj4gICAgIHYzOiBhZGQg
bGliYXRvbWljMSBmb3Igbm9uLXg4NiBhcmNoZXMgaW4gRGViaWFuIGRvY2tlciBpbWFnZXMNCj4g
DQo+ICBEb2NrZXJmaWxlLmRlYmlhbiAgICAgICB8IDEgKw0KPiAgRG9ja2VyZmlsZS5kZWJpYW4t
YXJtNjQgfCAxICsNCj4gIERvY2tlcmZpbGUuZGViaWFuLWFybWhmIHwgMSArDQo+ICBEb2NrZXJm
aWxlLmZlZG9yYSAgICAgICB8IDIgKy0NCj4gIDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvRG9ja2VyZmlsZS5kZWJpYW4g
Yi9Eb2NrZXJmaWxlLmRlYmlhbg0KPiBpbmRleCBiOWMzYmUzOTQ1ZTAuLmQyMzU5MTg1MGM0ZSAx
MDA2NDQNCj4gLS0tIGEvRG9ja2VyZmlsZS5kZWJpYW4NCj4gKysrIGIvRG9ja2VyZmlsZS5kZWJp
YW4NCj4gQEAgLTYsNiArNiw3IEBAIFJVTiBhcHQtZ2V0IGluc3RhbGwgLXkgXA0KPiAgCQkJZmxl
eCBcDQo+ICAJCQliaXNvbiBcDQo+ICAJCQlwa2ctY29uZmlnIFwNCj4gKwkJCWxpYmF0b21pYzEg
XA0KPiAgCQkJbGlicGNpYWNjZXNzLWRldiBcDQo+ICAJCQlsaWJrbW9kLWRldiBcDQo+ICAJCQls
aWJwcm9jcHMtZGV2IFwNCj4gZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZGViaWFuLWFybTY0IGIv
RG9ja2VyZmlsZS5kZWJpYW4tYXJtNjQNCj4gaW5kZXggN2IzYTNjN2NhODAzLi5jOWZiMjhjODA0
YjggMTAwNjQ0DQo+IC0tLSBhL0RvY2tlcmZpbGUuZGViaWFuLWFybTY0DQo+ICsrKyBiL0RvY2tl
cmZpbGUuZGViaWFuLWFybTY0DQo+IEBAIC0xNCw2ICsxNCw3IEBAIFJVTiBkcGtnIC0tYWRkLWFy
Y2hpdGVjdHVyZSBhcm02NA0KPiAgUlVOIGFwdC1nZXQgdXBkYXRlDQo+ICBSVU4gYXB0LWdldCBp
bnN0YWxsIC15IFwNCj4gIAkJCWdjYy1hYXJjaDY0LWxpbnV4LWdudSBcDQo+ICsJCQlsaWJhdG9t
aWMxOmFybTY0IFwNCj4gIAkJCWxpYnBjaWFjY2Vzcy1kZXY6YXJtNjQgXA0KPiAgCQkJbGlia21v
ZC1kZXY6YXJtNjQgXA0KPiAgCQkJbGlicHJvY3BzLWRldjphcm02NCBcDQo+IGRpZmYgLS1naXQg
YS9Eb2NrZXJmaWxlLmRlYmlhbi1hcm1oZiBiL0RvY2tlcmZpbGUuZGViaWFuLWFybWhmDQo+IGlu
ZGV4IGM2N2ExZTJhY2Y2YS4uM2ExMzNkODQ5ZDY4IDEwMDY0NA0KPiAtLS0gYS9Eb2NrZXJmaWxl
LmRlYmlhbi1hcm1oZg0KPiArKysgYi9Eb2NrZXJmaWxlLmRlYmlhbi1hcm1oZg0KPiBAQCAtMTQs
NiArMTQsNyBAQCBSVU4gZHBrZyAtLWFkZC1hcmNoaXRlY3R1cmUgYXJtaGYNCj4gIFJVTiBhcHQt
Z2V0IHVwZGF0ZQ0KPiAgUlVOIGFwdC1nZXQgaW5zdGFsbCAteSBcDQo+ICAJCQlnY2MtYXJtLWxp
bnV4LWdudWVhYmloZiBcDQo+ICsJCQlsaWJhdG9taWMxOmFybWhmIFwNCj4gIAkJCWxpYnBjaWFj
Y2Vzcy1kZXY6YXJtaGYgXA0KPiAgCQkJbGlia21vZC1kZXY6YXJtaGYgXA0KPiAgCQkJbGlicHJv
Y3BzLWRldjphcm1oZiBcDQo+IGRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmZlZG9yYSBiL0RvY2tl
cmZpbGUuZmVkb3JhDQo+IGluZGV4IDY2ODZlNTg3NjEzZC4uYzg0YjQxMmIwNzIzIDEwMDY0NA0K
PiAtLS0gYS9Eb2NrZXJmaWxlLmZlZG9yYQ0KPiArKysgYi9Eb2NrZXJmaWxlLmZlZG9yYQ0KPiBA
QCAtMSw3ICsxLDcgQEANCj4gIEZST00gZmVkb3JhOjMwDQo+ICANCj4gIFJVTiBkbmYgaW5zdGFs
bCAteSBcDQo+IC0JZ2NjIGZsZXggYmlzb24gbWVzb24gbmluamEtYnVpbGQgeGRvdG9vbCBcDQo+
ICsJZ2NjIGZsZXggYmlzb24gbGliYXRvbWljIG1lc29uIG5pbmphLWJ1aWxkIHhkb3Rvb2wgXA0K
PiAgCSdwa2djb25maWcobGliZHJtKScgXA0KPiAgCSdwa2djb25maWcocGNpYWNjZXNzKScgXA0K
PiAgCSdwa2djb25maWcobGlia21vZCknIFwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
