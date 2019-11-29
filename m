Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5DA10D298
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 09:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F966E0C1;
	Fri, 29 Nov 2019 08:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF5836E02F
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 08:48:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 00:48:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,256,1571727600"; d="scan'208";a="384027372"
Received: from rosenbaf-mobl1.ger.corp.intel.com (HELO [10.252.49.190])
 ([10.252.49.190])
 by orsmga005.jf.intel.com with ESMTP; 29 Nov 2019 00:48:46 -0800
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
 <20191127201222.16669-15-ville.syrjala@linux.intel.com>
 <a716a48f-24bb-0893-84a2-a1a8593ff1f0@linux.intel.com>
 <20191128155928.GT1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <b871124d-4232-e191-c51e-d15ee03fd65c@linux.intel.com>
Date: Fri, 29 Nov 2019 09:48:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191128155928.GT1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 14/14] drm/i915/fbc: Reallocate cfb if we
 need more of it
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>, intel-gfx@lists.freedesktop.org,
 Paulo Zanoni <paulo.r.zanoni@intel.com>, Daniel Drake <drake@endlessm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjgtMTEtMjAxOSBvbSAxNjo1OSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBUaHUs
IE5vdiAyOCwgMjAxOSBhdCAwNDo0ODowNFBNICswMTAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gT3AgMjctMTEtMjAxOSBvbSAyMToxMiBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4+PiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Pj4K
Pj4+IFRoZSBjb2RlIGFzc3VtZXMgd2UgY2FuIG9taXQgdGhlIGNmYiBhbGxvY2F0aW9uIG9uY2Ug
ZmJjCj4+PiBoYXMgYmVlbiBlbmFibGVkIG9uY2UuIFRoYXQncyBub25zZW5zZS4gTGV0J3MgdHJ5
IHRvCj4+PiByZWFsbG9jYXRlIGl0IGlmIHdlIG5lZWQgdG8uCj4+Pgo+Pj4gVGhlIGNvZGUgaXMg
c3RpbGwgYSBtZXNzLCBidXQgbWF5YmUgdGhpcyBpcyBlbm91Z2ggdG8gZ2V0Cj4+PiBmYmMgZ29p
bmcgaW4gc29tZSBjYXNlcyB3aGVyZSBpdCBpbml0aWFsbHkgdW5kZXJhbGxvY2F0ZXMKPj4+IHRo
ZSBjZmIgYW5kIHRoZXJlJ3Mgbm8gZnVsbCBtb2Rlc2V0IHRvIGZpeCBpdCB1cC4KPj4+Cj4+PiBD
YzogRGFuaWVsIERyYWtlIDxkcmFrZUBlbmRsZXNzbS5jb20+Cj4+PiBDYzogUGF1bG8gWmFub25p
IDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+Cj4+PiBDYzogSmlhbi1Ib25nIFBhbiA8amlhbi1o
b25nQGVuZGxlc3NtLmNvbT4KPj4+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAyMiArKysrKysrKysrKysrKystLS0tLS0t
Cj4+PiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4+
Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4+PiBpbmRleCBj
OTc2Njk4YjA3MjkuLjkyODA1OWE1ZGE4MCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPj4+IEBAIC02NzIsNiArNjcyLDE0IEBAIHN0YXRpYyB2b2lk
IGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4+
PiAgCQljYWNoZS0+ZmVuY2VfaWQgPSAtMTsKPj4+ICB9Cj4+PiAgCj4+PiArc3RhdGljIGJvb2wg
aW50ZWxfZmJjX2NmYl9zaXplX2NoYW5nZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQo+Pj4gK3sKPj4+ICsJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5mYmM7
Cj4+PiArCj4+PiArCXJldHVybiBpbnRlbF9mYmNfY2FsY3VsYXRlX2NmYl9zaXplKGRldl9wcml2
LCAmZmJjLT5zdGF0ZV9jYWNoZSkgPgo+Pj4gKwkJZmJjLT5jb21wcmVzc2VkX2ZiLnNpemUgKiBm
YmMtPnRocmVzaG9sZDsKPj4+ICt9Cj4+PiArCj4+PiAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nh
bl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPj4+ICB7Cj4+PiAgCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+Pj4g
QEAgLTc1Nyw4ICs3NjUsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+Pj4gIAkgKiB3ZSBkaWRuJ3QgZ2V0IGFueSBpbnZhbGlk
YXRlL2RlYWN0aXZhdGUgY2FsbHMsIGJ1dCB0aGlzIHdvdWxkIHJlcXVpcmUKPj4+ICAJICogYSBs
b3Qgb2YgdHJhY2tpbmcganVzdCBmb3IgYSBzcGVjaWZpYyBjYXNlLiBJZiB3ZSBjb25jbHVkZSBp
dCdzIGFuCj4+PiAgCSAqIGltcG9ydGFudCBjYXNlLCB3ZSBjYW4gaW1wbGVtZW50IGl0IGxhdGVy
LiAqLwo+Pj4gLQlpZiAoaW50ZWxfZmJjX2NhbGN1bGF0ZV9jZmJfc2l6ZShkZXZfcHJpdiwgJmZi
Yy0+c3RhdGVfY2FjaGUpID4KPj4+IC0JICAgIGZiYy0+Y29tcHJlc3NlZF9mYi5zaXplICogZmJj
LT50aHJlc2hvbGQpIHsKPj4+ICsJaWYgKGludGVsX2ZiY19jZmJfc2l6ZV9jaGFuZ2VkKGRldl9w
cml2KSkgewo+Pj4gIAkJZmJjLT5ub19mYmNfcmVhc29uID0gIkNGQiByZXF1aXJlbWVudHMgY2hh
bmdlZCI7Cj4+PiAgCQlyZXR1cm4gZmFsc2U7Cj4+PiAgCX0KPj4+IEBAIC0xMTEyLDEyICsxMTE5
LDEyIEBAIHZvaWQgaW50ZWxfZmJjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPj4+
ICAJbXV0ZXhfbG9jaygmZmJjLT5sb2NrKTsKPj4+ICAKPj4+ICAJaWYgKGZiYy0+Y3J0Yykgewo+
Pj4gLQkJV0FSTl9PTihmYmMtPmNydGMgPT0gY3J0YyAmJiAhY3J0Y19zdGF0ZS0+ZW5hYmxlX2Zi
Yyk7Cj4+PiAtCQlnb3RvIG91dDsKPj4+IC0JfQo+Pj4gKwkJaWYgKGZiYy0+Y3J0YyAhPSBjcnRj
IHx8Cj4+PiArCQkgICAgIWludGVsX2ZiY19jZmJfc2l6ZV9jaGFuZ2VkKGRldl9wcml2KSkKPj4+
ICsJCQlnb3RvIG91dDsKPj4+ICAKPj4+IC0JaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfZmJjKQo+
Pj4gLQkJZ290byBvdXQ7Cj4+PiArCQlfX2ludGVsX2ZiY19kaXNhYmxlKGRldl9wcml2KTsKPj4+
ICsJfQo+Pj4gIAo+Pj4gIAlXQVJOX09OKGZiYy0+YWN0aXZlKTsKPj4+ICAKPj4+IEBAIC0xMTMw
LDYgKzExMzcsNyBAQCB2b2lkIGludGVsX2ZiY19lbmFibGUoc3RydWN0IGludGVsX2NydGMgKmNy
dGMsCj4+PiAgCWlmIChpbnRlbF9mYmNfYWxsb2NfY2ZiKGRldl9wcml2LAo+Pj4gIAkJCQlpbnRl
bF9mYmNfY2FsY3VsYXRlX2NmYl9zaXplKGRldl9wcml2LCBjYWNoZSksCj4+PiAgCQkJCWZiLT5m
b3JtYXQtPmNwcFswXSkpIHsKPj4+ICsJCWNhY2hlLT5wbGFuZS52aXNpYmxlID0gZmFsc2U7Cj4+
PiAgCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAibm90IGVub3VnaCBzdG9sZW4gbWVtb3J5IjsKPj4+
ICAJCWdvdG8gb3V0Owo+Pj4gIAl9Cj4+IE1ha2VzIHNlbnNlLCB1bmZvcnR1bmF0ZWx5IGttc19j
dXJzb3JfbGVnYWN5IHN0YXJ0cyBmYWlsaW5nIG9uIHRoaXMgc2VyaWVzLiA6KAo+Pgo+PiBGb3Ig
MS0xMSwgMTQKPj4KPj4gUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+Cj4+IFdlIHNob3VsZCBwcm9iYWJseSBnZXQgcmlk
IG9mIHRoZSBGQkMgZGlzYWJsZSBvbiBmcm9udGJ1ZmZlciBkaXNhYmxlIGFzIHdlbGwuIEkgaGFk
IHNvbWUgcGF0Y2hlcyBidXQgbm90aGluZyB1cHN0cmVhbS13b3J0aHkgeWV0LiA6KAo+IEhvdyB3
b3VsZCB3ZSBnZXQgcmlkIG9mIHRoZSBkaXNhYmxlIHRoZXJlPyBCeSB0cmlnZ2VyaW5nIG51a2Vz
IGF0IHNvbWUKPiBwcmVkZWZpbmVkIGludGVydmFsPyBEb2Vzbid0IHNvdW5kIGFsbCB0aGF0IGdy
ZWF0LgpOb3QgdG91Y2hpbmcgRkJDIG9uIGZyb250YnVmZmVyIHdyaXRlIGF0IGFsbCwgYW5kIGZv
cmNpbmcgdXNlcnNwYWNlIHRvIHVzZSB0aGUgZGlydHlmYiBhcGkuIEkgdGhpbmsgdGhlIHdob2xl
IGltcGxpY2l0IHRyYWNraW5nIHNob3VsZCBiZSByZW1vdmVkLgo+Cj4+IDEywqAgYW5kIDEzIG5l
ZWQgbW9yZSB0aG91Z2h0IGZvciBub3csIGttc19jdXJzb3JfbGVnYWN5IGlzIGZhaWxpbmcuCj4g
QWxyZWFkeSBwb3N0ZWQgdGhlIHYyIHRoYXQgZml4ZXMgaXQuCj4KPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
