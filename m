Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CD8183BA1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 22:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D9989890;
	Thu, 12 Mar 2020 21:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FCF489890
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 21:46:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 14:46:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="243175226"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 12 Mar 2020 14:46:09 -0700
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 12 Mar 2020 14:46:09 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.253]) by
 FMSMSX161.amr.corp.intel.com ([10.18.125.9]) with mapi id 14.03.0439.000;
 Thu, 12 Mar 2020 14:46:09 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/6] drm/i915: Add Wa_1207131216:icl,ehl
Thread-Index: AQHV98Fi/yH4wOPWJEu015Lv18MVTahF9W0A
Date: Thu, 12 Mar 2020 21:46:08 +0000
Message-ID: <7ea5c67b771c1a9892e5789f44f67aff9a8d22b8.camel@intel.com>
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
 <20200311162300.1838847-3-matthew.d.roper@intel.com>
In-Reply-To: <20200311162300.1838847-3-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <196C7F2515AB5E4F93D00493DCD1DCBF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915: Add Wa_1207131216:icl,ehl
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

T24gV2VkLCAyMDIwLTAzLTExIGF0IDA5OjIyIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBnZW4xMSB0aGUgWFlfRkFTVF9DT1BZX0JMVCBjb21tYW5kIGhhcyBzb21lIHNpemUgcmVzdHJp
Y3Rpb25zIG9uDQo+IGl0cw0KPiB1c2FnZS4gIEFsdGhvdWdoIHRoaXMgaW5zdHJ1Y3Rpb24gaXMg
bWFpbmx5IHVzZWQgYnkgdXNlcnNwYWNlLCBpOTE1DQo+IGFsc28NCj4gdXNlcyBpdCB0byBjb3B5
IG9iamVjdCBjb250ZW50cyBkdXJpbmcgc29tZSBzZWxmdGVzdHMsIHNvIGxldCdzDQo+IGVuc3Vy
ZQ0KPiB0aGUgcmVzdHJpY3Rpb25zIGFyZSBmb2xsb3dlZC4NCj4gDQoNCkxHVE0gaXQganV0IG5l
ZWQgdG8gZml4IHRoZSBjb21taXQgbWVzc2FnZSBmcm9tIDEyMDcxMzEyMTYgdG8NCjEyMDk2NDQ2
MTEuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCg0KPiBCc3BlYzogNjU0NA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMgfCAxNCArKysrKysrKysrKysrLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYw0KPiBpbmRleCAz
OWI4YTA1NWQ4MGEuLmUwMDc5MjE1OGYxMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jDQo+IEBAIC0xOTYsNiArMTk2LDE3IEBAIGlu
dCBpOTE1X2dlbV9vYmplY3RfZmlsbF9ibHQoc3RydWN0DQo+IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwNCj4gIAlyZXR1cm4gZXJyOw0KPiAgfQ0KPiAgDQo+ICsvKiBXYV8xMjA5NjQ0NjExOmlj
bCxlaGwgKi8NCj4gK3N0YXRpYyBib29sIHdhXzEyMDk2NDQ2MTFfYXBwbGllcyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyDQo+IHNpemUpDQo+ICt7DQo+ICsJdTMyIGhlaWdodCA9
IHNpemUgPj4gUEFHRV9TSElGVDsNCj4gKw0KPiArCWlmICghSVNfR0VOKGk5MTUsIDExKSkNCj4g
KwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJcmV0dXJuIGhlaWdodCAlIDQgPT0gMyAmJiBoZWln
aHQgPD0gODsNCj4gK30NCj4gKw0KPiAgc3RydWN0IGk5MTVfdm1hICppbnRlbF9lbWl0X3ZtYV9j
b3B5X2JsdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsDQo+ICAJCQkJCSBzdHJ1Y3QgaTkxNV92
bWEgKnNyYywNCj4gIAkJCQkJIHN0cnVjdCBpOTE1X3ZtYSAqZHN0KQ0KPiBAQCAtMjM3LDcgKzI0
OCw4IEBAIHN0cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZW1pdF92bWFfY29weV9ibHQoc3RydWN0DQo+
IGludGVsX2NvbnRleHQgKmNlLA0KPiAgCQlzaXplID0gbWluX3QodTY0LCByZW0sIGJsb2NrX3Np
emUpOw0KPiAgCQlHRU1fQlVHX09OKHNpemUgPj4gUEFHRV9TSElGVCA+IFMxNl9NQVgpOw0KPiAg
DQo+IC0JCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gOSkgew0KPiArCQlpZiAoSU5URUxfR0VOKGk5
MTUpID49IDkgJiYNCj4gKwkJICAgICF3YV8xMjA5NjQ0NjExX2FwcGxpZXMoaTkxNSwgc2l6ZSkp
IHsNCj4gIAkJCSpjbWQrKyA9IEdFTjlfWFlfRkFTVF9DT1BZX0JMVF9DTUQgfCAoMTAgLSAyKTsN
Cj4gIAkJCSpjbWQrKyA9IEJMVF9ERVBUSF8zMiB8IFBBR0VfU0laRTsNCj4gIAkJCSpjbWQrKyA9
IDA7DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
