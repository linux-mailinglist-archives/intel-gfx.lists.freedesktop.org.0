Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B70CA33D063
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 10:18:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD016E23F;
	Tue, 16 Mar 2021 09:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8396E23F
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Mar 2021 09:18:04 +0000 (UTC)
IronPort-SDR: 8bvHe07SxRuDE2io+cZUTNTWwSClRniQcCasTmeaPaGnJRaca7+041sbjMNBpqg3D8HxyYGcqT
 WTCLy3oAXFTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="188587377"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="188587377"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 02:18:03 -0700
IronPort-SDR: /qJ2Ny0Xu6o6Ozl8eWcUN4WwKldCrFA2ZzHEP3h15sVqyw4w+JrjJVEnZCdWi+m7o5F4yw2eSZ
 FwpvSsV66YpQ==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="412149653"
Received: from dumser-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.50.146])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 02:18:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20210315173238.4bsxk5mwmrnqw6er@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1613580193.git.jani.nikula@intel.com>
 <f4d0ce154544e1798b6b0fdcc156a90b40abd09b.1613580193.git.jani.nikula@intel.com>
 <20210217174644.jq2fu57zzjdelpmc@ldmartin-desk1> <87tuqaa2pi.fsf@intel.com>
 <20210315173238.4bsxk5mwmrnqw6er@ldmartin-desk2>
Date: Tue, 16 Mar 2021 11:18:00 +0200
Message-ID: <87blbjpid3.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/12] drm/i915/vbt: add helper functions to
 check output support
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

