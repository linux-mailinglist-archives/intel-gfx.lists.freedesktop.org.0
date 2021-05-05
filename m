Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DCB373CA5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 15:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF9066E4A1;
	Wed,  5 May 2021 13:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3766E4A1;
 Wed,  5 May 2021 13:46:46 +0000 (UTC)
IronPort-SDR: kwfAtpG3fhfStV8YFp6Ae8eKP1E59LwKSTibghc2eoUYzjV8uJxqQ/Xy1EJ82G/mruBrjENQ06
 5rqdUKGkQZfw==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="195085081"
X-IronPort-AV: E=Sophos;i="5.82,275,1613462400"; d="scan'208";a="195085081"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 06:46:46 -0700
IronPort-SDR: /DT6/nf84cOpm1ZCy3YIs+gLrhKSRvxDePdW4HMZrOAvfjCqxRxzb0v95IkgGsvWvJpYw4pPSH
 hOGWkQjiaorA==
X-IronPort-AV: E=Sophos;i="5.82,275,1613462400"; d="scan'208";a="433827107"
Received: from aalfero-mobl1.ger.corp.intel.com (HELO [10.252.39.88])
 ([10.252.39.88])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 06:46:44 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
References: <20210505124105.336081-1-janusz.krzysztofik@linux.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <cd421bfe-a0d9-9afc-953b-f8f582fc7037@intel.com>
Date: Wed, 5 May 2021 16:46:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210505124105.336081-1-janusz.krzysztofik@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] lib/i915/perf: Fix non-card0
 processing
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDUvMDUvMjAyMSAxNTo0MSwgSmFudXN6IEtyenlzenRvZmlrIHdyb3RlOgo+IElHVCBpOTE1
L3BlcmYgbGlicmFyeSBmdW5jdGlvbnMgbm93IGFsd2F5cyBvcGVyYXRlIG9uIHN5c2ZzIHBlcmYK
PiBhdHRyaWJ1dGVzIG9mIGNhcmQwIGRldmljZSBub2RlLCBubyBtYXR0ZXIgd2hpY2ggRFJNIGRl
dmljZSBmZCBhIHVzZXIKPiBwYXNzZXMuICBUaGUgaW50ZW50aW9uIHdhcyB0byBhbHdheXMgc3dp
dGNoIHRvIHByaW1hcnkgZGV2aWNlIG5vZGUgaWYKPiBhIHVzZXIgcGFzc2VzIGEgcmVuZGVyIGRl
dmljZSBub2RlIGZkLCBidXQgdGhhdCBicmVha3MgaGFuZGxpbmcgb2YKPiBub24tY2FyZDAgZGV2
aWNlcy4KPgo+IElmIGEgdXNlciBwYXNzZWQgYSByZW5kZXIgZGV2aWNlIG5vZGUgZmQsIGZpbmQg
YSBwcmltYXJ5IGRldmljZSBub2RlIG9mCj4gdGhlIHNhbWUgZGV2aWNlIGFuZCB1c2UgaXQgaW5z
dGVhZCBvZiBmb3JjaWJseSB1c2luZyB0aGUgcHJpbWFyeSBkZXZpY2UKPiB3aXRoIG1pbm9yIG51
bWJlciAwIHdoZW4gb3BlbmluZyB0aGUgZGV2aWNlIHN5c2ZzIGFyZWEuCj4KPiB2MjogRG9uJ3Qg
YXNzdW1lIHByaW1hcnkgbWlub3IgbWF0Y2hlcyByZW5kZXIgbWlub3Igd2l0aCBtYXNrZWQgdHlw
ZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRv
ZmlrQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgbGliL2k5MTUvcGVyZi5jIHwgMzEgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKy0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvbGliL2k5MTUvcGVyZi5jIGIv
bGliL2k5MTUvcGVyZi5jCj4gaW5kZXggNTZkNWMwYjNhLi5kNzc2ODQ2OGUgMTAwNjQ0Cj4gLS0t
IGEvbGliL2k5MTUvcGVyZi5jCj4gKysrIGIvbGliL2k5MTUvcGVyZi5jCj4gQEAgLTM3MiwxNCAr
MzcyLDM5IEBAIG9wZW5fbWFzdGVyX3N5c2ZzX2RpcihpbnQgZHJtX2ZkKQo+ICAgewo+ICAgCWNo
YXIgcGF0aFsxMjhdOwo+ICAgCXN0cnVjdCBzdGF0IHN0Owo+ICsJaW50IHN5c2ZzOwo+ICAgCj4g
ICAJaWYgKGZzdGF0KGRybV9mZCwgJnN0KSB8fCAhU19JU0NIUihzdC5zdF9tb2RlKSkKPiAgICAg
ICAgICAgICAgICAgICByZXR1cm4gLTE7Cj4gICAKPiAtICAgICAgICBzbnByaW50ZihwYXRoLCBz
aXplb2YocGF0aCksICIvc3lzL2Rldi9jaGFyLyVkOjAiLAo+IC0gICAgICAgICAgICAgICAgIG1h
am9yKHN0LnN0X3JkZXYpKTsKPiArCXNucHJpbnRmKHBhdGgsIHNpemVvZihwYXRoKSwgIi9zeXMv
ZGV2L2NoYXIvJWQ6JWQiLCBtYWpvcihzdC5zdF9yZGV2KSwgbWlub3Ioc3Quc3RfcmRldikpOwo+
ICsJc3lzZnMgPSBvcGVuKHBhdGgsIE9fRElSRUNUT1JZKTsKCkp1c3QgdG8gc3BlbGwgb3V0IHRo
ZSBlcnJvciBwYXRocyA6CgoKaWYgKHN5c2ZzIDwgMCkKCiDCoMKgwqAgcmV0dXJuIHN5c2ZzOwoK
Cj4gICAKPiAtCXJldHVybiBvcGVuKHBhdGgsIE9fRElSRUNUT1JZKTsKPiArCWlmIChzeXNmcyA+
PSAwICYmIG1pbm9yKHN0LnN0X3JkZXYpID49IDEyOCkgewoKClRoZW4ganVzdCBpZiAobWlub3Io
c3Quc3RfcmRldikgPj0gMTI4KSB7IC4uLgoKTWF5YmUgYWRkIGEgY29tbWVudCBhYm92ZSB0aGlz
IGlzIDogLyogSWYgd2Ugd2VyZSBnaXZlbiBhIHJlbmRlckQqIApkcm1fZmQsIGZpbmQgaXQncyBh
c3NvY2lhdGVkIGNhcmRYIG5vZGUuICovCgoKPiArCQljaGFyIGRldmljZVsxMDBdLCBjbXBbMTAw
XTsKPiArCQlpbnQgZGV2aWNlX2xlbiwgY21wX2xlbiwgaTsKPiArCj4gKwkJZGV2aWNlX2xlbiA9
IHJlYWRsaW5rYXQoc3lzZnMsICJkZXZpY2UiLCBkZXZpY2UsIHNpemVvZihkZXZpY2UpKTsKPiAr
CQljbG9zZShzeXNmcyk7Cj4gKwkJaWYgKGRldmljZV9sZW4gPCAwKQo+ICsJCQlyZXR1cm4gZGV2
aWNlX2xlbjsKPiArCj4gKwkJZm9yIChpID0gMDsgaSA8IDEyODsgaSsrKSB7Cj4gKwo+ICsJCQlz
bnByaW50ZihwYXRoLCBzaXplb2YocGF0aCksICIvc3lzL2Rldi9jaGFyLyVkOiVkIiwgbWFqb3Io
c3Quc3RfcmRldiksIGkpOwo+ICsJCQlzeXNmcyA9IG9wZW4ocGF0aCwgT19ESVJFQ1RPUlkpOwo+
ICsJCQlpZiAoc3lzZnMgPCAwKQo+ICsJCQkJY29udGludWU7Cj4gKwo+ICsJCQljbXBfbGVuID0g
cmVhZGxpbmthdChzeXNmcywgImRldmljZSIsIGNtcCwgc2l6ZW9mKGNtcCkpOwo+ICsJCQlpZiAo
Y21wX2xlbiA9PSBkZXZpY2VfbGVuICYmICFtZW1jbXAoY21wLCBkZXZpY2UsIGNtcF9sZW4pKQo+
ICsJCQkJYnJlYWs7Cj4gKwo+ICsJCQljbG9zZShzeXNmcyk7CllvdSBtaWdodCB3YW50IHRvIHNl
dCBzeXNmcyA9IC0xIGhlcmUganVzdCBpbiB0aGUgdW5saWtlbHkgY2FzZSB0aGlzIGlzIApuZXZl
ciBmb3VuZC4KPiArCQl9Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIHN5c2ZzOwo+ICAgfQo+ICAgCj4g
ICBzdHJ1Y3QgaW50ZWxfcGVyZiAqCgoKV2l0aCB0aGUgcHJvcG9zZWQgY2hhbmdlcyA6CgpSZXZp
ZXdlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29t
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
