Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74632E0550
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 15:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB66D6E7D7;
	Tue, 22 Oct 2019 13:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE406E48C
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 13:40:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 06:40:45 -0700
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="191465100"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO [10.251.81.75])
 ([10.251.81.75])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Oct 2019 06:40:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191022130221.20644-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <23ee42f0-2bcf-b4ee-f83c-2688c09bdfec@linux.intel.com>
Date: Tue, 22 Oct 2019 14:40:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022130221.20644-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Teach record_defaults to
 operate on the intel_gt
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

Ck9uIDIyLzEwLzIwMTkgMTQ6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBZ2FpbiB3ZSB3aXNo
IHRvIG9wZXJhdGUgb24gdGhlIGVuZ2luZXMsIHdoaWNoIGFyZSBvd25lZCBieSB0aGUKPiBpbnRl
bF9ndC4gQXMgc3VjaCBpdCBpcyBlYXNpZXIsIGFuZCBtdWNoIG1vcmUgY29uc2lzdGVudCwgdG8g
cGFzcyB0aGUKPiBpbnRlbF9ndCBwYXJhbWV0ZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jIHwgMTQgKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gaW5k
ZXggY2E2NGEwYzliNzYyLi5iODgyOTg4MDU2YmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKPiBAQCAtNDgsNiArNDgsNyBAQAo+ICAgI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV91c2Vy
LmgiCj4gICAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKPiAgICNpbmNsdWRlICJndC9pbnRlbF9n
dF9wbS5oIgo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuaCIKPiAgICNpbmNsdWRl
ICJndC9pbnRlbF9tb2NzLmgiCj4gICAjaW5jbHVkZSAiZ3QvaW50ZWxfcmVzZXQuaCIKPiAgICNp
bmNsdWRlICJndC9pbnRlbF9yZW5kZXJzdGF0ZS5oIgo+IEBAIC0xMDcyLDcgKzEwNzMsNyBAQCB2
b2lkIGk5MTVfZ2VtX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAg
CWludGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKPiAgIH0K
PiAgIAo+IC1zdGF0aWMgaW50IF9faW50ZWxfZW5naW5lc19yZWNvcmRfZGVmYXVsdHMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gK3N0YXRpYyBpbnQgX19pbnRlbF9lbmdpbmVzX3Jl
Y29yZF9kZWZhdWx0cyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICAgewo+ICAgCXN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJlcXVlc3RzW0k5MTVfTlVNX0VOR0lORVNdID0ge307Cj4gICAJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+IEBAIC0xMDg4LDcgKzEwODksNyBAQCBzdGF0aWMgaW50
IF9faW50ZWxfZW5naW5lc19yZWNvcmRfZGVmYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4gICAJICogZnJvbSB0aGUgc2FtZSBkZWZhdWx0IEhXIHZhbHVlcy4KPiAgIAkgKi8K
PiAgIAo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKPiArCWZvcl9lYWNo
X2VuZ2luZShlbmdpbmUsIGd0LCBpZCkgewo+ICAgCQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7
Cj4gICAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+ICAgCj4gQEAgLTEwOTYsNyArMTA5Nyw4
IEBAIHN0YXRpYyBpbnQgX19pbnRlbF9lbmdpbmVzX3JlY29yZF9kZWZhdWx0cyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgIAkJR0VNX0JVR19PTighZW5naW5lLT5rZXJuZWxfY29u
dGV4dCk7Cj4gICAJCWVuZ2luZS0+c2VyaWFsKys7IC8qIGZvcmNlIHRoZSBrZXJuZWwgY29udGV4
dCBzd2l0Y2ggKi8KPiAgIAo+IC0JCWNlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoaTkxNS0+a2Vy
bmVsX2NvbnRleHQsIGVuZ2luZSk7Cj4gKwkJY2UgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZShlbmdp
bmUtPmtlcm5lbF9jb250ZXh0LT5nZW1fY29udGV4dCwKPiArCQkJCQkgIGVuZ2luZSk7Cj4gICAJ
CWlmIChJU19FUlIoY2UpKSB7Cj4gICAJCQllcnIgPSBQVFJfRVJSKGNlKTsKPiAgIAkJCWdvdG8g
b3V0Owo+IEBAIC0xMTI1LDcgKzExMjcsNyBAQCBzdGF0aWMgaW50IF9faW50ZWxfZW5naW5lc19y
ZWNvcmRfZGVmYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gICAJfQo+ICAg
Cj4gICAJLyogRmx1c2ggdGhlIGRlZmF1bHQgY29udGV4dCBpbWFnZSB0byBtZW1vcnksIGFuZCBl
bmFibGUgcG93ZXJzYXZpbmcuICovCj4gLQlpZiAoIWk5MTVfZ2VtX2xvYWRfcG93ZXJfY29udGV4
dChpOTE1KSkgewo+ICsJaWYgKGludGVsX2d0X3dhaXRfZm9yX2lkbGUoZ3QsIEk5MTVfR0VNX0lE
TEVfVElNRU9VVCkgPT0gLUVUSU1FKSB7CgpXaGF0IGFyZSB0aGUgcGxhbnMgZm9yIGk5MTVfZ2Vt
X2xvYWRfcG93ZXJfY29udGV4dD8gSXQgZG9lcyBhIGxpdHRsZSBiaXQgCmV4dHJhLiBCdXQgYWxz
byBiZWNvbWVzIGNvbmZpbmVkIHRvIGk5MTVfZ2VtX3BtLmMgaWYgbm90IG5lZWRlZCBoZXJlIGFu
eSAKbW9yZSBzbyBjb3VsZCBiZSB1bmV4cG9ydGVkLgoKUmVnYXJkcywKClR2cnRrbwoKPiAgIAkJ
ZXJyID0gLUVJTzsKPiAgIAkJZ290byBvdXQ7Cj4gICAJfQo+IEBAIC0xMTg0LDcgKzExODYsNyBA
QCBzdGF0aWMgaW50IF9faW50ZWxfZW5naW5lc19yZWNvcmRfZGVmYXVsdHMoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCj4gICAJICogdGhpcyBpcyBieSBkZWNsYXJpbmcgb3Vyc2VsdmVz
IHdlZGdlZC4KPiAgIAkgKi8KPiAgIAlpZiAoZXJyKQo+IC0JCWludGVsX2d0X3NldF93ZWRnZWQo
Jmk5MTUtPmd0KTsKPiArCQlpbnRlbF9ndF9zZXRfd2VkZ2VkKGd0KTsKPiAgIAo+ICAgCWZvciAo
aWQgPSAwOyBpZCA8IEFSUkFZX1NJWkUocmVxdWVzdHMpOyBpZCsrKSB7Cj4gICAJCXN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZTsKPiBAQCAtMTI5OCw3ICsxMzAwLDcgQEAgaW50IGk5MTVfZ2VtX2lu
aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAgCWlmIChyZXQpCj4gICAJ
CWdvdG8gZXJyX2d0Owo+ICAgCj4gLQlyZXQgPSBfX2ludGVsX2VuZ2luZXNfcmVjb3JkX2RlZmF1
bHRzKGRldl9wcml2KTsKPiArCXJldCA9IF9faW50ZWxfZW5naW5lc19yZWNvcmRfZGVmYXVsdHMo
JmRldl9wcml2LT5ndCk7Cj4gICAJaWYgKHJldCkKPiAgIAkJZ290byBlcnJfZ3Q7Cj4gICAKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
