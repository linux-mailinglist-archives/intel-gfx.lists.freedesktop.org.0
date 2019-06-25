Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7B654CA8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 12:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1581689E0E;
	Tue, 25 Jun 2019 10:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62CF689DB0;
 Tue, 25 Jun 2019 10:48:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 03:48:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="336809151"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by orsmga005.jf.intel.com with ESMTP; 25 Jun 2019 03:48:44 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.143]) by
 IRSMSX109.ger.corp.intel.com ([169.254.13.220]) with mapi id 14.03.0439.000;
 Tue, 25 Jun 2019 11:48:44 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [PATCH i-g-t v4 2/4] gitlab-ci: add libatomic to docker images
Thread-Index: AQHVKqlEGxXD/9q6mkqxFyfLZPOMLaasIRKA
Date: Tue, 25 Jun 2019 10:48:43 +0000
Message-ID: <15b6bc1656aa987ef408ba52b33403b0c1997508.camel@intel.com>
References: <cover.1561393147.git.guillaume.tucker@collabora.com>
 <def2edafe1432008d56bc7da892c374f46ef1aac.1561393147.git.guillaume.tucker@collabora.com>
In-Reply-To: <def2edafe1432008d56bc7da892c374f46ef1aac.1561393147.git.guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <E770925D8CC1524D80ACCF448F099D5C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v4 2/4] gitlab-ci: add libatomic to
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

