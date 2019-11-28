Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BC210CC4A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 16:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A876E0CB;
	Thu, 28 Nov 2019 15:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944626E0CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 15:59:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 07:59:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="240761885"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 28 Nov 2019 07:59:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Nov 2019 17:59:28 +0200
Date: Thu, 28 Nov 2019 17:59:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191128155928.GT1208@intel.com>
References: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
 <20191127201222.16669-15-ville.syrjala@linux.intel.com>
 <a716a48f-24bb-0893-84a2-a1a8593ff1f0@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a716a48f-24bb-0893-84a2-a1a8593ff1f0@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgMDQ6NDg6MDRQTSArMDEwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMjctMTEtMjAxOSBvbSAyMToxMiBzY2hyZWVmIFZpbGxlIFN5cmphbGE6
Cj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+ID4KPiA+IFRoZSBjb2RlIGFzc3VtZXMgd2UgY2FuIG9taXQgdGhlIGNmYiBhbGxvY2F0aW9u
IG9uY2UgZmJjCj4gPiBoYXMgYmVlbiBlbmFibGVkIG9uY2UuIFRoYXQncyBub25zZW5zZS4gTGV0
J3MgdHJ5IHRvCj4gPiByZWFsbG9jYXRlIGl0IGlmIHdlIG5lZWQgdG8uCj4gPgo+ID4gVGhlIGNv
ZGUgaXMgc3RpbGwgYSBtZXNzLCBidXQgbWF5YmUgdGhpcyBpcyBlbm91Z2ggdG8gZ2V0Cj4gPiBm
YmMgZ29pbmcgaW4gc29tZSBjYXNlcyB3aGVyZSBpdCBpbml0aWFsbHkgdW5kZXJhbGxvY2F0ZXMK
PiA+IHRoZSBjZmIgYW5kIHRoZXJlJ3Mgbm8gZnVsbCBtb2Rlc2V0IHRvIGZpeCBpdCB1cC4KPiA+
Cj4gPiBDYzogRGFuaWVsIERyYWtlIDxkcmFrZUBlbmRsZXNzbS5jb20+Cj4gPiBDYzogUGF1bG8g
WmFub25pIDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+Cj4gPiBDYzogSmlhbi1Ib25nIFBhbiA8
amlhbi1ob25nQGVuZGxlc3NtLmNvbT4KPiA+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAyMiArKysrKysrKysrKysrKyst
LS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gPiBp
bmRleCBjOTc2Njk4YjA3MjkuLjkyODA1OWE1ZGE4MCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiA+IEBAIC02NzIsNiArNjcyLDE0IEBAIHN0YXRp
YyB2b2lkIGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0IGludGVsX2NydGMgKmNy
dGMsCj4gPiAgCQljYWNoZS0+ZmVuY2VfaWQgPSAtMTsKPiA+ICB9Cj4gPiAgCj4gPiArc3RhdGlj
IGJvb2wgaW50ZWxfZmJjX2NmYl9zaXplX2NoYW5nZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQo+ID4gK3sKPiA+ICsJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2
LT5mYmM7Cj4gPiArCj4gPiArCXJldHVybiBpbnRlbF9mYmNfY2FsY3VsYXRlX2NmYl9zaXplKGRl
dl9wcml2LCAmZmJjLT5zdGF0ZV9jYWNoZSkgPgo+ID4gKwkJZmJjLT5jb21wcmVzc2VkX2ZiLnNp
emUgKiBmYmMtPnRocmVzaG9sZDsKPiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIGJvb2wgaW50ZWxf
ZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiA+ICB7Cj4gPiAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYp
Owo+ID4gQEAgLTc1Nyw4ICs3NjUsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2
YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ID4gIAkgKiB3ZSBkaWRuJ3QgZ2V0IGFueSBp
bnZhbGlkYXRlL2RlYWN0aXZhdGUgY2FsbHMsIGJ1dCB0aGlzIHdvdWxkIHJlcXVpcmUKPiA+ICAJ
ICogYSBsb3Qgb2YgdHJhY2tpbmcganVzdCBmb3IgYSBzcGVjaWZpYyBjYXNlLiBJZiB3ZSBjb25j
bHVkZSBpdCdzIGFuCj4gPiAgCSAqIGltcG9ydGFudCBjYXNlLCB3ZSBjYW4gaW1wbGVtZW50IGl0
IGxhdGVyLiAqLwo+ID4gLQlpZiAoaW50ZWxfZmJjX2NhbGN1bGF0ZV9jZmJfc2l6ZShkZXZfcHJp
diwgJmZiYy0+c3RhdGVfY2FjaGUpID4KPiA+IC0JICAgIGZiYy0+Y29tcHJlc3NlZF9mYi5zaXpl
ICogZmJjLT50aHJlc2hvbGQpIHsKPiA+ICsJaWYgKGludGVsX2ZiY19jZmJfc2l6ZV9jaGFuZ2Vk
KGRldl9wcml2KSkgewo+ID4gIAkJZmJjLT5ub19mYmNfcmVhc29uID0gIkNGQiByZXF1aXJlbWVu
dHMgY2hhbmdlZCI7Cj4gPiAgCQlyZXR1cm4gZmFsc2U7Cj4gPiAgCX0KPiA+IEBAIC0xMTEyLDEy
ICsxMTE5LDEyIEBAIHZvaWQgaW50ZWxfZmJjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YywKPiA+ICAJbXV0ZXhfbG9jaygmZmJjLT5sb2NrKTsKPiA+ICAKPiA+ICAJaWYgKGZiYy0+Y3J0
Yykgewo+ID4gLQkJV0FSTl9PTihmYmMtPmNydGMgPT0gY3J0YyAmJiAhY3J0Y19zdGF0ZS0+ZW5h
YmxlX2ZiYyk7Cj4gPiAtCQlnb3RvIG91dDsKPiA+IC0JfQo+ID4gKwkJaWYgKGZiYy0+Y3J0YyAh
PSBjcnRjIHx8Cj4gPiArCQkgICAgIWludGVsX2ZiY19jZmJfc2l6ZV9jaGFuZ2VkKGRldl9wcml2
KSkKPiA+ICsJCQlnb3RvIG91dDsKPiA+ICAKPiA+IC0JaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVf
ZmJjKQo+ID4gLQkJZ290byBvdXQ7Cj4gPiArCQlfX2ludGVsX2ZiY19kaXNhYmxlKGRldl9wcml2
KTsKPiA+ICsJfQo+ID4gIAo+ID4gIAlXQVJOX09OKGZiYy0+YWN0aXZlKTsKPiA+ICAKPiA+IEBA
IC0xMTMwLDYgKzExMzcsNyBAQCB2b2lkIGludGVsX2ZiY19lbmFibGUoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMsCj4gPiAgCWlmIChpbnRlbF9mYmNfYWxsb2NfY2ZiKGRldl9wcml2LAo+ID4gIAkJ
CQlpbnRlbF9mYmNfY2FsY3VsYXRlX2NmYl9zaXplKGRldl9wcml2LCBjYWNoZSksCj4gPiAgCQkJ
CWZiLT5mb3JtYXQtPmNwcFswXSkpIHsKPiA+ICsJCWNhY2hlLT5wbGFuZS52aXNpYmxlID0gZmFs
c2U7Cj4gPiAgCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAibm90IGVub3VnaCBzdG9sZW4gbWVtb3J5
IjsKPiA+ICAJCWdvdG8gb3V0Owo+ID4gIAl9Cj4gCj4gTWFrZXMgc2Vuc2UsIHVuZm9ydHVuYXRl
bHkga21zX2N1cnNvcl9sZWdhY3kgc3RhcnRzIGZhaWxpbmcgb24gdGhpcyBzZXJpZXMuIDooCj4g
Cj4gRm9yIDEtMTEsIDE0Cj4gCj4gUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gCj4gV2Ugc2hvdWxkIHByb2JhYmx5IGdl
dCByaWQgb2YgdGhlIEZCQyBkaXNhYmxlIG9uIGZyb250YnVmZmVyIGRpc2FibGUgYXMgd2VsbC4g
SSBoYWQgc29tZSBwYXRjaGVzIGJ1dCBub3RoaW5nIHVwc3RyZWFtLXdvcnRoeSB5ZXQuIDooCgpI
b3cgd291bGQgd2UgZ2V0IHJpZCBvZiB0aGUgZGlzYWJsZSB0aGVyZT8gQnkgdHJpZ2dlcmluZyBu
dWtlcyBhdCBzb21lCnByZWRlZmluZWQgaW50ZXJ2YWw/IERvZXNuJ3Qgc291bmQgYWxsIHRoYXQg
Z3JlYXQuCgo+IAo+IDEywqAgYW5kIDEzIG5lZWQgbW9yZSB0aG91Z2h0IGZvciBub3csIGttc19j
dXJzb3JfbGVnYWN5IGlzIGZhaWxpbmcuCgpBbHJlYWR5IHBvc3RlZCB0aGUgdjIgdGhhdCBmaXhl
cyBpdC4KCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
