Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B07E56B19A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 00:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0695F6E1B2;
	Tue, 16 Jul 2019 22:10:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 536B56E1B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 22:10:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 15:10:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,271,1559545200"; d="scan'208";a="342850550"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga005.jf.intel.com with ESMTP; 16 Jul 2019 15:10:42 -0700
Received: from orsmsx109.amr.corp.intel.com ([169.254.11.170]) by
 ORSMSX110.amr.corp.intel.com ([169.254.10.225]) with mapi id 14.03.0439.000;
 Tue, 16 Jul 2019 15:10:42 -0700
From: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR section
Thread-Index: AQHVPCKrUukxzqT4xkabXTnytBqdaabOQ6+A
Date: Tue, 16 Jul 2019 22:10:42 +0000
Message-ID: <df5f95a4c2a7e7bf9fd076f43e4e65bfb10375d1.camel@intel.com>
References: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
In-Reply-To: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.75.43]
Content-ID: <341FE610A1301B4B9EC2F07E7181BF05@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA3LTE2IGF0IDE1OjAzIC0wNzAwLCBEaGluYWthcmFuIFBhbmRpeWFuIHdy
b3RlOg0KPiBBIHNpbmdsZSAzMi1iaXQgUFNSMiB0cmFpbmluZyBwYXR0ZXJuIGZpZWxkIGZvbGxv
d3MgdGhlIHNpeHRlZW4gZWxlbWVudA0KPiBhcnJheSBvZiBQU1IgdGFibGUgZW50cmllcyBpbiB0
aGUgVkJUIHNwZWMuIEJ1dCwgd2UgaW5jb3JyZWN0bHkgZGVmaW5lDQo+IHRoaXMgUFNSMiBmaWVs
ZCBmb3IgZWFjaCBvZiB0aGUgUFNSIHRhYmxlIGVudHJpZXMuIEFzIGEgcmVzdWx0LCB0aGUgUFNS
MQ0KPiB0cmFpbmluZyBwYXR0ZXJuIGR1cmF0aW9uIGZvciBhbnkgcGFuZWxfdHlwZSAhPSAwIHdp
bGwgYmUgcGFyc2VkDQo+IGluY29ycmVjdGx5LiBTZWNvbmRseSwgUFNSMiB0cmFpbmluZyBwYXR0
ZXJuIGR1cmF0aW9ucyBmb3IgVkJUcyB3aXRoIGJkYg0KPiB2ZXJzaW9uID49IDIyNiB3aWxsIGFs
c28gYmUgd3JvbmcuDQoNClRoaXMgd2FzIHJlcG9ydGVkIGFuZCBiaXNlY3RlZCBieSANCkFsaWFr
c2VpIFVyYmFuc2tpIGhlcmUgLSBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcu
Y2dpP2lkPTIwNDE4Mw0KDQpJJ2xsIGFkZCBCdWd6aWxsYSBhZnRlciB0aGUgZml4IGlzIGNvbmZp
cm1lZC4NCg0KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCkNjOiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCkZpeGVzOiA4OGEw
ZDk2MDZhZmYgKCJkcm0vaTkxNS92YnQ6IFBhcnNlIGFuZCB1c2UgdGhlIG5ldyBmaWVsZCB3aXRo
IFBTUjIgVFAyLzMgd2FrZXVwIHRpbWUiKXoNClNpZ25lZC1vZmYtYnk6IERoaW5ha2FyYW4gUGFu
ZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPg0KLS0tDQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMiArLQ0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8IDYgKysrLS0tDQogMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQppbmRleCAyMTUwMWQ1NjUzMjcuLmI0MTZiMzk0YjY0
MSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
DQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KQEAgLTc2
Niw3ICs3NjYsNyBAQCBwYXJzZV9wc3Ioc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBjb25zdCBzdHJ1Y3QgYmRiX2hlYWRlciAqYmRiKQ0KIAl9DQogDQogCWlmIChiZGItPnZlcnNp
b24gPj0gMjI2KSB7DQotCQl1MzIgd2FrZXVwX3RpbWUgPSBwc3JfdGFibGUtPnBzcjJfdHAyX3Rw
M193YWtldXBfdGltZTsNCisJCXUzMiB3YWtldXBfdGltZSA9IHBzci0+cHNyMl90cDJfdHAzX3dh
a2V1cF90aW1lOw0KIA0KIAkJd2FrZXVwX3RpbWUgPSAod2FrZXVwX3RpbWUgPj4gKDIgKiBwYW5l
bF90eXBlKSkgJiAweDM7DQogCQlzd2l0Y2ggKHdha2V1cF90aW1lKSB7DQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oDQpiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KaW5kZXggOTNmNWM5ZDIwNGQ2
Li4wOWNkMzdmYjBiMWMgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3ZidF9kZWZzLmgNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmJ0X2RlZnMuaA0KQEAgLTQ4MSwxMyArNDgxLDEzIEBAIHN0cnVjdCBwc3JfdGFibGUgew0K
IAkvKiBUUCB3YWtlIHVwIHRpbWUgaW4gbXVsdGlwbGUgb2YgMTAwICovDQogCXUxNiB0cDFfd2Fr
ZXVwX3RpbWU7DQogCXUxNiB0cDJfdHAzX3dha2V1cF90aW1lOw0KLQ0KLQkvKiBQU1IyIFRQMi9U
UDMgd2FrZXVwIHRpbWUgZm9yIDE2IHBhbmVscyAqLw0KLQl1MzIgcHNyMl90cDJfdHAzX3dha2V1
cF90aW1lOw0KIH0gX19wYWNrZWQ7DQogDQogc3RydWN0IGJkYl9wc3Igew0KIAlzdHJ1Y3QgcHNy
X3RhYmxlIHBzcl90YWJsZVsxNl07DQorDQorCS8qIFBTUjIgVFAyL1RQMyB3YWtldXAgdGltZSBm
b3IgMTYgcGFuZWxzICovDQorCXUzMiBwc3IyX3RwMl90cDNfd2FrZXVwX3RpbWU7DQogfSBfX3Bh
Y2tlZDsNCiANCiAvKg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
