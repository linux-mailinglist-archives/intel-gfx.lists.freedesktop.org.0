Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EEC34A807
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 14:22:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE0E6F3D0;
	Fri, 26 Mar 2021 13:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ED6D6F3D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 13:22:39 +0000 (UTC)
IronPort-SDR: H+gsPyUShQDDL3JDaxo/chYmVulA1AkdgdfG0Fpb5lg2L1rmSM+T75kdDsUHNhZJCjszWZjxL2
 2oLC8nbleFwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171135634"
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="171135634"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 06:22:38 -0700
IronPort-SDR: G/9xMVZpP+lj/Ir/SyqyUPobZsQsUHawposvul3KJ7zqzOlzUvm7YbIwPVub0exnQ9XXI0yYTz
 WoYBVfWT7GbA==
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="453508755"
Received: from mpaulits-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.191])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 06:22:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <87czvm2tbz.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1615211711.git.jani.nikula@intel.com>
 <4f87fcc238ec8f430a4adce02f66d210ca99714d.1615211711.git.jani.nikula@intel.com>
 <08b49ea1f0eea0d93e0991c5cbdfd150610950f1.camel@intel.com>
 <87czvm2tbz.fsf@intel.com>
Date: Fri, 26 Mar 2021 15:22:34 +0200
Message-ID: <877dlu2go5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/8] drm/i915: add new helpers for
 accessing stepping info
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNiBNYXIgMjAyMSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gVGh1LCAyNSBNYXIgMjAyMSwgIlNvdXphLCBKb3NlIiA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+PiBPbiBNb24sIDIwMjEtMDMtMDggYXQgMTU6NTYgKzAyMDAsIEph
bmkgTmlrdWxhIHdyb3RlOgo+Pj4gQWRkIG5ldyBydW50aW1lIGluZm8gZmllbGQgZm9yIHN0ZXBw
aW5nLiBBZGQgbmV3IGhlbHBlcnMgZm9yIGFjY2Vzc2luZwo+Pj4gdGhlbS4gQXMgd2UnbGwgYmUg
c3dpdGNoaW5nIHBsYXRmb3JtcyBvdmVyIHRvIHRoZSBuZXcgc2NoZW1lCj4+PiBpbmNyZW1lbnRh
bGx5LCBjaGVjayBmb3Igbm9uLWluaXRpYWxpemVkIHN0ZXBwaW5ncy4KPj4+IAo+Pj4gSW4gY2Fz
ZSBhIHBsYXRmb3JtIGRvZXMgbm90IGhhdmUgc2VwYXJhdGUgZGlzcGxheSBhbmQgZ3Qgc3RlcHBp
bmdzLCBpdCdzCj4+PiBva2F5IHRvIHVzZSBhIGNvbW1vbiBzaG9ydGhhbmQuIEhvd2V2ZXIsIGlu
IHRoaXMgY2FzZSB0aGUgZGlzcGxheQo+Pj4gc3RlcHBpbmcgbXVzdCBub3QgYmUgaW5pdGlhbGl6
ZWQsIGFuZCBndCBzdGVwcGluZyBpcyB0aGUgc2luZ2xlIHBvaW50IG9mCj4+PiB0cnV0aC4KPj4+
IAo+Pj4gdjI6IFJlbmFtZSBzdGVwcGluZy0+c3RlcAo+Pj4gCj4+PiBTaWduZWQtb2ZmLWJ5OiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8IDI0ICsrKysrKysrKysrKysrKy0tLS0t
LS0tLQo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggfCAgNCAr
KysrCj4+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3RlcC5oICAgICAgICB8IDE0ICsr
KysrKysrKysrKysrCj4+PiAgMyBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCA5IGRl
bGV0aW9ucygtKQo+Pj4gCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPj4+IGluZGV4IDAyMTcw
ZWRkNjYyOC4uYTU0M2IxYWQ5YmE5IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaAo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+
Pj4gQEAgLTEyNzQsNiArMTI3NCwyMSBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpwZGV2X3RvX2k5MTUoc3RydWN0IHBjaV9kZXYgKnBkZXYpCj4+PiAgI2RlZmluZSBJ
U19SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwKPj4+ICAJKElOVEVMX1JFVklEKHApID49IChzaW5j
ZSkgJiYgSU5URUxfUkVWSUQocCkgPD0gKHVudGlsKSkKPj4+ICAKPj4+IAo+Pj4gKyNkZWZpbmUg
SU5URUxfRElTUExBWV9TVEVQKF9faTkxNSkgKFJVTlRJTUVfSU5GTyhfX2k5MTUpLT5zdGVwLmRp
c3Bfc3RlcHBpbmcpCj4+PiArI2RlZmluZSBJTlRFTF9HVF9TVEVQKF9faTkxNSkgKFJVTlRJTUVf
SU5GTyhfX2k5MTUpLT5zdGVwLmd0X3N0ZXBwaW5nKQo+Pj4gKwo+Pj4gKyNkZWZpbmUgSVNfRElT
UExBWV9TVEVQKF9faTkxNSwgc2luY2UsIHVudGlsKSBcCj4+PiArCShkcm1fV0FSTl9PTigmKF9f
aTkxNSktPmRybSwgSU5URUxfRElTUExBWV9TVEVQKF9faTkxNSkgPT0gU1RFUF9OT05FKSwgXAo+
Pj4gKwkgSU5URUxfRElTUExBWV9TVEVQKF9faTkxNSkgPj0gKHNpbmNlKSAmJiBJTlRFTF9ESVNQ
TEFZX1NURVAoX19pOTE1KSA8PSAodW50aWwpKQo+Pj4gKwo+Pj4gKyNkZWZpbmUgSVNfR1RfU1RF
UChfX2k5MTUsIHNpbmNlLCB1bnRpbCkgXAo+Pj4gKwkoZHJtX1dBUk5fT04oJihfX2k5MTUpLT5k
cm0sIElOVEVMX0dUX1NURVAoX19pOTE1KSA9PSBTVEVQX05PTkUpLCBcCj4+PiArCSBJTlRFTF9H
VF9TVEVQKF9faTkxNSkgPj0gKHNpbmNlKSAmJiBJTlRFTF9HVF9TVEVQKF9faTkxNSkgPD0gKHVu
dGlsKSkKPj4+ICsKPj4+ICsjZGVmaW5lIElTX1NURVAocCwgc2luY2UsIHVudGlsKSBcCj4+PiAr
CShkcm1fV0FSTl9PTigmKF9faTkxNSktPmRybSwgSU5URUxfRElTUExBWV9TVEVQKF9faTkxNSkg
IT0gU1RFUF9OT05FKSwgXAo+Pgo+PiAoZHJtX1dBUk5fT04oJihfX2k5MTUpLT5kcm0sIElOVEVM
X0RJU1BMQVlfU1RFUChfX2k5MTUpID09IFNURVBfTk9ORSksIFwKPj4KPj4gQnV0IEkgZG9uJ3Qg
dGhpbmsgSVNfU1RFUCgpIGlzIHVzZWZ1bCwgYmV0dGVyIHVzZSBJU19ESVNQTEFZL0dUX1NURVAg
ZXZlbiBmb3IgcGxhdGZvcm1zIHdpdGggdGhlIHNhbWUgZGlzcGxheSBhbmQgR1QgdmVyc2lvbi4K
Pgo+IFRoZSBJTlRFTF9ESVNQTEFZX1NURVAoX19pOTE1KSAhPSBTVEVQX05PTkUgY2hlY2sgaXMg
YXMgSSBpbnRlbmRlZCwgbm90Cj4gYSBtaXN0YWtlLgo+Cj4gVGhlIGlkZWEgaXMgdGhhdCB5b3Un
ZCBvbmx5IGJlIGFibGUgdG8gdXNlIElTX1NURVAoKSBvbiBwbGF0Zm9ybXMgd2hlcmUKPiBkaXNw
bGF5IHN0ZXAgaXMgbm90IHNldCwgaS5lLiB3aGVyZSB0aGUgdmVyc2lvbnMgYXJlIHRoZSBzYW1l
IGZvcgo+IGRpc3BsYXkgYW5kIEdULgo+Cj4gSSBkb24ndCBhY3R1YWxseSBhZGQgdXNlcnMgZm9y
IHRoaXMgb25lLCB0aG91Z2gsIGFuZCB3ZSBtYXkgaW5kZWVkIGJlCj4gYmV0dGVyIG9mZiBqdXN0
IHRocm93aW5nIGl0IG91dCBhbmQgYWx3YXlzIHVzaW5nIHRoZSBzcGVjaWZpYyBHVC9kaXNwbGF5
Cj4gbWFjcm9zLgoKU2VudCBuZXh0IHZlcnNpb24gd2l0aCBJU19TVEVQKCkgcmVtb3ZlZCwgYW5k
IHByZXN1bWVkIHRoZSByYiBob2xkcyB3aXRoCnRoYXQuCgpUaGFua3MsCkphbmkuCgo+Cj4gQlIs
Cj4gSmFuaS4KPgo+Cj4+Cj4+IFdpdGggdGhlIGNoYW5nZSBhYm92ZToKPj4KPj4gUmV2aWV3ZWQt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+Pgo+Pj4g
KwkgSU5URUxfR1RfU1RFUChfX2k5MTUsIHNpbmNlLCB1bnRpbCkpCj4+PiArCj4+PiAgc3RhdGlj
IF9fYWx3YXlzX2lubGluZSB1bnNpZ25lZCBpbnQKPj4+ICBfX3BsYXRmb3JtX21hc2tfaW5kZXgo
Y29uc3Qgc3RydWN0IGludGVsX3J1bnRpbWVfaW5mbyAqaW5mbywKPj4+ICAJCSAgICAgIGVudW0g
aW50ZWxfcGxhdGZvcm0gcCkKPj4+IEBAIC0xNTExLDE1ICsxNTI2LDYgQEAgZW51bSB7Cj4+PiAg
I2RlZmluZSBJU19KU0xfRUhMX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXAo+Pj4gIAkoSVNfSlNM
X0VITChwKSAmJiBJU19SRVZJRChwLCBzaW5jZSwgdW50aWwpKQo+Pj4gIAo+Pj4gCj4+PiAtZW51
bSB7Cj4+PiAtCVNURVBfQTAsCj4+PiAtCVNURVBfQTIsCj4+PiAtCVNURVBfQjAsCj4+PiAtCVNU
RVBfQjEsCj4+PiAtCVNURVBfQzAsCj4+PiAtCVNURVBfRDAsCj4+PiAtfTsKPj4+IC0KPj4+ICBz
dGF0aWMgaW5saW5lIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgKgo+Pj4gIHRnbF9z
dGVwcGluZ19nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+Pj4gIHsKPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAo+Pj4gaW5kZXggZDQ0ZjY0
YjU3YjdhLi5mODQ1NjllOGU3MTEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5oCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5oCj4+PiBAQCAtMjcsNiArMjcsOCBAQAo+Pj4gIAo+Pj4gCj4+PiAgI2lu
Y2x1ZGUgPHVhcGkvZHJtL2k5MTVfZHJtLmg+Cj4+PiAgCj4+PiAKPj4+ICsjaW5jbHVkZSAiaW50
ZWxfc3RlcC5oIgo+Pj4gKwo+Pj4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCIK
Pj4+ICAKPj4+IAo+Pj4gICNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCIKPj4+IEBA
IC0yMjUsNiArMjI3LDggQEAgc3RydWN0IGludGVsX3J1bnRpbWVfaW5mbyB7Cj4+PiAgCXU4IG51
bV9zY2FsZXJzW0k5MTVfTUFYX1BJUEVTXTsKPj4+ICAKPj4+IAo+Pj4gIAl1MzIgcmF3Y2xrX2Zy
ZXE7Cj4+PiArCj4+PiArCXN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3Mgc3RlcDsKPj4+ICB9Owo+
Pj4gIAo+Pj4gCj4+PiAgc3RydWN0IGludGVsX2RyaXZlcl9jYXBzIHsKPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zdGVwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9zdGVwLmgKPj4+IGluZGV4IGFmOTIyYWUzYmI0ZS4uOGIzZWYxOWQ5MzViIDEwMDY0
NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3RlcC5oCj4+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zdGVwLmgKPj4+IEBAIC0yMiw0ICsyMiwxOCBAQCBl
eHRlcm4gY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyB0Z2xfdXlfcmV2aWRfc3RlcF90
YmxbVEdMX1VZX1JFVklEX1NURVBfVAo+Pj4gIGV4dGVybiBjb25zdCBzdHJ1Y3QgaTkxNV9yZXZf
c3RlcHBpbmdzIHRnbF9yZXZpZF9zdGVwX3RibFtUR0xfUkVWSURfU1RFUF9UQkxfU0laRV07Cj4+
PiAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgYWRsc19yZXZpZF9zdGVw
X3RibFtBRExTX1JFVklEX1NURVBfVEJMX1NJWkVdOwo+Pj4gIAo+Pj4gCj4+PiArLyoKPj4+ICsg
KiBTeW1ib2xpYyBzdGVwcGluZ3MgdGhhdCBkbyBub3QgbWF0Y2ggdGhlIGhhcmR3YXJlLiBUaGVz
ZSBhcmUgdmFsaWQgYm90aCBhcyBndAo+Pj4gKyAqIGFuZCBkaXNwbGF5IHN0ZXBwaW5ncyBhcyBz
eW1ib2xpYyBuYW1lcy4KPj4+ICsgKi8KPj4+ICtlbnVtIGludGVsX3N0ZXAgewo+Pj4gKwlTVEVQ
X05PTkUgPSAwLAo+Pj4gKwlTVEVQX0EwLAo+Pj4gKwlTVEVQX0EyLAo+Pj4gKwlTVEVQX0IwLAo+
Pj4gKwlTVEVQX0IxLAo+Pj4gKwlTVEVQX0MwLAo+Pj4gKwlTVEVQX0QwLAo+Pj4gK307Cj4+PiAr
Cj4+PiAgI2VuZGlmIC8qIF9fSU5URUxfU1RFUF9IX18gKi8KPj4KPj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKSmFuaSBOaWt1bGEs
IEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
