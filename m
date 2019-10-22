Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 412F3E061A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 16:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD906E819;
	Tue, 22 Oct 2019 14:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08EE76E81A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 14:12:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 07:12:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="200796853"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.75.213])
 ([10.66.75.213])
 by orsmga003.jf.intel.com with ESMTP; 22 Oct 2019 07:12:16 -0700
To: Manasi Navare <manasi.d.navare@intel.com>
References: <20191003150653.15881-1-animesh.manna@intel.com>
 <20191003150653.15881-4-animesh.manna@intel.com>
 <20191021232924.GC29989@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <b69f773d-cd93-a5e4-edd2-169e83251058@intel.com>
Date: Tue, 22 Oct 2019 19:42:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20191021232924.GC29989@intel.com>
Subject: Re: [Intel-gfx] [RFC 3/6] drm/i915/dp: Preparation for DP phy
 compliance auto test.
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMC8yMi8yMDE5IDQ6NTkgQU0sIE1hbmFzaSBOYXZhcmUgd3JvdGU6Cj4gT24gVGh1LCBP
Y3QgMDMsIDIwMTkgYXQgMDg6MzY6NTBQTSArMDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPj4g
RHVyaW5nIERQIHBoeSBjb21wbGlhbmNlIGF1dG8gdGVzdCBtb2RlLCBzaW5rIHdpbGwgcmVxdWVz
dAo+PiBjb21iaW5hdGlvbiBvZiBkaWZmZXJlbnQgdGVzdCBwYXR0ZXJuIHdpdGggZGlmZmVybnQg
bGV2ZWwgb2YKPj4gdnN3aW5nLCBwcmUtZW1waGFzaXMuIEZ1bmN0aW9uIGFkZGVkIHRvIHByZXBh
cmUgZm9yIGl0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1h
bm5hQGludGVsLmNvbT4KPiBUaGlzIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUsIGNvdWxkIHlvdSBh
ZGQgYSBjb21tZW50IGZvciB3aHkKPiBsaW5rX21zdCBpcyBzZXQgdG8gZmFsc2U/CgpUaGFua3Ms
IGxpbmtfbXN0IGlzIHNldCB0byBmYWxzZSB0byBhdm9pZCBleGVjdXRpbmcgbXN0IHJlbGF0ZWQg
Y29kZSAKZHVyaW5nIGNvbXBsaWFuY2UgdGVzdGluZy4uLiB3aWxsIGFkZCBhcyBjb21tZW50LgoK
UmVnYXJkcy4KQW5pbWVzaAo+Cj4gTWFuYXNpCj4KPj4gLS0tCj4+ICAgLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDEgKwo+PiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8IDI5ICsrKysrKysrKysrKysrKysrKysK
Pj4gICAyIGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPj4gaW5kZXgg
OTc2NjY5ZjAxYThjLi41ZDZkNDRmYTI1OTQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4+IEBAIC0xMTQyLDYgKzEx
NDIsNyBAQCBzdHJ1Y3QgaW50ZWxfZHBfY29tcGxpYW5jZV9kYXRhIHsKPj4gICAJdTggdmlkZW9f
cGF0dGVybjsKPj4gICAJdTE2IGhkaXNwbGF5LCB2ZGlzcGxheTsKPj4gICAJdTggYnBjOwo+PiAr
CXN0cnVjdCBkcm1fZHBfcGh5X3Rlc3RfcGFyYW1zIHBoeXRlc3Q7Cj4+ICAgfTsKPj4gICAKPj4g
ICBzdHJ1Y3QgaW50ZWxfZHBfY29tcGxpYW5jZSB7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKPj4gaW5kZXggN2QzM2UyMGRmYzg3Li5hMTkxNDFmYzY3MmUgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPj4gQEAgLTQ3MzgsOSAr
NDczOCwzOCBAQCBzdGF0aWMgdTggaW50ZWxfZHBfYXV0b3Rlc3RfZWRpZChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQo+PiAgIAlyZXR1cm4gdGVzdF9yZXN1bHQ7Cj4+ICAgfQo+PiAgIAo+PiAr
c3RhdGljIHU4IGludGVsX2RwX3ByZXBhcmVfcGh5dGVzdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQo+PiArewo+PiArCXN0cnVjdCBkcm1fZHBfcGh5X3Rlc3RfcGFyYW1zICpkYXRhID0KPj4g
KwkJJmludGVsX2RwLT5jb21wbGlhbmNlLnRlc3RfZGF0YS5waHl0ZXN0Owo+PiArCXU4IGxpbmtf
c3RhdHVzW0RQX0xJTktfU1RBVFVTX1NJWkVdOwo+PiArCj4+ICsJaWYgKCFkcm1fZHBfZ2V0X3Bo
eV90ZXN0X3BhdHRlcm4oJmludGVsX2RwLT5hdXgsIGRhdGEpKSB7Cj4+ICsJCURSTV9ERUJVR19L
TVMoIkRQIFBoeSBUZXN0IHBhdHRlcm4gQVVYIHJlYWQgZmFpbHVyZVxuIik7Cj4+ICsJCXJldHVy
biBEUF9URVNUX05BSzsKPj4gKwl9Cj4+ICsKPj4gKwlpZiAoIWludGVsX2RwX2dldF9saW5rX3N0
YXR1cyhpbnRlbF9kcCwgbGlua19zdGF0dXMpKSB7Cj4+ICsJCURSTV9ERUJVR19LTVMoImZhaWxl
ZCB0byBnZXQgbGluayBzdGF0dXNcbiIpOwo+PiArCQlyZXR1cm4gRFBfVEVTVF9OQUs7Cj4+ICsJ
fQo+PiArCj4+ICsJaW50ZWxfZHAtPmxpbmtfbXN0ID0gZmFsc2U7Cj4+ICsKPj4gKwkvKiByZXRy
aWV2ZSB2c3dpbmcgJiBwcmUtZW1waGFzaXMgc2V0dGluZyAqLwo+PiArCWludGVsX2dldF9hZGp1
c3RfdHJhaW4oaW50ZWxfZHAsIGxpbmtfc3RhdHVzKTsKPj4gKwo+PiArCXJldHVybiBEUF9URVNU
X0FDSzsKPj4gK30KPj4gKwo+PiAgIHN0YXRpYyB1OCBpbnRlbF9kcF9hdXRvdGVzdF9waHlfcGF0
dGVybihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+PiAgIHsKPj4gICAJdTggdGVzdF9yZXN1
bHQgPSBEUF9URVNUX05BSzsKPj4gKwo+PiArCXRlc3RfcmVzdWx0ID0gaW50ZWxfZHBfcHJlcGFy
ZV9waHl0ZXN0KGludGVsX2RwKTsKPj4gKwlpZiAodGVzdF9yZXN1bHQgIT0gRFBfVEVTVF9BQ0sp
Cj4+ICsJCURSTV9FUlJPUigiUGh5IHRlc3QgcHJlcGFyYXRpb24gZmFpbGVkXG4iKTsKPj4gKwo+
PiAgIAlyZXR1cm4gdGVzdF9yZXN1bHQ7Cj4+ICAgfQo+PiAgIAo+PiAtLSAKPj4gMi4yMi4wCj4+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
