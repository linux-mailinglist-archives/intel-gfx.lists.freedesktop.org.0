Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E83AFE433
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 18:40:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4AC6E9EF;
	Fri, 15 Nov 2019 17:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC006E9EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 17:40:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 09:40:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,309,1569308400"; d="scan'208";a="288617046"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 15 Nov 2019 09:40:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Nov 2019 19:40:15 +0200
Date: Fri, 15 Nov 2019 19:40:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191115174015.GI1208@intel.com>
References: <20191108211353.22288-1-lucas.demarchi@intel.com>
 <20191108211353.22288-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108211353.22288-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/bios: do not discard address
 space
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

T24gRnJpLCBOb3YgMDgsIDIwMTkgYXQgMDE6MTM6NTNQTSAtMDgwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFdoZW4gd2UgbWFwIHRoZSBWQlQgdGhyb3VnaCBwY2lfbWFwX3JvbSgpIHdlIG1h
eSBub3QgYmUgYWxsb3dlZAo+IHRvIHNpbXBseSBkaXNjYXJkIHRoZSBhZGRyZXNzIHNwYWNlIGFu
ZCBnbyBvbiByZWFkaW5nIHRoZSBtZW1vcnkuCj4gVGhhdCBkb2Vzbid0IHdvcmsgb24gbXkgdGVz
dCBzeXN0ZW0sIGJ1dCBieSBkdW1waW5nIHRoZSByb20gdmlhCj4gc3lzZnMgSSBjYW4gY2FuIGdl
dCB0aGUgY29ycmVjdCB2YnQuIFNvIGNoYW5nZSBvdXIgZmluZF92YnQoKSB0byBkbwo+IHRoZSBz
YW1lIGFzIGRvbmUgYnkgcGNpX3JlYWRfcm9tKCksIGkuZS4gdXNlIG1lbWNweV9mcm9taW8oKS4K
PiAKPiB2MjogdGhlIGp1c3QgdGhlIG1pbmltYWwgY2hhbmdlcyBieSBub3QgYm90aGVyaW5nIHdp
dGggdGhlIHVuYWxpZ25lZCBpbwo+IHJlYWRzOiB0aGlzIGNhbiBiZSBkb25lIG9uIHRvcCAoZnJv
bSBWaWxsZSBhbmQgSmFuaSkKPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMgfCA1MSArKysrKysrKysrKysrKysrKy0tLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBpbmRleCBjNzk3ODFlMWNjYmYuLmMw
NzlmZWJhZTljOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jCj4gQEAgLTE4MTEsMjggKzE4MTEsNTIgQEAgYm9vbCBpbnRlbF9iaW9zX2lzX3ZhbGlkX3Zi
dChjb25zdCB2b2lkICpidWYsIHNpemVfdCBzaXplKQo+ICAJcmV0dXJuIHZidDsKPiAgfQo+ICAK
PiAtc3RhdGljIGNvbnN0IHN0cnVjdCB2YnRfaGVhZGVyICpmaW5kX3ZidCh2b2lkIF9faW9tZW0g
Km9wcm9tLCBzaXplX3Qgc2l6ZSkKPiArc3RhdGljIGNvbnN0IHN0cnVjdCB2YnRfaGVhZGVyICpj
b3B5X3ZidCh2b2lkIF9faW9tZW0gKm9wcm9tLCBzaXplX3Qgc2l6ZSkKPiAgewo+ICsJdm9pZCBf
X2lvbWVtICpwID0gTlVMTDsKPiArCXN0cnVjdCB2YnRfaGVhZGVyICp2YnQ7Cj4gKwl1MTYgdmJ0
X3NpemU7Cj4gIAlzaXplX3QgaTsKPiAgCj4gIAkvKiBTY291ciBtZW1vcnkgbG9va2luZyBmb3Ig
dGhlIFZCVCBzaWduYXR1cmUuICovCj4gIAlmb3IgKGkgPSAwOyBpICsgNCA8IHNpemU7IGkrKykg
ewo+IC0JCXZvaWQgKnZidDsKPiAtCj4gIAkJaWYgKGlvcmVhZDMyKG9wcm9tICsgaSkgIT0gKigo
Y29uc3QgdTMyICopIiRWQlQiKSkKPiAgCQkJY29udGludWU7Cj4gIAo+IC0JCS8qCj4gLQkJICog
VGhpcyBpcyB0aGUgb25lIHBsYWNlIHdoZXJlIHdlIGV4cGxpY2l0bHkgZGlzY2FyZCB0aGUgYWRk
cmVzcwo+IC0JCSAqIHNwYWNlIChfX2lvbWVtKSBvZiB0aGUgQklPUy9WQlQuCj4gLQkJICovCj4g
LQkJdmJ0ID0gKHZvaWQgX19mb3JjZSAqKW9wcm9tICsgaTsKPiAtCQlpZiAoaW50ZWxfYmlvc19p
c192YWxpZF92YnQodmJ0LCBzaXplIC0gaSkpCj4gLQkJCXJldHVybiB2YnQ7Cj4gLQo+ICsJCXAg
PSBvcHJvbSArIGk7Cj4gKwkJc2l6ZSAtPSBpOwo+ICAJCWJyZWFrOwo+ICAJfQo+ICAKPiArCWlm
ICghcCkKPiArCQlyZXR1cm4gTlVMTDsKPiArCj4gKwlpZiAoc2l6ZW9mKHN0cnVjdCB2YnRfaGVh
ZGVyKSA+IHNpemUpIHsKPiArCQlEUk1fREVCVUdfRFJJVkVSKCJWQlQgaGVhZGVyIGluY29tcGxl
dGVcbiIpOwo+ICsJCXJldHVybiBOVUxMOwo+ICsJfQo+ICsKPiArCXZidF9zaXplID0gaW9yZWFk
MTYocCArIG9mZnNldG9mKHN0cnVjdCB2YnRfaGVhZGVyLCB2YnRfc2l6ZSkpOwo+ICsJaWYgKHZi
dF9zaXplID4gc2l6ZSkgewo+ICsJCURSTV9ERUJVR19EUklWRVIoIlZCVCBpbmNvbXBsZXRlICh2
YnRfc2l6ZSBvdmVyZmxvd3MpXG4iKTsKPiArCQlyZXR1cm4gTlVMTDsKPiArCX0KPiArCj4gKwkv
KiBUaGUgcmVzdCB3aWxsIGJlIHZhbGlkYXRlZCBieSBpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidCgp
ICovCj4gKwl2YnQgPSBrbWFsbG9jKHZidF9zaXplLCBHRlBfS0VSTkVMKTsKPiArCWlmICghdmJ0
KQo+ICsJCXJldHVybiBOVUxMOwo+ICsKPiArCW1lbWNweV9mcm9taW8odmJ0LCBwLCB2YnRfc2l6
ZSk7Cj4gKwo+ICsJaWYgKCFpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidCh2YnQsIHZidF9zaXplKSkK
PiArCQlnb3RvIGVycl9mcmVlX3ZidDsKPiArCj4gKwlyZXR1cm4gdmJ0Owo+ICsKPiArZXJyX2Zy
ZWVfdmJ0Ogo+ICsJa2ZyZWUodmJ0KTsKPiArCj4gIAlyZXR1cm4gTlVMTDsKPiAgfQo+ICAKPiBA
QCAtMTg2Niw3ICsxODkwLDcgQEAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJCWlmICghb3Byb20pCj4gIAkJCWdvdG8gb3V0Owo+ICAK
PiAtCQl2YnQgPSBmaW5kX3ZidChvcHJvbSwgc2l6ZSk7Cj4gKwkJdmJ0ID0gY29weV92YnQob3By
b20sIHNpemUpOwo+ICAJCWlmICghdmJ0KQo+ICAJCQlnb3RvIG91dDsKPiAgCj4gQEAgLTE5MDIs
NiArMTkyNiw5IEBAIHZvaWQgaW50ZWxfYmlvc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiAgCj4gIAlpZiAob3Byb20pCj4gIAkJcGNpX3VubWFwX3JvbShwZGV2LCBv
cHJvbSk7CgpsZ3RtClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgoKQXMgYSBmb2xsb3d1cCB3ZSBjb3VsZCBub3cgbW92ZSB0aGUgcm9t
IG1hcC91bmFtcCBpbnRvIGNvcHlfdmJ0KCkgYXMKdGhlcmUncyBubyBsb25nZXIgYW55IG5lZWQg
dG8ga2VlcCBpdCBtYXBwZWQgYWNyb3NzIHRoZSB3aG9sZSB0aGluZy4KCj4gKwo+ICsJaWYgKHZi
dCAhPSBkZXZfcHJpdi0+b3ByZWdpb24udmJ0KQo+ICsJCWtmcmVlKHZidCk7Cj4gIH0KPiAgCj4g
IC8qKgo+IC0tIAo+IDIuMjQuMAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
