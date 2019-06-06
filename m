Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F841371C3
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 12:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1942E8935C;
	Thu,  6 Jun 2019 10:31:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330858935C
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 10:31:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 03:31:26 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO [10.251.93.246])
 ([10.251.93.246])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jun 2019 03:31:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
 <20190606093639.9372-10-tvrtko.ursulin@linux.intel.com>
 <155981506902.19464.4961849651940512853@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <13403224-ae95-012b-c878-8465fb2229c8@linux.intel.com>
Date: Thu, 6 Jun 2019 11:31:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <155981506902.19464.4961849651940512853@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/21] drm/i915: Make
 i915_check_and_clear_faults take uncore
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

Ck9uIDA2LzA2LzIwMTkgMTA6NTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTA2IDEwOjM2OjI3KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBDb250aW51aW5nIHRoZSBjb252ZXJzaW9u
IGFuZCBlbGltaW5hdGlvbiBvZiBpbXBsaWNpdCBkZXZfcHJpdi4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gU3VnZ2VzdGVk
LWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgIDIgKy0KPj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICB8ICAyICstCj4+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgICAgICAgfCAzNCArKysrKysrKysrKystLS0t
LS0tLS0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oICAgICAgIHwg
IDIgKy0KPj4gICA0IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9u
cygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+PiBp
bmRleCAwZTliNzRmNTI1MDMuLjM1NTRkMGRkN2IxYSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPj4gQEAgLTQ1Myw3ICs0NTMsNyBAQCBpbnQgaW50
ZWxfZW5naW5lc19pbml0X21taW8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+ICAg
Cj4+ICAgICAgICAgIFJVTlRJTUVfSU5GTyhpOTE1KS0+bnVtX2VuZ2luZXMgPSBod2VpZ2h0MzIo
bWFzayk7Cj4+ICAgCj4+IC0gICAgICAgaTkxNV9jaGVja19hbmRfY2xlYXJfZmF1bHRzKGk5MTUp
Owo+PiArICAgICAgIGk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cygmaTkxNS0+dW5jb3JlKTsK
PiAKPiBJIGFtIG5vdCBzb2xkIG9uIHRoYXQuIEVzcGVjaWFsbHkgYXMgaXQgaXMgdGhlbiB1bndy
YXBwZWQgYmFjayB0byBpOTE1LgoKSXQgaXNuJ3QgcmVhbGx5LCBub3Qgb24gdGhlIGxvZ2ljYWwg
bGV2ZWwuIFRoaXMgaXMgdGhlIGJvZHk6Cgp2b2lkIGk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0
cyhzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCnsKCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gdW5jb3JlX3RvX2k5MTUodW5jb3JlKTsKCgkvKiBGcm9tIEdFTjggb253YXJkcyB3
ZSBvbmx5IGhhdmUgb25lICdBbGwgRW5naW5lIEZhdWx0IFJlZ2lzdGVyJyAqLwoJaWYgKElOVEVM
X0dFTihpOTE1KSA+PSA4KQoJCWdlbjhfY2hlY2tfZmF1bHRzKHVuY29yZSk7CgllbHNlIGlmIChJ
TlRFTF9HRU4oaTkxNSkgPj0gNikKCQlnZW42X2NoZWNrX2ZhdWx0cyh1bmNvcmUpOwoJZWxzZQoJ
CXJldHVybjsKCgl1bmNvcmVfY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKHVuY29yZSwgQUxMX0VOR0lO
RVMpOwp9CgpTbyB0aGUgaWRlYSBiZWluZyBpOTE1IGlzIHVzZWQgb25seSBmb3IgIndoYXQgZ2Vu
IGFtIEkgY2hlY2tlcyIsCndoaWxlIHRoZSBhY3R1YWwgZnVuY3Rpb25hbGl0eSBvcGVyYXRlcyBv
biB1bmNvcmUuCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
