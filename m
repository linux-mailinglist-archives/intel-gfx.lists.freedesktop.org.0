Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0AB4E48D0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 23:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8036710E0D7;
	Tue, 22 Mar 2022 22:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C690610E0D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 22:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647986554; x=1679522554;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KuYfC9ikflveHIOzhohBuOJoKRqYj9gLsqX1pFDq+9s=;
 b=Mu0Qr+nPtLScd0jBoDExrt9/pfZpxxb4P+MEZDSREW4YUoG8XcS9ybxX
 Hoyfo7VMN43wxLICpTlwgci8K85rYIzwcmIzwPWdepVbq5LlXNPCCTxXd
 EDmcduc+QxcJsDFppQNdmv32bodwW+5V5QV4FHeopWWl+WBnkF6iuQhR8
 R+pb6ZaDiPzRmXD8KvkApQm/KLK7I4H+VDN81qWcnX50OlqKZbsaLDFKN
 /hk+U5WV2C4Umkwb2PV1lmD1M2p5GanOILn+MhqciCkLxm6S8yAzie7fo
 mewXdKvFvJZU0cRmAcLrbKb4WfVJJGBoY8abjvDEYvSXFyGSpL3fe3WRp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="245432890"
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="245432890"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 15:02:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,203,1643702400"; d="scan'208";a="583454297"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 22 Mar 2022 15:02:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 22 Mar 2022 15:02:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 22 Mar 2022 15:02:23 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Tue, 22 Mar 2022 15:02:23 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "cazyokoyama@gmail.com" <cazyokoyama@gmail.com>
Thread-Topic: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Remove MBUS joining
 invalid TODOs
Thread-Index: AQHYPjYdUc/YFbPUSkSosY8KhzrrqqzMaP2AgAABSAA=
Date: Tue, 22 Mar 2022 22:02:23 +0000
Message-ID: <b91fe3cc8989d5651597cf9ac80954db5a960e49.camel@intel.com>
References: <20220322214616.160640-1-jose.souza@intel.com>
 <20220322214616.160640-4-jose.souza@intel.com>
 <CABhNg0hh47jNo_a4EpsrhsRYcB7Mn86+f6oykX0kvGv0XPtuSg@mail.gmail.com>
In-Reply-To: <CABhNg0hh47jNo_a4EpsrhsRYcB7Mn86+f6oykX0kvGv0XPtuSg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <CBA3A33BFF03BB4D9F0C35944E40B6CB@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Remove MBUS
 joining invalid TODOs
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIyLTAzLTIyIGF0IDE0OjU4IC0wNzAwLCBDYXogWW9rb3lhbWEgd3JvdGU6DQo+
IA0KPiANCj4gT24gVHVlLCBNYXIgMjIsIDIwMjIgYXQgMjo0NSBQTSBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gc2tsX2NvbXB1dGVfZGRi
KCkgd2lsbCBmb3IgYSBtb2Rlc2V0IGluIGFsbCBwaXBlcyB3aGVuIE1CVVMgam9pbmluZw0KPiA+
IGNoYW5nZXMgYmV0d2VlbiBzdGF0ZXMsIHNvIGFsbCBwaXBlcyB3aWxsIGJlIGRpc2FibGVkLCBo
YXZlIGFsbA0KPiA+IE1CVVMgcmVsYXRlZCByZWdpc3RlcnMgdXBkYXRlZCBhbmQgdGhlbiBlYWNo
IHBpcGUgZW5hYmxlZC4NCj4gPiANCj4gDQo+IEkgYW0gbm90IGNsZWFyIHdoYXQgeW91IHdhbnQg
dG8gc2F5IGhlcmUuIENvdWxkIHlvdSByZXBocmFzZcKgYWJvdmUgMyBsaW5lcz8NCg0KT3BzIGl0
IHNob3VsZCBiZToNCg0Kc2tsX2NvbXB1dGVfZGRiKCkgd2lsbCBkbyBhIG1vZGVzZXQgaW4gYWxs
IHBpcGVzIHdoZW4gTUJVUyBqb2luaW5nIGNoYW5nZXMgYmV0d2VlbiBhdG9taWMgY29tbWl0cywg
c28gYWxsIHBpcGVzIHdpbGwgYmUgZGlzYWJsZWQsIGhhdmUgYWxsIE1CVVMNCnJlbGF0ZWQgcmVn
aXN0ZXJzIHVwZGF0ZWQgYW5kIHRoZW4gZWFjaCBwaXBlIGVuYWJsZWQuDQoNCg0KPiDCoA0KPiA+
IFNvIG5vIHZibGFuayBzeW5jcm9uaXphdGlvbiBpcyBuZWNlc3NhcnkgYW5kIGhlcmUgZHJvcGlu
ZyB0aG9zZSBUT0RPcy4NCj4gPiANCj4gDQo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGRyb3BwaW5nDQo+IC1j
YXoNCj4gwqANCj4gPiANCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMgfCA1IC0tLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNSBkZWxldGlv
bnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiBpbmRleCBjZjI5MGJi
NzA0MjIxLi45Y2NmMGYwNjI4NjJjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
DQo+ID4gQEAgLTYwNjYsNyArNjA2Niw2IEBAIHNrbF9jb21wdXRlX2RkYihzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCByZXR1cm4gcmV0Ow0KPiA+IA0KPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmIChv
bGRfZGJ1Zl9zdGF0ZS0+am9pbmVkX21idXMgIT0gbmV3X2RidWZfc3RhdGUtPmpvaW5lZF9tYnVz
KSB7DQo+ID4gLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLyogVE9ETzogSW1w
bGVtZW50IHZibGFuayBzeW5jaHJvbml6ZWQgTUJVUyBqb2luaW5nIGNoYW5nZXMgKi8NCj4gPiDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXQgPSBpbnRlbF9tb2Rlc2V0X2Fs
bF9waXBlcyhzdGF0ZSk7DQo+ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
aWYgKHJldCkNCj4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCByZXR1cm4gcmV0Ow0KPiA+IEBAIC04MTk1LDEwICs4MTk0LDYgQEAgc3RhdGljIHZvaWQg
dXBkYXRlX21idXNfcHJlX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkN
Cj4gPiDCoCDCoCDCoCDCoCBpZiAoIUhBU19NQlVTX0pPSU5JTkcoZGV2X3ByaXYpKQ0KPiA+IMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJldHVybjsNCj4gPiANCj4gPiAtwqAgwqAgwqAgwqAvKg0K
PiA+IC3CoCDCoCDCoCDCoCAqIFRPRE86IEltcGxlbWVudCB2Ymxhbmsgc3luY2hyb25pemVkIE1C
VVMgam9pbmluZyBjaGFuZ2VzLg0KPiA+IC3CoCDCoCDCoCDCoCAqIE11c3QgYmUgcHJvcGVybHkg
Y29vcmRpbmF0ZWQgd2l0aCBkYnVmIHJlcHJvZ3JhbW1pbmcuDQo+ID4gLcKgIMKgIMKgIMKgICov
DQo+ID4gwqAgwqAgwqAgwqAgaWYgKGRidWZfc3RhdGUtPmpvaW5lZF9tYnVzKSB7DQo+ID4gwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgbWJ1c19jdGwgPSBNQlVTX0hBU0hJTkdfTU9ERV8xeDQgfCBN
QlVTX0pPSU4gfA0KPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIE1CVVNf
Sk9JTl9QSVBFX1NFTEVDVF9OT05FOw0KPiA+IC0tIA0KPiA+IDIuMzUuMQ0KPiA+IA0KPiANCj4g
DQoNCg==
