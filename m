Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38541BAEA7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 09:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757396E19C;
	Mon, 23 Sep 2019 07:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FCCE6E19C
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 07:47:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 00:47:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="182446993"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 23 Sep 2019 00:47:42 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B686F5C1E3A; Mon, 23 Sep 2019 10:47:18 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190921095542.23205-1-chris@chris-wilson.co.uk>
References: <20190921095542.23205-1-chris@chris-wilson.co.uk>
Date: Mon, 23 Sep 2019 10:47:18 +0300
Message-ID: <87wodzzc6x.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUHVsbCBz
ZXR0aW5nIC1FSU8gb24gdGhlIGh1bmcgcmVxdWVzdHMgaW50byBpdHMgb3duIHV0aWxpdHkgZnVu
Y3Rpb24uCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAz
MiArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5z
ZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwo+IGluZGV4IDFhMmI3MTE1N2YwOC4uNTNlODIzZDM2YjI4IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMjM0LDYgKzIzNCwxMyBAQCBzdGF0aWMgdm9pZCBl
eGVjbGlzdHNfaW5pdF9yZWdfc3RhdGUodTMyICpyZWdfc3RhdGUsCj4gIAkJCQkgICAgIHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgCQkJCSAgICAgc3RydWN0IGludGVsX3Jpbmcg
KnJpbmcpOwo+ICAKPiArc3RhdGljIHZvaWQgbWFya19laW8oc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEpCj4gK3sKPiArCWlmICghaTkxNV9yZXF1ZXN0X3NpZ25hbGVkKHJxKSkKPiArCQlkbWFfZmVu
Y2Vfc2V0X2Vycm9yKCZycS0+ZmVuY2UsIC1FSU8pOwo+ICsJaTkxNV9yZXF1ZXN0X21hcmtfY29t
cGxldGUocnEpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW5saW5lIHUzMiBpbnRlbF9od3NfcHJlZW1w
dF9hZGRyZXNzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgewo+ICAJcmV0dXJu
IChpOTE1X2dndHRfb2Zmc2V0KGVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1hKSArCj4gQEAgLTI1MDEs
MTIgKzI1MDgsOCBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfY2FuY2VsX3JlcXVlc3RzKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgCV9fZXhlY2xpc3RzX3Jlc2V0KGVuZ2luZSwg
dHJ1ZSk7Cj4gIAo+ICAJLyogTWFyayBhbGwgZXhlY3V0aW5nIHJlcXVlc3RzIGFzIHNraXBwZWQu
ICovCj4gLQlsaXN0X2Zvcl9lYWNoX2VudHJ5KHJxLCAmZW5naW5lLT5hY3RpdmUucmVxdWVzdHMs
IHNjaGVkLmxpbmspIHsKPiAtCQlpZiAoIWk5MTVfcmVxdWVzdF9zaWduYWxlZChycSkpCj4gLQkJ
CWRtYV9mZW5jZV9zZXRfZXJyb3IoJnJxLT5mZW5jZSwgLUVJTyk7Cj4gLQo+IC0JCWk5MTVfcmVx
dWVzdF9tYXJrX2NvbXBsZXRlKHJxKTsKPiAtCX0KPiArCWxpc3RfZm9yX2VhY2hfZW50cnkocnEs
ICZlbmdpbmUtPmFjdGl2ZS5yZXF1ZXN0cywgc2NoZWQubGluaykKPiArCQltYXJrX2VpbyhycSk7
Cj4gIAo+ICAJLyogRmx1c2ggdGhlIHF1ZXVlZCByZXF1ZXN0cyB0byB0aGUgdGltZWxpbmUgbGlz
dCAoZm9yIHJldGlyaW5nKS4gKi8KPiAgCXdoaWxlICgocmIgPSByYl9maXJzdF9jYWNoZWQoJmV4
ZWNsaXN0cy0+cXVldWUpKSkgewo+IEBAIC0yNTE0LDEwICsyNTE3LDggQEAgc3RhdGljIHZvaWQg
ZXhlY2xpc3RzX2NhbmNlbF9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
Cj4gIAkJaW50IGk7Cj4gIAo+ICAJCXByaW9saXN0X2Zvcl9lYWNoX3JlcXVlc3RfY29uc3VtZShy
cSwgcm4sIHAsIGkpIHsKPiAtCQkJbGlzdF9kZWxfaW5pdCgmcnEtPnNjaGVkLmxpbmspOwo+ICsJ
CQltYXJrX2VpbyhycSk7Cj4gIAkJCV9faTkxNV9yZXF1ZXN0X3N1Ym1pdChycSk7Cj4gLQkJCWRt
YV9mZW5jZV9zZXRfZXJyb3IoJnJxLT5mZW5jZSwgLUVJTyk7Cj4gLQkJCWk5MTVfcmVxdWVzdF9t
YXJrX2NvbXBsZXRlKHJxKTsKCk5vdyB3ZSBtYXJlayBjb21wbGV0ZSBiZWZvcmUgc3VibWl0dGlu
Zy4gRG9lcyB0aGF0IGJyaW5nIHByb2JsZW1zPwoKLU1pa2EKCgo+ICAJCX0KPiAgCj4gIAkJcmJf
ZXJhc2VfY2FjaGVkKCZwLT5ub2RlLCAmZXhlY2xpc3RzLT5xdWV1ZSk7Cj4gQEAgLTI1MzMsMTMg
KzI1MzQsMTQgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2NhbmNlbF9yZXF1ZXN0cyhzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gIAkJUkJfQ0xFQVJfTk9ERShyYik7Cj4gIAo+ICAJ
CXNwaW5fbG9jaygmdmUtPmJhc2UuYWN0aXZlLmxvY2spOwo+IC0JCWlmICh2ZS0+cmVxdWVzdCkg
ewo+IC0JCQl2ZS0+cmVxdWVzdC0+ZW5naW5lID0gZW5naW5lOwo+IC0JCQlfX2k5MTVfcmVxdWVz
dF9zdWJtaXQodmUtPnJlcXVlc3QpOwo+IC0JCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZ2ZS0+cmVx
dWVzdC0+ZmVuY2UsIC1FSU8pOwo+IC0JCQlpOTE1X3JlcXVlc3RfbWFya19jb21wbGV0ZSh2ZS0+
cmVxdWVzdCk7Cj4gKwkJcnEgPSBmZXRjaF9hbmRfemVybygmdmUtPnJlcXVlc3QpOwo+ICsJCWlm
IChycSkgewo+ICsJCQltYXJrX2VpbyhycSk7Cj4gKwo+ICsJCQlycS0+ZW5naW5lID0gZW5naW5l
Owo+ICsJCQlfX2k5MTVfcmVxdWVzdF9zdWJtaXQocnEpOwo+ICsKPiAgCQkJdmUtPmJhc2UuZXhl
Y2xpc3RzLnF1ZXVlX3ByaW9yaXR5X2hpbnQgPSBJTlRfTUlOOwo+IC0JCQl2ZS0+cmVxdWVzdCA9
IE5VTEw7Cj4gIAkJfQo+ICAJCXNwaW5fdW5sb2NrKCZ2ZS0+YmFzZS5hY3RpdmUubG9jayk7Cj4g
IAl9Cj4gLS0gCj4gMi4yMy4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
