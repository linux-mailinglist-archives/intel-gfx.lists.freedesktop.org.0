Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F40CDC474
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 14:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B720E6EB34;
	Fri, 18 Oct 2019 12:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0510C6EB34
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 12:11:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 05:11:34 -0700
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="186808401"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 18 Oct 2019 05:11:33 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191018114925.30779-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <98b7484a-8712-8816-d23f-1e2ea4753263@linux.intel.com>
Date: Fri, 18 Oct 2019 13:11:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191018114925.30779-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Convert the leftover
 for_each_engine(gt)
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

Ck9uIDE4LzEwLzIwMTkgMTI6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBVc2UgdGhlIGxvY2Fs
IGd0IGZvciBpdGVyYXRpbmcgb3ZlciB0aGUgYXZhaWxhYmxlIHNldCBvZiBlbmdpbmVzLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMgICAgICAgIHwgMTIgKysrKysrLS0t
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgfCAgNiAr
KystLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jCj4gaW5kZXggNzExODRhYTcyODk2
Li43MGYwZTAxYTM4YjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmM2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYwo+IEBA
IC02NSw3ICs2NSw3IEBAIHN0YXRpYyB2b2lkIGdlbjExX3JjNl9lbmFibGUoc3RydWN0IGludGVs
X3JjNiAqcmM2KQo+ICAgCj4gICAJc2V0KHVuY29yZSwgR0VONl9SQ19FVkFMVUFUSU9OX0lOVEVS
VkFMLCAxMjUwMDApOyAvKiAxMjUwMCAqIDEyODBucyAqLwo+ICAgCXNldCh1bmNvcmUsIEdFTjZf
UkNfSURMRV9IWVNURVJTSVMsIDI1KTsgLyogMjUgKiAxMjgwbnMgKi8KPiAtCWZvcl9lYWNoX2Vu
Z2luZShlbmdpbmUsIHJjNl90b19ndChyYzYpLT5pOTE1LCBpZCkKPiArCWZvcl9lYWNoX2VuZ2lu
ZShlbmdpbmUsIHJjNl90b19ndChyYzYpLCBpZCkKPiAgIAkJc2V0KHVuY29yZSwgUklOR19NQVhf
SURMRShlbmdpbmUtPm1taW9fYmFzZSksIDEwKTsKPiAgIAo+ICAgCXNldCh1bmNvcmUsIEdVQ19N
QVhfSURMRV9DT1VOVCwgMHhBKTsKPiBAQCAtMTMzLDcgKzEzMyw3IEBAIHN0YXRpYyB2b2lkIGdl
bjlfcmM2X2VuYWJsZShzdHJ1Y3QgaW50ZWxfcmM2ICpyYzYpCj4gICAKPiAgIAlzZXQodW5jb3Jl
LCBHRU42X1JDX0VWQUxVQVRJT05fSU5URVJWQUwsIDEyNTAwMCk7IC8qIDEyNTAwICogMTI4MG5z
ICovCj4gICAJc2V0KHVuY29yZSwgR0VONl9SQ19JRExFX0hZU1RFUlNJUywgMjUpOyAvKiAyNSAq
IDEyODBucyAqLwo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNiktPmk5
MTUsIGlkKQo+ICsJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNiksIGlkKQo+
ICAgCQlzZXQodW5jb3JlLCBSSU5HX01BWF9JRExFKGVuZ2luZS0+bW1pb19iYXNlKSwgMTApOwo+
ICAgCj4gICAJc2V0KHVuY29yZSwgR1VDX01BWF9JRExFX0NPVU5ULCAweEEpOwo+IEBAIC0xOTIs
NyArMTkyLDcgQEAgc3RhdGljIHZvaWQgZ2VuOF9yYzZfZW5hYmxlKHN0cnVjdCBpbnRlbF9yYzYg
KnJjNikKPiAgIAlzZXQodW5jb3JlLCBHRU42X1JDNl9XQUtFX1JBVEVfTElNSVQsIDQwIDw8IDE2
KTsKPiAgIAlzZXQodW5jb3JlLCBHRU42X1JDX0VWQUxVQVRJT05fSU5URVJWQUwsIDEyNTAwMCk7
IC8qIDEyNTAwICogMTI4MG5zICovCj4gICAJc2V0KHVuY29yZSwgR0VONl9SQ19JRExFX0hZU1RF
UlNJUywgMjUpOyAvKiAyNSAqIDEyODBucyAqLwo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwg
cmM2X3RvX2d0KHJjNiktPmk5MTUsIGlkKQo+ICsJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2
X3RvX2d0KHJjNiksIGlkKQo+ICAgCQlzZXQodW5jb3JlLCBSSU5HX01BWF9JRExFKGVuZ2luZS0+
bW1pb19iYXNlKSwgMTApOwo+ICAgCXNldCh1bmNvcmUsIEdFTjZfUkNfU0xFRVAsIDApOwo+ICAg
CXNldCh1bmNvcmUsIEdFTjZfUkM2X1RIUkVTSE9MRCwgNjI1KTsgLyogODAwdXMvMS4yOCBmb3Ig
VE8gKi8KPiBAQCAtMjE5LDcgKzIxOSw3IEBAIHN0YXRpYyB2b2lkIGdlbjZfcmM2X2VuYWJsZShz
dHJ1Y3QgaW50ZWxfcmM2ICpyYzYpCj4gICAJc2V0KHVuY29yZSwgR0VONl9SQ19FVkFMVUFUSU9O
X0lOVEVSVkFMLCAxMjUwMDApOwo+ICAgCXNldCh1bmNvcmUsIEdFTjZfUkNfSURMRV9IWVNURVJT
SVMsIDI1KTsKPiAgIAo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpCj4gKwlm
b3JfZWFjaF9lbmdpbmUoZW5naW5lLCByYzZfdG9fZ3QocmM2KSwgaWQpCj4gICAJCXNldCh1bmNv
cmUsIFJJTkdfTUFYX0lETEUoZW5naW5lLT5tbWlvX2Jhc2UpLCAxMCk7Cj4gICAKPiAgIAlzZXQo
dW5jb3JlLCBHRU42X1JDX1NMRUVQLCAwKTsKPiBAQCAtMzQ0LDcgKzM0NCw3IEBAIHN0YXRpYyB2
b2lkIGNodl9yYzZfZW5hYmxlKHN0cnVjdCBpbnRlbF9yYzYgKnJjNikKPiAgIAlzZXQodW5jb3Jl
LCBHRU42X1JDX0VWQUxVQVRJT05fSU5URVJWQUwsIDEyNTAwMCk7IC8qIDEyNTAwICogMTI4MG5z
ICovCj4gICAJc2V0KHVuY29yZSwgR0VONl9SQ19JRExFX0hZU1RFUlNJUywgMjUpOyAvKiAyNSAq
IDEyODBucyAqLwo+ICAgCj4gLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCByYzZfdG9fZ3QocmM2
KS0+aTkxNSwgaWQpCj4gKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCByYzZfdG9fZ3QocmM2KSwg
aWQpCj4gICAJCXNldCh1bmNvcmUsIFJJTkdfTUFYX0lETEUoZW5naW5lLT5tbWlvX2Jhc2UpLCAx
MCk7Cj4gICAJc2V0KHVuY29yZSwgR0VONl9SQ19TTEVFUCwgMCk7Cj4gICAKPiBAQCAtMzcxLDcg
KzM3MSw3IEBAIHN0YXRpYyB2b2lkIHZsdl9yYzZfZW5hYmxlKHN0cnVjdCBpbnRlbF9yYzYgKnJj
NikKPiAgIAlzZXQodW5jb3JlLCBHRU42X1JDX0VWQUxVQVRJT05fSU5URVJWQUwsIDEyNTAwMCk7
Cj4gICAJc2V0KHVuY29yZSwgR0VONl9SQ19JRExFX0hZU1RFUlNJUywgMjUpOwo+ICAgCj4gLQlm
b3JfZWFjaF9lbmdpbmUoZW5naW5lLCByYzZfdG9fZ3QocmM2KS0+aTkxNSwgaWQpCj4gKwlmb3Jf
ZWFjaF9lbmdpbmUoZW5naW5lLCByYzZfdG9fZ3QocmM2KSwgaWQpCj4gICAJCXNldCh1bmNvcmUs
IFJJTkdfTUFYX0lETEUoZW5naW5lLT5tbWlvX2Jhc2UpLCAxMCk7Cj4gICAKPiAgIAlzZXQodW5j
b3JlLCBHRU42X1JDNl9USFJFU0hPTEQsIDB4NTU3KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4gaW5kZXggMzExZmRjMGEyMWJjLi5iZjYzMWYxNWFhNzgg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4gQEAg
LTE2MDksNyArMTYwOSw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IG1pX3NldF9jb250ZXh0KHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxLCB1MzIgZmxhZ3MpCj4gICAJCQlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICpzaWduYWxsZXI7Cj4gICAKPiAgIAkJCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0o
bnVtX2VuZ2luZXMpOwo+IC0JCQlmb3JfZWFjaF9lbmdpbmUoc2lnbmFsbGVyLCBpOTE1LCBpZCkg
ewo+ICsJCQlmb3JfZWFjaF9lbmdpbmUoc2lnbmFsbGVyLCBlbmdpbmUtPmd0LCBpZCkgewo+ICAg
CQkJCWlmIChzaWduYWxsZXIgPT0gZW5naW5lKQo+ICAgCQkJCQljb250aW51ZTsKPiAgIAo+IEBA
IC0xNjYzLDcgKzE2NjMsNyBAQCBzdGF0aWMgaW5saW5lIGludCBtaV9zZXRfY29udGV4dChzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSwgdTMyIGZsYWdzKQo+ICAgCQkJaTkxNV9yZWdfdCBsYXN0X3Jl
ZyA9IHt9OyAvKiBrZWVwIGdjYyBxdWlldCAqLwo+ICAgCj4gICAJCQkqY3MrKyA9IE1JX0xPQURf
UkVHSVNURVJfSU1NKG51bV9lbmdpbmVzKTsKPiAtCQkJZm9yX2VhY2hfZW5naW5lKHNpZ25hbGxl
ciwgaTkxNSwgaWQpIHsKPiArCQkJZm9yX2VhY2hfZW5naW5lKHNpZ25hbGxlciwgZW5naW5lLT5n
dCwgaWQpIHsKPiAgIAkJCQlpZiAoc2lnbmFsbGVyID09IGVuZ2luZSkKPiAgIAkJCQkJY29udGlu
dWU7Cj4gICAKPiBAQCAtMTY3Niw3ICsxNjc2LDcgQEAgc3RhdGljIGlubGluZSBpbnQgbWlfc2V0
X2NvbnRleHQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHUzMiBmbGFncykKPiAgIAkJCS8qIElu
c2VydCBhIGRlbGF5IGJlZm9yZSB0aGUgbmV4dCBzd2l0Y2ghICovCj4gICAJCQkqY3MrKyA9IE1J
X1NUT1JFX1JFR0lTVEVSX01FTSB8IE1JX1NSTV9MUk1fR0xPQkFMX0dUVDsKPiAgIAkJCSpjcysr
ID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQobGFzdF9yZWcpOwo+IC0JCQkqY3MrKyA9IGludGVsX2d0
X3NjcmF0Y2hfb2Zmc2V0KHJxLT5lbmdpbmUtPmd0LAo+ICsJCQkqY3MrKyA9IGludGVsX2d0X3Nj
cmF0Y2hfb2Zmc2V0KGVuZ2luZS0+Z3QsCj4gICAJCQkJCQkJSU5URUxfR1RfU0NSQVRDSF9GSUVM
RF9ERUZBVUxUKTsKPiAgIAkJCSpjcysrID0gTUlfTk9PUDsKPiAgIAkJfQo+IAoKUmV2aWV3ZWQt
Ynk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
