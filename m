Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E362D7FE1
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 21:19:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9DB6E3BB;
	Tue, 15 Oct 2019 19:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DFB16E3BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 19:19:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 12:19:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="208240667"
Received: from mcretu-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.150])
 by fmsmga001.fm.intel.com with ESMTP; 15 Oct 2019 12:19:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191014110122.31923-5-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
 <20191014110122.31923-5-vandita.kulkarni@intel.com>
Date: Tue, 15 Oct 2019 22:20:50 +0300
Message-ID: <87pnixak8d.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915/dsi: Helper to find dsi encoder
 in cmd mode
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

T24gTW9uLCAxNCBPY3QgMjAxOSwgVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBp
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IE1hZGhhdiBDaGF1aGFuIDxtYWRoYXYuY2hhdWhhbkBp
bnRlbC5jb20+Cj4KPiBUaGlzIHBhdGNoIGFkZHMgYSBoZWxwZXIgZnVuY3Rpb24gdG8gZmluZCBl
bmNvZGVyCj4gaWYgRFNJIGlzIG9wZXJhdGluZyBpbiBjb21tYW5kIG1vZGUuIFRoaXMgZnVuY3Rp
b24KPiB3aWxsIGJlIHVzZWQgd2hpbGUgZW5hYmxpbmcvZGlzYWJsaW5nIFRFIGludGVycnVwdHMK
PiBmb3IgRFNJLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFkaGF2IENoYXVoYW4gPG1hZGhhdi5jaGF1
aGFuQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRh
Lmt1bGthcm5pQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pY2xfZHNpLmMgICB8IDE3ICsrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNpLmggfCAgMyArKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMCBp
bnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pY2xfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+IGlu
ZGV4IDVkZDllZWJhYjZiMS4uODc3NzQ2NDE2ZTUyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pY2xfZHNpLmMKPiBAQCAtNzMsNiArNzMsMjMgQEAgc3RhdGljIGVudW0gdHJhbnNj
b2RlciBkc2lfcG9ydF90b190cmFuc2NvZGVyKGVudW0gcG9ydCBwb3J0KQo+ICAJCXJldHVybiBU
UkFOU0NPREVSX0RTSV8xOwo+ICB9Cj4gIAo+ICtzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZ2VuMTFf
ZHNpX2ZpbmRfY21kX21vZGVfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiArewo+
ICsJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmJhc2UuZGV2Owo+ICsJc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXI7Cj4gKwlzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2k7Cj4g
Kwo+ICsJZm9yX2VhY2hfZW5jb2Rlcl9vbl9jcnRjKGRldiwgJmNydGMtPmJhc2UsIGVuY29kZXIp
IHsKPiArCQlpZiAoZW5jb2Rlci0+dHlwZSAhPSBJTlRFTF9PVVRQVVRfRFNJKQo+ICsJCQljb250
aW51ZTsKPiArCQlpbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKCZlbmNvZGVyLT5iYXNlKTsK
PiArCQlpZiAoaW50ZWxfZHNpLT5vcGVyYXRpb25fbW9kZSA9PSBJTlRFTF9EU0lfQ09NTUFORF9N
T0RFKQo+ICsJCQlyZXR1cm4gZW5jb2RlcjsKPiArCX0KPiArCj4gKwlyZXR1cm4gTlVMTDsKPiAr
fQoKVGhpcyBtYXkgYmUgYSBiaXQgaGFyc2gsIGJ1dCBldmVyeXRoaW5nIHRoYXQgZmVlbHMgd3Jv
bmcgYWJvdXQgdGhlCmZvbGxvd2luZyBwYXRjaGVzIHByZXR0eSBtdWNoIGJvaWxzIGRvd24gdG8g
dGhpcyBmdW5jdGlvbi4gSXQgbWF5IGdldAp0aGUgam9iIGRvbmUsIGFuZCBJIGRvbid0IGhhdmUg
YSBiZXR0ZXIgc3VnZ2VzdGlvbiBvbiBob3cgdG8gYWNjb21wbGlzaAp0aGlzIHJpZ2h0IG5vdy4g
QnV0IGl0IHNlZW1zIGxpa2Ugd2Ugc2hvdWxkbid0IGhhdmUgdG8gZG8gYW55dGhpbmcgbGlrZQp0
aGlzLCBhbmQgbWFrZXMgeW91IGZlZWwgbGlrZSB0aGVyZSdzIHNvbWV0aGluZyB3cm9uZyB3aXRo
IHRoZSBkZXNpZ24uCgpJdCB3b3VsZCBiZSBncmVhdCB0byBiZSBhYmxlIHRvIGhhbmRsZSB0aGlz
IHVzaW5nIGNydGMgc3RhdGUsIGJ1dCBhbGFzCnRoZSB2YmxhbmsgZW5hYmxlIGhvb2sgb25seSBn
ZXRzIHBhc3NlZCBhIHN0cnVjdCBkcm1fY3J0YyAqLiAoUGF0Y2ggNwpjb3VsZCBlYXNpbHkgc3dp
dGNoIHRvIHVzaW5nIGNydGMgc3RhdGUsIGJ1dCBuZWVkIHRvIGFsc28gc29sdmUgcGF0Y2gKNS4p
CgpJJ2xsIGdldCBiYWNrIHRvIHlvdSBvbiB0aGlzIGxhdGVyLCBidXQgaW4gdGhlIG1lYW4gdGlt
ZSAtIFZpbGxlLCBkbyB5b3UKaGF2ZSBhbnkgaWRlYXM/CgoKQlIsCkphbmkuCgoKPiArCj4gIHN0
YXRpYyB2b2lkIHdhaXRfZm9yX2NtZHNfZGlzcGF0Y2hlZF90b19wYW5lbChzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlcikKPiAgewo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNpLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RzaS5oCj4gaW5kZXggYjE1YmU1ODE0NTk5Li4wNzFkYWQ3ZWUwNGEgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2kuaAo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNpLmgKPiBAQCAtMjAxLDYg
KzIwMSw5IEBAIHUzMiBieHRfZHNpX2dldF9wY2xrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAo+ICAJCSAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNvbmZpZyk7Cj4gIHZvaWQg
Ynh0X2RzaV9yZXNldF9jbG9ja3Moc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGVudW0g
cG9ydCBwb3J0KTsKPiAgCj4gKy8qIGljbF9kc2kuYyAqLwo+ICtzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZ2VuMTFfZHNpX2ZpbmRfY21kX21vZGVfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
Yyk7Cj4gKwo+ICAvKiBpbnRlbF9kc2lfdmJ0LmMgKi8KPiAgYm9vbCBpbnRlbF9kc2lfdmJ0X2lu
aXQoc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpLCB1MTYgcGFuZWxfaWQpOwo+ICB2b2lkIGlu
dGVsX2RzaV92YnRfZXhlY19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2ksCgot
LSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
