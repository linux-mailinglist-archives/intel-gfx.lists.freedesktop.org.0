Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6745F95A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 15:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B426E34C;
	Thu,  4 Jul 2019 13:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 256446E34C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 13:51:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 06:51:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="191373699"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jul 2019 06:51:31 -0700
Date: Thu, 4 Jul 2019 16:51:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190704135122.GC25657@ideak-desk.fi.intel.com>
References: <20190704000000.20019-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704000000.20019-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: make new intel_tc.c use
 uncore accessors
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
Cc: intel-gfx@lists.freedesktop.org,
 /home/ldmartin/tmp/tgl-patches/0000-cover-letter.patch@irsmsx151.ger.corp.intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMDQ6NTk6NTdQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IExldCdzIG1ha2UgdGhlIGp1c3QgY3JlYXRlZCBpbnRlbF90Yy5jIGFscmVhZHkg
Zm9sbG93IHRoZSB0cmVuZCBvZiB1c2luZwo+IGk5MTUgaW5zdGVhZCBvZiBkZXZfcHJpdiBhbmQg
Y2FsbGluZyB0aGUgaW50ZWxfdW5jb3JlXyooKSBmdW5jdGlvbnMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpSZXZpZXdlZC1i
eTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgNTcgKysrKysrKysrKysrKystLS0tLS0tLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwo+IGluZGV4IDUzMTAzYTlh
YThhNy4uMWE5ZGQzMmZiMGE1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdGMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdGMuYwo+IEBAIC0yNCwxMSArMjQsMTIgQEAgc3RhdGljIGNvbnN0IGNoYXIgKnRjX3BvcnRf
bW9kZV9uYW1lKGVudW0gdGNfcG9ydF9tb2RlIG1vZGUpCj4gIAo+ICB1MzIgaW50ZWxfdGNfcG9y
dF9nZXRfbGFuZV9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQo+ICB7
Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRpZ19wb3J0
LT5iYXNlLmJhc2UuZGV2KTsKPiAtCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90
b190YyhkZXZfcHJpdiwgZGlnX3BvcnQtPmJhc2UucG9ydCk7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwo+ICsJZW51
bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGk5MTUsIGRpZ19wb3J0LT5iYXNl
LnBvcnQpOwo+ICsJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmk5MTUtPnVuY29yZTsK
PiAgCXUzMiBsYW5lX21hc2s7Cj4gIAo+IC0JbGFuZV9tYXNrID0gSTkxNV9SRUFEKFBPUlRfVFhf
REZMRVhEUFNQKTsKPiArCWxhbmVfbWFzayA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgUE9S
VF9UWF9ERkxFWERQU1ApOwo+ICAKPiAgCVdBUk5fT04obGFuZV9tYXNrID09IDB4ZmZmZmZmZmYp
Owo+ICAKPiBAQCAtMzgsNyArMzksNyBAQCB1MzIgaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNr
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQo+ICAKPiAgaW50IGludGVsX3Rj
X3BvcnRfZmlhX21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KQo+ICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7Cj4gIAlpbnRlbF93YWtlcmVm
X3Qgd2FrZXJlZjsKPiAgCXUzMiBsYW5lX21hc2s7Cj4gIAo+IEBAIC00Niw3ICs0Nyw3IEBAIGlu
dCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCkKPiAgCQlyZXR1cm4gNDsKPiAgCj4gIAlsYW5lX21hc2sgPSAwOwo+IC0J
d2l0aF9pbnRlbF9kaXNwbGF5X3Bvd2VyKGRldl9wcml2LCBQT1dFUl9ET01BSU5fRElTUExBWV9D
T1JFLCB3YWtlcmVmKQo+ICsJd2l0aF9pbnRlbF9kaXNwbGF5X3Bvd2VyKGk5MTUsIFBPV0VSX0RP
TUFJTl9ESVNQTEFZX0NPUkUsIHdha2VyZWYpCj4gIAkJbGFuZV9tYXNrID0gaW50ZWxfdGNfcG9y
dF9nZXRfbGFuZV9tYXNrKGRpZ19wb3J0KTsKPiAgCj4gIAlzd2l0Y2ggKGxhbmVfbWFzaykgewo+
IEBAIC04OSwxMiArOTAsMTMgQEAgc3RhdGljIHZvaWQgdGNfcG9ydF9maXh1cF9sZWdhY3lfZmxh
ZyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKPiAgCj4gIHN0YXRpYyB1MzIg
dGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KQo+ICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKPiAtCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50
ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgZGlnX3BvcnQtPmJhc2UucG9ydCk7Cj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYp
Owo+ICsJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGk5MTUsIGRpZ19w
b3J0LT5iYXNlLnBvcnQpOwo+ICsJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmk5MTUt
PnVuY29yZTsKPiAgCXUzMiBtYXNrID0gMDsKPiAgCXUzMiB2YWw7Cj4gIAo+IC0JdmFsID0gSTkx
NV9SRUFEKFBPUlRfVFhfREZMRVhEUFNQKTsKPiArCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKHVu
Y29yZSwgUE9SVF9UWF9ERkxFWERQU1ApOwo+ICAKPiAgCWlmICh2YWwgPT0gMHhmZmZmZmZmZikg
ewo+ICAJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBIWSBpbiBUQ0NPTEQsIG5vdGhpbmcgY29u
bmVjdGVkXG4iLAo+IEBAIC0xMDcsNyArMTA5LDcgQEAgc3RhdGljIHUzMiB0Y19wb3J0X2xpdmVf
c3RhdHVzX21hc2soc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCj4gIAlpZiAo
dmFsICYgVENfTElWRV9TVEFURV9UQyh0Y19wb3J0KSkKPiAgCQltYXNrIHw9IEJJVChUQ19QT1JU
X0RQX0FMVCk7Cj4gIAo+IC0JaWYgKEk5MTVfUkVBRChTREVJU1IpICYgU0RFX1RDX0hPVFBMVUdf
SUNQKHRjX3BvcnQpKQo+ICsJaWYgKGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgU0RFSVNSKSAm
IFNERV9UQ19IT1RQTFVHX0lDUCh0Y19wb3J0KSkKPiAgCQltYXNrIHw9IEJJVChUQ19QT1JUX0xF
R0FDWSk7Cj4gIAo+ICAJLyogVGhlIHNpbmsgY2FuIGJlIGNvbm5lY3RlZCBvbmx5IGluIGEgc2lu
Z2xlIG1vZGUuICovCj4gQEAgLTExOSwxMSArMTIxLDEyIEBAIHN0YXRpYyB1MzIgdGNfcG9ydF9s
aXZlX3N0YXR1c19tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQo+ICAK
PiAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQpCj4gIHsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwo+IC0JZW51bSB0Y19w
b3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBkaWdfcG9ydC0+YmFzZS5w
b3J0KTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9y
dC0+YmFzZS5iYXNlLmRldik7Cj4gKwllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRf
dG9fdGMoaTkxNSwgZGlnX3BvcnQtPmJhc2UucG9ydCk7Cj4gKwlzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOwo+ICAJdTMyIHZhbDsKPiAgCj4gLQl2YWwgPSBJOTE1
X1JFQUQoUE9SVF9UWF9ERkxFWERQUE1TKTsKPiArCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKHVu
Y29yZSwgUE9SVF9UWF9ERkxFWERQUE1TKTsKPiAgCWlmICh2YWwgPT0gMHhmZmZmZmZmZikgewo+
ICAJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBIWSBpbiBUQ0NPTEQsIGFzc3VtaW5nIG5vdCBj
b21wbGV0ZVxuIiwKPiAgCQkJICAgICAgZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSk7Cj4gQEAgLTEz
NiwxMSArMTM5LDEyIEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQo+ICBzdGF0aWMgYm9vbCBpY2xfdGNf
cGh5X3NldF9zYWZlX21vZGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCj4g
IAkJCQkgICAgIGJvb2wgZW5hYmxlKQo+ICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKPiAtCWVudW0gdGNf
cG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgZGlnX3BvcnQtPmJhc2Uu
cG9ydCk7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3Bv
cnQtPmJhc2UuYmFzZS5kZXYpOwo+ICsJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0
X3RvX3RjKGk5MTUsIGRpZ19wb3J0LT5iYXNlLnBvcnQpOwo+ICsJc3RydWN0IGludGVsX3VuY29y
ZSAqdW5jb3JlID0gJmk5MTUtPnVuY29yZTsKPiAgCXUzMiB2YWw7Cj4gIAo+IC0JdmFsID0gSTkx
NV9SRUFEKFBPUlRfVFhfREZMRVhEUENTU1MpOwo+ICsJdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQo
dW5jb3JlLCBQT1JUX1RYX0RGTEVYRFBDU1NTKTsKPiAgCWlmICh2YWwgPT0gMHhmZmZmZmZmZikg
ewo+ICAJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBIWSBpbiBUQ0NPTEQsIGNhbid0IHNldCBz
YWZlLW1vZGUgdG8gJXNcbiIsCj4gIAkJCSAgICAgIGRpZ19wb3J0LT50Y19wb3J0X25hbWUsCj4g
QEAgLTE1Myw3ICsxNTcsNyBAQCBzdGF0aWMgYm9vbCBpY2xfdGNfcGh5X3NldF9zYWZlX21vZGUo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCj4gIAlpZiAoIWVuYWJsZSkKPiAg
CQl2YWwgfD0gRFBfUEhZX01PREVfU1RBVFVTX05PVF9TQUZFKHRjX3BvcnQpOwo+ICAKPiAtCUk5
MTVfV1JJVEUoUE9SVF9UWF9ERkxFWERQQ1NTUywgdmFsKTsKPiArCWludGVsX3VuY29yZV93cml0
ZSh1bmNvcmUsIFBPUlRfVFhfREZMRVhEUENTU1MsIHZhbCk7Cj4gIAo+ICAJaWYgKGVuYWJsZSAm
JiB3YWl0X2ZvcighaWNsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpLCAxMCkpCj4g
IAkJRFJNX0RFQlVHX0tNUygiUG9ydCAlczogUEhZIGNvbXBsZXRlIGNsZWFyIHRpbWVkIG91dFxu
IiwKPiBAQCAtMTY0LDExICsxNjgsMTIgQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9zZXRfc2Fm
ZV9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAo+ICAKPiAgc3RhdGlj
IGJvb2wgaWNsX3RjX3BoeV9pc19pbl9zYWZlX21vZGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9y
dCAqZGlnX3BvcnQpCj4gIHsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwo+IC0JZW51bSB0Y19wb3J0IHRjX3Bv
cnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBkaWdfcG9ydC0+YmFzZS5wb3J0KTsKPiAr
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5i
YXNlLmRldik7Cj4gKwllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoaTkx
NSwgZGlnX3BvcnQtPmJhc2UucG9ydCk7Cj4gKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUg
PSAmaTkxNS0+dW5jb3JlOwo+ICAJdTMyIHZhbDsKPiAgCj4gLQl2YWwgPSBJOTE1X1JFQUQoUE9S
VF9UWF9ERkxFWERQQ1NTUyk7Cj4gKwl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIFBP
UlRfVFhfREZMRVhEUENTU1MpOwo+ICAJaWYgKHZhbCA9PSAweGZmZmZmZmZmKSB7Cj4gIAkJRFJN
X0RFQlVHX0tNUygiUG9ydCAlczogUEhZIGluIFRDQ09MRCwgYXNzdW1lIHNhZmUgbW9kZVxuIiwK
PiAgCQkJICAgICAgZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSk7Cj4gQEAgLTMxNywxMSArMzIyLDEx
IEBAIGludGVsX3RjX3BvcnRfZ2V0X3RhcmdldF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmRpZ19wb3J0KQo+ICBzdGF0aWMgdm9pZCBpbnRlbF90Y19wb3J0X3Jlc2V0X21vZGUoc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCj4gIAkJCQkgICAgIGludCByZXF1aXJl
ZF9sYW5lcykKPiAgewo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwo+ICAJZW51bSB0Y19w
b3J0X21vZGUgb2xkX3RjX21vZGUgPSBkaWdfcG9ydC0+dGNfbW9kZTsKPiAgCj4gLQlpbnRlbF9k
aXNwbGF5X3Bvd2VyX2ZsdXNoX3dvcmsoZGV2X3ByaXYpOwo+IC0JV0FSTl9PTihpbnRlbF9kaXNw
bGF5X3Bvd2VyX2lzX2VuYWJsZWQoZGV2X3ByaXYsCj4gKwlpbnRlbF9kaXNwbGF5X3Bvd2VyX2Zs
dXNoX3dvcmsoaTkxNSk7Cj4gKwlXQVJOX09OKGludGVsX2Rpc3BsYXlfcG93ZXJfaXNfZW5hYmxl
ZChpOTE1LAo+ICAJCQkJCSAgICAgICBpbnRlbF9hdXhfcG93ZXJfZG9tYWluKGRpZ19wb3J0KSkp
Owo+ICAKPiAgCWljbF90Y19waHlfZGlzY29ubmVjdChkaWdfcG9ydCk7Cj4gQEAgLTQwNCwxMCAr
NDA5LDEwIEBAIGJvb2wgaW50ZWxfdGNfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpCj4gIHN0YXRpYyB2b2lkIF9faW50ZWxfdGNfcG9ydF9sb2NrKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAo+ICAJCQkJIGludCByZXF1aXJlZF9s
YW5lcykKPiAgewo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwo+ICAJaW50ZWxfd2FrZXJl
Zl90IHdha2VyZWY7Cj4gIAo+IC0Jd2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KGRl
dl9wcml2LCBQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFKTsKPiArCXdha2VyZWYgPSBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2dldChpOTE1LCBQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFKTsKPiAgCj4g
IAltdXRleF9sb2NrKCZkaWdfcG9ydC0+dGNfbG9jayk7Cj4gIAo+IEBAIC00MjYsMTIgKzQzMSwx
MiBAQCB2b2lkIGludGVsX3RjX3BvcnRfbG9jayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpk
aWdfcG9ydCkKPiAgCj4gIHZvaWQgaW50ZWxfdGNfcG9ydF91bmxvY2soc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQpCj4gIHsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwo+ICsJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsK
PiAgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmID0gZmV0Y2hfYW5kX3plcm8oJmRpZ19wb3J0LT50
Y19sb2NrX3dha2VyZWYpOwo+ICAKPiAgCW11dGV4X3VubG9jaygmZGlnX3BvcnQtPnRjX2xvY2sp
Owo+ICAKPiAtCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jKGRldl9wcml2LCBQT1dFUl9E
T01BSU5fRElTUExBWV9DT1JFLAo+ICsJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYXN5bmMoaTkx
NSwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwKPiAgCQkJCSAgICAgIHdha2VyZWYpOwo+ICB9
Cj4gIAo+IC0tIAo+IDIuMjEuMAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
