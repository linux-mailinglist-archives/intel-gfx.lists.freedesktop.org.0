Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D03EF8553F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 23:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D736E49C;
	Wed,  7 Aug 2019 21:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEED16E49C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 21:38:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 14:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="374619765"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by fmsmga006.fm.intel.com with ESMTP; 07 Aug 2019 14:38:19 -0700
Date: Wed, 7 Aug 2019 17:54:28 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Stuart Summers <stuart.summers@intel.com>
Message-ID: <20190807215427.GE3842@intel.com>
References: <20190807205556.40435-1-stuart.summers@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807205556.40435-1-stuart.summers@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add MOCS state dump to debugfs
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

T24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDE6NTU6NTVQTSAtMDcwMCwgU3R1YXJ0IFN1bW1lcnMg
d3JvdGU6Cj4gVXNlciBhcHBsaWNhdGlvbnMgbWlnaHQgbmVlZCB0byB2ZXJpZnkgaGFyZHdhcmUg
Y29uZmlndXJhdGlvbgo+IG9mIHRoZSBNT0NTIGVudHJpZXMuIFRvIGZhY2lsaXRhdGUgdGhpcyBk
ZWJ1ZywgYWRkIGEgbmV3IGRlYnVnZnMKPiBlbnRyeSB0byBhbGxvdyBhIGR1bXAgb2YgdGhlIE1P
Q1Mgc3RhdGUgdG8gdmVyaWZ5IGV4cGVjdGVkIHZhbHVlcwo+IGFyZSBzZXQgYnkgaTkxNS4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29t
PgoKQWNrZWQtYnk6IFByYXRoYXAgS3VtYXIgVmFsc2FuIDxwcmF0aGFwLmt1bWFyLnZhbHNhbkBp
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyB8
IDUwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbW9jcy5oIHwgIDMgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMgIHwgMTIgKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDY1IGluc2VydGlvbnMoKykK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj4gaW5kZXggNzI4NzA0YmJiZTE4
Li5mZWE4ZWYyZmQyYWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbW9jcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj4g
QEAgLTYyNSw2ICs2MjUsNTYgQEAgaW50IGludGVsX21vY3NfZW1pdChzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZAo+ICtpbnRlbF9t
b2NzX2R1bXBfbDNjY190YWJsZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBzdHJ1Y3QgZHJtX3ByaW50
ZXIgKnApCj4gK3sKPiArCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7
Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSB0YWJsZTsKPiArCXVuc2lnbmVkIGludCBp
Owo+ICsKPiArCWlmICghZ2V0X21vY3Nfc2V0dGluZ3MoZ3QsICZ0YWJsZSkpCj4gKwkJcmV0dXJu
Owo+ICsKPiArCWRybV9wcmludGYocCwgImwzY2M6XG4iKTsKPiArCj4gKwlmb3IgKGkgPSAwOyBp
IDwgdGFibGUubl9lbnRyaWVzIC8gMjsgaSsrKSB7Cj4gKwkJdTMyIHJlZyA9IGludGVsX3VuY29y
ZV9yZWFkKHVuY29yZSwgR0VOOV9MTkNGQ01PQ1MoaSkpOwo+ICsKPiArCQlkcm1fcHJpbnRmKHAs
ICIgIE1PQ1NbJWRdOiAweCV4XG4iLCBpICogMiwgcmVnICYgMHhmZmZmKTsKPiArCQlkcm1fcHJp
bnRmKHAsICIgIE1PQ1NbJWRdOiAweCV4XG4iLCBpICogMiArIDEsIHJlZyA+PiAxNik7Cj4gKwl9
Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkCj4gK2ludGVsX21vY3NfZHVtcF9nbG9iYWwoc3RydWN0
IGludGVsX2d0ICpndCwgc3RydWN0IGRybV9wcmludGVyICpwKQo+ICt7Cj4gKwlzdHJ1Y3QgaW50
ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwo+ICsJc3RydWN0IGRybV9pOTE1X21vY3Nf
dGFibGUgdGFibGU7Cj4gKwl1bnNpZ25lZCBpbnQgaTsKPiArCj4gKwlHRU1fQlVHX09OKCFIQVNf
R0xPQkFMX01PQ1NfUkVHSVNURVJTKGd0LT5pOTE1KSk7Cj4gKwo+ICsJaWYgKCFnZXRfbW9jc19z
ZXR0aW5ncyhndCwgJnRhYmxlKSkKPiArCQlyZXR1cm47Cj4gKwo+ICsJaWYgKEdFTV9ERUJVR19X
QVJOX09OKHRhYmxlLnNpemUgPiB0YWJsZS5uX2VudHJpZXMpKQo+ICsJCXJldHVybjsKPiArCj4g
Kwlkcm1fcHJpbnRmKHAsICJnbG9iYWw6XG4iKTsKPiArCj4gKwlmb3IgKGkgPSAwOyBpIDwgdGFi
bGUubl9lbnRyaWVzOyBpKyspCj4gKwkJZHJtX3ByaW50ZihwLCAiICBNT0NTWyVkXTogMHgleFxu
IiwKPiArCQkJICAgaSwgaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU4xMl9HTE9CQUxfTU9D
UyhpKSkpOwo+ICt9Cj4gKwo+ICt2b2lkIGludGVsX21vY3Nfc2hvd19pbmZvKHN0cnVjdCBpbnRl
bF9ndCAqZ3QsIHN0cnVjdCBkcm1fcHJpbnRlciAqcCkKPiArewo+ICsJaW50ZWxfbW9jc19kdW1w
X2wzY2NfdGFibGUoZ3QsIHApOwo+ICsKPiArCWlmIChIQVNfR0xPQkFMX01PQ1NfUkVHSVNURVJT
KGd0LT5pOTE1KSkKPiArCQlpbnRlbF9tb2NzX2R1bXBfZ2xvYmFsKGd0LCBwKTsKPiArfQo+ICsK
PiAgdm9pZCBpbnRlbF9tb2NzX2luaXQoc3RydWN0IGludGVsX2d0ICpndCkKPiAgewo+ICAJaW50
ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoZ3QpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9tb2NzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9t
b2NzLmgKPiBpbmRleCAyYWU4MTZiN2NhMTkuLjBlZjk1Y2U4MThkMyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgKPiBAQCAtMjQsNiArMjQsOCBAQAo+ICAjaWZuZGVmIElO
VEVMX01PQ1NfSAo+ICAjZGVmaW5lIElOVEVMX01PQ1NfSAo+ICAKPiArI2luY2x1ZGUgPGRybS9k
cm1fcHJpbnQuaD4KPiArCj4gIC8qKgo+ICAgKiBET0M6IE1lbW9yeSBPYmplY3RzIENvbnRyb2wg
U3RhdGUgKE1PQ1MpCj4gICAqCj4gQEAgLTU1LDYgKzU3LDcgQEAgc3RydWN0IGludGVsX2d0Owo+
ICAKPiAgdm9pZCBpbnRlbF9tb2NzX2luaXQoc3RydWN0IGludGVsX2d0ICpndCk7Cj4gIHZvaWQg
aW50ZWxfbW9jc19pbml0X2VuZ2luZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwo+
ICt2b2lkIGludGVsX21vY3Nfc2hvd19pbmZvKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBk
cm1fcHJpbnRlciAqcCk7Cj4gIAo+ICBpbnQgaW50ZWxfbW9jc19lbWl0KHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxKTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBpbmRleCAz
YjE1MjY2YzU0ZmQuLjFhYTAyMmViMmMzZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jCj4gQEAgLTQxLDYgKzQxLDcgQEAKPiAgCj4gICNpbmNsdWRlICJnZW0vaTkxNV9nZW1f
Y29udGV4dC5oIgo+ICAjaW5jbHVkZSAiZ3QvaW50ZWxfcmVzZXQuaCIKPiArI2luY2x1ZGUgImd0
L2ludGVsX21vY3MuaCIKPiAgI2luY2x1ZGUgImd0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmgi
Cj4gIAo+ICAjaW5jbHVkZSAiaTkxNV9kZWJ1Z2ZzLmgiCj4gQEAgLTc2LDYgKzc3LDE2IEBAIHN0
YXRpYyBpbnQgaTkxNV9jYXBhYmlsaXRpZXMoc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRh
KQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgc2hvd19tb2NzX2luZm8oc3Ry
dWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRlKTsKPiArCXN0cnVjdCBkcm1fcHJp
bnRlciBwID0gZHJtX3NlcV9maWxlX3ByaW50ZXIobSk7Cj4gKwo+ICsJaW50ZWxfbW9jc19zaG93
X2luZm8oJmk5MTUtPmd0LCAmcCk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gIHN0YXRp
YyBjaGFyIGdldF9waW5fZmxhZyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ICB7
Cj4gIAlyZXR1cm4gb2JqLT5waW5fZ2xvYmFsID8gJ3AnIDogJyAnOwo+IEBAIC00MzUyLDYgKzQz
NjMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pbmZvX2xpc3QgaTkxNV9kZWJ1Z2ZzX2xp
c3RbXSA9IHsKPiAgCXsiaTkxNV9zc2V1X3N0YXR1cyIsIGk5MTVfc3NldV9zdGF0dXMsIDB9LAo+
ICAJeyJpOTE1X2RycnNfc3RhdHVzIiwgaTkxNV9kcnJzX3N0YXR1cywgMH0sCj4gIAl7Imk5MTVf
cnBzX2Jvb3N0X2luZm8iLCBpOTE1X3Jwc19ib29zdF9pbmZvLCAwfSwKPiArCXsiaTkxNV9tb2Nz
X2luZm8iLCBzaG93X21vY3NfaW5mbywgMH0sCj4gIH07Cj4gICNkZWZpbmUgSTkxNV9ERUJVR0ZT
X0VOVFJJRVMgQVJSQVlfU0laRShpOTE1X2RlYnVnZnNfbGlzdCkKPiAgCj4gLS0gCj4gMi4yMi4w
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJ
bnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
