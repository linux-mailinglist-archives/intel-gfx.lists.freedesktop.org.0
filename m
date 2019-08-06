Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3A5833F8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 16:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CF216E388;
	Tue,  6 Aug 2019 14:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74246E388
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 14:30:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 07:30:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="164998752"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 06 Aug 2019 07:30:31 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0C7115C1E4B; Tue,  6 Aug 2019 17:29:58 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190806134725.25321-3-chris@chris-wilson.co.uk>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-3-chris@chris-wilson.co.uk>
Date: Tue, 06 Aug 2019 17:29:58 +0300
Message-ID: <871rxyicyh.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Mark up "sentinel" requests
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU29tZXRp
bWVzIHdlIHdhbnQgdG8gZW1pdCBhIHRlcm1pbmF0b3IgcmVxdWVzdCwgYSByZXF1ZXN0IHRoYXQg
Zmx1c2hlcwo+IHRoZSBwaXBlbGluZSBhbmQgYWxsb3dzIG5vIHJlcXVlc3QgdG8gY29tZSBhZnRl
ciBpdC4gVGhpcyBjYW4gYmUgdXNlZAo+IGZvciBhICJwcmVlbXB0LXRvLWlkbGUiIHRvIGVuc3Vy
ZSB0aGF0IHVwb24gcHJvY2Vzc2luZyB0aGUKPiBjb250ZXh0LXN3aXRjaCB0byB0aGF0IHJlcXVl
c3QsIGFsbCBvdGhlciBhY3RpdmUgY29udGV4dHMgaGF2ZSBiZWVuCj4gZmx1c2hlZC4KPgo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8ICA2ICsrKysrKwo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCB8IDEwICsrKysrKysrLS0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCA0ZTQ1Y2Q5NzIyNjcuLjU5YTdlNGViN2Uy
YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTc1OSw2ICs3NTks
OSBAQCBzdGF0aWMgYm9vbCBjYW5fbWVyZ2VfcnEoY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAq
cHJldiwKPiAgCUdFTV9CVUdfT04ocHJldiA9PSBuZXh0KTsKPiAgCUdFTV9CVUdfT04oIWFzc2Vy
dF9wcmlvcml0eV9xdWV1ZShwcmV2LCBuZXh0KSk7Cj4gIAo+ICsJaWYgKGk5MTVfcmVxdWVzdF9o
YXNfc2VudGluZWwocHJldikpCj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsKPiAgCWlmICghY2FuX21l
cmdlX2N0eChwcmV2LT5od19jb250ZXh0LCBuZXh0LT5od19jb250ZXh0KSkKPiAgCQlyZXR1cm4g
ZmFsc2U7Cj4gIAo+IEBAIC0xMjUwLDYgKzEyNTMsOSBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNf
ZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gIAkJCQlpZiAobGFzdC0+
aHdfY29udGV4dCA9PSBycS0+aHdfY29udGV4dCkKPiAgCQkJCQlnb3RvIGRvbmU7Cj4gIAo+ICsJ
CQkJaWYgKGk5MTVfcmVxdWVzdF9oYXNfc2VudGluZWwobGFzdCkpCj4gKwkJCQkJZ290byBkb25l
Owo+ICsKPiAgCQkJCS8qCj4gIAkJCQkgKiBJZiBHVlQgb3ZlcnJpZGVzIHVzIHdlIG9ubHkgZXZl
ciBzdWJtaXQKPiAgCQkJCSAqIHBvcnRbMF0sIGxlYXZpbmcgcG9ydFsxXSBlbXB0eS4gTm90ZSB0
aGF0IHdlCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgKPiBpbmRleCAzMTNkZjNjMzcx
NTguLmM0MWVjYmUwYmQwYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oCj4g
QEAgLTIxNyw4ICsyMTcsOSBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0IHsKPiAgCXVuc2lnbmVkIGxv
bmcgZW1pdHRlZF9qaWZmaWVzOwo+ICAKPiAgCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gLSNkZWZp
bmUgSTkxNV9SRVFVRVNUX1dBSVRCT09TVCBCSVQoMCkKPiAtI2RlZmluZSBJOTE1X1JFUVVFU1Rf
Tk9QUkVFTVBUIEJJVCgxKQo+ICsjZGVmaW5lIEk5MTVfUkVRVUVTVF9XQUlUQk9PU1QJQklUKDAp
Cj4gKyNkZWZpbmUgSTkxNV9SRVFVRVNUX05PUFJFRU1QVAlCSVQoMSkKPiArI2RlZmluZSBJOTE1
X1JFUVVFU1RfU0VOVElORUwJQklUKDIpCgpXb3VsZCBpdCBiZSBwb3NzaWJsZSB0byB1c2UgJ2Vt
cHR5JyBpZSBub24gcGF5bG9hZGFibGUKcmVxdWVzdHMgYXMgYSBzZW50aW5lbD8gKHVzaW5nIHRo
ZSByZXF1ZXN0LT5wb3N0Zml4KS4KCk9yIGlzIHRoZSBhZHZhbnRhZ2UgaGVyZSB0aGF0IGJ5IGF0
dGFjaGluZyBpdCBhcwphIHByb3BlcnR5LCB5b3UgYXZvaWQgc3VibWl0dGluZyBhbiBleHRyYSAo
ZW1wdHkpPwoKLU1pa2EKCj4gIAo+ICAJLyoqIHRpbWVsaW5lLT5yZXF1ZXN0IGVudHJ5IGZvciB0
aGlzIHJlcXVlc3QgKi8KPiAgCXN0cnVjdCBsaXN0X2hlYWQgbGluazsKPiBAQCAtNDQzLDYgKzQ0
NCwxMSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9yZXF1ZXN0X2hhc19ub3ByZWVtcHQoY29u
c3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gIAlyZXR1cm4gdW5saWtlbHkocnEtPmZsYWdz
ICYgSTkxNV9SRVFVRVNUX05PUFJFRU1QVCk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbmxpbmUgYm9v
bCBpOTE1X3JlcXVlc3RfaGFzX3NlbnRpbmVsKGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
KQo+ICt7Cj4gKwlyZXR1cm4gdW5saWtlbHkocnEtPmZsYWdzICYgSTkxNV9SRVFVRVNUX1NFTlRJ
TkVMKTsKPiArfQo+ICsKPiAgYm9vbCBpOTE1X3JldGlyZV9yZXF1ZXN0cyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSk7Cj4gIAo+ICAjZW5kaWYgLyogSTkxNV9SRVFVRVNUX0ggKi8KPiAt
LSAKPiAyLjIzLjAucmMxCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
