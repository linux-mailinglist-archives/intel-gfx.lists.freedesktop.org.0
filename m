Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A432FC5E9
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 13:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D7D6E1EE;
	Thu, 14 Nov 2019 12:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBAB26E1EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 12:08:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 04:08:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="235644083"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 14 Nov 2019 04:08:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Nov 2019 14:08:14 +0200
Date: Thu, 14 Nov 2019 14:08:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191114120814.GX1208@intel.com>
References: <20191113180633.3947-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113180633.3947-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Restore physical addresses
 for fb_mmap()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMTMsIDIwMTkgYXQgMDY6MDY6MzNQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IGZiZGV2IHVzZXMgdGhlIHBoeXNpY2FsIGFkZHJlc3Mgb2Ygb3VyIGZyYW1lYnVmZmVy
IGZvciBpdHMgZmJfbW1hcCgpCj4gcm91dGluZS4gV2hpbGUgd2UgbmVlZCB0byBhZGFwdCB0aGlz
IGFkZHJlc3MgZm9yIHRoZSBuZXcgaW8gQkFSLCB3ZSBoYXZlCj4gdG8gZml4IHY1LjQgZmlyc3Qh
IFRoZSBzaW1wbGVzdCBmaXggaXMgdG8gcmVzdG9yZSB0aGUgc21lbSBiYWNrIHRvIHY1LjQKPiBh
bmQgd2Ugd2lsbCB0aGVuIHByb2JhYmx5IGhhdmUgdG8gaW1wbGVtZW50IG91ciBmYm9wcy0+ZmJf
bW1hcCgpIGNhbGwKPiBiYWNrIHRvIGhhbmRsZSBsb2NhbCBtZW1vcnkuCj4gCj4gQnVnemlsbGE6
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjI1Ngo+IEZp
eGVzOiA1Zjg4OWI5YTYxZGQgKCJkcm0vaTkxNTogRGlzcmVnYXJkIGRybV9tb2RlX2NvbmZpZy5m
Yl9iYXNlIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBD
YzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4K
ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5j
IHwgOSArKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmRldi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5j
Cj4gaW5kZXggM2QxMDYxNDcwZTc2Li40OGM5NjBjYTEyZmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jCj4gQEAgLTIzNCw2ICsyMzQsMTEgQEAgc3Rh
dGljIGludCBpbnRlbGZiX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqaGVscGVyLAo+ICAJ
aW5mby0+YXBlcnR1cmVzLT5yYW5nZXNbMF0uYmFzZSA9IGdndHQtPmdtYWRyLnN0YXJ0Owo+ICAJ
aW5mby0+YXBlcnR1cmVzLT5yYW5nZXNbMF0uc2l6ZSA9IGdndHQtPm1hcHBhYmxlX2VuZDsKPiAg
Cj4gKwkvKiBPdXIgZnJhbWVidWZmZXIgaXMgdGhlIGVudGlyZXR5IG9mIGZiZGV2J3Mgc3lzdGVt
IG1lbW9yeSAqLwo+ICsJaW5mby0+Zml4LnNtZW1fc3RhcnQgPQo+ICsJCSh1bnNpZ25lZCBsb25n
KShnZ3R0LT5nbWFkci5zdGFydCArIHZtYS0+bm9kZS5zdGFydCk7Cj4gKwlpbmZvLT5maXguc21l
bV9sZW4gPSB2bWEtPm5vZGUuc2l6ZTsKPiArCj4gIAl2YWRkciA9IGk5MTVfdm1hX3Bpbl9pb21h
cCh2bWEpOwo+ICAJaWYgKElTX0VSUih2YWRkcikpIHsKPiAgCQlEUk1fRVJST1IoIkZhaWxlZCB0
byByZW1hcCBmcmFtZWJ1ZmZlciBpbnRvIHZpcnR1YWwgbWVtb3J5XG4iKTsKPiBAQCAtMjQzLDEw
ICsyNDgsNiBAQCBzdGF0aWMgaW50IGludGVsZmJfY3JlYXRlKHN0cnVjdCBkcm1fZmJfaGVscGVy
ICpoZWxwZXIsCj4gIAlpbmZvLT5zY3JlZW5fYmFzZSA9IHZhZGRyOwo+ICAJaW5mby0+c2NyZWVu
X3NpemUgPSB2bWEtPm5vZGUuc2l6ZTsKPiAgCj4gLQkvKiBPdXIgZnJhbWVidWZmZXIgaXMgdGhl
IGVudGlyZXR5IG9mIGZiZGV2J3Mgc3lzdGVtIG1lbW9yeSAqLwo+IC0JaW5mby0+Zml4LnNtZW1f
c3RhcnQgPSAodW5zaWduZWQgbG9uZylpbmZvLT5zY3JlZW5fYmFzZTsKPiAtCWluZm8tPmZpeC5z
bWVtX2xlbiA9IGluZm8tPnNjcmVlbl9zaXplOwo+IC0KPiAgCWRybV9mYl9oZWxwZXJfZmlsbF9p
bmZvKGluZm8sICZpZmJkZXYtPmhlbHBlciwgc2l6ZXMpOwo+ICAKPiAgCS8qIElmIHRoZSBvYmpl
Y3QgaXMgc2htZW1mcyBiYWNrZWQsIGl0IHdpbGwgaGF2ZSBnaXZlbiB1cyB6ZXJvZWQgcGFnZXMu
Cj4gLS0gCj4gMi4yNC4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
