Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B70740067E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 22:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD7B6E8D9;
	Fri,  3 Sep 2021 20:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C7E6E8D9
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 20:21:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="283214583"
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="283214583"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 13:21:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="692434731"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga005.fm.intel.com with ESMTP; 03 Sep 2021 13:21:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 21:21:51 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 3 Sep 2021 13:21:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Thread-Topic: [PATCH v2 0/7] drm/i915/bios: remove vbt ddi_port_info caching
Thread-Index: AQHXn0vYus0R0avrWUimBFRcftRniquSnY8AgACdUIA=
Date: Fri, 3 Sep 2021 20:21:50 +0000
Message-ID: <97661d7d86eef478f95e6d44bcb5f6b2251cd03f.camel@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
 <87v93h9azh.fsf@intel.com>
In-Reply-To: <87v93h9azh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <1AD6A168F97F8B4B9175B2B660B49B17@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 0/7] drm/i915/bios: remove vbt
 ddi_port_info caching
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

T24gRnJpLCAyMDIxLTA5LTAzIGF0IDE0OjA0ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAwMSBTZXAgMjAyMSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6DQo+ID4gdjIgb2YgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy85Mzk1Ny8gd2l0aCB0aGUgQ0kgaXNzdWVzDQo+ID4gZml4ZWQgKGZpbmdlcnMgY3Jvc3NlZCEp
Lg0KPiANCj4gSm9zw6ksIEknZCBsaWtlIHRvIGdldCBhbiBhY2sgZnJvbSB5b3Ugb24gdGhpcyBi
ZWZvcmUgYXBwbHlpbmcuIEkga25vdw0KPiBpdCdzIGJvdW5kIGNvbmZsaWN0IHdpdGggeW91ciBp
biBmbGlnaHQgc2VyaWVzLiBUaG91Z2h0cz8NCj4gDQoNCklmIHlvdSBhcmUgb2theSBpbiBhZGRp
bmcgbW9yZSBkYXRhIGF0IHRoZSBlbmQgb2YgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgd2Ugc2hv
dWxkIGJlIGZpbmUuDQpJbmZvcm1hdGlvbiBmcm9tIG90aGVyIFZCVCBibG9ja3Mgd2lsbCBuZWVk
IHRvIGJlIGFkZGVkIHRvIGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhLg0KDQpJdCB3aWxsIGJhZGx5
IGNvbmZsaWN0IHdpdGggc2VyaWVzIGJ1dCBhbnkgcmVkdW5kYW50IGJ5dGUgc2F2ZWQgaXMgd29y
dGh5Lg0KDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gPiANCj4gPiBCUiwNCj4gPiBKYW5pLg0KPiA+
IA0KPiA+IEphbmkgTmlrdWxhICg3KToNCj4gPiAgIGRybS9pOTE1L2Jpb3M6IHVzZSBoZG1pIGxl
dmVsIHNoaWZ0IGRpcmVjdGx5IGZyb20gY2hpbGQgZGF0YQ0KPiA+ICAgZHJtL2k5MTUvYmlvczog
dXNlIG1heCB0bWRzIGNsb2NrIGRpcmVjdGx5IGZyb20gY2hpbGQgZGF0YQ0KPiA+ICAgZHJtL2k5
MTUvYmlvczogdXNlIGRwIG1heCBsaW5rIHJhdGUgZGlyZWN0bHkgZnJvbSBjaGlsZCBkYXRhDQo+
ID4gICBkcm0vaTkxNS9iaW9zOiB1c2UgYWx0ZXJuYXRlIGF1eCBjaGFubmVsIGRpcmVjdGx5IGZy
b20gY2hpbGQgZGF0YQ0KPiA+ICAgZHJtL2k5MTUvYmlvczogbW92ZSBkZGMgcGluIG1hcHBpbmcg
Y29kZSBuZXh0IHRvIGRkYyBwaW4gc2FuaXRpemUNCj4gPiAgIGRybS9pOTE1L2Jpb3M6IHVzZSBk
ZGMgcGluIGRpcmVjdGx5IGZyb20gY2hpbGQgZGF0YQ0KPiA+ICAgZHJtL2k5MTUvYmlvczogZ2V0
IHJpZCBvZiB2YnQgZGRpX3BvcnRfaW5mbw0KPiA+IA0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDM3MiArKysrKysrKysrKy0tLS0tLS0tLS0tDQo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgIHwgIDE4ICstDQo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgMTg3IGluc2VydGlvbnMoKyksIDIwMyBkZWxldGlvbnMoLSkNCj4g
DQoNCg==
