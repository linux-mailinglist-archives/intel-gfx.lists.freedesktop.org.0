Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF845CE9E1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 18:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E57389EA3;
	Mon,  7 Oct 2019 16:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330A689C18
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 16:55:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 09:55:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="187041515"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga008.jf.intel.com with ESMTP; 07 Oct 2019 09:55:17 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 7 Oct 2019 09:55:17 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.63]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.97]) with mapi id 14.03.0439.000;
 Mon, 7 Oct 2019 09:55:16 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/5] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
Thread-Index: AQHVfPB6IHHaIFqBcUOHoOQbOOeP7adPY+Rw
Date: Mon, 7 Oct 2019 16:55:16 +0000
Deferred-Delivery: Mon, 7 Oct 2019 16:54:18 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68CE6C156@fmsmsx120.amr.corp.intel.com>
References: <20191007091920.2176-1-abdiel.janulgue@linux.intel.com>
 <20191007091920.2176-3-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191007091920.2176-3-abdiel.janulgue@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDIyNDE2MzUtY2E1Yy00ZTc3LWIyZTktMDkyYzRkMTg5YWJjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRlkxUmhyT0ZXUkNsR2lvdFpFdUN0UFd4REJacHE0aUZhR0RSQnBsQlc4RzZMZjVBXC8yMDMrOUhkc2FNOXpcL0ZSIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEFiZGllbA0KPiBK
YW51bGd1ZQ0KPiBTZW50OiBNb25kYXksIE9jdG9iZXIgNywgMjAxOSAyOjE5IEFNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBBdWxkLCBNYXR0aGV3IDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjIgMy81
XSBkcm0vaTkxNTogSW50cm9kdWNlDQo+IERSTV9JOTE1X0dFTV9NTUFQX09GRlNFVA0KPiANCj4g
VGhpcyBpcyByZWFsbHkganVzdCBhbiBhbGlhcyBvZiBtbWFwX2d0dC4gQWRkIGEgbmV3IENQVSBt
bWFwDQo+IGltcGxlbWVudGF0aW9uIHRoYXQgYWxsb3dzIG11bHRpcGxlIGZhdWx0IGhhbmRsZXJz
IHRoYXQgZGVwZW5kcyBvbg0KPiB0aGUgb2JqZWN0J3MgYmFja2luZyBwYWdlcy4NCj4gDQo+IE5v
dGUgdGhhdCB3ZSBtdWx0aXBsZXggbW1hcF9ndHQgYW5kIG1tYXBfb2Zmc2V0IHRocm91Z2ggdGhl
IHNhbWUgaW9jdGwsDQo+IGFuZCB1c2UgdGhlIHplcm8gZXh0ZW5kaW5nIGJlaGF2aW91ciBvZiBk
cm0gdG8gZGlmZmVyZW50aWF0ZSBiZXR3ZWVuDQo+IHRoZW0sIHdoZW4gd2UgaW5zcGVjdCB0aGUg
ZmxhZ3MuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51
bGd1ZUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0
dGhldy5hdWxkQGludGVsLmNvbT4NCj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fbW1hbi5jICAgICAgfCAzNiArKysrKysrKysrKysrKysrKy0tDQo+ICAuLi4vZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAgfCAgMyArKw0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgIDIgKy0NCj4gIGluY2x1
ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAgICAgICB8IDI4ICsrKysrKysrKysr
KysrKw0KPiAgNCBmaWxlcyBjaGFuZ2VkLCA2NiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQ0KDQpIb3cgZG9lcyB0aGUgbGFiZWwgJ29mZnNldCcgZml0IGludG8gdGhpcyBBUEkgaWYgaXQn
cyByZWFsbHkgYWJvdXQgbXVsdGlwbGUgZmF1bHQgaGFuZGxlcnM/DQpDb3VsZCBkbyB3aXRoIGEg
bXVjaCBiZXR0ZXIgZGVzY3JpcHRpb24gaGVyZSBJIHRoaW5rLiBXaG8gd291bGQgdXNlIHRoaXMs
IGFuZCB3aHksIHdvdWxkIGhlbHAgYSBsb3QuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
