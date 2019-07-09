Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 389D162D49
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 03:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6A1389916;
	Tue,  9 Jul 2019 01:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DE089915
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 01:07:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 18:07:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="167829890"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 08 Jul 2019 18:07:40 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jul 2019 18:07:18 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.252]) with mapi id 14.03.0439.000;
 Mon, 8 Jul 2019 18:07:18 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 08/25] drm/i915/tgl: use TRANSCODER_EDP_VDSC on
 transcoder A
Thread-Index: AQHVNeNCTmyGxZykD0OOHgllc4vFxabB7t+A
Date: Tue, 9 Jul 2019 01:07:17 +0000
Message-ID: <78195a95a2f4e18aa3e1ce003150365f0cc038f1.camel@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-9-lucas.demarchi@intel.com>
In-Reply-To: <20190708231629.9296-9-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <7440EC998EA2FE40870A72021AB0F6BE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 08/25] drm/i915/tgl: use
 TRANSCODER_EDP_VDSC on transcoder A
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

T24gTW9uLCAyMDE5LTA3LTA4IGF0IDE2OjE2IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiANCj4gT24gVEdMIHRoZSBzcGVjaWFsIEVEUCB0cmFuc2NvZGVyIGlzIGdvbmUgYW5kIGl0IHNo
b3VsZCBiZSBoYW5kbGVkIGJ5DQo+IHRyYW5zY29kZXIgQS4NCj4gDQo+IHYyIChMdWNhcyk6DQo+
ICAgLSBSZXVzZSBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9FRFBfVkRTQyAoc3VnZ2VzdGVkIGJ5
IFZpbGxlKQ0KPiAgIC0gVXNlIGNydGMtPmRldiBzaW5jZSBuZXdfY3J0Y19zdGF0ZS0+c3RhdGUg
bWF5IGJlIE5VTEwgb24gYXRvbWljDQo+ICAgICBjb21taXQgKHN1Z2dlc3RlZCBieSBNYWFydGVu
KQ0KDQpBcyB3ZSBhcmUgcmV1c2luZyB3b3VsZCBiZSBuaWNlIGFsc28gcmVuYW1lIGl0IHRvIHNv
bWV0aGluZyBsaWtlOg0KUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfVkRTQ19QVzINClBPV0VSX0RP
TUFJTl9MT1dfUE9XRVJfVFJBTlNDT0RFUl9WRFNDIC8NClBPV0VSX0RPTUFJTl9MUF9UUkFOU0NP
REVSX1ZEU0MNCg0KPiANCj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRz
Yy5jIHwgOSArKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92ZHNjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zkc2MuYw0KPiBpbmRleCBmZmVjODA3Yjg5NjAuLmMyNzkxMmY1NTJmMCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gQEAgLTQ1OSwxNiArNDU5
LDE5IEBAIGludCBpbnRlbF9kcF9jb21wdXRlX2RzY19wYXJhbXMoc3RydWN0IGludGVsX2RwDQo+
ICppbnRlbF9kcCwNCj4gIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4NCj4gIGludGVs
X2RzY19wb3dlcl9kb21haW4oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpDQo+ICB7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNy
dGNfc3RhdGUtPmJhc2UuY3J0Yy0NCj4gPmRldik7DQo+ICAJZW51bSB0cmFuc2NvZGVyIGNwdV90
cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+ICANCj4gIAkvKg0KPiAt
CSAqIE9uIElDTCBWRFNDL2pvaW5pbmcgZm9yIGVEUCB0cmFuc2NvZGVyIHVzZXMgYSBzZXBhcmF0
ZSBwb3dlcg0KPiB3ZWxsIFBXMg0KPiAtCSAqIFRoaXMgcmVxdWlyZXMgUE9XRVJfRE9NQUlOX1RS
QU5TQ09ERVJfRURQX1ZEU0MgcG93ZXIgZG9tYWluLg0KPiArCSAqIE9uIElDTCsgVkRTQy9qb2lu
aW5nIGZvciBlRFAvQSB0cmFuc2NvZGVyIHVzZXMgYSBzZXBhcmF0ZQ0KPiBwb3dlciB3ZWxsDQo+
ICsJICogUFcyLiBUaGlzIHJlcXVpcmVzIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFND
IHBvd2VyDQo+IGRvbWFpbi4NCj4gIAkgKiBGb3IgYW55IG90aGVyIHRyYW5zY29kZXIsIFZEU0Mv
am9pbmluZyB1c2VzIHRoZSBwb3dlciB3ZWxsDQo+IGFzc29jaWF0ZWQNCj4gIAkgKiB3aXRoIHRo
ZSBwaXBlL3RyYW5zY29kZXIgaW4gdXNlLiBIZW5jZSBhbm90aGVyIHJlZmVyZW5jZSBvbg0KPiB0
aGUNCj4gIAkgKiB0cmFuc2NvZGVyIHBvd2VyIGRvbWFpbiB3aWxsIHN1ZmZpY2UuDQo+ICAJICov
DQo+IC0JaWYgKGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRURQKQ0KPiArCWlmIChJTlRF
TF9HRU4oaTkxNSkgPj0gMTIgJiYgY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9BKQ0KPiAr
CQlyZXR1cm4gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRURQX1ZEU0M7DQo+ICsJZWxzZSBpZiAo
Y3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9FRFApDQo+ICAJCXJldHVybiBQT1dFUl9ET01B
SU5fVFJBTlNDT0RFUl9FRFBfVkRTQzsNCj4gIAllbHNlDQo+ICAJCXJldHVybiBQT1dFUl9ET01B
SU5fVFJBTlNDT0RFUihjcHVfdHJhbnNjb2Rlcik7DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
