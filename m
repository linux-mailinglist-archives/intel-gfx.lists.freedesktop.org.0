Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1681464C9E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 12:32:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAE646EB65;
	Wed,  1 Dec 2021 11:32:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A916EB65
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 11:32:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236383218"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236383218"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 03:32:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="500212157"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga007.jf.intel.com with ESMTP; 01 Dec 2021 03:32:15 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 11:32:14 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 11:32:14 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 19/20] drm/i915/fbc: No FBC+double wide pipe
Thread-Index: AQHX4Se/KMWeWGYjfkecMCgtupM/kawdi7Rw
Date: Wed, 1 Dec 2021 11:32:14 +0000
Message-ID: <9b4a2aaaaa7140c09b094aca3e0eb688@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-20-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-20-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 19/20] drm/i915/fbc: No FBC+double wide pipe
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAyNCwgMjAyMSAxOjM3IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAxOS8yMF0gZHJtL2k5MTUvZmJjOiBObyBGQkMrZG91YmxlIHdpZGUgcGlwZQ0KPiAN
Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gDQo+IEZCQyBhbmQgZG91YmxlIHdpZGUgcGlwZSBhcmUgbXV0dWFsbHkgZXhjbHVzaXZlLiBE
aXNhYmxlIEZCQyB3aGVuIHdlIGhhdmUgdG8NCj4gcmVzb3J0IHRvIGRvdWJsZSB3aWRlLg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
IHwgNSArKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IDRkMmM1NGFj
ZGM4OS4uMDcyNTA5YjA0ZGU1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMNCj4gQEAgLTEwNTYsNiArMTA1NiwxMSBAQCBzdGF0aWMgaW50IGludGVsX2Zi
Y19jaGVja19wbGFuZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJ
cmV0dXJuIDA7DQo+ICAJfQ0KPiANCj4gKwlpZiAoY3J0Y19zdGF0ZS0+ZG91YmxlX3dpZGUpIHsN
Cj4gKwkJcGxhbmVfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSAiZG91YmxlIHdpZGUgcGlwZSBub3QN
Cj4gc3VwcG9ydGVkIjsNCj4gKwkJcmV0dXJuIDA7DQo+ICsJfQ0KPiArDQo+ICAJLyoNCj4gIAkg
KiBEaXNwbGF5IDEyKyBpcyBub3Qgc3VwcG9ydGluZyBGQkMgd2l0aCBQU1IyLg0KPiAgCSAqIFJl
Y29tbWVuZGF0aW9uIGlzIHRvIGtlZXAgdGhpcyBjb21iaW5hdGlvbiBkaXNhYmxlZA0KPiAtLQ0K
PiAyLjMyLjANCg0K
