Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92723292D2F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 19:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAB056EA1D;
	Mon, 19 Oct 2020 17:54:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6796EA1A
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 17:54:17 +0000 (UTC)
IronPort-SDR: 1eF8yvz0m3/h79sF/C4jbl4VCNYt+mxAC2yXyt0h3W8Tzo+Y3IOPJOI2gn6J1h7c/1RT4sOF0P
 r4YufIASQIdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="231267099"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="231267099"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 10:54:17 -0700
IronPort-SDR: CYxYNoU00JYuXWlAaH+5F2ZN2Rr99VfbFUDQbuBViX2lN1W+WwTnVKRn+RjZduMvAs60q3aer+
 dwNIRWaKxwQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="331962380"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 19 Oct 2020 10:54:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Oct 2020 10:54:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Oct 2020 10:54:16 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Mon, 19 Oct 2020 10:54:16 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/61] drm/i915: Disable userptr pread/pwrite
 support.
Thread-Index: AQHWmLwy49wqu5uE8kGCLyhpGIbSoqmEvn6wgA/JKICABiJjwA==
Date: Mon, 19 Oct 2020 17:54:16 +0000
Message-ID: <8cb8a2f70baf4161a8f158f4c194ff5b@intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
 <20201002125939.50817-11-maarten.lankhorst@linux.intel.com>
 <9d0866bf640b43abb184fecc503aae9a@intel.com>
 <65cc5740-e6c3-b38a-7b2d-7caa3aabdda3@linux.intel.com>
In-Reply-To: <65cc5740-e6c3-b38a-7b2d-7caa3aabdda3@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/61] drm/i915: Disable userptr
 pread/pwrite support.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj5Gcm9tOiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPlNlbnQ6IE1vbmRheSwgT2N0b2Jl
