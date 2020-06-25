Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE8D20980E
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 03:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED9EE6E8EC;
	Thu, 25 Jun 2020 01:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7906E8EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 01:04:19 +0000 (UTC)
IronPort-SDR: 6YgE8OQ7Jo32mVmh66aDNbdT2UGugYTzXlSVa3Tlfn0+XM5xotZUdK/w7PQEyT1aZKbVp2Vi9J
 WTBbBLvWPf7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="132140075"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="132140075"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 18:04:18 -0700
IronPort-SDR: 5r+DM66CrPSiJ5Qatz8GGLhByYd752LxMU/LiXQPgDxKkXY/THzxvqt+0MtAwaShd/+Nc1uWi0
 42K+Wz+mywxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="479470392"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jun 2020 18:04:16 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 18:04:16 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.249]) with mapi id 14.03.0439.000;
 Wed, 24 Jun 2020 18:04:16 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/12] drm/i915: Fix g4x fbc watermark enable
Thread-Index: AQHWHg6Mm3rcsHhl6EKLVKum3eYyx6jpUsCA
Date: Thu, 25 Jun 2020 01:04:15 +0000
Message-ID: <599be76dd4f2aaa242f48abe809ec089e5354acc.camel@intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
 <20200429101034.8208-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429101034.8208-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.155.111]
Content-ID: <23DA4D4CFD732A45853EF02E7859C1BE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915: Fix g4x fbc watermark enable
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