T24gTW9uLCAyMDE5LTA2LTI0IGF0IDE3OjIyICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBBZGQgbGliYXRvbWljIHRvIHRoZSBGZWRvcmEgZG9ja2VyIGltYWdlIHNvIGl0IGNhbiBs
aW5rIGJpbmFyaWVzIHRoYXQNCj4gdXNlIF9fYXRvbWljXyogZnVuY3Rpb25zLiAgQWxzbyBleHBs
aWNpdGx5IGFkZCBsaWJhdG9taWMxIHRvIERlYmlhbg0KPiBkb2NrZXIgaW1hZ2VzIGFzIGl0IGlz
IG5lZWRlZCBpbiBwYXJ0aWN1bGFyIG9uIG5vbi14ODYgYXJjaGl0ZWN0dXJlcw0KPiBmb3IgcnVu
LXRpbWUgbGlua2FnZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1
aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IFNpbW9uIFNlciA8
c2ltb24uc2VyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gDQo+IE5vdGVzOg0KPiAgICAgdjI6IGFk
ZCBsaWJhdG9taWMxIGluIERlYmlhbiBkb2NrZXIgaW1hZ2VzDQo+ICAgICB2MzogYWRkIGxpYmF0
b21pYzEgZm9yIG5vbi14ODYgYXJjaGVzIGluIERlYmlhbiBkb2NrZXIgaW1hZ2VzDQo+ICAgICB2
NDogcmViYXNlIHRvIGFkZCBsaWJhdG9taWMxIGluIERvY2tlcmZpbGUuZGViaWFuLW1pbmltYWwN
Cj4gDQo+ICBEb2NrZXJmaWxlLmRlYmlhbi1hcm02NCAgIHwgMSArDQo+ICBEb2NrZXJmaWxlLmRl
Ymlhbi1hcm1oZiAgIHwgMSArDQo+ICBEb2NrZXJmaWxlLmRlYmlhbi1taW5pbWFsIHwgMSArDQo+
ICBEb2NrZXJmaWxlLmZlZG9yYSAgICAgICAgIHwgMiArLQ0KPiAgNCBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9Eb2NrZXJm
aWxlLmRlYmlhbi1hcm02NCBiL0RvY2tlcmZpbGUuZGViaWFuLWFybTY0DQo+IGluZGV4IDdiM2Ez
YzdjYTgwMy4uYzlmYjI4YzgwNGI4IDEwMDY0NA0KPiAtLS0gYS9Eb2NrZXJmaWxlLmRlYmlhbi1h
cm02NA0KPiArKysgYi9Eb2NrZXJmaWxlLmRlYmlhbi1hcm02NA0KPiBAQCAtMTQsNiArMTQsNyBA
QCBSVU4gZHBrZyAtLWFkZC1hcmNoaXRlY3R1cmUgYXJtNjQNCj4gIFJVTiBhcHQtZ2V0IHVwZGF0
ZQ0KPiAgUlVOIGFwdC1nZXQgaW5zdGFsbCAteSBcDQo+ICAJCQlnY2MtYWFyY2g2NC1saW51eC1n
bnUgXA0KPiArCQkJbGliYXRvbWljMTphcm02NCBcDQo+ICAJCQlsaWJwY2lhY2Nlc3MtZGV2OmFy
bTY0IFwNCj4gIAkJCWxpYmttb2QtZGV2OmFybTY0IFwNCj4gIAkJCWxpYnByb2Nwcy1kZXY6YXJt
NjQgXA0KPiBkaWZmIC0tZ2l0IGEvRG9ja2VyZmlsZS5kZWJpYW4tYXJtaGYgYi9Eb2NrZXJmaWxl
LmRlYmlhbi1hcm1oZg0KPiBpbmRleCBjNjdhMWUyYWNmNmEuLjNhMTMzZDg0OWQ2OCAxMDA2NDQN
Cj4gLS0tIGEvRG9ja2VyZmlsZS5kZWJpYW4tYXJtaGYNCj4gKysrIGIvRG9ja2VyZmlsZS5kZWJp
YW4tYXJtaGYNCj4gQEAgLTE0LDYgKzE0LDcgQEAgUlVOIGRwa2cgLS1hZGQtYXJjaGl0ZWN0dXJl
IGFybWhmDQo+ICBSVU4gYXB0LWdldCB1cGRhdGUNCj4gIFJVTiBhcHQtZ2V0IGluc3RhbGwgLXkg
XA0KPiAgCQkJZ2NjLWFybS1saW51eC1nbnVlYWJpaGYgXA0KPiArCQkJbGliYXRvbWljMTphcm1o
ZiBcDQo+ICAJCQlsaWJwY2lhY2Nlc3MtZGV2OmFybWhmIFwNCj4gIAkJCWxpYmttb2QtZGV2OmFy
bWhmIFwNCj4gIAkJCWxpYnByb2Nwcy1kZXY6YXJtaGYgXA0KPiBkaWZmIC0tZ2l0IGEvRG9ja2Vy
ZmlsZS5kZWJpYW4tbWluaW1hbCBiL0RvY2tlcmZpbGUuZGViaWFuLW1pbmltYWwNCj4gaW5kZXgg
YmJlNzBiZWQyZmI0Li42Mzg0NDY5NGRhZmEgMTAwNjQ0DQo+IC0tLSBhL0RvY2tlcmZpbGUuZGVi
aWFuLW1pbmltYWwNCj4gKysrIGIvRG9ja2VyZmlsZS5kZWJpYW4tbWluaW1hbA0KPiBAQCAtNiw2
ICs2LDcgQEAgUlVOIGFwdC1nZXQgaW5zdGFsbCAteSBcDQo+ICAJCQlmbGV4IFwNCj4gIAkJCWJp
c29uIFwNCj4gIAkJCXBrZy1jb25maWcgXA0KPiArCQkJbGliYXRvbWljMSBcDQo+ICAJCQlsaWJw
Y2lhY2Nlc3MtZGV2IFwNCj4gIAkJCWxpYmttb2QtZGV2IFwNCj4gIAkJCWxpYnByb2Nwcy1kZXYg
XA0KPiBkaWZmIC0tZ2l0IGEvRG9ja2VyZmlsZS5mZWRvcmEgYi9Eb2NrZXJmaWxlLmZlZG9yYQ0K
PiBpbmRleCA2Njg2ZTU4NzYxM2QuLmM4NGI0MTJiMDcyMyAxMDA2NDQNCj4gLS0tIGEvRG9ja2Vy
ZmlsZS5mZWRvcmENCj4gKysrIGIvRG9ja2VyZmlsZS5mZWRvcmENCj4gQEAgLTEsNyArMSw3IEBA
DQo+ICBGUk9NIGZlZG9yYTozMA0KPiAgDQo+ICBSVU4gZG5mIGluc3RhbGwgLXkgXA0KPiAtCWdj
YyBmbGV4IGJpc29uIG1lc29uIG5pbmphLWJ1aWxkIHhkb3Rvb2wgXA0KPiArCWdjYyBmbGV4IGJp
c29uIGxpYmF0b21pYyBtZXNvbiBuaW5qYS1idWlsZCB4ZG90b29sIFwNCj4gIAkncGtnY29uZmln
KGxpYmRybSknIFwNCj4gIAkncGtnY29uZmlnKHBjaWFjY2VzcyknIFwNCj4gIAkncGtnY29uZmln
KGxpYmttb2QpJyBcDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
