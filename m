Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CC16FEAF
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 13:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA14689C3B;
	Mon, 22 Jul 2019 11:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E007589C3B
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 11:26:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 04:26:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,294,1559545200"; d="scan'208";a="344390898"
Received: from abj-mbp2.fi.intel.com ([10.237.66.137])
 by orsmga005.jf.intel.com with ESMTP; 22 Jul 2019 04:26:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190719130737.5835-1-chris@chris-wilson.co.uk>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <961786c9-6069-f35e-7a3c-9c91b8801f8b@linux.intel.com>
Date: Mon, 22 Jul 2019 14:26:16 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719130737.5835-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Fix rounding for 36b
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

CgpPbiAxOS8wNy8yMDE5IDE2LjA3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gVGhlIHRvcC1sZXZl
bCBwYWdlIGRpcmVjdG9yeSBmb3IgMzZiIGlzIGEgc2luZ2xlIGVudHJ5LCBub3QgbXVsdGlwbGUK
PiBsaWtlIDMyYi4gRml4IHVwIHRoZSByb3VuZGluZyBvbiB0aGUgY2FsY3VsYXRpb24gb2YgdGhl
IHNpemUgb2YgdGhlIHRvcAo+IGxldmVsIHNvIHRoYXQgd2UgcG9wdWxhdGUgdGhlIDR0aCBsZXZl
bCBjb3JyZWN0bHkgZm9yIDM2Yi4KPiAKClJldmlld2VkLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFi
ZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+Cgo+IFJlcG9ydGVkLWJ5OiBKb3NlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBGaXhlczogMWVkYTcwMWVhY2UyICgiZHJtL2k5MTUv
Z3R0OiBSZWN1cnNpdmUgY2xlYW51cCBmb3IgZ2VuOCIpCj4gQ2M6IEFiZGllbCBKYW51bGd1ZSA8
YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KPiBDYzogSm9zZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jIHwgMTcgKysrKysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
PiBpbmRleCAyMjBhYmE1YTk0ZDIuLjdkZDA4ZmY2YzBlYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jCj4gQEAgLTkwNSw2ICs5MDUsMTIgQEAgc3RhdGljIGlubGluZSB1bnNp
Z25lZCBpbnQgZ2VuOF9wdF9jb3VudCh1NjQgc3RhcnQsIHU2NCBlbmQpCj4gIAkJcmV0dXJuIGVu
ZCAtIHN0YXJ0Owo+ICB9Cj4gIAo+ICtzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCBnZW44X3Bk
X3RvcF9jb3VudChjb25zdCBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKPiArewo+ICsJ
dW5zaWduZWQgaW50IHNoaWZ0ID0gX19nZW44X3B0ZV9zaGlmdCh2bS0+dG9wKTsKPiArCXJldHVy
biAodm0tPnRvdGFsICsgKDF1bGwgPDwgc2hpZnQpIC0gMSkgPj4gc2hpZnQ7Cj4gK30KPiArCj4g
IHN0YXRpYyB2b2lkIF9fZ2VuOF9wcGd0dF9jbGVhbnVwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtLAo+ICAJCQkJIHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwZCwKPiAgCQkJCSBp
bnQgY291bnQsIGludCBsdmwpCj4gQEAgLTkzMCw5ICs5MzYsNyBAQCBzdGF0aWMgdm9pZCBnZW44
X3BwZ3R0X2NsZWFudXAoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCj4gIAlpZiAoaW50
ZWxfdmdwdV9hY3RpdmUodm0tPmk5MTUpKQo+ICAJCWdlbjhfcHBndHRfbm90aWZ5X3ZndChwcGd0
dCwgZmFsc2UpOwo+ICAKPiAtCV9fZ2VuOF9wcGd0dF9jbGVhbnVwKHZtLCBwcGd0dC0+cGQsCj4g
LQkJCSAgICAgdm0tPnRvdGFsID4+IF9fZ2VuOF9wdGVfc2hpZnQodm0tPnRvcCksCj4gLQkJCSAg
ICAgdm0tPnRvcCk7Cj4gKwlfX2dlbjhfcHBndHRfY2xlYW51cCh2bSwgcHBndHQtPnBkLCBnZW44
X3BkX3RvcF9jb3VudCh2bSksIHZtLT50b3ApOwo+ICAJZnJlZV9zY3JhdGNoKHZtKTsKPiAgfQo+
ICAKPiBAQCAtMTM5MSw3ICsxMzk1LDcgQEAgc3RhdGljIGludCBnZW44X3ByZWFsbG9jYXRlX3Rv
cF9sZXZlbF9wZHAoc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0KQo+ICAJdW5zaWduZWQgaW50IGlk
eDsKPiAgCj4gIAlHRU1fQlVHX09OKHZtLT50b3AgIT0gMik7Cj4gLQlHRU1fQlVHX09OKCh2bS0+
dG90YWwgPj4gX19nZW44X3B0ZV9zaGlmdCgyKSkgIT0gR0VOOF8zTFZMX1BEUEVTKTsKPiArCUdF
TV9CVUdfT04oZ2VuOF9wZF90b3BfY291bnQodm0pICE9IEdFTjhfM0xWTF9QRFBFUyk7Cj4gIAo+
ICAJZm9yIChpZHggPSAwOyBpZHggPCBHRU44XzNMVkxfUERQRVM7IGlkeCsrKSB7Cj4gIAkJc3Ry
dWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkZTsKPiBAQCAtMTQyOCw3ICsxNDMyLDcgQEAgc3Rh
dGljIHZvaWQgcHBndHRfaW5pdChzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQsIHN0cnVjdCBpbnRl
bF9ndCAqZ3QpCj4gIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqCj4gIGdlbjhf
YWxsb2NfdG9wX3BkKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQo+ICB7Cj4gLQljb25z
dCB1bnNpZ25lZCBpbnQgY291bnQgPSB2bS0+dG90YWwgPj4gX19nZW44X3B0ZV9zaGlmdCh2bS0+
dG9wKTsKPiArCWNvbnN0IHVuc2lnbmVkIGludCBjb3VudCA9IGdlbjhfcGRfdG9wX2NvdW50KHZt
KTsKPiAgCXN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwZDsKPiAgCj4gIAlHRU1fQlVHX09O
KGNvdW50ID4gQVJSQVlfU0laRShwZC0+ZW50cnkpKTsKPiBAQCAtMTUxNCw4ICsxNTE4LDcgQEAg
c3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICpnZW44X3BwZ3R0X2NyZWF0ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCj4gIGVycl9mcmVlX3BkOgo+ICAJX19nZW44X3BwZ3R0X2Ns
ZWFudXAoJnBwZ3R0LT52bSwgcHBndHQtPnBkLAo+IC0JCQkgICAgIHBwZ3R0LT52bS50b3RhbCA+
PiBfX2dlbjhfcHRlX3NoaWZ0KHBwZ3R0LT52bS50b3ApLAo+IC0JCQkgICAgIHBwZ3R0LT52bS50
b3ApOwo+ICsJCQkgICAgIGdlbjhfcGRfdG9wX2NvdW50KCZwcGd0dC0+dm0pLCBwcGd0dC0+dm0u
dG9wKTsKPiAgZXJyX2ZyZWVfc2NyYXRjaDoKPiAgCWZyZWVfc2NyYXRjaCgmcHBndHQtPnZtKTsK
PiAgZXJyX2ZyZWU6Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
