Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6748CA825F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 14:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE3B89971;
	Wed,  4 Sep 2019 12:32:13 +0000 (UTC)
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C981E89971
 for <intel-gfx@freedesktop.org>; Wed,  4 Sep 2019 12:32:12 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 05:32:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="212377124"
Received: from dweineha-mobl4.fi.intel.com ([10.237.72.176])
 by fmsmga002.fm.intel.com with ESMTP; 04 Sep 2019 05:32:10 -0700
Date: Wed, 4 Sep 2019 15:32:06 +0300
From: David Weinehall <david.weinehall@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190904123206.nowr5xo2ny3hgaek@dweineha-mobl4.fi.intel.com>
References: <20190903062133.27360-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903062133.27360-1-chris@chris-wilson.co.uk>
X-Editor: Vi Improved <http://www.vim.org/>
X-Accept-Language: Swedish, English
X-GPG-Fingerprint: ED69 8CF5 6102 21B9 AFD1  9DB7 0B27 96FD 15DA A404
X-GPG-Key: http://www.acc.umu.se/~tao/files/pub_15daa404.gpg.asc
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Protect debugfs per_file_stats
 with RCU lock
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
Cc: intel-gfx@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMDMsIDIwMTkgYXQgMDc6MjE6MzNBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IElmIHdlIG1ha2Ugc3VyZSB3ZSBncmFiIGEgc3Ryb25nIHJlZmVyZW5jZSB0byBlYWNo
IG9iamVjdCBhcyB3ZSBkdW1wIGl0LAo+IHdlIGNhbiByZWR1Y2UgdGhlIGxvY2tzIG91dHNpZGUg
b2Ygb3VyIGl0ZXJhdG9ycyB0byBhbiByY3VfcmVhZF9sb2NrLgo+IAo+IFRoaXMgc2hvdWxkIHBy
ZXZlbnQgZXJyb3JzIGxpa2U6Cj4gWyAyMTM4LjM3MTkxMV0gQlVHOiBLQVNBTjogdXNlLWFmdGVy
LWZyZWUgaW4gcGVyX2ZpbGVfc3RhdHMrMHg0My8weDM4MCBbaTkxNV0KPiBbIDIxMzguMzcxOTI0
XSBSZWFkIG9mIHNpemUgOCBhdCBhZGRyIGZmZmY4ODgyMjM2NTEwMDAgYnkgdGFzayBjYXQvODI5
Mwo+IAo+IFsgMjEzOC4zNzE5NDddIENQVTogMCBQSUQ6IDgyOTMgQ29tbTogY2F0IE5vdCB0YWlu
dGVkIDUuMy4wLXJjNi1DSS1DdXN0b21fNDM1MisgIzEKPiBbIDIxMzguMzcxOTUzXSBIYXJkd2Fy
ZSBuYW1lOiBUbyBCZSBGaWxsZWQgQnkgTy5FLk0uIFRvIEJlIEZpbGxlZCBCeSBPLkUuTS4vSjQy
MDUtSVRYLCBCSU9TIFAxLjQwIDA3LzE0LzIwMTcKPiBbIDIxMzguMzcxOTU5XSBDYWxsIFRyYWNl
Ogo+IFsgMjEzOC4zNzE5NzRdICBkdW1wX3N0YWNrKzB4N2MvMHhiYgo+IFsgMjEzOC4zNzIwOTld
ICA/IHBlcl9maWxlX3N0YXRzKzB4NDMvMHgzODAgW2k5MTVdCj4gWyAyMTM4LjM3MjEwOF0gIHBy
aW50X2FkZHJlc3NfZGVzY3JpcHRpb24rMHg3My8weDNhMAo+IFsgMjEzOC4zNzIyMzFdICA/IHBl
cl9maWxlX3N0YXRzKzB4NDMvMHgzODAgW2k5MTVdCj4gWyAyMTM4LjM3MjM1Ml0gID8gcGVyX2Zp
bGVfc3RhdHMrMHg0My8weDM4MCBbaTkxNV0KPiBbIDIxMzguMzcyMzYyXSAgX19rYXNhbl9yZXBv
cnQrMHgxNGUvMHgxOTIKPiBbIDIxMzguMzcyNDg5XSAgPyBwZXJfZmlsZV9zdGF0cysweDQzLzB4
MzgwIFtpOTE1XQo+IFsgMjEzOC4zNzI1MDJdICBrYXNhbl9yZXBvcnQrMHhlLzB4MjAKPiBbIDIx
MzguMzcyNjI1XSAgcGVyX2ZpbGVfc3RhdHMrMHg0My8weDM4MCBbaTkxNV0KPiBbIDIxMzguMzcy
NzUxXSAgPyBpOTE1X3BhbmVsX3Nob3crMHgxMTAvMHgxMTAgW2k5MTVdCj4gWyAyMTM4LjM3Mjc2
MV0gIGlkcl9mb3JfZWFjaCsweGE3LzB4MTYwCj4gWyAyMTM4LjM3Mjc3M10gID8gaWRyX2dldF9u
ZXh0X3VsKzB4MTEwLzB4MTEwCj4gWyAyMTM4LjM3Mjc4Ml0gID8gZG9fcmF3X3NwaW5fbG9jaysw
eDEwYS8weDFkMAo+IFsgMjEzOC4zNzI5MjNdICBwcmludF9jb250ZXh0X3N0YXRzKzB4MjY0LzB4
NTEwIFtpOTE1XQo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgoKVGVzdGVkLWJ5OiBEYXZpZCBXZWluZWhhbGwgPGRhdmlkLndlaW5laGFs
bEBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYyB8IDEwICsrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IGlu
ZGV4IDk3OThmMjdhNjk3YS4uNzA4ODU1ZTA1MWI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMKPiBAQCAtMjM3LDYgKzIzNyw5IEBAIHN0YXRpYyBpbnQgcGVyX2ZpbGVfc3Rh
dHMoaW50IGlkLCB2b2lkICpwdHIsIHZvaWQgKmRhdGEpCj4gIAlzdHJ1Y3QgZmlsZV9zdGF0cyAq
c3RhdHMgPSBkYXRhOwo+ICAJc3RydWN0IGk5MTVfdm1hICp2bWE7Cj4gIAo+ICsJaWYgKCFrcmVm
X2dldF91bmxlc3NfemVybygmb2JqLT5iYXNlLnJlZmNvdW50KSkKPiArCQlyZXR1cm4gMDsKPiAr
Cj4gIAlzdGF0cy0+Y291bnQrKzsKPiAgCXN0YXRzLT50b3RhbCArPSBvYmotPmJhc2Uuc2l6ZTsK
PiAgCWlmICghYXRvbWljX3JlYWQoJm9iai0+YmluZF9jb3VudCkpCj4gQEAgLTI4NCw2ICsyODcs
NyBAQCBzdGF0aWMgaW50IHBlcl9maWxlX3N0YXRzKGludCBpZCwgdm9pZCAqcHRyLCB2b2lkICpk
YXRhKQo+ICAJfQo+ICAJc3Bpbl91bmxvY2soJm9iai0+dm1hLmxvY2spOwo+ICAKPiArCWk5MTVf
Z2VtX29iamVjdF9wdXQob2JqKTsKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+IEBAIC0zMTMsMTAg
KzMxNywxMiBAQCBzdGF0aWMgdm9pZCBwcmludF9jb250ZXh0X3N0YXRzKHN0cnVjdCBzZXFfZmls
ZSAqbSwKPiAgCQkJCSAgICBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpLCBpdCkg
ewo+ICAJCQlpbnRlbF9jb250ZXh0X2xvY2tfcGlubmVkKGNlKTsKPiAgCQkJaWYgKGludGVsX2Nv
bnRleHRfaXNfcGlubmVkKGNlKSkgewo+ICsJCQkJcmN1X3JlYWRfbG9jaygpOwo+ICAJCQkJaWYg
KGNlLT5zdGF0ZSkKPiAgCQkJCQlwZXJfZmlsZV9zdGF0cygwLAo+ICAJCQkJCQkgICAgICAgY2Ut
PnN0YXRlLT5vYmosICZrc3RhdHMpOwo+ICAJCQkJcGVyX2ZpbGVfc3RhdHMoMCwgY2UtPnJpbmct
PnZtYS0+b2JqLCAma3N0YXRzKTsKPiArCQkJCXJjdV9yZWFkX3VubG9jaygpOwo+ICAJCQl9Cj4g
IAkJCWludGVsX2NvbnRleHRfdW5sb2NrX3Bpbm5lZChjZSk7Cj4gIAkJfQo+IEBAIC0zMjgsOSAr
MzM0LDkgQEAgc3RhdGljIHZvaWQgcHJpbnRfY29udGV4dF9zdGF0cyhzdHJ1Y3Qgc2VxX2ZpbGUg
Km0sCj4gIAkJCXN0cnVjdCB0YXNrX3N0cnVjdCAqdGFzazsKPiAgCQkJY2hhciBuYW1lWzgwXTsK
PiAgCj4gLQkJCXNwaW5fbG9jaygmZmlsZS0+dGFibGVfbG9jayk7Cj4gKwkJCXJjdV9yZWFkX2xv
Y2soKTsKPiAgCQkJaWRyX2Zvcl9lYWNoKCZmaWxlLT5vYmplY3RfaWRyLCBwZXJfZmlsZV9zdGF0
cywgJnN0YXRzKTsKPiAtCQkJc3Bpbl91bmxvY2soJmZpbGUtPnRhYmxlX2xvY2spOwo+ICsJCQly
Y3VfcmVhZF91bmxvY2soKTsKPiAgCj4gIAkJCXJjdV9yZWFkX2xvY2soKTsKPiAgCQkJdGFzayA9
IHBpZF90YXNrKGN0eC0+cGlkID86IGZpbGUtPnBpZCwgUElEVFlQRV9QSUQpOwo+IC0tIAo+IDIu
MjMuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
