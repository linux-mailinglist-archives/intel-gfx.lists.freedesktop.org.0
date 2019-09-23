Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 809D4BB160
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 11:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8A46E25B;
	Mon, 23 Sep 2019 09:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E65B36E25B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 09:27:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 02:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="213264795"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by fmsmga004.fm.intel.com with ESMTP; 23 Sep 2019 02:27:03 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190921095542.23205-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <815d87a9-36bc-5ab1-b3f0-e26b2ba0a809@linux.intel.com>
Date: Mon, 23 Sep 2019 10:27:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190921095542.23205-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/execlists: Refactor -EIO
 markup of hung requests
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

Ck9uIDIxLzA5LzIwMTkgMTA6NTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBQdWxsIHNldHRpbmcg
LUVJTyBvbiB0aGUgaHVuZyByZXF1ZXN0cyBpbnRvIGl0cyBvd24gdXRpbGl0eSBmdW5jdGlvbi4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMzIgKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRp
b25zKCspLCAxNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
Ywo+IGluZGV4IDFhMmI3MTE1N2YwOC4uNTNlODIzZDM2YjI4IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMjM0LDYgKzIzNCwxMyBAQCBzdGF0aWMgdm9pZCBleGVj
bGlzdHNfaW5pdF9yZWdfc3RhdGUodTMyICpyZWdfc3RhdGUsCj4gICAJCQkJICAgICBzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAJCQkJICAgICBzdHJ1Y3QgaW50ZWxfcmluZyAq
cmluZyk7Cj4gICAKPiArc3RhdGljIHZvaWQgbWFya19laW8oc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEpCj4gK3sKPiArCWlmICghaTkxNV9yZXF1ZXN0X3NpZ25hbGVkKHJxKSkKPiArCQlkbWFfZmVu
Y2Vfc2V0X2Vycm9yKCZycS0+ZmVuY2UsIC1FSU8pOwo+ICsJaTkxNV9yZXF1ZXN0X21hcmtfY29t
cGxldGUocnEpOwo+ICt9Cj4gKwo+ICAgc3RhdGljIGlubGluZSB1MzIgaW50ZWxfaHdzX3ByZWVt
cHRfYWRkcmVzcyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICB7Cj4gICAJcmV0
dXJuIChpOTE1X2dndHRfb2Zmc2V0KGVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1hKSArCj4gQEAgLTI1
MDEsMTIgKzI1MDgsOCBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfY2FuY2VsX3JlcXVlc3RzKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgIAlfX2V4ZWNsaXN0c19yZXNldChlbmdp
bmUsIHRydWUpOwo+ICAgCj4gICAJLyogTWFyayBhbGwgZXhlY3V0aW5nIHJlcXVlc3RzIGFzIHNr
aXBwZWQuICovCj4gLQlsaXN0X2Zvcl9lYWNoX2VudHJ5KHJxLCAmZW5naW5lLT5hY3RpdmUucmVx
dWVzdHMsIHNjaGVkLmxpbmspIHsKPiAtCQlpZiAoIWk5MTVfcmVxdWVzdF9zaWduYWxlZChycSkp
Cj4gLQkJCWRtYV9mZW5jZV9zZXRfZXJyb3IoJnJxLT5mZW5jZSwgLUVJTyk7Cj4gLQo+IC0JCWk5
MTVfcmVxdWVzdF9tYXJrX2NvbXBsZXRlKHJxKTsKPiAtCX0KPiArCWxpc3RfZm9yX2VhY2hfZW50
cnkocnEsICZlbmdpbmUtPmFjdGl2ZS5yZXF1ZXN0cywgc2NoZWQubGluaykKPiArCQltYXJrX2Vp
byhycSk7Cj4gICAKPiAgIAkvKiBGbHVzaCB0aGUgcXVldWVkIHJlcXVlc3RzIHRvIHRoZSB0aW1l
bGluZSBsaXN0IChmb3IgcmV0aXJpbmcpLiAqLwo+ICAgCXdoaWxlICgocmIgPSByYl9maXJzdF9j
YWNoZWQoJmV4ZWNsaXN0cy0+cXVldWUpKSkgewo+IEBAIC0yNTE0LDEwICsyNTE3LDggQEAgc3Rh
dGljIHZvaWQgZXhlY2xpc3RzX2NhbmNlbF9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCj4gICAJCWludCBpOwo+ICAgCj4gICAJCXByaW9saXN0X2Zvcl9lYWNoX3JlcXVl
c3RfY29uc3VtZShycSwgcm4sIHAsIGkpIHsKPiAtCQkJbGlzdF9kZWxfaW5pdCgmcnEtPnNjaGVk
LmxpbmspOwoKbGlzdF9kZWxfaW5pdCBub3QgbmVlZGVkIGFueSBtb3JlPyBTaG91bGQgYmUgbWVu
dGlvbmVkIGluIHRoZSBjb21taXQgCm1lc3NhZ2UuCgo+ICsJCQltYXJrX2VpbyhycSk7Cj4gICAJ
CQlfX2k5MTVfcmVxdWVzdF9zdWJtaXQocnEpOwo+IC0JCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZy
cS0+ZmVuY2UsIC1FSU8pOwo+IC0JCQlpOTE1X3JlcXVlc3RfbWFya19jb21wbGV0ZShycSk7CgpJ
IGFtIGFsc28gY3VyaW91cyBhYm91dCBNaWthJ3MgcXVlc3Rpb24gLSBpZiB0aGUgY2hhbmdlIGlu
IG9yZGVyaW5nIG9mIApzdWJtaXQgdnMgbWFya19jb21wbGV0ZSBpcyBpbXBvcnRhbnQgaXQgc2hv
dWxkIGJlIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0LgoKPiAgIAkJfQo+ICAgCj4gICAJCXJiX2Vy
YXNlX2NhY2hlZCgmcC0+bm9kZSwgJmV4ZWNsaXN0cy0+cXVldWUpOwo+IEBAIC0yNTMzLDEzICsy
NTM0LDE0IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19jYW5jZWxfcmVxdWVzdHMoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgCQlSQl9DTEVBUl9OT0RFKHJiKTsKPiAgIAo+ICAg
CQlzcGluX2xvY2soJnZlLT5iYXNlLmFjdGl2ZS5sb2NrKTsKPiAtCQlpZiAodmUtPnJlcXVlc3Qp
IHsKPiAtCQkJdmUtPnJlcXVlc3QtPmVuZ2luZSA9IGVuZ2luZTsKPiAtCQkJX19pOTE1X3JlcXVl
c3Rfc3VibWl0KHZlLT5yZXF1ZXN0KTsKPiAtCQkJZG1hX2ZlbmNlX3NldF9lcnJvcigmdmUtPnJl
cXVlc3QtPmZlbmNlLCAtRUlPKTsKPiAtCQkJaTkxNV9yZXF1ZXN0X21hcmtfY29tcGxldGUodmUt
PnJlcXVlc3QpOwo+ICsJCXJxID0gZmV0Y2hfYW5kX3plcm8oJnZlLT5yZXF1ZXN0KTsKPiArCQlp
ZiAocnEpIHsKPiArCQkJbWFya19laW8ocnEpOwo+ICsKPiArCQkJcnEtPmVuZ2luZSA9IGVuZ2lu
ZTsKPiArCQkJX19pOTE1X3JlcXVlc3Rfc3VibWl0KHJxKTsKPiArCj4gICAJCQl2ZS0+YmFzZS5l
eGVjbGlzdHMucXVldWVfcHJpb3JpdHlfaGludCA9IElOVF9NSU47Cj4gLQkJCXZlLT5yZXF1ZXN0
ID0gTlVMTDsKPiAgIAkJfQo+ICAgCQlzcGluX3VubG9jaygmdmUtPmJhc2UuYWN0aXZlLmxvY2sp
Owo+ICAgCX0KPiAKClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