ciAxMiwgMjAyMCAxMDoxNCBBTQ0KPlRvOiBSdWhsLCBNaWNoYWVsIEogPG1pY2hhZWwuai5ydWhs
QGludGVsLmNvbT47IGludGVsLQ0KPmdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj5TdWJqZWN0
OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIDEwLzYxXSBkcm0vaTkxNTogRGlzYWJsZSB1c2VycHRy
IHByZWFkL3B3cml0ZQ0KPnN1cHBvcnQuDQo+DQo+T3AgMDItMTAtMjAyMCBvbSAyMjoxNCBzY2hy
ZWVmIFJ1aGwsIE1pY2hhZWwgSjoNCj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4+
IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
PiBPbiBCZWhhbGYgT2YNCj4+PiBNYWFydGVuIExhbmtob3JzdA0KPj4+IFNlbnQ6IEZyaWRheSwg
T2N0b2JlciAyLCAyMDIwIDg6NTkgQU0NCj4+PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPj4+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAxMC82MV0gZHJtL2k5MTU6
IERpc2FibGUgdXNlcnB0ciBwcmVhZC9wd3JpdGUNCj4+PiBzdXBwb3J0Lg0KPj4+DQo+Pj4gVXNl
cnB0ciBzaG91bGQgbm90IG5lZWQgdGhlIGtlcm5lbCBmb3IgYSB1c2Vyc3BhY2UgbWVtY3B5LCB1
c2Vyc3BhY2UNCj4+PiBuZWVkcyB0byBjYWxsIG1lbWNweSBkaXJlY3RseS4NCj4+Pg0KPj4+IFNp
Z25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5p
bnRlbC5jb20+DQo+Pj4gLS0tDQo+Pj4gLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0X3R5cGVzLmggIHwgIDIgKysNCj4+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fdXNlcnB0ci5jICAgfCAyMA0KPj4+ICsrKysrKysrKysrKysrKysrKysNCj4+PiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgICAgfCAgNSArKysrKw0KPj4+IDMg
ZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaA0KPj4+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oDQo+Pj4gaW5kZXgg
NjJkZGUzNTg1YjUxLi5kYmI2ZjYxNzExNjUgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oDQo+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oDQo+Pj4gQEAgLTU3LDYgKzU3
LDggQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIHsNCj4+Pg0KPj4+IAlpbnQgKCpw
d3JpdGUpKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosDQo+Pj4gCQkgICAgICBjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3B3cml0ZSAqYXJnKTsNCj4+PiArCWludCAoKnByZWFkKShz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLA0KPj4+ICsJCSAgICAgY29uc3Qgc3RydWN0
IGRybV9pOTE1X2dlbV9wcmVhZCAqYXJnKTsNCj4+Pg0KPj4+IAlpbnQgKCpkbWFidWZfZXhwb3J0
KShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsNCj4+PiAJdm9pZCAoKnJlbGVhc2Up
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOw0KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jDQo+Pj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jDQo+Pj4gaW5kZXggMjIwMDg5NDhiZTU4
Li4xMzZhNTg5ZTVkOTQgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3VzZXJwdHIuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV91c2VycHRyLmMNCj4+PiBAQCAtNzAwLDYgKzcwMCwyNCBAQCBpOTE1X2dlbV91c2Vy
cHRyX2RtYWJ1Zl9leHBvcnQoc3RydWN0DQo+Pj4gZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQ0K
Pj4+IAlyZXR1cm4gaTkxNV9nZW1fdXNlcnB0cl9pbml0X19tbXVfbm90aWZpZXIob2JqLCAwKTsN
Cj4+PiB9DQo+Pj4NCj4+PiArc3RhdGljIGludA0KPj4+ICtpOTE1X2dlbV91c2VycHRyX3B3cml0
ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLA0KPj4+ICsJCQljb25zdCBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX3B3cml0ZSAqYXJncykNCj4+PiArew0KPj4+ICsJZHJtX2RiZyhvYmotPmJh
c2UuZGV2LCAicHdyaXRlIHRvIHVzZXJwdHIgbm8gbG9uZ2VyIGFsbG93ZWRcbiIpOw0KPj4+ICsN
Cj4+PiArCXJldHVybiAtRUlOVkFMOw0KPj4gSSBoYXZlIHNlZW4gRU5PU1lTIHVzZWQgZm9yIHVu
c3VwcG9ydGVkIHByZWFkL3B3cml0ZSAoc2VlDQo+cmFkZW9uX2dlbS5jKS4NCj4+DQo+PiBJICBo
YXZlIGFsc28gc2VlbiBFTk9UU1VQUCBmb3Igc2ltaWxhciByZXR1cm4gdmFsdWVzLg0KPj4NCj4+
IElzIEVJTlZBTCB0aGUgY29ycmVjdCByZXNwb25zZT8NCj4NCj5JdCBzZWVtcyBmb3Igc29tZSBv
dGhlciB0aGluZ3Mgd2UgdXNlIC1FTlhJTywgSSBkb24ndCB0aGluayBpdCBtYXR0ZXJzIGluIHRo
ZQ0KPmVuZC4NCj4NCj5BcyBsb25nIGFzIHdlIGZhaWwgaW4gc29tZSByZWNvZ25pc2FibGUgd2F5
LCBJJ20gZmluZSB3aXRoIGl0LiA6KQ0KPg0KPkkgY2hvc2UgLUVJTlZBTCBhcyB3ZSByZXR1cm4g
dGhlIHNhbWUgZXJyb3Igd2l0aCByL28gb2JqZWN0cy4NCg0KSGkgTWFhcnRlbiwNCg0KU29ycnkg
dGhpcyBnb3QgbG9zdCBpbiB0aGUgbm9pc2UgbGFzdCB3ZWVrLiDwn5iQDQoNCklmIG15IGNvbW1l
bnRzIGFyZSBzdGlsbCByZWxldmFudC4uLiDwn5iKDQoNCk9rLCBJIHVuZGVyc3RhbmQgeW91ciBy
ZWFzb25pbmcgaGVyZSwgYnV0IEkgZG8gc2VlIGRpZmZlcmVuY2VzLg0KDQpFSU5WQUwgZm9yIHIv
byAgbWVhbnMgSSBtYWRlIGJhZCByZXF1ZXN0LiAgRU5PVFNVUFAgbWVhbnMgdGhhdCB0aGUgZmVh
dHVyZQ0KSSB3YW50IHRvIHVzZSBpcyBub3QgYXZhaWxhYmxlLiAgTm90IHRlcnJpYmx5IGRpZmZl
cmVudCwgYnV0IHNsaWdodGx5IG1vcmUgImNvcnJlY3QiLg0KDQpJIGRvbid0IHNlZSBob3cgRU5Y
SU8gZml0cyBvdGhlciB0aGFuIGFzIGEgIm1vcmUgdW5pcXVlIiBlcnJvci4NCg0KSSBkbyB0aGlu
ayB0aGF0IEVJTlZBTCBpcyBvdmVyIHVzZWQsIG1ha2luZyBpdCBkaWZmaWN1bHQgdG8gZmluZCBv
dXQgd2h5IHRoZSBlcnJvcg0Kd2FzIHJldHVybmVkLCBidXQgSSBjYW4gc2VlIGl0cyB1c2UgaW4g
dGhpcyBjYXNlLCBzbyBJIGFtIG5vdCBvcHBvc2VkLg0KDQpTb3JyeSBmb3IgdGhlIGxhdGVuZXNz
IG9mIG15IHJlcGx5LA0KDQpNaWtlDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
