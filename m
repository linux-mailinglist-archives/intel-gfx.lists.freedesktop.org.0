Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C9997A74
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 15:13:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591506E338;
	Wed, 21 Aug 2019 13:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5556E6E332
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 13:13:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 06:13:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="203019157"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by fmsmga004.fm.intel.com with ESMTP; 21 Aug 2019 06:13:27 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.7]) by
 IRSMSX152.ger.corp.intel.com ([169.254.6.191]) with mapi id 14.03.0439.000;
 Wed, 21 Aug 2019 14:13:26 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 16/40] drm/i915: Add
 for_each_new_intel_connector_in_state()
Thread-Index: AQHVVN/B8p0UgKDDT0mmSz3gcl8G86cFigCA
Date: Wed, 21 Aug 2019 13:13:26 +0000
Message-ID: <ad6c24e0442856495d76f1f205717de6cf1066c6.camel@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-17-lucas.demarchi@intel.com>
In-Reply-To: <20190817093902.2171-17-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <503978036AE99142AFD5E12AFCD98BAC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 16/40] drm/i915: Add
 for_each_new_intel_connector_in_state()
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

T24gU2F0LCAyMDE5LTA4LTE3IGF0IDAyOjM4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
Cj4gRnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4g
Cj4gVGhlIHNhbWUgbWFjcm8gYXMgZm9yX2VhY2hfbmV3X2Nvbm5lY3Rvcl9pbl9zdGF0ZSgpIGJ1
dCBpdCB1c2VzCj4gaW50ZWwvaTkxNSB0eXBlcyBpbnN0ZWFkIG9mIHRoZSBkcm0gb25lcy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgoK
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCA4
ICsrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gaW5kZXggZTU3ZTY5
NjkwNTFkLi5mZDMwNDNlNzdiNTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaAo+IEBAIC00MTEsNiArNDExLDE0IEBAIGVudW0gcGh5X2ZpYSB7
Cj4gIAkgICAgIChfX2kpKyspIFwKPiAgCQlmb3JfZWFjaF9pZihjcnRjKQo+ICAKPiArI2RlZmlu
ZSBmb3JfZWFjaF9uZXdfaW50ZWxfY29ubmVjdG9yX2luX3N0YXRlKF9fc3RhdGUsIGNvbm5lY3Rv
ciwKPiBuZXdfY29ubmVjdG9yX3N0YXRlLCBfX2kpIFwKPiArCWZvciAoKF9faSkgPSAwOyBcCj4g
KwkgICAgIChfX2kpIDwgKF9fc3RhdGUpLT5iYXNlLm51bV9jb25uZWN0b3I7IFwKPiArCSAgICAg
KF9faSkrKykgXAo+ICsJCWZvcl9lYWNoX2lmICgoX19zdGF0ZSktPmJhc2UuY29ubmVjdG9yc1tf
X2ldLnB0ciAmJiBcCj4gKwkJCSAgICAgKChjb25uZWN0b3IpID0KPiB0b19pbnRlbF9jb25uZWN0
b3IoKF9fc3RhdGUpLT5iYXNlLmNvbm5lY3RvcnNbX19pXS5wdHIpLCBcCj4gKwkJCSAgICAgKG5l
d19jb25uZWN0b3Jfc3RhdGUpID0KPiB0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSgo
X19zdGF0ZSktCj4gPmJhc2UuY29ubmVjdG9yc1tfX2ldLm5ld19zdGF0ZSksIDEpKQo+ICsKPiAg
dm9pZCBpbnRlbF9saW5rX2NvbXB1dGVfbV9uKHUxNiBicHAsIGludCBubGFuZXMsCj4gIAkJCSAg
ICBpbnQgcGl4ZWxfY2xvY2ssIGludCBsaW5rX2Nsb2NrLAo+ICAJCQkgICAgc3RydWN0IGludGVs
X2xpbmtfbV9uICptX24sCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
