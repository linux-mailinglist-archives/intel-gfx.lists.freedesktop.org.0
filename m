Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA45CAE6FF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 11:31:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3CD06E86C;
	Tue, 10 Sep 2019 09:31:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CF4C6E86C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 09:31:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 02:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="185458492"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 10 Sep 2019 02:31:18 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9ACE55C1E43; Tue, 10 Sep 2019 12:31:05 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190910075738.26919-1-chris@chris-wilson.co.uk>
References: <20190910075738.26919-1-chris@chris-wilson.co.uk>
Date: Tue, 10 Sep 2019 12:31:05 +0300
Message-ID: <87a7bcts4m.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Clear STOP_RING bit on
 reset
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gRHVyaW5n
IHJlc2V0LCB3ZSB0cnkgdG8gZW5zdXJlIG5vIGZvcndhcmQgcHJvZ3Jlc3Mgb2YgdGhlIENTIHBy
aW9yIHRvCj4gdGhlIHJlc2V0IGJ5IHNldHRpbmcgdGhlIFNUT1BfUklORyBiaXQgaW4gUklOR19N
SV9NT0RFLiBTaW5jZSBnZW45LCB0aGlzCj4gcmVnaXN0ZXIgaXMgY29udGV4dCBzYXZlZCBhbmQg
ZG8gd2UgZW5kIHVwIGluIHRoZSBvZGQgc2l0dWF0aW9uIHdoZXJlIHdlCj4gc2F2ZSB0aGUgU1RP
UF9SSU5HIGJpdCBhbmQgc28gdHJ5IHRvIHN0b3AgdGhlIGVuZ2luZSBhZ2FpbiBpbW1lZGlhdGVs
eQo+IHVwb24gcmVzdW1lLiBUaGlzIGlzIHF1aXRlIHVuZXhwZWN0ZWQgYW5kIGNhdXNlcyB1cyB0
byBjb21wbGFpbiBhYm91dCBhbgo+IGVhcmx5IENTIGNvbXBsZXRpb24gZXZlbnQhCgpUaGUgY29t
cGxldGlvbiBldmVudCBpcyBhIHByb2R1Y3Qgb2YgcmVzdW1lIHdpdGggYSBzdG9wIHNldD8KCklm
IG15IG1lbW9yeSBzZXJ2ZXMgbWUgd2VsbCwgd2UgaGF2ZSBmb3VnaHQgdGhpcyBiZWZvcmUuCgpC
dXQgSSBoYXZlIHN0aWxsIG1pc3NpbmcgcGllY2VzLiBXaHkgd291bGQgd2Ugbm90IHdhbnQgdG8K
c2V0IHRoaXMgZm9yIGFsbCBjb250ZXh0cyBwcmltZWQgZm9yIGV4ZWN1dGlvbj8gSW4gZ2VuOCB0
b28uCgpJIG1lYW4sIHF1ZXVpbmcgY29udGV4dCB3aXRoIGEgcmluZyBzdG9wcGVkIGp1c3QgZG9l
c24ndApzb3VuZCByaWdodCBvbiBhbnkgZ2VuLgoKLU1pa2EKCj4KPiBCdWd6aWxsYTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNTE0Cj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgfCAxMCArKysrKysrKysrCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19yZWcuaCB8ICAyICsrCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
PiBpbmRleCBmMDczYWVhNmExZmUuLjc2MWY1Y2JkOTBkMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCj4gQEAgLTIzNjgsNiArMjM2OCwxNSBAQCBzdGF0aWMgc3RydWN0IGk5
MTVfcmVxdWVzdCAqYWN0aXZlX3JlcXVlc3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gIAly
ZXR1cm4gYWN0aXZlOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldF9y
ZWdfc3RhdGUoY29uc3Qgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICsJCQkJCWNvbnN0IHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiArewo+ICsJdTMyICpyZWdzID0gY2UtPmxy
Y19yZWdfc3RhdGU7Cj4gKwo+ICsJaWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpID49IDkpCj4g
KwkJcmVnc1tHRU45X0NUWF9SSU5HX01JX01PREUgKyAxXSB8PSBfTUFTS0VEX0JJVF9ESVNBQkxF
KFNUT1BfUklORyk7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3RzX3Jlc2V0KHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQo+ICB7Cj4gIAlzdHJ1
Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqIGNvbnN0IGV4ZWNsaXN0cyA9ICZlbmdpbmUtPmV4
ZWNsaXN0czsKPiBAQCAtMjQ1NSw2ICsyNDY0LDcgQEAgc3RhdGljIHZvaWQgX19leGVjbGlzdHNf
cmVzZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBib29sIHN0YWxsZWQpCj4gIAlH
RU1fVFJBQ0UoIiVzIHJlcGxheSB7aGVhZDolMDR4LCB0YWlsOiUwNHhcbiIsCj4gIAkJICBlbmdp
bmUtPm5hbWUsIGNlLT5yaW5nLT5oZWFkLCBjZS0+cmluZy0+dGFpbCk7Cj4gIAlpbnRlbF9yaW5n
X3VwZGF0ZV9zcGFjZShjZS0+cmluZyk7Cj4gKwlfX2V4ZWNsaXN0c19yZXNldF9yZWdfc3RhdGUo
Y2UsIGVuZ2luZSk7Cj4gIAlfX2V4ZWNsaXN0c191cGRhdGVfcmVnX3N0YXRlKGNlLCBlbmdpbmUp
Owo+ICAJbXV0ZXhfcmVsZWFzZSgmY2UtPnBpbl9tdXRleC5kZXBfbWFwLCAwLCBfVEhJU19JUF8p
Owo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjX3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjX3JlZy5oCj4gaW5kZXggNjhj
YWY4NTQxODY2Li43ZTc3M2U3NGEzZmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjX3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjX3JlZy5oCj4gQEAgLTM5LDYgKzM5LDggQEAKPiAgI2RlZmluZSBDVFhfUl9QV1JfQ0xL
X1NUQVRFCQkweDQyCj4gICNkZWZpbmUgQ1RYX0VORAkJCQkweDQ0Cj4gIAo+ICsjZGVmaW5lIEdF
TjlfQ1RYX1JJTkdfTUlfTU9ERQkJMHg1NAo+ICsKPiAgLyogR0VOMTIrIFJlZyBTdGF0ZSBDb250
ZXh0ICovCj4gICNkZWZpbmUgR0VOMTJfQ1RYX0JCX1BFUl9DVFhfUFRSCQkweDEyCj4gICNkZWZp
bmUgR0VOMTJfQ1RYX0xSSV9IRUFERVJfMwkJCTB4NDEKPiAtLSAKPiAyLjIzLjAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
