Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D393CDC479
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 14:13:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 312716EB38;
	Fri, 18 Oct 2019 12:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028F96EB38
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 12:13:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 05:13:30 -0700
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="186808997"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 18 Oct 2019 05:13:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191018114925.30779-1-chris@chris-wilson.co.uk>
 <20191018115331.8980-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c2bb6b48-f6c3-12d7-2d17-b719a676f644@linux.intel.com>
Date: Fri, 18 Oct 2019 13:13:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191018115331.8980-1-chris@chris-wilson.co.uk>
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

Ck9uIDE4LzEwLzIwMTkgMTI6NTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBVc2UgdGhlIGxvY2Fs
IGd0IGZvciBpdGVyYXRpbmcgb3ZlciB0aGUgYXZhaWxhYmxlIHNldCBvZiBlbmdpbmVzLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMgICAgICAgIHwgMTIgKysrKysrLS0t
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgfCAgNiAr
KystLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jICAgICAgICB8ICAy
ICstCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jICAgICAgICAgICAgfCAgMiAr
LQo+ICAgNCBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYwo+IGluZGV4IDcxMTg0YWE3Mjg5Ni4u
NzBmMGUwMWEzOGI5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3JjNi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMKPiBAQCAt
NjUsNyArNjUsNyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9yYzZfZW5hYmxlKHN0cnVjdCBpbnRlbF9y
YzYgKnJjNikKPiAgIAo+ICAgCXNldCh1bmNvcmUsIEdFTjZfUkNfRVZBTFVBVElPTl9JTlRFUlZB
TCwgMTI1MDAwKTsgLyogMTI1MDAgKiAxMjgwbnMgKi8KPiAgIAlzZXQodW5jb3JlLCBHRU42X1JD
X0lETEVfSFlTVEVSU0lTLCAyNSk7IC8qIDI1ICogMTI4MG5zICovCj4gLQlmb3JfZWFjaF9lbmdp
bmUoZW5naW5lLCByYzZfdG9fZ3QocmM2KS0+aTkxNSwgaWQpCj4gKwlmb3JfZWFjaF9lbmdpbmUo
ZW5naW5lLCByYzZfdG9fZ3QocmM2KSwgaWQpCj4gICAJCXNldCh1bmNvcmUsIFJJTkdfTUFYX0lE
TEUoZW5naW5lLT5tbWlvX2Jhc2UpLCAxMCk7Cj4gICAKPiAgIAlzZXQodW5jb3JlLCBHVUNfTUFY
X0lETEVfQ09VTlQsIDB4QSk7Cj4gQEAgLTEzMyw3ICsxMzMsNyBAQCBzdGF0aWMgdm9pZCBnZW45
X3JjNl9lbmFibGUoc3RydWN0IGludGVsX3JjNiAqcmM2KQo+ICAgCj4gICAJc2V0KHVuY29yZSwg
R0VONl9SQ19FVkFMVUFUSU9OX0lOVEVSVkFMLCAxMjUwMDApOyAvKiAxMjUwMCAqIDEyODBucyAq
Lwo+ICAgCXNldCh1bmNvcmUsIEdFTjZfUkNfSURMRV9IWVNURVJTSVMsIDI1KTsgLyogMjUgKiAx
MjgwbnMgKi8KPiAtCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIHJjNl90b19ndChyYzYpLT5pOTE1
LCBpZCkKPiArCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIHJjNl90b19ndChyYzYpLCBpZCkKPiAg
IAkJc2V0KHVuY29yZSwgUklOR19NQVhfSURMRShlbmdpbmUtPm1taW9fYmFzZSksIDEwKTsKPiAg
IAo+ICAgCXNldCh1bmNvcmUsIEdVQ19NQVhfSURMRV9DT1VOVCwgMHhBKTsKPiBAQCAtMTkyLDcg
KzE5Miw3IEBAIHN0YXRpYyB2b2lkIGdlbjhfcmM2X2VuYWJsZShzdHJ1Y3QgaW50ZWxfcmM2ICpy
YzYpCj4gICAJc2V0KHVuY29yZSwgR0VONl9SQzZfV0FLRV9SQVRFX0xJTUlULCA0MCA8PCAxNik7
Cj4gICAJc2V0KHVuY29yZSwgR0VONl9SQ19FVkFMVUFUSU9OX0lOVEVSVkFMLCAxMjUwMDApOyAv
KiAxMjUwMCAqIDEyODBucyAqLwo+ICAgCXNldCh1bmNvcmUsIEdFTjZfUkNfSURMRV9IWVNURVJT
SVMsIDI1KTsgLyogMjUgKiAxMjgwbnMgKi8KPiAtCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIHJj
Nl90b19ndChyYzYpLT5pOTE1LCBpZCkKPiArCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIHJjNl90
b19ndChyYzYpLCBpZCkKPiAgIAkJc2V0KHVuY29yZSwgUklOR19NQVhfSURMRShlbmdpbmUtPm1t
aW9fYmFzZSksIDEwKTsKPiAgIAlzZXQodW5jb3JlLCBHRU42X1JDX1NMRUVQLCAwKTsKPiAgIAlz
ZXQodW5jb3JlLCBHRU42X1JDNl9USFJFU0hPTEQsIDYyNSk7IC8qIDgwMHVzLzEuMjggZm9yIFRP
ICovCj4gQEAgLTIxOSw3ICsyMTksNyBAQCBzdGF0aWMgdm9pZCBnZW42X3JjNl9lbmFibGUoc3Ry
dWN0IGludGVsX3JjNiAqcmM2KQo+ICAgCXNldCh1bmNvcmUsIEdFTjZfUkNfRVZBTFVBVElPTl9J
TlRFUlZBTCwgMTI1MDAwKTsKPiAgIAlzZXQodW5jb3JlLCBHRU42X1JDX0lETEVfSFlTVEVSU0lT
LCAyNSk7Cj4gICAKPiAtCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKQo+ICsJZm9y
X2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNiksIGlkKQo+ICAgCQlzZXQodW5jb3Jl
LCBSSU5HX01BWF9JRExFKGVuZ2luZS0+bW1pb19iYXNlKSwgMTApOwo+ICAgCj4gICAJc2V0KHVu
Y29yZSwgR0VONl9SQ19TTEVFUCwgMCk7Cj4gQEAgLTM0NCw3ICszNDQsNyBAQCBzdGF0aWMgdm9p
ZCBjaHZfcmM2X2VuYWJsZShzdHJ1Y3QgaW50ZWxfcmM2ICpyYzYpCj4gICAJc2V0KHVuY29yZSwg
R0VONl9SQ19FVkFMVUFUSU9OX0lOVEVSVkFMLCAxMjUwMDApOyAvKiAxMjUwMCAqIDEyODBucyAq
Lwo+ICAgCXNldCh1bmNvcmUsIEdFTjZfUkNfSURMRV9IWVNURVJTSVMsIDI1KTsgLyogMjUgKiAx
MjgwbnMgKi8KPiAgIAo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNikt
Pmk5MTUsIGlkKQo+ICsJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNiksIGlk
KQo+ICAgCQlzZXQodW5jb3JlLCBSSU5HX01BWF9JRExFKGVuZ2luZS0+bW1pb19iYXNlKSwgMTAp
Owo+ICAgCXNldCh1bmNvcmUsIEdFTjZfUkNfU0xFRVAsIDApOwo+ICAgCj4gQEAgLTM3MSw3ICsz
NzEsNyBAQCBzdGF0aWMgdm9pZCB2bHZfcmM2X2VuYWJsZShzdHJ1Y3QgaW50ZWxfcmM2ICpyYzYp
Cj4gICAJc2V0KHVuY29yZSwgR0VONl9SQ19FVkFMVUFUSU9OX0lOVEVSVkFMLCAxMjUwMDApOwo+
ICAgCXNldCh1bmNvcmUsIEdFTjZfUkNfSURMRV9IWVNURVJTSVMsIDI1KTsKPiAgIAo+IC0JZm9y
X2VhY2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNiktPmk5MTUsIGlkKQo+ICsJZm9yX2Vh
Y2hfZW5naW5lKGVuZ2luZSwgcmM2X3RvX2d0KHJjNiksIGlkKQo+ICAgCQlzZXQodW5jb3JlLCBS
SU5HX01BWF9JRExFKGVuZ2luZS0+bW1pb19iYXNlKSwgMTApOwo+ICAgCj4gICAJc2V0KHVuY29y
ZSwgR0VONl9SQzZfVEhSRVNIT0xELCAweDU1Nyk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3JpbmdidWZmZXIuYwo+IGluZGV4IDMxMWZkYzBhMjFiYy4uYmY2MzFmMTVhYTc4IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwo+IEBAIC0x
NjA5LDcgKzE2MDksNyBAQCBzdGF0aWMgaW5saW5lIGludCBtaV9zZXRfY29udGV4dChzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSwgdTMyIGZsYWdzKQo+ICAgCQkJc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqc2lnbmFsbGVyOwo+ICAgCj4gICAJCQkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfSU1NKG51
bV9lbmdpbmVzKTsKPiAtCQkJZm9yX2VhY2hfZW5naW5lKHNpZ25hbGxlciwgaTkxNSwgaWQpIHsK
PiArCQkJZm9yX2VhY2hfZW5naW5lKHNpZ25hbGxlciwgZW5naW5lLT5ndCwgaWQpIHsKPiAgIAkJ
CQlpZiAoc2lnbmFsbGVyID09IGVuZ2luZSkKPiAgIAkJCQkJY29udGludWU7Cj4gICAKPiBAQCAt
MTY2Myw3ICsxNjYzLDcgQEAgc3RhdGljIGlubGluZSBpbnQgbWlfc2V0X2NvbnRleHQoc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnEsIHUzMiBmbGFncykKPiAgIAkJCWk5MTVfcmVnX3QgbGFzdF9yZWcg
PSB7fTsgLyoga2VlcCBnY2MgcXVpZXQgKi8KPiAgIAo+ICAgCQkJKmNzKysgPSBNSV9MT0FEX1JF
R0lTVEVSX0lNTShudW1fZW5naW5lcyk7Cj4gLQkJCWZvcl9lYWNoX2VuZ2luZShzaWduYWxsZXIs
IGk5MTUsIGlkKSB7Cj4gKwkJCWZvcl9lYWNoX2VuZ2luZShzaWduYWxsZXIsIGVuZ2luZS0+Z3Qs
IGlkKSB7Cj4gICAJCQkJaWYgKHNpZ25hbGxlciA9PSBlbmdpbmUpCj4gICAJCQkJCWNvbnRpbnVl
Owo+ICAgCj4gQEAgLTE2NzYsNyArMTY3Niw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IG1pX3NldF9j
b250ZXh0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1MzIgZmxhZ3MpCj4gICAJCQkvKiBJbnNl
cnQgYSBkZWxheSBiZWZvcmUgdGhlIG5leHQgc3dpdGNoISAqLwo+ICAgCQkJKmNzKysgPSBNSV9T
VE9SRV9SRUdJU1RFUl9NRU0gfCBNSV9TUk1fTFJNX0dMT0JBTF9HVFQ7Cj4gICAJCQkqY3MrKyA9
IGk5MTVfbW1pb19yZWdfb2Zmc2V0KGxhc3RfcmVnKTsKPiAtCQkJKmNzKysgPSBpbnRlbF9ndF9z
Y3JhdGNoX29mZnNldChycS0+ZW5naW5lLT5ndCwKPiArCQkJKmNzKysgPSBpbnRlbF9ndF9zY3Jh
dGNoX29mZnNldChlbmdpbmUtPmd0LAo+ICAgCQkJCQkJCUlOVEVMX0dUX1NDUkFUQ0hfRklFTERf
REVGQVVMVCk7Cj4gICAJCQkqY3MrKyA9IE1JX05PT1A7Cj4gICAJCX0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYwo+IGluZGV4IDBkZjA1NzgzOGEyNC4uMzE0OGQ1OTQ2YjYzIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBAQCAtMTU2OSw3ICsxNTY5LDcgQEAg
c3RhdGljIHZvaWQgZ2VuN19wcGd0dF9lbmFibGUoc3RydWN0IGludGVsX2d0ICpndCkKPiAgIAl9
Cj4gICAJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR0FNX0VDT0NISywgZWNvY2hrKTsKPiAg
IAo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKPiArCWZvcl9lYWNoX2Vu
Z2luZShlbmdpbmUsIGd0LCBpZCkgewo+ICAgCQkvKiBHRlhfTU9ERSBpcyBwZXItcmluZyBvbiBn
ZW43KyAqLwo+ICAgCQlFTkdJTkVfV1JJVEUoZW5naW5lLAo+ICAgCQkJICAgICBSSU5HX01PREVf
R0VONywKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKPiBpbmRleCAxNDRjMzJlZWQwNDUuLjg1OTEy
OTE3YzA2MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwo+IEBAIC0zMDEsNyArMzAxLDcg
QEAgZW5naW5lc19zYW1wbGUoc3RydWN0IGludGVsX2d0ICpndCwgdW5zaWduZWQgaW50IHBlcmlv
ZF9ucykKPiAgIAlpZiAoKGk5MTUtPnBtdS5lbmFibGUgJiBFTkdJTkVfU0FNUExFX01BU0spID09
IDApCj4gICAJCXJldHVybjsKPiAgIAo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwg
aWQpIHsKPiArCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGd0LCBpZCkgewo+ICAgCQlzdHJ1Y3Qg
aW50ZWxfZW5naW5lX3BtdSAqcG11ID0gJmVuZ2luZS0+cG11Owo+ICAgCQl1bnNpZ25lZCBsb25n
IGZsYWdzOwo+ICAgCQlib29sIGJ1c3k7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
