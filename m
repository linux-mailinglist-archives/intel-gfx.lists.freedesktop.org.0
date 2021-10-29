Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7AD440543
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 00:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB6C6EA85;
	Fri, 29 Oct 2021 22:04:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2049E6EA8E
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 22:04:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="291599652"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="291599652"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 15:04:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="637003216"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 29 Oct 2021 15:04:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 15:04:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 15:04:36 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 15:04:36 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 12/16] drm/i915: Enable per-lane drive
 settings for icl+
Thread-Index: AQHXuvPNBNxow/0Pm0OzI3A+vtHI4qvrIyYA
Date: Fri, 29 Oct 2021 22:04:36 +0000
Message-ID: <4ce94f1332b2cb05009b79fae27cface5166eaa7.camel@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006204937.30774-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <F2CC559D77EB3D488615D99BFA457FE6@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/16] drm/i915: Enable per-lane drive
 settings for icl+
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

T24gV2VkLCAyMDIxLTEwLTA2IGF0IDIzOjQ5ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTm93IHRoYXQgdGhlIGxpbmsgYnVmX3RyYW5zLCBsaW5rIHRyYWluaW5nLCBhbmQgdGhl
DQo+IGNvbWJvL21nL2RrbC9zbnBzIHBoeSBwcm9ncmFtbWluZyBhcmUgYWxsIGZpeGVkIHVwIHdl
IGNhbg0KPiBhbGxvdyBwZXItbGFuZSBEUCBkcml2ZSBzZXR0aW5ncyBvbiBpY2wrLiBNYWtlIGl0
IHNvLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCA1ICsrKystDQo+ICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBp
bmRleCAxYTk0M2FlMzhhNmIuLjI3OTM3MTIzN2ZlOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gQEAg
LTMwMSw3ICszMDEsMTAgQEAgc3RhdGljIHU4IGludGVsX2RwX3BoeV9wcmVlbXBoX21heChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgc3RhdGljIGJvb2wgaGFzX3Blcl9sYW5lX3NpZ25h
bF9sZXZlbHMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCQkgICAgICAgZW51bSBk
cm1fZHBfcGh5IGRwX3BoeSkNCj4gIHsNCj4gLQlyZXR1cm4gIWludGVsX2RwX3BoeV9pc19kb3du
c3RyZWFtX29mX3NvdXJjZShpbnRlbF9kcCwgZHBfcGh5KTsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiArDQo+ICsJcmV0dXJuICFp
bnRlbF9kcF9waHlfaXNfZG93bnN0cmVhbV9vZl9zb3VyY2UoaW50ZWxfZHAsIGRwX3BoeSkgfHwN
Cj4gKwkJRElTUExBWV9WRVIoaTkxNSkgPj0gMTE7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyB1OCBp
bnRlbF9kcF9nZXRfbGFuZV9hZGp1c3RfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwN
Cg0K
