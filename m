Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0066EAD9C8
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 15:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7327689BF3;
	Mon,  9 Sep 2019 13:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B95C889BF3
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 13:14:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 06:14:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="335592866"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.93])
 ([10.66.116.93])
 by orsmga004.jf.intel.com with ESMTP; 09 Sep 2019 06:14:24 -0700
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190907110735.10302-1-animesh.manna@intel.com>
 <20190907110735.10302-7-animesh.manna@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <cf4db3d5-f96d-4a08-0830-6c8e2fa713e5@intel.com>
Date: Mon, 9 Sep 2019 18:44:23 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190907110735.10302-7-animesh.manna@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 06/11] drm/i915/dsb: functions to
 enable/disable DSB engine.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvNy8yMDE5IDQ6MzcgUE0sIEFuaW1lc2ggTWFubmEgd3JvdGU6Cj4gRFNCIHdpbGwgYmUg
dXNlZCBmb3IgcGVyZm9ybWFuY2UgaW1wcm92ZW1lbnQgZm9yIHNvbWUgc3BlY2lhbCBzY2VuYXJp
by4KPiBEU0IgZW5naW5lIHdpbGwgYmUgZW5hYmxlZCBiYXNlZCBvbiBuZWVkIGFuZCBhZnRlciBj
b21wbGV0aW9uIG9mIGl0cyB3b3JrCj4gd2lsbCBiZSBkaXNhYmxlZC4gQXBpIGFkZGVkIGZvciBl
bmFibGUvZGlzYWJsZSBvcGVyYXRpb24gYnkgdXNpbmcgRFNCX0NUUkwKPiByZWdpc3Rlci4KPgo+
IHYxOiBJbml0aWFsIHZlcnNpb24uCj4gdjI6IFBPU1RJTkdfUkVBRCBhZGRlZCBhZnRlciB3cml0
aW5nIGNvbnRyb2wgcmVnaXN0ZXIuIChTaGFzaGFuaykKPgo+IENjOiBNaWNoZWwgVGhpZXJyeSA8
bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4g
Q2M6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPiAtLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA0MiArKysrKysrKysr
KysrKysrKysrKysrKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
ICAgfCAgMSArCj4gICAyIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKykKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+IGluZGV4IDJjODQxNTUxOGM2NS4u
NTZiZjQxYjAwZjYyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jCj4gQEAgLTI2LDYgKzI2LDQ4IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpc19kc2JfYnVzeShz
dHJ1Y3QgaW50ZWxfZHNiICpkc2IpCj4gICAJcmV0dXJuIERTQl9TVEFUVVMgJiBJOTE1X1JFQUQo
RFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyBpbmxpbmUgYm9v
bCBpbnRlbF9kc2JfZW5hYmxlX2VuZ2luZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCj4gK3sKPiAr
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29udGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRj
KSwgZHNiKTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y3J0Yy0+YmFzZS5kZXYpOwo+ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+ICsJdTMy
IGRzYl9jdHJsOwo+ICsKPiArCWRzYl9jdHJsID0gSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRz
Yi0+aWQpKTsKPiArClRoaXMgc3BhY2Ugbm90IHJlcXVpcmVkLgo+ICsJaWYgKERTQl9TVEFUVVMg
JiBkc2JfY3RybCkgewo+ICsJCURSTV9ERUJVR19LTVMoIkRTQiBlbmdpbmUgaXMgYnVzeS5cbiIp
Owo+ICsJCXJldHVybiBmYWxzZTsKPiArCX0KPiArCj4gKwlkc2JfY3RybCB8PSBEU0JfRU5BQkxF
Owo+ICsJSTkxNV9XUklURShEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwgZHNiX2N0cmwpOwo+ICsK
PiArCVBPU1RJTkdfUkVBRChEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSk7Cj4gKwlyZXR1cm4gdHJ1
ZTsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSBib29sIGludGVsX2RzYl9kaXNhYmxlX2VuZ2lu
ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
ID0gY29udGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjKSwgZHNiKTsKPiArCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ICsJZW51
bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+ICsJdTMyIGRzYl9jdHJsOwo+ICsKPiArCWRzYl9j
dHJsID0gSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsKPiArClNhbWUgaGVyZS4K
PiArCWlmIChEU0JfU1RBVFVTICYgZHNiX2N0cmwpIHsKPiArCQlEUk1fREVCVUdfS01TKCJEU0Ig
ZW5naW5lIGlzIGJ1c3kuXG4iKTsKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwl9Cj4gKwo+ICsJZHNi
X2N0cmwgJj0gfkRTQl9FTkFCTEU7Cj4gKwlJOTE1X1dSSVRFKERTQl9DVFJMKHBpcGUsIGRzYi0+
aWQpLCBkc2JfY3RybCk7Cj4gKwo+ICsJUE9TVElOR19SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+
aWQpKTsKPiArCXJldHVybiB0cnVlOwo+ICt9Cj4gKwo+ICAgc3RydWN0IGludGVsX2RzYiAqCj4g
ICBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICAgewo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAo+IGluZGV4IGEzMDk5ZjcxMmFlNi4uMmRmMDEzODZlM2RlIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTExNjgxLDYgKzExNjgxLDcgQEAgZW51bSBza2xf
cG93ZXJfZ2F0ZSB7Cj4gICAjZGVmaW5lIERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKQkoX0RTQlNM
X0lOU1RBTkNFX0JBU0UgKyBcCj4gICAJCQkJCSAocGlwZSkgKiAweDEwMDAgKyAoaWQpICogMTAw
KQo+ICAgI2RlZmluZSBEU0JfQ1RSTChwaXBlLCBpZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBp
cGUsIGlkKSArIDB4OCkKPiArI2RlZmluZSAgIERTQl9FTkFCTEUJCQkoMSA8PCAzMSkKPiAgICNk
ZWZpbmUgICBEU0JfU1RBVFVTCQkJKDEgPDwgMCkKPiAgIAo+ICAgI2VuZGlmIC8qIF9JOTE1X1JF
R19IXyAqLwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
