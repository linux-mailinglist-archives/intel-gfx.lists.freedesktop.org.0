Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C7610A758
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 01:10:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61BB6E054;
	Wed, 27 Nov 2019 00:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E4A76E054
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 00:10:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 16:10:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="217272129"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga001.fm.intel.com with ESMTP; 26 Nov 2019 16:10:25 -0800
Date: Tue, 26 Nov 2019 16:10:25 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20191127001025.GI6337@mdroper-desk1.amr.corp.intel.com>
References: <20191125125313.17584-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125125313.17584-1-kai.vehmanen@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/dp: fix DP audio for PORT_A
 on gen12+
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMjUsIDIwMTkgYXQgMDI6NTM6MTJQTSArMDIwMCwgS2FpIFZlaG1hbmVuIHdy
b3RlOgo+IFN0YXJ0aW5nIHdpdGggZ2VuMTIsIFBPUlRfQSBjYW4gYmUgY29ubmVjdGVkIHRvIGEg
dHJhbnNjb2Rlcgo+IHdpdGggYXVkaW8gc3VwcG9ydC4gTW9kaWZ5IHRoZSBleGlzdGluZyBsb2dp
YyB0aGF0IGRpc2FibGVkCj4gYXVkaW8gb24gUE9SVF9BIHVuY29uZGl0aW9uYWxseS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBLYWkgVmVobWFuZW4gPGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+
CgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDEzICsrKysr
KysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gaW5kZXggOWIx
NWFjNGYyZmI2Li40NTE5YzMyZjZjMjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCj4gQEAgLTIyMzcsNiArMjIzNywxNyBAQCBib29sIGludGVsX2RwX2xpbWl0
ZWRfY29sb3JfcmFuZ2UoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
Cj4gIAl9Cj4gIH0KPiAgCj4gK3N0YXRpYyBib29sIGludGVsX2RwX3BvcnRfaGFzX2F1ZGlvKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiArCQkJCSAgICBlbnVtIHBvcnQgcG9y
dCkKPiArewo+ICsJaWYgKElTX0c0WChkZXZfcHJpdikpCj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsJ
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMiAmJiBwb3J0ID09IFBPUlRfQSkKPiArCQlyZXR1
cm4gZmFsc2U7Cj4gKwo+ICsJcmV0dXJuIHRydWU7Cj4gK30KPiArCj4gIGludAo+ICBpbnRlbF9k
cF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQkJc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAo+IEBAIC0yMjY5LDcgKzIyODAsNyBA
QCBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
PiAgCQlyZXR1cm4gcmV0Owo+ICAKPiAgCXBpcGVfY29uZmlnLT5oYXNfZHJycyA9IGZhbHNlOwo+
IC0JaWYgKElTX0c0WChkZXZfcHJpdikgfHwgcG9ydCA9PSBQT1JUX0EpCj4gKwlpZiAoIWludGVs
X2RwX3BvcnRfaGFzX2F1ZGlvKGRldl9wcml2LCBwb3J0KSkKPiAgCQlwaXBlX2NvbmZpZy0+aGFz
X2F1ZGlvID0gZmFsc2U7Cj4gIAllbHNlIGlmIChpbnRlbF9jb25uX3N0YXRlLT5mb3JjZV9hdWRp
byA9PSBIRE1JX0FVRElPX0FVVE8pCj4gIAkJcGlwZV9jb25maWctPmhhc19hdWRpbyA9IGludGVs
X2RwLT5oYXNfYXVkaW87Cj4gLS0gCj4gMi4xNy4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKTWF0dCBSb3BlcgpHcmFwaGljcyBT
b2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50CkludGVsIENvcnBv
cmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
