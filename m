Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A7E10A602
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 22:29:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D276E497;
	Tue, 26 Nov 2019 21:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A57F6E48F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 21:29:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 13:29:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="383286061"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga005.jf.intel.com with ESMTP; 26 Nov 2019 13:29:38 -0800
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 Nov 2019 13:29:38 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX151.amr.corp.intel.com ([169.254.7.159]) with mapi id 14.03.0439.000;
 Tue, 26 Nov 2019 13:29:37 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915: Handle SDEISR according to
 PCH rather than platform
Thread-Index: AQHVpJ2NJgImI6VTpUaNKiUelu6m7qeefhQA
Date: Tue, 26 Nov 2019 21:29:37 +0000
Message-ID: <25590f8ee30a5de5ea34df7ba88a5b126fbfcb6e.camel@intel.com>
References: <20191126210732.407496-1-matthew.d.roper@intel.com>
In-Reply-To: <20191126210732.407496-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <1D02526F7084C64E81BA6BA9B5872AC4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Handle SDEISR according to
 PCH rather than platform
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTExLTI2IGF0IDEzOjA3IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGUgU291dGggRGlzcGxheSBpcyBwYXJ0IG9mIHRoZSBQQ0ggc28gd2Ugc2hvdWxkIHRlY2huaWNh
bGx5IGJlDQo+IGJhc2luZw0KPiBvdXIgcG9ydCBkZXRlY3Rpb24gbG9naWMgb2ZmIHRoZSBQQ0gg
aW4gdXNlIHJhdGhlciB0aGFuIHRoZSBwbGF0Zm9ybQ0KPiBnZW5lcmF0aW9uLg0KDQpSZXZpZXdl
ZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4g
DQo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gU2ln
bmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA4ICsrKystLS0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCAzMTIz
OTU4ZTIwODEuLmRkZjViYWQxYjk2OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiBAQCAtNTQ4Nyw3ICs1NDg3LDcgQEAgc3RhdGljIGJvb2wgaWNsX2Nv
bWJvX3BvcnRfY29ubmVjdGVkKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwN
Cj4gIAlyZXR1cm4gSTkxNV9SRUFEKFNERUlTUikgJiBTREVfRERJX0hPVFBMVUdfSUNQKHBvcnQp
Ow0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgYm9vbCBpY2xfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChz
dHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlcikNCj4gK3N0YXRpYyBib29sIGljcF9kaWdp
dGFsX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyKQ0KPiAg
ew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rl
ci0+YmFzZS5kZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0g
ZW5jX3RvX2RpZ19wb3J0KCZlbmNvZGVyLQ0KPiA+YmFzZSk7DQo+IEBAIC01NTI1LDkgKzU1MjUs
OSBAQCBzdGF0aWMgYm9vbA0KPiBfX2ludGVsX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ICAJCQlyZXR1cm4gZzR4X2RpZ2l0YWxfcG9ydF9j
b25uZWN0ZWQoZW5jb2Rlcik7DQo+ICAJfQ0KPiAgDQo+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTEpDQo+IC0JCXJldHVybiBpY2xfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVy
KTsNCj4gLQllbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDEwKSB8fCBJU19HRU45X0JDKGRldl9w
cml2KSkNCj4gKwlpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9JQ1ApDQo+ICsJ
CXJldHVybiBpY3BfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsNCj4gKwllbHNlIGlm
IChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPj0gUENIX1NQVCkNCj4gIAkJcmV0dXJuIHNwdF9k
aWdpdGFsX3BvcnRfY29ubmVjdGVkKGVuY29kZXIpOw0KPiAgCWVsc2UgaWYgKElTX0dFTjlfTFAo
ZGV2X3ByaXYpKQ0KPiAgCQlyZXR1cm4gYnh0X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoZW5jb2Rl
cik7DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
