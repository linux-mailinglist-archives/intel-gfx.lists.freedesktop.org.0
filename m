Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3488263135
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 08:47:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91DFF89FA5;
	Tue,  9 Jul 2019 06:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F05D689FA5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 06:47:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 23:47:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,469,1557212400"; d="scan'208";a="364046663"
Received: from muelmat-mobl1.ger.corp.intel.com (HELO [10.249.33.221])
 ([10.249.33.221])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jul 2019 23:47:05 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-4-lionel.g.landwerlin@intel.com>
 <156199377822.1583.13857985932185394689@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b4e45d91-3115-461f-65f2-fceccd5ff61d@intel.com>
Date: Tue, 9 Jul 2019 09:47:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156199377822.1583.13857985932185394689@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 03/11] drm/i915/perf: allow for CS OA
 configs to be created lazily
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDEvMDcvMjAxOSAxODowOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDEgMTI6MzQ6MjkpCj4+ICAgc3RydWN0IGk5MTVfb2FfY29u
ZmlnIHsKPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNTsKPj4gKwo+PiAg
ICAgICAgICBjaGFyIHV1aWRbVVVJRF9TVFJJTkdfTEVOICsgMV07Cj4+ICAgICAgICAgIGludCBp
ZDsKPj4gICAKPj4gQEAgLTExMTAsNiArMTExMiwxMCBAQCBzdHJ1Y3QgaTkxNV9vYV9jb25maWcg
ewo+PiAgICAgICAgICBzdHJ1Y3QgYXR0cmlidXRlICphdHRyc1syXTsKPj4gICAgICAgICAgc3Ry
dWN0IGRldmljZV9hdHRyaWJ1dGUgc3lzZnNfbWV0cmljX2lkOwo+PiAgIAo+PiArICAgICAgIHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4+ICsKPj4gKyAgICAgICBzdHJ1Y3QgbGlz
dF9oZWFkIHZtYV9saW5rOwo+PiArCj4+ICAgICAgICAgIGF0b21pY190IHJlZl9jb3VudDsKPj4g
ICB9Owo+PiAtc3RhdGljIHZvaWQgZnJlZV9vYV9jb25maWcoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV9v
YV9jb25maWcgKm9hX2NvbmZpZykKPj4gK3N0YXRpYyB2b2lkIHB1dF9vYV9jb25maWcoc3RydWN0
IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWcpCj4+ICAgewo+PiArICAgICAgIGlmICghYXRvbWlj
X2RlY19hbmRfdGVzdCgmb2FfY29uZmlnLT5yZWZfY291bnQpKQo+PiArICAgICAgICAgICAgICAg
cmV0dXJuOwo+IEkgc3Ryb25nbHkgYWR2aXNlIHRoYXQgcmVmX2NvdW50IGJlIHJlcGxhY2VkIGJ5
IHN0cnVjdCBrcmVmLCBqdXN0IHNvIHRoYXQKPiB3ZSBnZXQgdGhlIGJlbmVmaXQgb2YgZGVidWdn
aW5nLgo+Cj4gcHV0X29hX2NvbmZpZyAtPiBrcmVmX3B1dCgmb2FfY29uZmlnLT5yZWYsIGZyZWVf
b2FfY29uZmlnKQo+IChmcmVlX29hX2NvbmZpZyB0YWtlcyBrcmVmIGFzIGl0cyBhcmcgYW5kIHVz
ZXMgY29udGFpbmVyX29mKCkpCgoKVGhpcyBpcyBkb25lIGluICJkcm0vaTkxNTogYWRkIGEgbmV3
IHBlcmYgY29uZmlndXJhdGlvbiBleGVjYnVmIHBhcmFtZXRlciIKCkknbGwgZmFjdG9yIGl0IGlu
IHRoaXMgY29tbWl0LgoKCj4KPj4gK2ludCBpOTE1X3BlcmZfZ2V0X29hX2NvbmZpZyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIGlu
dCBtZXRyaWNzX3NldCwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1
X29hX2NvbmZpZyAqKm91dF9jb25maWcsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqKm91dF9vYmopCj4+ICt7Cj4+ICsgICAgICAgaW50
IHJldCA9IDA7Cj4+ICsgICAgICAgc3RydWN0IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWc7Cj4+
ICsKPj4gKyAgICAgICBpZiAoIWk5MTUtPnBlcmYuaW5pdGlhbGl6ZWQpCj4+ICsgICAgICAgICAg
ICAgICByZXR1cm4gLUVOT0RFVjsKPj4gKwo+PiArICAgICAgIHJldCA9IG11dGV4X2xvY2tfaW50
ZXJydXB0aWJsZSgmaTkxNS0+cGVyZi5tZXRyaWNzX2xvY2spOwo+PiAgICAgICAgICBpZiAocmV0
KQo+PiAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4+ICAgCj4+IC0gICAgICAgKm91dF9j
b25maWcgPSBpZHJfZmluZCgmZGV2X3ByaXYtPnBlcmYubWV0cmljc19pZHIsIG1ldHJpY3Nfc2V0
KTsKPj4gLSAgICAgICBpZiAoISpvdXRfY29uZmlnKQo+PiAtICAgICAgICAgICAgICAgcmV0ID0g
LUVJTlZBTDsKPj4gLSAgICAgICBlbHNlCj4+IC0gICAgICAgICAgICAgICBhdG9taWNfaW5jKCYo
Km91dF9jb25maWcpLT5yZWZfY291bnQpOwo+PiArICAgICAgIGlmIChtZXRyaWNzX3NldCA9PSAx
KSB7Cj4+ICsgICAgICAgICAgICAgICBvYV9jb25maWcgPSAmaTkxNS0+cGVyZi5vYS50ZXN0X2Nv
bmZpZzsKPj4gKyAgICAgICB9IGVsc2Ugewo+PiArICAgICAgICAgICAgICAgb2FfY29uZmlnID0g
aWRyX2ZpbmQoJmk5MTUtPnBlcmYubWV0cmljc19pZHIsIG1ldHJpY3Nfc2V0KTsKPiBXaHkgbm90
IGhhdmUgdGhlIGJ1aWx0aW5bMV0gaW5zaWRlIHRoZSBpZHI/CgoKSSB0aGluayBpdCB3YXMganVz
dCBhIHdheSB0byBhdm9pZCByZW1vdmluZyBpdCBmcm9tIHRoZSBpZHIgdGhyb3VnaCAKdXNlcnNw
YWNlIGNhbGxzLgoKCj4gLUNocmlzCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
