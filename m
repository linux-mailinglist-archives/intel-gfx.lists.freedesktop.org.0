Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D568DA7737
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 00:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C594089A5E;
	Tue,  3 Sep 2019 22:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D523789A5E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 22:45:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 15:45:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="382287835"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga005.fm.intel.com with ESMTP; 03 Sep 2019 15:45:28 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Sep 2019 15:45:28 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.244]) with mapi id 14.03.0439.000;
 Tue, 3 Sep 2019 15:45:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v3 5/7] drm/i915/tgl: disable SAGV temporarily
Thread-Index: AQHVXkvQWRbZho3dCkaT5P7K3AB6IqcbAEmAgAALB4A=
Date: Tue, 3 Sep 2019 22:45:28 +0000
Message-ID: <bdc2420bd4e7cd42c02d249e1cb880b0de16716a.camel@intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
 <20190829092554.32198-6-lucas.demarchi@intel.com>
 <20190903220559.GM13677@mdroper-desk.amr.corp.intel.com>
In-Reply-To: <20190903220559.GM13677@mdroper-desk.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <E0F333C69ECE1B4491C7CCAEA19E38EE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 5/7] drm/i915/tgl: disable SAGV
 temporarily
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA5LTAzIGF0IDE1OjA1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUaHUsIEF1ZyAyOSwgMjAxOSBhdCAwMjoyNTo1MkFNIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkg
d3JvdGU6DQo+ID4gU0FHViBpcyBub3QgY3VycmVudGx5IHdvcmtpbmcgZm9yIFRpZ2VyIExha2Uu
IFdlIGJldHRlciBkaXNhYmxlIGl0DQo+ID4gdW50aWwNCj4gPiB0aGUgaW1wbGVtZW50YXRpb24g
aXMgc3RhYmlsaXplZCBhbmQgd2UgY2FuIGVuYWJsZSBpdC4NCj4gDQo+IERvZXMgIm5vdCBjdXJy
ZW50bHkgd29ya2luZyIgcmVmZXIgdG8gdGhlIGhhcmR3YXJlIG5vdCB3b3JraW5nIGluIHRoZQ0K
PiBjdXJyZW50IHN0ZXBwaW5nLCBvciBpcyBpdCBqdXN0IGEgbWF0dGVyIG9mIHVzIG5vdCBoYXZp
bmcgcHJvcGVyDQo+IHNlcXVlbmNlcyBkb2N1bWVudGVkIHlldCBpbiB0aGUgYnNwZWMgKGFuZCBn
ZW4xMSdzIHNlcXVlbmNlcyBub3QNCj4gYmVpbmcNCj4gc3VmZmljaWVudCk/DQo+IA0KPiBTb21l
dGhpbmcgbW9yZSBkZXNjcmlwdGl2ZSB0aGFuICJIQUNLISIgaW4gdGhlIGNvbW1lbnQgYmVsb3cg
bWlnaHQgYmUNCj4gYQ0KPiBnb29kIGlkZWEgc2luY2Ugd2UncmUgdHJ5aW5nIHRvIGxhbmQgdGhp
cyB1cHN0cmVhbS4NCg0KVGhlIGluZm9ybWF0aW9uIHRoYXQgSSBoYWQgd2FzIHRoYXQgaW4gdGhl
IGN1cnJlbnQgc3RlcHBpbmcgaXQgd291bGQNCm5vdCB3b3JrIGJ1dCBkb2luZyBzb21lIHNlYXJj
aGluZyBJIGZvdW5kIHRoaXMgSFNEOiAyMjA4MTkxOTA5IFNvIGxvb2tzDQpsaWtlIGl0IHdhcyBm
aXhlZCAxNSBkYXlzIGFnbyBhbmQgYSBuZXcgQklPUyBzaG91bGQgZml4IHRoZSBpc3N1ZS4NCg0K
SSBndWVzcyBmb3Igbm93IHdlIGNvdWxkIGdvIHdpdGggdGhpcyBwYXRjaCBhbmQgdGhlIHJldmVy
dCBpdCB3aGVuIHdlDQpjb25maXJtIHRoYXQgYSByZWxpYWJsZSByZWxlYXNlZCBCSU9TIGhhcyB0
aGUgZml4IGFuZCBhZGRpbmcgdGhlIEhTRCB0bw0KdGhlIGNvbW1pdCBtZXNzYWdlLg0KDQo+IA0K
PiANCj4gTWF0dA0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYyB8IDQgKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiBpbmRleCA0ZmE5YmM4
M2M4YjQuLjcyOTRmY2YwNTMyMyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0K
PiA+IEBAIC0zNjU0LDYgKzM2NTQsMTAgQEAgc3RhdGljIGJvb2wgc2tsX25lZWRzX21lbW9yeV9i
d193YShzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiAgc3RhdGlj
IGJvb2wNCj4gPiAgaW50ZWxfaGFzX3NhZ3Yoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQ0KPiA+ICB7DQo+ID4gKwkvKiBIQUNLISAqLw0KPiA+ICsJaWYgKElTX0dFTihkZXZfcHJp
diwgMTIpKQ0KPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiArDQo+ID4gIAlyZXR1cm4gKElTX0dF
TjlfQkMoZGV2X3ByaXYpIHx8IElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTApICYmDQo+ID4gIAkJ
ZGV2X3ByaXYtPnNhZ3Zfc3RhdHVzICE9IEk5MTVfU0FHVl9OT1RfQ09OVFJPTExFRDsNCj4gPiAg
fQ0KPiA+IC0tIA0KPiA+IDIuMjMuMA0KPiA+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