T24gTW9uLCAxNSBNYXIgMjAyMSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIFdlZCwgRmViIDE3LCAyMDIxIGF0IDA5OjU1OjUzUE0gKzAyMDAs
IEphbmkgTmlrdWxhIHdyb3RlOgo+Pk9uIFdlZCwgMTcgRmViIDIwMjEsIEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPiB3cm90ZToKPj4+IE9uIFdlZCwgRmViIDE3LCAy
MDIxIGF0IDA3OjAzOjM4UE0gKzAyMDAsIEphbmkgTmlrdWxhIHdyb3RlOgo+Pj4+VGhlc2Ugd2ls
bCBiZSBleHBvc2VkIHRvIHRoZSByZXN0IG9mIHRoZSBkcml2ZXIgYW5kIHJlcGxhY2Ugb3RoZXIK
Pj4+PmZ1bmN0aW9ucy4gRXZlcnl0aGluZyB3aWxsIG9wZXJhdGUgb24gdGhlIGNoaWxkIGRldmlj
ZXMuCj4+Pj4KPj4+PkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KPj4+PkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+Pj4+U2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4K
Pj4+Pi0tLQo+Pj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwg
NjYgKysrKysrKysrKysrKysrKysrLS0tLS0KPj4+PiAxIGZpbGUgY2hhbmdlZCwgNTQgaW5zZXJ0
aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jCj4+Pj5pbmRleCAxOTM3NzJmNDI1ODIuLjczOWVmNWQ5MTkwNyAx
MDA2NDQKPj4+Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
Cj4+Pj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+Pj4+
QEAgLTY0LDYgKzY0LDcgQEAgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhIHsKPj4+Pgo+
Pj4+IAlzdHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyBjaGlsZDsKPj4+PiAJc3RydWN0IGRzY19j
b21wcmVzc2lvbl9wYXJhbWV0ZXJzX2VudHJ5ICpkc2M7Cj4+Pj4rCj4+Pj4gCXN0cnVjdCBsaXN0
X2hlYWQgbm9kZTsKPj4+PiB9Owo+Pj4+Cj4+Pj5AQCAtMTc2MSw2ICsxNzYyLDUzIEBAIHN0YXRp
YyBlbnVtIHBvcnQgZHZvX3BvcnRfdG9fcG9ydChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKPj4+PiAJCQkJCSAgZHZvX3BvcnQpOwo+Pj4+IH0KPj4+Pgo+Pj4+K3N0YXRpYyB2b2lkIHNh
bml0aXplX2RldmljZV90eXBlKHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0
YSwKPj4+PisJCQkJIGVudW0gcG9ydCBwb3J0KQo+Pj4+K3sKPj4+PisJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSBkZXZkYXRhLT5pOTE1Owo+Pj4+Kwlib29sIGlzX2hkbWk7Cj4+Pj4r
Cj4+Pj4rCWlmIChwb3J0ICE9IFBPUlRfQSB8fCBJTlRFTF9HRU4oaTkxNSkgPj0gMTIpCj4+Pj4r
CQlyZXR1cm47Cj4+Pj4rCj4+Pj4rCWlmICghKGRldmRhdGEtPmNoaWxkLmRldmljZV90eXBlICYg
REVWSUNFX1RZUEVfVE1EU19EVklfU0lHTkFMSU5HKSkKPj4+PisJCXJldHVybjsKPj4+PisKPj4+
PisJaXNfaGRtaSA9ICEoZGV2ZGF0YS0+Y2hpbGQuZGV2aWNlX3R5cGUgJiBERVZJQ0VfVFlQRV9O
T1RfSERNSV9PVVRQVVQpOwo+Pj4+Kwo+Pj4+Kwlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiVkJU
IGNsYWltcyBwb3J0IEEgc3VwcG9ydHMgRFZJJXMsIGlnbm9yaW5nXG4iLAo+Pj4+KwkJICAgIGlz
X2hkbWkgPyAiL0hETUkiIDogIiIpOwo+Pj4+Kwo+Pj4+KwlkZXZkYXRhLT5jaGlsZC5kZXZpY2Vf
dHlwZSAmPSB+REVWSUNFX1RZUEVfVE1EU19EVklfU0lHTkFMSU5HOwo+Pj4+KwlkZXZkYXRhLT5j
aGlsZC5kZXZpY2VfdHlwZSB8PSBERVZJQ0VfVFlQRV9OT1RfSERNSV9PVVRQVVQ7Cj4+Pj4rfQo+
Pj4+Kwo+Pj4+K3N0YXRpYyBib29sCj4+Pj4raW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzX2R2
aShjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpCj4+Pj4rewo+
Pj4+KwlyZXR1cm4gZGV2ZGF0YS0+Y2hpbGQuZGV2aWNlX3R5cGUgJiBERVZJQ0VfVFlQRV9UTURT
X0RWSV9TSUdOQUxJTkc7Cj4+Pj4rfQo+Pj4+Kwo+Pj4+K3N0YXRpYyBib29sCj4+Pj4raW50ZWxf
Ymlvc19lbmNvZGVyX3N1cHBvcnRzX2hkbWkoY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rl
cl9kYXRhICpkZXZkYXRhKQo+Pj4+K3sKPj4+PisJcmV0dXJuIGludGVsX2Jpb3NfZW5jb2Rlcl9z
dXBwb3J0c19kdmkoZGV2ZGF0YSkgJiYKPj4+PisJCShkZXZkYXRhLT5jaGlsZC5kZXZpY2VfdHlw
ZSAmIERFVklDRV9UWVBFX05PVF9IRE1JX09VVFBVVCkgPT0gMDsKPj4+Pit9Cj4+Pj4rCj4+Pj4r
c3RhdGljIGJvb2wKPj4+PitpbnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfZHAoY29uc3Qgc3Ry
dWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhKQo+Pj4+K3sKPj4+PisJcmV0dXJu
IGRldmRhdGEtPmNoaWxkLmRldmljZV90eXBlICYgREVWSUNFX1RZUEVfRElTUExBWVBPUlRfT1VU
UFVUOwo+Pj4+K30KPj4+PisKPj4+PitzdGF0aWMgYm9vbAo+Pj4+K2ludGVsX2Jpb3NfZW5jb2Rl
cl9zdXBwb3J0c19lZHAoY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZk
YXRhKQo+Pj4+K3sKPj4+PisJcmV0dXJuIGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19kcChk
ZXZkYXRhKSAmJgo+Pj4+KwkJZGV2ZGF0YS0+Y2hpbGQuZGV2aWNlX3R5cGUgJiBERVZJQ0VfVFlQ
RV9JTlRFUk5BTF9DT05ORUNUT1I7Cj4+Pj4rfQo+Pj4+Kwo+Pj4+IHN0YXRpYyB2b2lkIHBhcnNl
X2RkaV9wb3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+Pj4+IAkJCSAgIHN0cnVj
dCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSkKPj4+PiB7Cj4+Pj5AQCAtMTc4Miwx
OSArMTgzMCwxMyBAQCBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9ydChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKPj4+PiAJCXJldHVybjsKPj4+PiAJfQo+Pj4+Cj4+Pj4tCWlzX2R2aSA9
IGNoaWxkLT5kZXZpY2VfdHlwZSAmIERFVklDRV9UWVBFX1RNRFNfRFZJX1NJR05BTElORzsKPj4+
Pi0JaXNfZHAgPSBjaGlsZC0+ZGV2aWNlX3R5cGUgJiBERVZJQ0VfVFlQRV9ESVNQTEFZUE9SVF9P
VVRQVVQ7Cj4+Pj4tCWlzX2NydCA9IGNoaWxkLT5kZXZpY2VfdHlwZSAmIERFVklDRV9UWVBFX0FO
QUxPR19PVVRQVVQ7Cj4+Pj4tCWlzX2hkbWkgPSBpc19kdmkgJiYgKGNoaWxkLT5kZXZpY2VfdHlw
ZSAmIERFVklDRV9UWVBFX05PVF9IRE1JX09VVFBVVCkgPT0gMDsKPj4+Pi0JaXNfZWRwID0gaXNf
ZHAgJiYgKGNoaWxkLT5kZXZpY2VfdHlwZSAmIERFVklDRV9UWVBFX0lOVEVSTkFMX0NPTk5FQ1RP
Uik7Cj4+Pj4rCXNhbml0aXplX2RldmljZV90eXBlKGRldmRhdGEsIHBvcnQpOwo+Pj4+Cj4+Pj4t
CWlmIChwb3J0ID09IFBPUlRfQSAmJiBpc19kdmkgJiYgSU5URUxfR0VOKGk5MTUpIDwgMTIpIHsK
Pj4+Pi0JCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sCj4+Pj4tCQkJICAgICJWQlQgY2xhaW1zIHBv
cnQgQSBzdXBwb3J0cyBEVkklcywgaWdub3JpbmdcbiIsCj4+Pj4tCQkJICAgIGlzX2hkbWkgPyAi
L0hETUkiIDogIiIpOwo+Pj4+LQkJaXNfZHZpID0gZmFsc2U7Cj4+Pj4tCQlpc19oZG1pID0gZmFs
c2U7Cj4+Pj4tCX0KPj4+PisJaXNfZHZpID0gaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzX2R2
aShkZXZkYXRhKTsKPj4+PisJaXNfZHAgPSBpbnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfZHAo
ZGV2ZGF0YSk7Cj4+Pj4rCWlzX2NydCA9IGNoaWxkLT5kZXZpY2VfdHlwZSAmIERFVklDRV9UWVBF
X0FOQUxPR19PVVRQVVQ7Cj4+Pgo+Pj4gYW55IHJlYXNvbiB0byBsZWF2ZSB0aGlzIGJlaGluZD8K
Pj4KPj5KdXN0IGxvZ2dpbmcsIGV2ZW4gdGhvdWdoIHRoYXQgZG9lc24ndCBtYXRjaCB3aGF0IHdl
IGFjdHVhbGx5IGRvIGluCj4+aW50ZWxfZGRpX2NydF9wcmVzZW50KCkuIEkgZXhwZWN0IHRoZXJl
IHRvIGJlIGZ1cnRoZXIgY2xlYW51cAo+PmFmdGVyd2FyZHMuCj4KPiBJIG1lYW46IHlvdSBhZGRl
ZCBhIGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c18qKCkgZm9yIGV2ZXJ5dGhpbmcgZWxzZS4K
PiBXaHkgbm90IGZvciBjcnQ/CgpJJ3ZlIGFkZGVkIGl0IGZvciBldmVyeXRoaW5nIHRoYXQgbmVl
ZHMgdG8gYmUgbWFkZSBub24tc3RhdGljIGFuZAphdmFpbGFibGUgdG8gdGhlIHJlc3Qgb2YgdGhl
IGRyaXZlci4gSSBjYW4gYWRkIGl0IGZvciBjb21wbGV0ZW5lc3MgaWYKeW91IGxpa2UuCgpCUiwK
SmFuaS4KCj4KPiBMdWNhcyBEZSBNYXJjaGkKPgo+Pgo+PkJSLAo+PkphbmkuCj4+Cj4+Pgo+Pj4g
THVjYXMgRGUgTWFyY2hpCj4+Pgo+Pj4+Kwlpc19oZG1pID0gaW50ZWxfYmlvc19lbmNvZGVyX3N1
cHBvcnRzX2hkbWkoZGV2ZGF0YSk7Cj4+Pj4rCWlzX2VkcCA9IGludGVsX2Jpb3NfZW5jb2Rlcl9z
dXBwb3J0c19lZHAoZGV2ZGF0YSk7Cj4+Pj4KPj4+PiAJaW5mby0+c3VwcG9ydHNfZHZpID0gaXNf
ZHZpOwo+Pj4+IAlpbmZvLT5zdXBwb3J0c19oZG1pID0gaXNfaGRtaTsKPj4+Pi0tCj4+Pj4yLjIw
LjEKPj4+Pgo+Pgo+Pi0tIAo+PkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGlj
cyBDZW50ZXIKPj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PkludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVy
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