T24gV2VkLCAyMDIwLTA0LTI5IGF0IDEzOjEwICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gJ2xldmVsJyBoZXJlIG1lYW5zIHRoZSBoaWdoZXN0IGxldmVsIHdlIGNhbid0IHVzZSwg
c28gd2hlbiBjaGVja2luZw0KPiB0aGUgZmJjIHdhdGVybWFya3Mgd2UgbmVlZCBhIC0xIHRvIGdl
dCBhdCB0aGUgbGFzdCBlbmFibGVkIGxldmVsLg0KPiANCj4gV2hpbGUgYXQgaWYgcmVmYWN0b3Ig
dGhlIGNvZGUgYSBiaXQgdG8gZGVjbHV0dGVyDQo+IGc0eF9jb21wdXRlX3BpcGVfd20oKS4NCj4g
DQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgfCAzMyArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAyMSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYw0KPiBpbmRleCAxZTk5YjM1ZjAwN2UuLjFjOTJlYmY2NGEzNCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBAIC0xMzQ0LDYgKzEzNDQsMjMgQEAgc3RhdGljIHZv
aWQgZzR4X2ludmFsaWRhdGVfd21zKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAgCX0NCj4g
IH0NCj4gIA0KPiArc3RhdGljIGJvb2wgZzR4X2NvbXB1dGVfZmJjX2VuKGNvbnN0IHN0cnVjdCBn
NHhfd21fc3RhdGUgKndtX3N0YXRlLA0KPiArCQkJICAgICAgIGludCBsZXZlbCkNCj4gK3sNCj4g
KwlpZiAobGV2ZWwgPCBHNFhfV01fTEVWRUxfU1IpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0K
PiArCWlmIChsZXZlbCA+PSBHNFhfV01fTEVWRUxfU1IgJiYNCj4gKwkgICAgd21fc3RhdGUtPnNy
LmZiYyA+IGc0eF9mYmNfZmlmb19zaXplKEc0WF9XTV9MRVZFTF9TUikpDQo+ICsJCXJldHVybiBm
YWxzZTsNCj4gKw0KPiArCWlmIChsZXZlbCA+PSBHNFhfV01fTEVWRUxfSFBMTCAmJg0KPiArCSAg
ICB3bV9zdGF0ZS0+aHBsbC5mYmMgPiBnNHhfZmJjX2ZpZm9fc2l6ZShHNFhfV01fTEVWRUxfSFBM
TCkpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiArCXJldHVybiB0cnVlOw0KPiArfQ0KPiAr
DQo+ICBzdGF0aWMgaW50IGc0eF9jb21wdXRlX3BpcGVfd20oc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19p
bnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+IEBAIC0xMzgzLDcgKzE0MDAsNiBA
QCBzdGF0aWMgaW50IGc0eF9jb21wdXRlX3BpcGVfd20oc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpDQo+ICAJCXdtX3N0YXRlLT53bS5wbGFuZVtwbGFuZV9pZF0gPSByYXctPnBs
YW5lW3BsYW5lX2lkXTsNCj4gIA0KPiAgCWxldmVsID0gRzRYX1dNX0xFVkVMX1NSOw0KPiAtDQo+
ICAJaWYgKCFnNHhfcmF3X2NydGNfd21faXNfdmFsaWQoY3J0Y19zdGF0ZSwgbGV2ZWwpKQ0KPiAg
CQlnb3RvIG91dDsNCj4gIA0KPiBAQCAtMTM5NSw3ICsxNDExLDYgQEAgc3RhdGljIGludCBnNHhf
Y29tcHV0ZV9waXBlX3dtKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAg
CXdtX3N0YXRlLT5jeHNyID0gbnVtX2FjdGl2ZV9wbGFuZXMgPT0gQklUKFBMQU5FX1BSSU1BUlkp
Ow0KPiAgDQo+ICAJbGV2ZWwgPSBHNFhfV01fTEVWRUxfSFBMTDsNCj4gLQ0KPiAgCWlmICghZzR4
X3Jhd19jcnRjX3dtX2lzX3ZhbGlkKGNydGNfc3RhdGUsIGxldmVsKSkNCj4gIAkJZ290byBvdXQ7
DQo+ICANCj4gQEAgLTE0MTgsMTcgKzE0MzMsMTEgQEAgc3RhdGljIGludCBnNHhfY29tcHV0ZV9w
aXBlX3dtKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCS8qDQo+ICAJ
ICogRGV0ZXJtaW5lIGlmIHRoZSBGQkMgd2F0ZXJtYXJrKHMpIGNhbiBiZSB1c2VkLiBJRg0KPiAg
CSAqIHRoaXMgaXNuJ3QgdGhlIGNhc2Ugd2UgcHJlZmVyIHRvIGRpc2FibGUgdGhlIEZCQw0KPiAt
CSAoIHdhdGVybWFyayhzKSByYXRoZXIgdGhhbiBkaXNhYmxlIHRoZSBTUi9IUExMDQo+IC0JICog
bGV2ZWwocykgZW50aXJlbHkuDQo+ICsJICogd2F0ZXJtYXJrKHMpIHJhdGhlciB0aGFuIGRpc2Fi
bGUgdGhlIFNSL0hQTEwNCj4gKwkgKiBsZXZlbChzKSBlbnRpcmVseS4gJ2xldmVsLTEnIGlzIHRo
ZSBoaWdoZXN0IHZhbGlkDQo+ICsJICogbGV2ZWwgaGVyZS4NCj4gIAkgKi8NCj4gLQl3bV9zdGF0
ZS0+ZmJjX2VuID0gbGV2ZWwgPiBHNFhfV01fTEVWRUxfTk9STUFMOw0KPiAtDQo+IC0JaWYgKGxl
dmVsID49IEc0WF9XTV9MRVZFTF9TUiAmJg0KPiAtCSAgICB3bV9zdGF0ZS0+c3IuZmJjID4gZzR4
X2ZiY19maWZvX3NpemUoRzRYX1dNX0xFVkVMX1NSKSkNCj4gLQkJd21fc3RhdGUtPmZiY19lbiA9
IGZhbHNlOw0KPiAtCWVsc2UgaWYgKGxldmVsID49IEc0WF9XTV9MRVZFTF9IUExMICYmDQo+IC0J
CSB3bV9zdGF0ZS0+aHBsbC5mYmMgPiBnNHhfZmJjX2ZpZm9fc2l6ZShHNFhfV01fTEVWRUxfSFBM
TCkpDQo+IC0JCXdtX3N0YXRlLT5mYmNfZW4gPSBmYWxzZTsNCj4gKwl3bV9zdGF0ZS0+ZmJjX2Vu
ID0gZzR4X2NvbXB1dGVfZmJjX2VuKHdtX3N0YXRlLCBsZXZlbCAtIDEpOw0KPiAgDQo+ICAJcmV0
dXJuIDA7DQo+ICB9DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
