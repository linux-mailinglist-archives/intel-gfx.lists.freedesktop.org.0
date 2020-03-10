Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE489180A10
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 22:12:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E976E2F8;
	Tue, 10 Mar 2020 21:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFD346E2F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 21:12:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 14:12:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="389054088"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2020 14:12:44 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 14:12:34 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.253]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.81]) with mapi id 14.03.0439.000;
 Tue, 10 Mar 2020 14:12:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Get rid of silly void* from MST
 code
Thread-Index: AQHV9xpxlXVd7Fx4JUKhIlOZvtacUahCyK2A
Date: Tue, 10 Mar 2020 21:12:33 +0000
Message-ID: <5b33ac0cd4b706636ff45e4bf66f915458a05de2.camel@intel.com>
References: <20200310202752.28454-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200310202752.28454-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <DF9E6D8E413D8343BAEA07B960F914E2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Get rid of silly void* from MST
 code
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

T24gVHVlLCAyMDIwLTAzLTEwIGF0IDIyOjI3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTm90IHN1cmUgd2h5IHRoaXMgdGhpbmcgaXMgdHJ5aW5nIHRvIGF2b2lkIGRlY2xhcmlu
ZyB0aGUgcHJvcGVyDQo+IHR5cGUgZm9yIHRoZXNlIHBvaW50ZXJzLiBCdXQgc2luY2UgdGhlc2Ug
YXJlIHVzZWQgb25seSBvbmNlIGxldCdzDQo+IGp1c3QgZ2V0IHJpZCBvZiB0aGUgbG9jYWwgdmFy
aWFibGUgZW50aXJlbHkuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgOCArKysrLS0tLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBpbmRleCBlMDhjYWNh
NjU4YzYuLjg4M2VhMTFiOTc3MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jDQo+IEBAIC00OSw3ICs0OSw2IEBAIHN0YXRpYyBpbnQgaW50ZWxf
ZHBfbXN0X2NvbXB1dGVfbGlua19jb25maWcoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsDQo+ICAJCXRvX2ludGVsX2Nvbm5lY3Rvcihjb25uX3N0YXRlLT5jb25uZWN0b3IpOw0KPiAg
CWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0NCj4gIAkJJmNy
dGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7DQo+IC0Jdm9pZCAqcG9ydCA9IGNvbm5lY3Rvci0+
cG9ydDsNCj4gIAlib29sIGNvbnN0YW50X24gPSBkcm1fZHBfaGFzX3F1aXJrKCZpbnRlbF9kcC0+
ZGVzYywgMCwNCj4gIAkJCQkJICAgRFBfRFBDRF9RVUlSS19DT05TVEFOVF9OKTsNCj4gIAlpbnQg
YnBwLCBzbG90cyA9IC1FSU5WQUw7DQo+IEBAIC02NSw3ICs2NCw4IEBAIHN0YXRpYyBpbnQgaW50
ZWxfZHBfbXN0X2NvbXB1dGVfbGlua19jb25maWcoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsDQo+ICAJCQkJCQkgICAgICAgZmFsc2UpOw0KPiAgDQo+ICAJCXNsb3RzID0gZHJtX2Rw
X2F0b21pY19maW5kX3ZjcGlfc2xvdHMoc3RhdGUsICZpbnRlbF9kcC0NCj4gPm1zdF9tZ3IsDQo+
IC0JCQkJCQkgICAgICBwb3J0LCBjcnRjX3N0YXRlLQ0KPiA+cGJuLCAwKTsNCj4gKwkJCQkJCSAg
ICAgIGNvbm5lY3Rvci0+cG9ydCwNCj4gKwkJCQkJCSAgICAgIGNydGNfc3RhdGUtPnBibiwNCj4g
MCk7DQo+ICAJCWlmIChzbG90cyA9PSAtRURFQURMSykNCj4gIAkJCXJldHVybiBzbG90czsNCj4g
IAkJaWYgKHNsb3RzID49IDApDQo+IEBAIC0xNDcsNyArMTQ3LDYgQEAgc3RhdGljIGludCBpbnRl
bF9kcF9tc3RfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIs
DQo+ICAJCXRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKGNvbm5fc3RhdGUpOw0KPiAg
CWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0NCj4gIAkJJnBp
cGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2RlOw0KPiAtCXZvaWQgKnBvcnQgPSBjb25uZWN0b3It
PnBvcnQ7DQo+ICAJc3RydWN0IGxpbmtfY29uZmlnX2xpbWl0cyBsaW1pdHM7DQo+ICAJaW50IHJl
dDsNCj4gIA0KPiBAQCAtMTU5LDcgKzE1OCw4IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2Nv
bXB1dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgDQo+ICAJ
aWYgKGludGVsX2Nvbm5fc3RhdGUtPmZvcmNlX2F1ZGlvID09IEhETUlfQVVESU9fQVVUTykNCj4g
IAkJcGlwZV9jb25maWctPmhhc19hdWRpbyA9DQo+IC0JCQlkcm1fZHBfbXN0X3BvcnRfaGFzX2F1
ZGlvKCZpbnRlbF9kcC0+bXN0X21nciwNCj4gcG9ydCk7DQo+ICsJCQlkcm1fZHBfbXN0X3BvcnRf
aGFzX2F1ZGlvKCZpbnRlbF9kcC0+bXN0X21nciwNCj4gKwkJCQkJCSAgY29ubmVjdG9yLT5wb3J0
KTsNCj4gIAllbHNlDQo+ICAJCXBpcGVfY29uZmlnLT5oYXNfYXVkaW8gPQ0KPiAgCQkJaW50ZWxf
Y29ubl9zdGF0ZS0+Zm9yY2VfYXVkaW8gPT0gSERNSV9BVURJT19PTjsNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
