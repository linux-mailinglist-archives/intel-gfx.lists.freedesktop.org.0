Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F417AD35
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 18:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FED6E5B7;
	Tue, 30 Jul 2019 16:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 690186E5B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 16:05:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 09:05:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="162620705"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 30 Jul 2019 09:05:30 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190729222800.1010-1-daniele.ceraolospurio@intel.com>
 <156447447895.6373.14946537998785508903@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <7319e75d-19b6-b4b5-473f-7da5ff114967@intel.com>
Date: Tue, 30 Jul 2019 09:05:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156447447895.6373.14946537998785508903@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: don't enable communication
 twice on resume
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

CgpPbiA3LzMwLzE5IDE6MTQgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDctMjkgMjM6Mjg6MDApCj4+IFdoZW4gY29taW5nIG91
dCBvZiBTMy9TNCB3ZSBzYW5pdGl6ZSBhbmQgcmUtaW5pdCB0aGUgSFcsIHdoaWNoIGluY2x1ZGVz
Cj4+IGVuYWJsaW5nIGNvbW11bmljYXRpb24gZHVyaW5nIHVjX2luaXRfaHcuIFdlIHRoZXJlZm9y
ZSBkb24ndCB3YW50IHRvIGRvCj4+IHRoYXQgYWdhaW4gaW4gdWNfcmVzdW1lIGFuZCBjYW4ganVz
dCB0ZWxsIEd1QyB0byByZWxvYWQgaXRzIHN0YXRlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+PiBD
YzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4+IENjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gLS0tCj4+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDE2ICsrKysrKysrKysrKysrKy0KPj4g
ICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPj4gaW5kZXggZmFmYTliZTFlMTJhLi4z
NDcwNmE3NTM3OTMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX3VjLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+
PiBAQCAtMjMzLDExICsyMzMsMTggQEAgc3RhdGljIHZvaWQgZ3VjX2Rpc2FibGVfaW50ZXJydXB0
cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4+ICAgICAgICAgIGd1Yy0+aW50ZXJydXB0cy5kaXNh
YmxlKGd1Yyk7Cj4+ICAgfQo+PiAgIAo+PiArc3RhdGljIGJvb2wgZ3VjX2NvbW11bmljYXRpb25f
ZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4+ICt7Cj4+ICsgICAgICAgcmV0dXJuIGd1
Yy0+c2VuZCAhPSBpbnRlbF9ndWNfc2VuZF9ub3A7Cj4+ICt9Cj4+ICsKPj4gICBzdGF0aWMgaW50
IGd1Y19lbmFibGVfY29tbXVuaWNhdGlvbihzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4+ICAgewo+
PiAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19ndChndWMp
LT5pOTE1Owo+PiAgICAgICAgICBpbnQgcmV0Owo+PiAgIAo+PiArICAgICAgIEdFTV9CVUdfT04o
Z3VjX2NvbW11bmljYXRpb25fZW5hYmxlZChndWMpKTsKPj4gKwo+PiAgICAgICAgICByZXQgPSBp
bnRlbF9ndWNfY3RfZW5hYmxlKCZndWMtPmN0KTsKPj4gICAgICAgICAgaWYgKHJldCkKPj4gICAg
ICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+PiBAQCAtNTU4LDcgKzU2NSwxNCBAQCBpbnQgaW50
ZWxfdWNfcmVzdW1lKHN0cnVjdCBpbnRlbF91YyAqdWMpCj4+ICAgICAgICAgIGlmICghaW50ZWxf
Z3VjX2lzX3J1bm5pbmcoZ3VjKSkKPj4gICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPj4gICAK
Pj4gLSAgICAgICBndWNfZW5hYmxlX2NvbW11bmljYXRpb24oZ3VjKTsKPj4gKyAgICAgICAvKgo+
PiArICAgICAgICAqIFdoZW4gY29taW5nIG91dCBvZiBTMy9TNCB3ZSBzYW5pdGl6ZSBhbmQgcmUt
aW5pdCB0aGUgSFcsIHNvCj4+ICsgICAgICAgICogY29tbXVuaWNhdGlvbiBpcyBhbHJlYWR5IHJl
LWVuYWJsZWQgYXQgdGhpcyBwb2ludCBhbmQgd2UganVzdCBuZWVkCj4+ICsgICAgICAgICogdG8g
dGVsbCBHdUMgdG8gcmVsb2FkIGl0cyBpbnRlcm5hbCBzdGF0ZS4gRHVyaW5nIHJ1bnRpbWUgcmVz
dW1lIHdlCj4+ICsgICAgICAgICogaW5zdGVhZCB3YW50IHRvIHJlLWluaXQgZXZlcnl0aGluZy4K
Pj4gKyAgICAgICAgKi8KPj4gKyAgICAgICBpZiAoIWd1Y19jb21tdW5pY2F0aW9uX2VuYWJsZWQo
Z3VjKSkKPj4gKyAgICAgICAgICAgICAgIGd1Y19lbmFibGVfY29tbXVuaWNhdGlvbihndWMpOwo+
IAo+IFdlIGRpc3Rpbmd1aXNoIHJ1bnRpbWVfc3VzcGVuZCBmcm9tIHN1c3BlbmQsIGJ1dCBub3Qg
cnVudGltZV9yZXN1bWUgZnJvbQo+IHJlc3VtZS4gSXMgdGhhdCBkaXN0aW5jdGlvbiB3b3J0aHdo
aWxlLCBjb3VsZCB3ZSB1c2UgaXQgYmUgbW9yZSBzdHJpY3QKPiBvdmVyIHRoZSBleHBlY3RlZCBz
dGF0ZT8KPiAtQ2hyaXMKPiAKClRoZSBhY3R1YWwgYWN0aW9ucyB3ZSB3YW50IHRvIHBlcmZvcm0g
aW4gYm90aCBjYXNlcyBhcmUgdGhlIHNhbWUsIGFwYXJ0IApmcm9tIHRoZSBjb21tdW5pY2F0aW9u
IHNpZGUuIFdoYXQgYWJvdXQ6CgpzdGF0aWMgaW50IF9fdWNfcmVzdW1lKHN0cnVjdCBpbnRlbF91
YyAqdWMsIGJvb2wgZW5hYmxlX2NvbW0pCnsKCWlmICghaW50ZWxfZ3VjX2lzX3J1bm5pbmcoKSkK
CQlyZXR1cm4gMDsKCglHRU1fQlVHX09OKGVuYWJsZSBjb21tID09IGd1Y19jb21tdW5pY2F0aW9u
X2VuYWJsZWQoKSk7CgoJaWYgKGVuYWJsZV9jb21tKQoJCWd1Y19lbmFibGVfY29tbXVuaWNhdGlv
bigpOwoKCWVyciA9IGludGVsX2d1Y19yZXN1bWUoKTsKfQoKaW50ZWxfdWNfcnVudGltZV9yZXN1
bWUoKQp7CglfX3VjX3Jlc3VtZSh1YywgdHJ1ZSk7Cn0KCmludGVsX3VjX3Jlc3VtZSgpCnsKCV9f
dWNfcmVzdW1lKHVjLCBmYWxzZSk7Cn0KCkRhbmllbGUKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
