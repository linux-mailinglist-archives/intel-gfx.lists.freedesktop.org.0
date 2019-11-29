Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE3810D332
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 10:24:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 488ED6E89A;
	Fri, 29 Nov 2019 09:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C1016E89A
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 09:24:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 01:24:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="384035182"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by orsmga005.jf.intel.com with ESMTP; 29 Nov 2019 01:24:07 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 IRSMSX101.ger.corp.intel.com ([169.254.1.76]) with mapi id 14.03.0439.000;
 Fri, 29 Nov 2019 09:24:06 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/8] drm/i915: Don't set undefined bits in dirty_pipes
Thread-Index: AQHVgG/mLOCtdFFwhUC4gk/WCm4bDKeiK8mA
Date: Fri, 29 Nov 2019 09:24:05 +0000
Message-ID: <d0a9b5130b95fc4529b25248765d0eaa6b5258de.camel@intel.com>
References: <20191011200949.7839-1-ville.syrjala@linux.intel.com>
 <20191011200949.7839-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20191011200949.7839-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <566880DD1DB70E4EA85A637C4186C636@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915: Don't set undefined bits in
 dirty_pipes
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

T24gRnJpLCAyMDE5LTEwLTExIGF0IDIzOjA5ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoKSBzdHJhaWdodCB1cCBjb21wYXJlcyBk
aXJ0eV9waXBlcw0KPiB3aXRoIGEgYml0bWFzayBvZiBhbHJlYWR5IGNvbW1pdHRlZCBwaXBlcy4g
SWYgd2Ugc2V0IGJpdHMgaW4NCj4gZGlydHlfcGlwZXMgZm9yIG5vbi1leGlzdGVudCBwaXBlcyB0
aGF0IGNvbXBhcmlzb24gd2lsbCBuZXZlcg0KPiB3b3JrIHJpZ2h0LiBTbyBsZXQncyBsaW1pdCBv
dXJzZWx2ZXMgdG8gYml0cyB0aGF0IGV4aXN0Lg0KPiANCj4gQW5kIHdlJ2xsIGRvIHRoZSBzYW1l
IGZvciB0aGUgYWN0aXZlX3BpcGVzX2NoYW5nZWQgYml0bWFzay4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDQgKystLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYw0KPiBpbmRleCAyYjcxZDUyYTRlZGUuLmYyMWViOTI1MGQyMyAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBAIC01NDQ0LDcgKzU0NDQsNyBAQCBza2xf
ZGRiX2FkZF9hZmZlY3RlZF9waXBlcyhzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkNCj4gIAkJaWYgKHJldCkNCj4gIAkJCXJldHVybiByZXQ7DQo+ICANCj4gLQkJc3RhdGUtPmFj
dGl2ZV9waXBlX2NoYW5nZXMgPSB+MDsNCj4gKwkJc3RhdGUtPmFjdGl2ZV9waXBlX2NoYW5nZXMg
PSBJTlRFTF9JTkZPKGRldl9wcml2KS0NCj4gPnBpcGVfbWFzazsNCj4gIA0KPiAgCQkvKg0KPiAg
CQkgKiBXZSB1c3VhbGx5IG9ubHkgaW5pdGlhbGl6ZSBzdGF0ZS0+YWN0aXZlX3BpcGVzIGlmIHdl
DQo+IEBAIC01NDcwLDcgKzU0NzAsNyBAQCBza2xfZGRiX2FkZF9hZmZlY3RlZF9waXBlcyhzdHJ1
Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAkgKiB0byBncmFiIHRoZSBsb2Nr
IG9uICphbGwqIENSVEMncy4NCj4gIAkgKi8NCj4gIAlpZiAoc3RhdGUtPmFjdGl2ZV9waXBlX2No
YW5nZXMgfHwgc3RhdGUtPm1vZGVzZXQpIHsNCj4gLQkJc3RhdGUtPndtX3Jlc3VsdHMuZGlydHlf
cGlwZXMgPSB+MDsNCj4gKwkJc3RhdGUtPndtX3Jlc3VsdHMuZGlydHlfcGlwZXMgPSBJTlRFTF9J
TkZPKGRldl9wcml2KS0NCj4gPnBpcGVfbWFzazsNCj4gIA0KPiAgCQlyZXQgPSBpbnRlbF9hZGRf
YWxsX3BpcGVzKHN0YXRlKTsNCj4gIAkJaWYgKHJldCkNCg0KUmV2aWV3ZWQtYnk6IFN0YW5pc2xh
diBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
