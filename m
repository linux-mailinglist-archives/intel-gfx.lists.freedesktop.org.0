Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABDC39705
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 22:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B2F2899F3;
	Fri,  7 Jun 2019 20:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E25899F3
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 20:46:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 13:46:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,564,1557212400"; d="scan'208";a="182791841"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2019 13:46:42 -0700
Date: Fri, 7 Jun 2019 23:46:40 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190607204640.GB19496@ideak-desk.fi.intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-9-imre.deak@intel.com>
 <b4830f701b35a56ba58bcbb222a0b21d78e4125a.camel@intel.com>
 <20190607204231.GA19496@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607204231.GA19496@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 08/23] drm/i915: Unify the TypeC port
 notation in debug/error messages
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMDcsIDIwMTkgYXQgMTE6NDI6MzFQTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IE9uIEZyaSwgSnVuIDA3LCAyMDE5IGF0IDExOjIxOjUxUE0gKzAzMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOgo+ID4gT24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsg
d3JvdGU6Cj4gPiA+IFVuaWZ5IHRoZSBUeXBlQyBwb3J0IG5vdGF0aW9uIGluIGxvZyBtZXNzYWdl
cywgc28gdGhhdCBpdCBtYXRjaGVzIHRoZQo+ID4gPiBzcGVjLiBGb3IgaW5zdGFuY2UgdGhlIGZp
cnN0IElDTCBUeXBlQyBwb3J0IHdpbGwgcmVhZCBhcyAnUG9ydAo+ID4gPiBDL1RDIzEnLgo+ID4g
PiAKPiA+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pgo+ID4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gPiBD
YzogUGF1bG8gWmFub25pIDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+Cj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jIHwgNDEgKysrKysrKysrKysrKysrKysrKysr
KysrKysrLS0KPiA+ID4gLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfdGMuYwo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Rj
LmMKPiA+ID4gaW5kZXggYTMwNTdjNDRiZWM2Li4wNzQ4ODIzNWI2N2EgMTAwNjQ0Cj4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMKPiA+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfdGMuYwo+ID4gPiBAQCAtNiw2ICs2LDI5IEBACj4gPiA+ICAjaW5j
bHVkZSAiaTkxNV9kcnYuaCIKPiA+ID4gICNpbmNsdWRlICJpbnRlbF90Yy5oIgo+ID4gPiAgCj4g
PiA+ICtzdGF0aWMgZW51bSBwb3J0IGludGVsX3RjX3BvcnRfdG9fcG9ydChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZQo+ID4gPiAqZGV2X3ByaXYsCj4gPiA+ICsJCQkJICAgICAgIGVudW0gdGNfcG9y
dCB0Y19wb3J0KQo+ID4gPiArewo+ID4gPiArCXJldHVybiB0Y19wb3J0ICsgUE9SVF9DOwo+ID4g
PiArfQo+ID4gPiArCj4gPiA+ICtzdGF0aWMgY29uc3QgY2hhciAqdGNfcG9ydF9uYW1lKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ID4gKwkJCQllbnVtIHRjX3BvcnQgdGNf
cG9ydCkKPiA+ID4gK3sKPiA+ID4gKwlzdGF0aWMgY2hhciBwb3J0X25hbWVzW0k5MTVfTUFYX1RD
X1BPUlRTXVs4XTsKPiA+ID4gKwo+ID4gPiArCWlmIChXQVJOX09OKElOVEVMX0dFTihkZXZfcHJp
dikgPCAxMSB8fAo+ID4gPiArCSAgICAodW5zaWduZWQgaW50KXRjX3BvcnQgPj0gSTkxNV9NQVhf
VENfUE9SVFMpKQo+ID4gPiArCQl0Y19wb3J0ID0gUE9SVF9UQzE7Cj4gPiAKPiA+IFdoeSBubyBX
QVJOX09OIG9uIHRoZSB0Y19wb3J0ID49IEk5MTVfTUFYX1RDX1BPUlRTPwo+IAo+IEhtLCBkbyB5
b3UgbWVhbiBhIHNlYXBhcmF0ZSBXQVJOX09OKCk/CgpXZWxsLCBhdCBsZWFzdCBpdCdzIG1pc2lu
ZGVudGVkLCBJIGNhbiBmaXggdGhhdC4KCj4gCj4gPiAKPiA+ID4gKwo+ID4gPiArCXNucHJpbnRm
KCZwb3J0X25hbWVzW3RjX3BvcnRdWzBdLCBzaXplb2YocG9ydF9uYW1lc1t0Y19wb3J0XSksCj4g
PiA+ICsJCSAiJWMvVEMjJWQiLAo+ID4gPiArCQkgcG9ydF9uYW1lKGludGVsX3RjX3BvcnRfdG9f
cG9ydChkZXZfcHJpdiwgdGNfcG9ydCkpLAo+ID4gPiArCQkgdGNfcG9ydCArIDEpOwo+ID4gCj4g
PiBNYXliZSBkbyBpdCBvbmx5IG9uY2UgZm9yIGVhY2ggcG9ydD8KPiA+IAo+ID4gaWYgKHBvcnRf
bmFtZXNbdGNfcG9ydF1bMF0pCj4gPiAJcmV0dXJuIHBvcnRfbmFtZXNbdGNfcG9ydF07Cj4gCj4g
SSB0aG91Z2h0IHdoeSBub3Qga2VlcCBpdCBhcyBzaW1wbGUgYXMgcG9zc2libGUgKG5vdCByZWFs
bHkgcGVyZm9ybWFuY2UKPiBjcml0aWNhbCksIGJ1dCB5b3VyIHZlcnNpb24gbWFrZXMgaXQgY2xl
YXJlciB0byB0aGUgcmVhZGVyIHdoYXQgdGhlCj4gbG9naWMgaXMgKHN0YXRpYyBhcnJheSksIHNv
IGNhbiBjaGFuZ2UgaXQuCj4gCj4gPiAKPiA+IHNucHJpbnRmKCZwb3J0X25hbWVzW3RjX3BvcnRd
LCBzaXplb2YuLi4uCj4gPiAKPiA+IE90aGVyIHRoZSBhYm92ZToKPiA+IAo+ID4gUmV2aWV3ZWQt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4gCj4g
PiA+ICsKPiA+ID4gKwlyZXR1cm4gcG9ydF9uYW1lc1t0Y19wb3J0XTsKPiA+ID4gK30KPiA+ID4g
Kwo+ID4gPiAgc3RhdGljIGNvbnN0IGNoYXIgKnRjX3BvcnRfbW9kZV9uYW1lKGVudW0gdGNfcG9y
dF9tb2RlIG1vZGUpCj4gPiA+ICB7Cj4gPiA+ICAJc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBu
YW1lc1tdID0gewo+ID4gPiBAQCAtODUsNyArMTA4LDggQEAgc3RhdGljIGJvb2wgaWNsX3RjX3Bo
eV9jb25uZWN0KHN0cnVjdAo+ID4gPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQo+ID4g
PiAgCj4gPiA+ICAJdmFsID0gSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUFBNUyk7Cj4gPiA+ICAJ
aWYgKCEodmFsICYgRFBfUEhZX01PREVfU1RBVFVTX0NPTVBMRVRFRCh0Y19wb3J0KSkpIHsKPiA+
ID4gLQkJRFJNX0RFQlVHX0tNUygiRFAgUEhZIGZvciBUQyBwb3J0ICVkIG5vdCByZWFkeVxuIiwK
PiA+ID4gdGNfcG9ydCk7Cj4gPiA+ICsJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBIWSBub3Qg
cmVhZHlcbiIsCj4gPiA+ICsJCQkgICAgICB0Y19wb3J0X25hbWUoZGV2X3ByaXYsIHRjX3BvcnQp
KTsKPiA+ID4gIAkJV0FSTl9PTihkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQpOwo+ID4gPiAgCQly
ZXR1cm4gZmFsc2U7Cj4gPiA+ICAJfQo+ID4gPiBAQCAtMTA2LDcgKzEzMCw4IEBAIHN0YXRpYyBi
b29sIGljbF90Y19waHlfY29ubmVjdChzdHJ1Y3QKPiA+ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICpk
aWdfcG9ydCkKPiA+ID4gIAkgKi8KPiA+ID4gIAlpZiAoZGlnX3BvcnQtPnRjX21vZGUgPT0gVENf
UE9SVF9EUF9BTFQgJiYKPiA+ID4gIAkgICAgIShJOTE1X1JFQUQoUE9SVF9UWF9ERkxFWERQU1Ap
ICYKPiA+ID4gVENfTElWRV9TVEFURV9UQyh0Y19wb3J0KSkpIHsKPiA+ID4gLQkJRFJNX0RFQlVH
X0tNUygiVEMgUEhZICVkIHN1ZGRlbiBkaXNjb25uZWN0LlxuIiwKPiA+ID4gdGNfcG9ydCk7Cj4g
PiA+ICsJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBIWSBzdWRkZW4gZGlzY29ubmVjdFxuIiwK
PiA+ID4gKwkJCSAgICAgIHRjX3BvcnRfbmFtZShkZXZfcHJpdiwgdGNfcG9ydCkpOwo+ID4gPiAg
CQlpY2xfdGNfcGh5X2Rpc2Nvbm5lY3QoZGlnX3BvcnQpOwo+ID4gPiAgCQlyZXR1cm4gZmFsc2U7
Cj4gPiA+ICAJfQo+ID4gPiBAQCAtMTM2LDggKzE2MSw4IEBAIHZvaWQgaWNsX3RjX3BoeV9kaXNj
b25uZWN0KHN0cnVjdAo+ID4gPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQo+ID4gPiAg
CQlJOTE1X1dSSVRFKFBPUlRfVFhfREZMRVhEUENTU1MsIHZhbCk7Cj4gPiA+ICAJfQo+ID4gPiAg
Cj4gPiA+IC0JRFJNX0RFQlVHX0tNUygiUG9ydCAlYyBUQyB0eXBlICVzIGRpc2Nvbm5lY3RlZFxu
IiwKPiA+ID4gLQkJICAgICAgcG9ydF9uYW1lKGRpZ19wb3J0LT5iYXNlLnBvcnQpLAo+ID4gPiAr
CURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IG1vZGUgJXMgZGlzY29ubmVjdGVkXG4iLAo+ID4gPiAr
CQkgICAgICB0Y19wb3J0X25hbWUoZGV2X3ByaXYsIHRjX3BvcnQpLAo+ID4gPiAgCQkgICAgICB0
Y19wb3J0X21vZGVfbmFtZShkaWdfcG9ydC0+dGNfbW9kZSkpOwo+ID4gPiAgCj4gPiA+ICAJZGln
X3BvcnQtPnRjX21vZGUgPSBUQ19QT1JUX1RCVF9BTFQ7Cj4gPiA+IEBAIC0xNjIsNyArMTg3LDkg
QEAgc3RhdGljIHZvaWQgaWNsX3VwZGF0ZV90Y19wb3J0X3R5cGUoc3RydWN0Cj4gPiA+IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gPiAgCQlyZXR1cm47Cj4gPiA+ICAKPiA+ID4gIAlp
ZiAob2xkX21vZGUgIT0gaW50ZWxfZGlnX3BvcnQtPnRjX21vZGUpCj4gPiA+IC0JCURSTV9ERUJV
R19LTVMoIlBvcnQgJWMgaGFzIFRDIHR5cGUgJXNcbiIsCj4gPiA+IHBvcnRfbmFtZShwb3J0KSwK
PiA+ID4gKwkJRFJNX0RFQlVHX0tNUygiUG9ydCAlczogcG9ydCBoYXMgbW9kZSAlc1xuIiwKPiA+
ID4gKwkJCSAgICAgIHRjX3BvcnRfbmFtZShkZXZfcHJpdiwKPiA+ID4gKwkJCQkJICAgaW50ZWxf
cG9ydF90b190YyhkZXZfcHJpdiwKPiA+ID4gcG9ydCkpLAo+ID4gPiAgCQkJICAgICAgdGNfcG9y
dF9tb2RlX25hbWUoaW50ZWxfZGlnX3BvcnQtCj4gPiA+ID50Y19tb2RlKSk7Cj4gPiA+ICB9Cj4g
PiA+ICAKPiA+ID4gQEAgLTE5MSw4ICsyMTgsOCBAQCBib29sIGludGVsX3RjX3BvcnRfY29ubmVj
dGVkKHN0cnVjdAo+ID4gPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQo+ID4gPiAgCSAq
Lwo+ID4gPiAgCWlmICghZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0ICYmCj4gPiA+ICAJICAgIEk5
MTVfUkVBRChTREVJU1IpICYgU0RFX1RDX0hPVFBMVUdfSUNQKHRjX3BvcnQpKSB7Cj4gPiA+IC0J
CURSTV9FUlJPUigiVkJUIGluY29ycmVjdGx5IGNsYWltcyBwb3J0ICVjIGlzIG5vdCBUeXBlQwo+
ID4gPiBsZWdhY3lcbiIsCj4gPiA+IC0JCQkgIHBvcnRfbmFtZShwb3J0KSk7Cj4gPiA+ICsJCURS
TV9FUlJPUigiUG9ydCAlczogVkJUIGluY29ycmVjdGx5IGNsYWltcyBwb3J0IGlzIG5vdAo+ID4g
PiBUeXBlQyBsZWdhY3lcbiIsCj4gPiA+ICsJCQkgIHRjX3BvcnRfbmFtZShkZXZfcHJpdiwgdGNf
cG9ydCkpOwo+ID4gPiAgCQlkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQgPSB0cnVlOwo+ID4gPiAg
CX0KPiA+ID4gIAlpc19sZWdhY3kgPSBkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQ7Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
