Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E77C1FFD9D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 05:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4D7589F24;
	Mon, 18 Nov 2019 04:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E1DE89F24
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 04:55:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Nov 2019 20:55:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,319,1569308400"; d="scan'208";a="199839742"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga008.jf.intel.com with ESMTP; 17 Nov 2019 20:55:39 -0800
Date: Sun, 17 Nov 2019 20:58:45 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20191118045845.GC1135@intel.com>
References: <20191115152549.23047-1-animesh.manna@intel.com>
 <20191115152549.23047-5-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115152549.23047-5-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915/dp: Notify testapp using uevent
 and debugfs entry
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMDg6NTU6NDZQTSArMDUzMCwgQW5pbWVzaCBNYW5uYSB3
cm90ZToKPiBUbyBhbGlnbiB3aXRoIGxpbmsgY29tcGxpYW5jZSBkZXNpZ24gZXhpc3RpbmcgaW50
ZWxfZHBfY29tcGxpYW5jZQo+IHRvb2wgd2lsbCBiZSB1c2VkIHRvIGdldCB0aGUgcGh5IHJlcXVl
c3QgaW4gdXNlcnNwYWNlIHRocm91Z2ggdWV2ZW50Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuaW1l
c2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgoKSSB3b3VsZCBwcmVmZXIgc3BsaXR0
aW5nIHRoaXMgcGF0Y2ggc2luY2Ugc2VuZGluZyBhIHVldmVudCBpcyBtb3JlIHJlbGF0ZWQKdG8g
dGhlIFBIWSB0ZXN0IHByZXAgaGFuZGxpbmcgYW5kIGRlYnVnZnMgaGFuZGxpbmcgY2FuIGFsbCBi
ZSBpbiBhIHNlcGFyYXRlCnBhdGNoLgpJIHByZWZlciB0aGlzIGJlY2F1c2UgZGVidWdmcyBub2Rl
cyBtaWdodCBuZWVkIHRvIGNoYW5nZSBpbiB0aGUgZnV0dXJlIGJhc2VkCm9uIG1vcmUgcmVxdWly
ZW1lbnRzIG9yIHRlc3RpbmcgZmVlZGJhY2sgc28gaXRzIGJldHRlciBmb3IgdGhhdCB0byBiZSBp
biBzZXBhcmF0ZQpwYXRjaC4KCnlvdSBjb3VsZCBhZGQgdGhlIGhvdHBsdWcgZXZlbnQgc2VuZGlu
ZyBwYXJ0IHRvIHRoZSBwcmVwIHBhdGNoICgzLzcpIGFuZCBtZW50aW9uIHRoYXQKaW4gdGhlIGNv
bW1pdCBtZXNzYWdlCgpEZWJ1Z2ZzIHBhcnQgbG9va3MgZ29vZCB0byBtZS4gSGF2ZSB5b3UgdGVz
dGVkIHRoZSBkZWJ1Z2ZzIG5vZGVzIGFuZCB2YWxpZGF0ZWQgaWYgdGhpcwppbmZvcm1hdGlvbiBp
cyBiZWluZyB3cml0dGVuIGluIHRoZSBjb3JyZWN0IGZvcm0/CgpBZnRlciB0aGUgc3BsaXQgYW5k
IHZhbGlkYXRpb24gb2YgZGVidWdzIG5vZGVzOgoKQWNrZWQtYnk6IE1hbmFzaSBOYXZhcmUgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+CgpNYW5hc2kKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8ICA2ICsrKystLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgfCAxMCArKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gaW5kZXggMzM4ZDM3NDRjNWQ1Li5hMmI4NjBjZjNiOTMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTUyODgs
OCArNTI4OCwxMCBAQCBpbnRlbF9kcF9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQo+ICAKPiAgCWludGVsX3Bzcl9zaG9ydF9wdWxzZShpbnRlbF9kcCk7Cj4gIAo+IC0JaWYg
KGludGVsX2RwLT5jb21wbGlhbmNlLnRlc3RfdHlwZSA9PSBEUF9URVNUX0xJTktfVFJBSU5JTkcp
IHsKPiAtCQlEUk1fREVCVUdfS01TKCJMaW5rIFRyYWluaW5nIENvbXBsaWFuY2UgVGVzdCByZXF1
ZXN0ZWRcbiIpOwo+ICsJaWYgKGludGVsX2RwLT5jb21wbGlhbmNlLnRlc3RfdHlwZSA9PSBEUF9U
RVNUX0xJTktfVFJBSU5JTkcgfHwKPiArCSAgICBpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X3R5
cGUgPT0KPiArCSAgICBEUF9URVNUX0xJTktfUEhZX1RFU1RfUEFUVEVSTikgewo+ICsJCURSTV9E
RUJVR19LTVMoIkNvbXBsaWFuY2UgVGVzdCByZXF1ZXN0ZWRcbiIpOwo+ICAJCS8qIFNlbmQgYSBI
b3RwbHVnIFVldmVudCB0byB1c2Vyc3BhY2UgdG8gc3RhcnQgbW9kZXNldCAqLwo+ICAJCWRybV9r
bXNfaGVscGVyX2hvdHBsdWdfZXZlbnQoJmRldl9wcml2LT5kcm0pOwo+ICAJfQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gaW5kZXggY2FiNjMyNzkxZjczLi5lOGIxYThjMTAxNWEg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IEBAIC0zMjEyLDYgKzMyMTIs
MTYgQEAgc3RhdGljIGludCBpOTE1X2Rpc3BsYXlwb3J0X3Rlc3RfZGF0YV9zaG93KHN0cnVjdCBz
ZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPiAgCQkJCQkgICBpbnRlbF9kcC0+Y29tcGxpYW5jZS50
ZXN0X2RhdGEudmRpc3BsYXkpOwo+ICAJCQkJc2VxX3ByaW50ZihtLCAiYnBjOiAldVxuIiwKPiAg
CQkJCQkgICBpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X2RhdGEuYnBjKTsKPiArCQkJfSBlbHNl
IGlmIChpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X3R5cGUgPT0KPiArCQkJCSAgIERQX1RFU1Rf
TElOS19QSFlfVEVTVF9QQVRURVJOKSB7Cj4gKwkJCQlzZXFfcHJpbnRmKG0sICJwYXR0ZXJuOiAl
ZFxuIiwKPiArCQkJCQkgICBpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X2RhdGEucGh5dGVzdC5w
aHlfcGF0dGVybik7Cj4gKwkJCQlzZXFfcHJpbnRmKG0sICJOdW1iZXIgb2YgbGFuZXM6ICVkXG4i
LAo+ICsJCQkJCSAgIGludGVsX2RwLT5jb21wbGlhbmNlLnRlc3RfZGF0YS5waHl0ZXN0Lm51bV9s
YW5lcyk7Cj4gKwkJCQlzZXFfcHJpbnRmKG0sICJMaW5rIFJhdGU6ICVkXG4iLAo+ICsJCQkJCSAg
IGludGVsX2RwLT5jb21wbGlhbmNlLnRlc3RfZGF0YS5waHl0ZXN0LmxpbmtfcmF0ZSk7Cj4gKwkJ
CQlzZXFfcHJpbnRmKG0sICJsZXZlbDogJTAyeFxuIiwKPiArCQkJCQkgICBpbnRlbF9kcC0+dHJh
aW5fc2V0WzBdKTsKPiAgCQkJfQo+ICAJCX0gZWxzZQo+ICAJCQlzZXFfcHV0cyhtLCAiMCIpOwo+
IC0tIAo+IDIuMjIuMAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
