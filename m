Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E03E3162364
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 10:31:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28C3D6E1A2;
	Tue, 18 Feb 2020 09:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B154E6E1AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 09:31:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 01:31:08 -0800
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="228683393"
Received: from carusoal-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.57])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 01:31:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200214142414.GJ13686@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200214140910.23194-1-jani.nikula@intel.com>
 <20200214140910.23194-2-jani.nikula@intel.com>
 <20200214142414.GJ13686@intel.com>
Date: Tue, 18 Feb 2020 11:31:05 +0200
Message-ID: <87eeusz1gm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: use intel_de_*()
 functions for register access
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gRnJpLCAxNCBGZWIgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gRnJpLCBGZWIgMTQsIDIwMjAgYXQgMDQ6MDk6MTBQTSAr
MDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFRoZSBpbXBsaWNpdCAiZGV2X3ByaXYiIGxvY2Fs
IHZhcmlhYmxlIHVzZSBoYXMgYmVlbiBhIGxvbmctc3RhbmRpbmcgcGFpbgo+PiBwb2ludCBpbiB0
aGUgcmVnaXN0ZXIgYWNjZXNzIG1hY3JvcyBJOTE1X1JFQUQoKSwgSTkxNV9XUklURSgpLAo+PiBQ
T1NUSU5HX1JFQUQoKSwgSTkxNV9SRUFEX0ZXKCksIGFuZCBJOTE1X1dSSVRFX0ZXKCkuCj4+IAo+
PiBSZXBsYWNlIHRoZW0gd2l0aCB0aGUgY29ycmVzcG9uZGluZyBuZXcgZGlzcGxheSBlbmdpbmUg
cmVnaXN0ZXIKPj4gYWNjZXNzb3JzIGludGVsX2RlX3JlYWQoKSwgaW50ZWxfZGVfd3JpdGUoKSwg
aW50ZWxfZGVfcG9zdGluZ19yZWFkKCksCj4+IGludGVsX2RlX3JlYWRfZncoKSwgYW5kIGludGVs
X2RlX3dyaXRlX2Z3KCkuCj4+IAo+PiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCj4+IAo+PiBHZW5l
cmF0ZWQgdXNpbmcgdGhlIGZvbGxvd2luZyBzZW1hbnRpYyBwYXRjaDoKPj4gCj4+IEBACj4+IGV4
cHJlc3Npb24gUkVHLCBPRkZTRVQ7Cj4+IEBACj4+IC0gSTkxNV9SRUFEKFJFRykKPj4gKyBpbnRl
bF9kZV9yZWFkKGRldl9wcml2LCBSRUcpCj4+IAo+PiBAQAo+PiBleHByZXNzaW9uIFJFRywgT0ZG
U0VUOwo+PiBAQAo+PiAtIFBPU1RJTkdfUkVBRChSRUcpCj4+ICsgaW50ZWxfZGVfcG9zdGluZ19y
ZWFkKGRldl9wcml2LCBSRUcpCj4+IAo+PiBAQAo+PiBleHByZXNzaW9uIFJFRywgT0ZGU0VUOwo+
PiBAQAo+PiAtIEk5MTVfV1JJVEUoUkVHLCBPRkZTRVQpCj4+ICsgaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIFJFRywgT0ZGU0VUKQo+PiAKPj4gQEAKPj4gZXhwcmVzc2lvbiBSRUc7Cj4+IEBACj4+
IC0gSTkxNV9SRUFEX0ZXKFJFRykKPj4gKyBpbnRlbF9kZV9yZWFkX2Z3KGRldl9wcml2LCBSRUcp
Cj4+IAo+PiBAQAo+PiBleHByZXNzaW9uIFJFRywgT0ZGU0VUOwo+PiBAQAo+PiAtIEk5MTVfV1JJ
VEVfRlcoUkVHLCBPRkZTRVQpCj4+ICsgaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFJFRywg
T0ZGU0VUKQo+PiAKPj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KPj4gLS0tCj4+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rl
YnVnZnMuYyAgfCA2NSArKysrKysrKysrKy0tLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMzcg
aW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKPj4gaW5kZXggNTBi
YWFjNzI2ZTcwLi4yODc0NDJiYmNiNDYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYwo+PiBAQCAtNTcsMTUgKzU3
LDE1IEBAIHN0YXRpYyBpbnQgaTkxNV9mYmNfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9p
ZCAqdW51c2VkKQo+PiAgCQl1MzIgbWFzazsKPj4gIAo+PiAgCQlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSA4KQo+PiAtCQkJbWFzayA9IEk5MTVfUkVBRChJVkJfRkJDX1NUQVRVUzIpICYgQkRX
X0ZCQ19DT01QX1NFR19NQVNLOwo+PiArCQkJbWFzayA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IElWQl9GQkNfU1RBVFVTMikgJiBCRFdfRkJDX0NPTVBfU0VHX01BU0s7Cj4+ICAJCWVsc2UgaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gNykKPj4gLQkJCW1hc2sgPSBJOTE1X1JFQUQoSVZCX0ZC
Q19TVEFUVVMyKSAmIElWQl9GQkNfQ09NUF9TRUdfTUFTSzsKPj4gKwkJCW1hc2sgPSBpbnRlbF9k
ZV9yZWFkKGRldl9wcml2LCBJVkJfRkJDX1NUQVRVUzIpICYgSVZCX0ZCQ19DT01QX1NFR19NQVNL
Owo+PiAgCQllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDUpCj4+IC0JCQltYXNrID0g
STkxNV9SRUFEKElMS19EUEZDX1NUQVRVUykgJiBJTEtfRFBGQ19DT01QX1NFR19NQVNLOwo+PiAr
CQkJbWFzayA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIElMS19EUEZDX1NUQVRVUykgJiBJTEtf
RFBGQ19DT01QX1NFR19NQVNLOwo+PiAgCQllbHNlIGlmIChJU19HNFgoZGV2X3ByaXYpKQo+PiAt
CQkJbWFzayA9IEk5MTVfUkVBRChEUEZDX1NUQVRVUykgJiBEUEZDX0NPTVBfU0VHX01BU0s7Cj4+
ICsJCQltYXNrID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRFBGQ19TVEFUVVMpICYgRFBGQ19D
T01QX1NFR19NQVNLOwo+PiAgCQllbHNlCj4+IC0JCQltYXNrID0gSTkxNV9SRUFEKEZCQ19TVEFU
VVMpICYgKEZCQ19TVEFUX0NPTVBSRVNTSU5HIHwKPj4gKwkJCW1hc2sgPSBpbnRlbF9kZV9yZWFk
KGRldl9wcml2LCBGQkNfU1RBVFVTKSAmIChGQkNfU1RBVF9DT01QUkVTU0lORyB8Cj4+ICAJCQkJ
CQkJRkJDX1NUQVRfQ09NUFJFU1NFRCk7Cj4KPiBTZWVzbSB0byB3YW50IHNvbWUgbWFudWFsIHdv
cmsgdG8gZml4IHRoZSBhbGlnbm1lbnQgYWZ0ZXJ3YXJkcy4KPiBQcm9iYWJseSBzaG91bGQgd3Jh
cCBhZnRlciAmIGFjdHVhbGx5LgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LCBwdXNoZWQgd2l0aCB0
aGlzIHdoaXRlc3BhY2UgY2hhbmdlIGFwcGxpZWQuCgpCUiwKSmFuaS4KCj4KPj4gIAo+PiAgCQlz
ZXFfcHJpbnRmKG0sICJDb21wcmVzc2luZzogJXNcbiIsIHllc25vKG1hc2spKTsKPj4gQEAgLTk5
LDEyICs5OSwxMSBAQCBzdGF0aWMgaW50IGk5MTVfZmJjX2ZhbHNlX2NvbG9yX3NldCh2b2lkICpk
YXRhLCB1NjQgdmFsKQo+PiAgCj4+ICAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmZiYy5sb2NrKTsK
Pj4gIAo+PiAtCXJlZyA9IEk5MTVfUkVBRChJTEtfRFBGQ19DT05UUk9MKTsKPj4gKwlyZWcgPSBp
bnRlbF9kZV9yZWFkKGRldl9wcml2LCBJTEtfRFBGQ19DT05UUk9MKTsKPj4gIAlkZXZfcHJpdi0+
ZmJjLmZhbHNlX2NvbG9yID0gdmFsOwo+PiAgCj4+IC0JSTkxNV9XUklURShJTEtfRFBGQ19DT05U
Uk9MLCB2YWwgPwo+PiAtCQkgICAocmVnIHwgRkJDX0NUTF9GQUxTRV9DT0xPUikgOgo+PiAtCQkg
ICAocmVnICYgfkZCQ19DVExfRkFMU0VfQ09MT1IpKTsKPj4gKwlpbnRlbF9kZV93cml0ZShkZXZf
cHJpdiwgSUxLX0RQRkNfQ09OVFJPTCwKPj4gKwkJICAgICAgIHZhbCA/IChyZWcgfCBGQkNfQ1RM
X0ZBTFNFX0NPTE9SKSA6IChyZWcgJiB+RkJDX0NUTF9GQUxTRV9DT0xPUikpOwo+Cj4gRGlkIHdl
IGludHJvZHVjZSBzb21lIGtpbmQgb2Ygcm13KCkgdmFyaWFudD8gQ291bGQgdXNlIGl0IGhlcmUg
dG8gZ2V0Cj4gcmlkIG9mIHRoaXMgcmF0aGVyIHVnbHkgY29uc3RydWN0Lgo+Cj4gRm9yIHRoZSBz
ZXJpZXMKPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPgo+PiAgCj4+ICAJbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+ZmJjLmxvY2sp
Owo+PiAgCXJldHVybiAwOwo+PiBAQCAtMTMwLDcgKzEyOSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9p
cHNfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQo+PiAgCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDgpIHsKPj4gIAkJc2VxX3B1dHMobSwgIkN1cnJlbnRseTogdW5r
bm93blxuIik7Cj4+ICAJfSBlbHNlIHsKPj4gLQkJaWYgKEk5MTVfUkVBRChJUFNfQ1RMKSAmIElQ
U19FTkFCTEUpCj4+ICsJCWlmIChpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBJUFNfQ1RMKSAmIElQ
U19FTkFCTEUpCj4+ICAJCQlzZXFfcHV0cyhtLCAiQ3VycmVudGx5OiBlbmFibGVkXG4iKTsKPj4g
IAkJZWxzZQo+PiAgCQkJc2VxX3B1dHMobSwgIkN1cnJlbnRseTogZGlzYWJsZWRcbiIpOwo+PiBA
QCAtMTUyLDE2ICsxNTEsMTYgQEAgc3RhdGljIGludCBpOTE1X3NyX3N0YXR1cyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKPj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5
KQo+PiAgCQkvKiBubyBnbG9iYWwgU1Igc3RhdHVzOyBpbnNwZWN0IHBlci1wbGFuZSBXTSAqLzsK
Pj4gIAllbHNlIGlmIChIQVNfUENIX1NQTElUKGRldl9wcml2KSkKPj4gLQkJc3JfZW5hYmxlZCA9
IEk5MTVfUkVBRChXTTFfTFBfSUxLKSAmIFdNMV9MUF9TUl9FTjsKPj4gKwkJc3JfZW5hYmxlZCA9
IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFdNMV9MUF9JTEspICYgV00xX0xQX1NSX0VOOwo+PiAg
CWVsc2UgaWYgKElTX0k5NjVHTShkZXZfcHJpdikgfHwgSVNfRzRYKGRldl9wcml2KSB8fAo+PiAg
CQkgSVNfSTk0NUcoZGV2X3ByaXYpIHx8IElTX0k5NDVHTShkZXZfcHJpdikpCj4+IC0JCXNyX2Vu
YWJsZWQgPSBJOTE1X1JFQUQoRldfQkxDX1NFTEYpICYgRldfQkxDX1NFTEZfRU47Cj4+ICsJCXNy
X2VuYWJsZWQgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBGV19CTENfU0VMRikgJiBGV19CTENf
U0VMRl9FTjsKPj4gIAllbHNlIGlmIChJU19JOTE1R00oZGV2X3ByaXYpKQo+PiAtCQlzcl9lbmFi
bGVkID0gSTkxNV9SRUFEKElOU1RQTSkgJiBJTlNUUE1fU0VMRl9FTjsKPj4gKwkJc3JfZW5hYmxl
ZCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIElOU1RQTSkgJiBJTlNUUE1fU0VMRl9FTjsKPj4g
IAllbHNlIGlmIChJU19QSU5FVklFVyhkZXZfcHJpdikpCj4+IC0JCXNyX2VuYWJsZWQgPSBJOTE1
X1JFQUQoRFNQRlczKSAmIFBJTkVWSUVXX1NFTEZfUkVGUkVTSF9FTjsKPj4gKwkJc3JfZW5hYmxl
ZCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERTUEZXMykgJiBQSU5FVklFV19TRUxGX1JFRlJF
U0hfRU47Cj4+ICAJZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZ
VklFVyhkZXZfcHJpdikpCj4+IC0JCXNyX2VuYWJsZWQgPSBJOTE1X1JFQUQoRldfQkxDX1NFTEZf
VkxWKSAmIEZXX0NTUFdSRFdORU47Cj4+ICsJCXNyX2VuYWJsZWQgPSBpbnRlbF9kZV9yZWFkKGRl
dl9wcml2LCBGV19CTENfU0VMRl9WTFYpICYgRldfQ1NQV1JEV05FTjsKPj4gIAo+PiAgCWludGVs
X2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9wcml2LCBQT1dFUl9ET01BSU5fSU5JVCwgd2FrZXJlZik7
Cj4+ICAKPj4gQEAgLTI5OCw3ICsyOTcsOCBAQCBwc3Jfc291cmNlX3N0YXR1cyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHN0cnVjdCBzZXFfZmlsZSAqbSkKPj4gIAkJCSJCVUZf
T04iLAo+PiAgCQkJIlRHX09OIgo+PiAgCQl9Owo+PiAtCQl2YWwgPSBJOTE1X1JFQUQoRURQX1BT
UjJfU1RBVFVTKGRldl9wcml2LT5wc3IudHJhbnNjb2RlcikpOwo+PiArCQl2YWwgPSBpbnRlbF9k
ZV9yZWFkKGRldl9wcml2LAo+PiArCQkJCSAgICBFRFBfUFNSMl9TVEFUVVMoZGV2X3ByaXYtPnBz
ci50cmFuc2NvZGVyKSk7Cj4+ICAJCXN0YXR1c192YWwgPSAodmFsICYgRURQX1BTUjJfU1RBVFVT
X1NUQVRFX01BU0spID4+Cj4+ICAJCQkgICAgICBFRFBfUFNSMl9TVEFUVVNfU1RBVEVfU0hJRlQ7
Cj4+ICAJCWlmIChzdGF0dXNfdmFsIDwgQVJSQVlfU0laRShsaXZlX3N0YXR1cykpCj4+IEBAIC0z
MTQsNyArMzE0LDggQEAgcHNyX3NvdXJjZV9zdGF0dXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pCj4+ICAJCQkiU1JET0ZGQUNLIiwKPj4gIAkJ
CSJTUkRFTlRfT04iLAo+PiAgCQl9Owo+PiAtCQl2YWwgPSBJOTE1X1JFQUQoRURQX1BTUl9TVEFU
VVMoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7Cj4+ICsJCXZhbCA9IGludGVsX2RlX3JlYWQo
ZGV2X3ByaXYsCj4+ICsJCQkJICAgIEVEUF9QU1JfU1RBVFVTKGRldl9wcml2LT5wc3IudHJhbnNj
b2RlcikpOwo+PiAgCQlzdGF0dXNfdmFsID0gKHZhbCAmIEVEUF9QU1JfU1RBVFVTX1NUQVRFX01B
U0spID4+Cj4+ICAJCQkgICAgICBFRFBfUFNSX1NUQVRVU19TVEFURV9TSElGVDsKPj4gIAkJaWYg
KHN0YXR1c192YWwgPCBBUlJBWV9TSVpFKGxpdmVfc3RhdHVzKSkKPj4gQEAgLTM2MSwxMCArMzYy
LDEyIEBAIHN0YXRpYyBpbnQgaTkxNV9lZHBfcHNyX3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0s
IHZvaWQgKmRhdGEpCj4+ICAJfQo+PiAgCj4+ICAJaWYgKHBzci0+cHNyMl9lbmFibGVkKSB7Cj4+
IC0JCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSMl9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVy
KSk7Cj4+ICsJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsCj4+ICsJCQkJICAgIEVEUF9Q
U1IyX0NUTChkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpKTsKPj4gIAkJZW5hYmxlZCA9IHZhbCAm
IEVEUF9QU1IyX0VOQUJMRTsKPj4gIAl9IGVsc2Ugewo+PiAtCQl2YWwgPSBJOTE1X1JFQUQoRURQ
X1BTUl9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7Cj4+ICsJCXZhbCA9IGludGVsX2Rl
X3JlYWQoZGV2X3ByaXYsCj4+ICsJCQkJICAgIEVEUF9QU1JfQ1RMKGRldl9wcml2LT5wc3IudHJh
bnNjb2RlcikpOwo+PiAgCQllbmFibGVkID0gdmFsICYgRURQX1BTUl9FTkFCTEU7Cj4+ICAJfQo+
PiAgCXNlcV9wcmludGYobSwgIlNvdXJjZSBQU1IgY3RsOiAlcyBbMHglMDh4XVxuIiwKPj4gQEAg
LTM3Nyw3ICszODAsOCBAQCBzdGF0aWMgaW50IGk5MTVfZWRwX3Bzcl9zdGF0dXMoc3RydWN0IHNl
cV9maWxlICptLCB2b2lkICpkYXRhKQo+PiAgCSAqIFNLTCsgUGVyZiBjb3VudGVyIGlzIHJlc2V0
IHRvIDAgZXZlcnl0aW1lIERDIHN0YXRlIGlzIGVudGVyZWQKPj4gIAkgKi8KPj4gIAlpZiAoSVNf
SEFTV0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkgewo+PiAtCQl2YWwg
PSBJOTE1X1JFQUQoRURQX1BTUl9QRVJGX0NOVChkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpKTsK
Pj4gKwkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwKPj4gKwkJCQkgICAgRURQX1BTUl9Q
RVJGX0NOVChkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpKTsKPj4gIAkJdmFsICY9IEVEUF9QU1Jf
UEVSRl9DTlRfTUFTSzsKPj4gIAkJc2VxX3ByaW50ZihtLCAiUGVyZm9ybWFuY2UgY291bnRlcjog
JXVcbiIsIHZhbCk7Cj4+ICAJfQo+PiBAQCAtMzk3LDggKzQwMSw4IEBAIHN0YXRpYyBpbnQgaTkx
NV9lZHBfcHNyX3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCj4+ICAJCSAq
IGZyYW1lIGJvdW5kYXJ5IGJldHdlZW4gcmVnaXN0ZXIgcmVhZHMKPj4gIAkJICovCj4+ICAJCWZv
ciAoZnJhbWUgPSAwOyBmcmFtZSA8IFBTUjJfU1VfU1RBVFVTX0ZSQU1FUzsgZnJhbWUgKz0gMykg
ewo+PiAtCQkJdmFsID0gSTkxNV9SRUFEKFBTUjJfU1VfU1RBVFVTKGRldl9wcml2LT5wc3IudHJh
bnNjb2RlciwKPj4gLQkJCQkJCSAgICAgICBmcmFtZSkpOwo+PiArCQkJdmFsID0gaW50ZWxfZGVf
cmVhZChkZXZfcHJpdiwKPj4gKwkJCQkJICAgIFBTUjJfU1VfU1RBVFVTKGRldl9wcml2LT5wc3Iu
dHJhbnNjb2RlciwgZnJhbWUpKTsKPj4gIAkJCXN1X2ZyYW1lc192YWxbZnJhbWUgLyAzXSA9IHZh
bDsKPj4gIAkJfQo+PiAgCj4+IEBAIC01MTgsNyArNTIyLDggQEAgc3RhdGljIGludCBpOTE1X2Rt
Y19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQo+PiAgCQkgKiByZWcgZm9y
IERDM0NPIGRlYnVnZ2luZyBhbmQgdmFsaWRhdGlvbiwKPj4gIAkJICogYnV0IFRHTCBETUMgZi93
IGlzIHVzaW5nIERNQ19ERUJVRzMgcmVnIGZvciBEQzNDTyBjb3VudGVyLgo+PiAgCQkgKi8KPj4g
LQkJc2VxX3ByaW50ZihtLCAiREMzQ08gY291bnQ6ICVkXG4iLCBJOTE1X1JFQUQoRE1DX0RFQlVH
MykpOwo+PiArCQlzZXFfcHJpbnRmKG0sICJEQzNDTyBjb3VudDogJWRcbiIsCj4+ICsJCQkgICBp
bnRlbF9kZV9yZWFkKGRldl9wcml2LCBETUNfREVCVUczKSk7Cj4+ICAJfSBlbHNlIHsKPj4gIAkJ
ZGM1X3JlZyA9IElTX0JST1hUT04oZGV2X3ByaXYpID8gQlhUX0NTUl9EQzNfREM1X0NPVU5UIDoK
Pj4gIAkJCQkJCSBTS0xfQ1NSX0RDM19EQzVfQ09VTlQ7Cj4+IEBAIC01MjYsMTQgKzUzMSwxOCBA
QCBzdGF0aWMgaW50IGk5MTVfZG1jX2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVz
ZWQpCj4+ICAJCQlkYzZfcmVnID0gU0tMX0NTUl9EQzVfREM2X0NPVU5UOwo+PiAgCX0KPj4gIAo+
PiAtCXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUgY291bnQ6ICVkXG4iLCBJOTE1X1JFQUQoZGM1
X3JlZykpOwo+PiArCXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUgY291bnQ6ICVkXG4iLAo+PiAr
CQkgICBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBkYzVfcmVnKSk7Cj4+ICAJaWYgKGRjNl9yZWcu
cmVnKQo+PiAtCQlzZXFfcHJpbnRmKG0sICJEQzUgLT4gREM2IGNvdW50OiAlZFxuIiwgSTkxNV9S
RUFEKGRjNl9yZWcpKTsKPj4gKwkJc2VxX3ByaW50ZihtLCAiREM1IC0+IERDNiBjb3VudDogJWRc
biIsCj4+ICsJCQkgICBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBkYzZfcmVnKSk7Cj4+ICAKPj4g
IG91dDoKPj4gLQlzZXFfcHJpbnRmKG0sICJwcm9ncmFtIGJhc2U6IDB4JTA4eFxuIiwgSTkxNV9S
RUFEKENTUl9QUk9HUkFNKDApKSk7Cj4+IC0Jc2VxX3ByaW50ZihtLCAic3NwIGJhc2U6IDB4JTA4
eFxuIiwgSTkxNV9SRUFEKENTUl9TU1BfQkFTRSkpOwo+PiAtCXNlcV9wcmludGYobSwgImh0cDog
MHglMDh4XG4iLCBJOTE1X1JFQUQoQ1NSX0hUUF9TS0wpKTsKPj4gKwlzZXFfcHJpbnRmKG0sICJw
cm9ncmFtIGJhc2U6IDB4JTA4eFxuIiwKPj4gKwkJICAgaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwg
Q1NSX1BST0dSQU0oMCkpKTsKPj4gKwlzZXFfcHJpbnRmKG0sICJzc3AgYmFzZTogMHglMDh4XG4i
LAo+PiArCQkgICBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBDU1JfU1NQX0JBU0UpKTsKPj4gKwlz
ZXFfcHJpbnRmKG0sICJodHA6IDB4JTA4eFxuIiwgaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgQ1NS
X0hUUF9TS0wpKTsKPj4gIAo+PiAgCWludGVsX3J1bnRpbWVfcG1fcHV0KCZkZXZfcHJpdi0+cnVu
dGltZV9wbSwgd2FrZXJlZik7Cj4+ICAKPj4gLS0gCj4+IDIuMjAuMQo+PiAKPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
