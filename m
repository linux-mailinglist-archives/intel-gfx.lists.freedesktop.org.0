Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE91110B676
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 20:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A59689CD4;
	Wed, 27 Nov 2019 19:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76AE989CD4
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 19:11:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 11:11:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="203169360"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 27 Nov 2019 11:11:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 21:11:52 +0200
Date: Wed, 27 Nov 2019 21:11:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191127191152.GM1208@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191126194024.GE1208@intel.com>
 <179a6918f894feb8753674ea419f3e50fae775e8.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <179a6918f894feb8753674ea419f3e50fae775e8.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/display: Refactor
 intel_commit_modeset_disables()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMTA6MDM6MDhQTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTExLTI2IGF0IDIxOjQwICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6Cj4gPiBPbiBGcmksIE5vdiAyMiwgMjAxOSBhdCAwNDo1NDo1M1BNIC0wODAwLCBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphCj4gPiB3cm90ZToKPiA+ID4gQ29tbWl0IDljNzIyZTE3YzFiOSAo
ImRybS9pOTE1OiBEaXNhYmxlIHBpcGVzIGluIHJldmVyc2Ugb3JkZXIiKQo+ID4gPiByZXZlcnRl
ZCB0aGUgb3JkZXIgdGhhdCBwaXBlcyBnZXRzIGRpc2FibGVkIGJlY2F1c2Ugb2YgVEdMCj4gPiA+
IG1hc3Rlci9zbGF2ZSByZWxhdGlvbnNoaXAgYmV0d2VlbiB0cmFuc2NvZGVycyBpbiBNU1QgbW9k
ZS4KPiA+ID4gCj4gPiA+IEJ1dCBhcyBzdGF0ZWQgaW4gYSBjb21tZW50IGluIHNrbF9jb21taXRf
bW9kZXNldF9lbmFibGVzKCkgdGhlCj4gPiA+IGVuYWJsaW5nIG9yZGVyIGlzIG5vdCBhbHdheXMg
Y3Jlc2NlbnQsIHBvc3NpYmx5IGNhdXNpbmcgcHJldmlvdXNseQo+ID4gPiBzZWxlY3RlZCBzbGF2
ZSB0cmFuc2NvZGVyIGJlaW5nIGVuYWJsZWQgYmVmb3JlIG1hc3RlciBzbyBhbm90aGVyCj4gPiA+
IGFwcHJvYWNoIHdpbGwgYmUgbmVlZGVkIHRvIHNlbGVjdCBhIHRyYW5zY29kZXIgdG8gbWFzdGVy
IGluIE1TVAo+ID4gPiBtb2RlLgo+ID4gPiBJdCB3aWxsIGJlIHNpbWlsYXIgdG8gdGhlIGFwcHJv
YWNoIHRha2VuIGluIHBvcnQgc3luYy4KPiA+ID4gCj4gPiA+IEJ1dCBpbnN0ZWFkIG9mIGltcGxl
bWVudCBzb21ldGhpbmcgbGlrZQo+ID4gPiBpbnRlbF90cmFuc19wb3J0X3N5bmNfbW9kZXNldF9k
aXNhYmxlcygpIHRvIE1TVCBsZXRzIHNpbXBseSBpdCBhbmQKPiA+ID4gaXRlcmF0ZSBvdmVyIGFs
bCBwaXBlcyAyIHRpbWVzLCB0aGUgZmlyc3Qgb25lIGRpc2FibGluZyBhbnkgc2xhdmUKPiA+ID4g
YW5kCj4gPiA+IHRoZW4gZGlzYWJsaW5nIGV2ZXJ5dGhpbmcgZWxzZS4KPiA+ID4gVGhlIE1TVCBi
aXRzIHdpbGwgYmUgYWRkZWQgaW4gYW5vdGhlciBwYXRjaC4KPiA+ID4gCj4gPiA+IENjOiBNYW5h
c2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+ID4gPiBDYzogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiA+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IENjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+ID4gLS0t
Cj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDc5
ICsrKysrKy0tLS0tLS0tCj4gPiA+IC0tLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIyIGlu
c2VydGlvbnMoKyksIDU3IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+ID4gaW5kZXggNTNkYzMx
MGE1ZjZkLi4xYjFmYmI2ZDhhY2MgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiA+IEBAIC0xNDQ0Myw1MyArMTQ0NDMsMTYg
QEAgc3RhdGljIHZvaWQKPiA+ID4gaW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiA+ICAJCWRldl9wcml2LT5kaXNwbGF5Lmlu
aXRpYWxfd2F0ZXJtYXJrcyhzdGF0ZSwgY3J0Yyk7Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4gLXN0
YXRpYyB2b2lkIGludGVsX3RyYW5zX3BvcnRfc3luY19tb2Rlc2V0X2Rpc2FibGVzKHN0cnVjdAo+
ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gPiAtCQkJCQkJICAgc3RydWN0IGlu
dGVsX2NydGMKPiA+ID4gKmNydGMsCj4gPiA+IC0JCQkJCQkgICBzdHJ1Y3QKPiA+ID4gaW50ZWxf
Y3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4gPiA+IC0JCQkJCQkgICBzdHJ1Y3QKPiA+ID4g
aW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCj4gPiA+IC17Cj4gPiA+IC0Jc3RydWN0
IGludGVsX2NydGMgKnNsYXZlX2NydGMgPQo+ID4gPiBpbnRlbF9nZXRfc2xhdmVfY3J0YyhuZXdf
Y3J0Y19zdGF0ZSk7Cj4gPiA+IC0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19zbGF2ZV9j
cnRjX3N0YXRlID0KPiA+ID4gLQkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0
ZSwgc2xhdmVfY3J0Yyk7Cj4gPiA+IC0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9zbGF2
ZV9jcnRjX3N0YXRlID0KPiA+ID4gLQkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShz
dGF0ZSwgc2xhdmVfY3J0Yyk7Cj4gPiA+IC0KPiA+ID4gLQlXQVJOX09OKCFzbGF2ZV9jcnRjIHx8
ICFuZXdfc2xhdmVfY3J0Y19zdGF0ZSB8fAo+ID4gPiAtCQkhb2xkX3NsYXZlX2NydGNfc3RhdGUp
Owo+ID4gPiAtCj4gPiA+IC0JLyogRGlzYWJsZSBTbGF2ZSBmaXJzdCAqLwo+ID4gPiAtCWludGVs
X3ByZV9wbGFuZV91cGRhdGUob2xkX3NsYXZlX2NydGNfc3RhdGUsCj4gPiA+IG5ld19zbGF2ZV9j
cnRjX3N0YXRlKTsKPiA+ID4gLQlpZiAob2xkX3NsYXZlX2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkK
PiA+ID4gLQkJaW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoc3RhdGUsCj4gPiA+IC0JCQkJ
CSAgICAgIG9sZF9zbGF2ZV9jcnRjX3N0YXRlLAo+ID4gPiAtCQkJCQkgICAgICBuZXdfc2xhdmVf
Y3J0Y19zdGF0ZSwKPiA+ID4gLQkJCQkJICAgICAgc2xhdmVfY3J0Yyk7Cj4gPiA+IC0KPiA+ID4g
LQkvKiBEaXNhYmxlIE1hc3RlciAqLwo+ID4gPiAtCWludGVsX3ByZV9wbGFuZV91cGRhdGUob2xk
X2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsKPiA+ID4gLQlpZiAob2xkX2NydGNfc3RhdGUt
Pmh3LmFjdGl2ZSkKPiA+ID4gLQkJaW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoc3RhdGUs
Cj4gPiA+IC0JCQkJCSAgICAgIG9sZF9jcnRjX3N0YXRlLAo+ID4gPiAtCQkJCQkgICAgICBuZXdf
Y3J0Y19zdGF0ZSwKPiA+ID4gLQkJCQkJICAgICAgY3J0Yyk7Cj4gPiA+IC19Cj4gPiA+IC0KPiA+
ID4gIHN0YXRpYyB2b2lkIGludGVsX2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKHN0cnVjdAo+ID4g
PiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ID4gPiAgewo+ID4gPiAgCXN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSwgKm9sZF9jcnRjX3N0YXRlOwo+ID4gPiAgCXN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+ID4gPiAgCWludCBpOwo+ID4gPiAgCj4gPiA+IC0JLyoK
PiA+ID4gLQkgKiBEaXNhYmxlIENSVEMvcGlwZXMgaW4gcmV2ZXJzZSBvcmRlciBiZWNhdXNlIHNv
bWUKPiA+ID4gZmVhdHVyZXMoTVNUIGluCj4gPiA+IC0JICogVEdMKykgcmVxdWlyZXMgbWFzdGVy
IGFuZCBzbGF2ZSByZWxhdGlvbnNoaXAgYmV0d2VlbiBwaXBlcywKPiA+ID4gc28gaXQKPiA+ID4g
LQkgKiBzaG91bGQgYWx3YXlzIHBpY2sgdGhlIGxvd2VzdCBwaXBlIGFzIG1hc3RlciBhcyBpdCB3
aWxsIGJlCj4gPiA+IGVuYWJsZWQKPiA+ID4gLQkgKiBmaXJzdCBhbmQgZGlzYWJsZSBpbiB0aGUg
cmV2ZXJzZSBvcmRlciBzbyB0aGUgbWFzdGVyIHdpbGwgYmUKPiA+ID4gdGhlCj4gPiA+IC0JICog
bGFzdCBvbmUgdG8gYmUgZGlzYWJsZWQuCj4gPiA+IC0JICovCj4gPiA+IC0JZm9yX2VhY2hfb2xk
bmV3X2ludGVsX2NydGNfaW5fc3RhdGVfcmV2ZXJzZShzdGF0ZSwgY3J0YywKPiA+ID4gb2xkX2Ny
dGNfc3RhdGUsCj4gPiA+IC0JCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpCj4gPiA+IHsKPiA+
ID4gLQkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkKPiA+ID4gKwkvKiBPbmx5
IGRpc2FibGUgcG9ydCBzeW5jIHNsYXZlcyAqLwo+ID4gPiArCWZvcl9lYWNoX29sZG5ld19pbnRl
bF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLAo+ID4gPiBvbGRfY3J0Y19zdGF0ZSwKPiA+ID4g
KwkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7Cj4gPiA+ICsJCWlmICghbmVlZHNfbW9kZXNl
dChuZXdfY3J0Y19zdGF0ZSkgfHwgIWNydGMtPmFjdGl2ZSkKPiA+IAo+ID4gV2hhdCdzIHRoZSBk
ZWFsIHdpdGggdGhlc2UgY3J0Yy0+YWN0aXZlIGNoZWNrcz8KPiAKPiBXaXRoIGp1c3Qgb25lIGxv
b3Agd2Ugd2VyZSB1c2luZyAib2xkX2NydGNfc3RhdGUtPmh3LmFjdGl2ZSIgYnV0IGFzIHdlCj4g
c2hvdWxkIG5vdCBtb2RpZnkgdGhlIGNvbXB1dGVkIHN0YXRlIGluIHRoaXMgcGhhc2UgYW5kCj4g
aW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoKSBzZXRzIGNydGMtPmFjdGl2ZSA9IGZhbHNl
LCB1c2luZyBpdAo+IGluc3RlYWQuCgpZb3Ugc2hvdWxkIG5ldmVyIHVzZSBpdC4gV2Ugc2hvdWxk
IGFpbSB0b3dhcmRzIGVsaW1pbmF0aW5nIGl0LiBJIGRvbid0CnRoaW5rIHdlJ3JlIGZhciBvZmYg
bm93LgoKPiAKPiA+IAo+ID4gPiAgCQkJY29udGludWU7Cj4gPiA+ICAKPiA+ID4gIAkJLyogSW4g
Y2FzZSBvZiBUcmFuc2NvZGVyIHBvcnQgU3luYyBtYXN0ZXIgc2xhdmUgQ1JUQ3MKPiA+ID4gY2Fu
IGJlCj4gPiA+IEBAIC0xNDQ5NywyMyArMTQ0NjAsMjUgQEAgc3RhdGljIHZvaWQKPiA+ID4gaW50
ZWxfY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCj4gPiA+ICAJCSAqIHNsYXZlIENSVENzIGFyZSBkaXNhYmxlZCBmaXJzdCBhbmQgdGhlbiBt
YXN0ZXIgQ1JUQwo+ID4gPiBzaW5jZQo+ID4gPiAgCQkgKiBTbGF2ZSB2YmxhbmtzIGFyZSBtYXNr
ZWQgdGlsbCBNYXN0ZXIgVmJsYW5rcy4KPiA+ID4gIAkJICovCj4gPiA+IC0JCWlmIChpc190cmFu
c19wb3J0X3N5bmNfbW9kZShuZXdfY3J0Y19zdGF0ZSkpIHsKPiA+ID4gLQkJCWlmIChpc190cmFu
c19wb3J0X3N5bmNfbWFzdGVyKG5ld19jcnRjX3N0YXRlKSkKPiA+ID4gLQkJCQlpbnRlbF90cmFu
c19wb3J0X3N5bmNfbW9kZXNldF9kaXNhYmxlcygKPiA+ID4gc3RhdGUsCj4gPiA+IC0JCQkJCQkJ
CSAgICAgICAKPiA+ID4gY3J0YywKPiA+ID4gLQkJCQkJCQkJICAgICAgIAo+ID4gPiBvbGRfY3J0
Y19zdGF0ZSwKPiA+ID4gLQkJCQkJCQkJICAgICAgIAo+ID4gPiBuZXdfY3J0Y19zdGF0ZSk7Cj4g
PiA+IC0JCQllbHNlCj4gPiA+IC0JCQkJY29udGludWU7Cj4gPiA+IC0JCX0gZWxzZSB7Cj4gPiA+
IC0JCQlpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKG9sZF9jcnRjX3N0YXRlLAo+ID4gPiBuZXdfY3J0
Y19zdGF0ZSk7Cj4gPiA+ICsJCWlmICghaXNfdHJhbnNfcG9ydF9zeW5jX21vZGUobmV3X2NydGNf
c3RhdGUpKQo+ID4gPiArCQkJY29udGludWU7Cj4gPiA+ICsJCWlmIChpc190cmFuc19wb3J0X3N5
bmNfbWFzdGVyKG5ld19jcnRjX3N0YXRlKSkKPiA+ID4gKwkJCWNvbnRpbnVlOwo+ID4gCj4gPiBX
ZSBkb24ndCBoYXZlIGlzX3RyYW5zX3N5bmNfc2xhdmUoKT8KPiAKPiBXZSBkb24ndC4KCk1heWJl
IGFkZCBpdD8KCj4gCj4gPiAKPiA+ID4gIAo+ID4gPiAtCQkJaWYgKG9sZF9jcnRjX3N0YXRlLT5o
dy5hY3RpdmUpCj4gPiA+IC0JCQkJaW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoc3RhdGUs
Cj4gPiA+IC0JCQkJCQkJICAgICAgb2xkX2NydGNfCj4gPiA+IHN0YXRlLAo+ID4gPiAtCQkJCQkJ
CSAgICAgIG5ld19jcnRjXwo+ID4gPiBzdGF0ZSwKPiA+ID4gLQkJCQkJCQkgICAgICBjcnRjKTsK
PiA+ID4gLQkJfQo+ID4gPiArCQlpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKG9sZF9jcnRjX3N0YXRl
LCBuZXdfY3J0Y19zdGF0ZSk7Cj4gPiA+ICsJCWludGVsX29sZF9jcnRjX3N0YXRlX2Rpc2FibGVz
KHN0YXRlLCBvbGRfY3J0Y19zdGF0ZSwKPiA+ID4gKwkJCQkJICAgICAgbmV3X2NydGNfc3RhdGUs
IGNydGMpOwo+ID4gPiArCX0KPiA+ID4gKwo+ID4gPiArCS8qIERpc2FibGUgZXZlcnl0aGluZyBl
bHNlIGxlZnQgb24gKi8KPiA+ID4gKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0
ZShzdGF0ZSwgY3J0YywKPiA+ID4gb2xkX2NydGNfc3RhdGUsCj4gPiA+ICsJCQkJCSAgICBuZXdf
Y3J0Y19zdGF0ZSwgaSkgewo+ID4gPiArCQlpZiAoIW5lZWRzX21vZGVzZXQobmV3X2NydGNfc3Rh
dGUpIHx8ICFjcnRjLT5hY3RpdmUpCj4gPiA+ICsJCQljb250aW51ZTsKPiA+ID4gKwo+ID4gPiAr
CQlpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7
Cj4gPiA+ICsJCWludGVsX29sZF9jcnRjX3N0YXRlX2Rpc2FibGVzKHN0YXRlLCBvbGRfY3J0Y19z
dGF0ZSwKPiA+ID4gKwkJCQkJICAgICAgbmV3X2NydGNfc3RhdGUsIGNydGMpOwo+ID4gCj4gPiBQ
b25kZXJpbmcgaWYgdGhlcmUncyBhbnkgY2hhbmNlIG9mIHNvbWUgb2RkIGZhaWwgaWYgd2UgaGF2
ZSB0d28gcG9ydHMKPiA+IHJ1bm5pbmcgaW4gcG9ydCBzeW5jIG1vZGUuIFRoYXQgd2lsbCBub3cg
bGVhZCB0bwo+ID4gZGlzYWJsZV9zbGF2ZSgwKS0+ZGlzYWJsZV9zbGF2ZSgxKS0+ZGlzYWJsZV9t
YXN0ZXIoMCktCj4gPiA+ZGlzYWJsZV9tYXN0ZXIoMSkuLi4KPiAKPiBUaG91Z2h0cyBNYW5hc2k/
Cj4gCj4gPiAKPiA+ID4gIAl9Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4gLS0gCj4gPiA+IDIuMjQu
MAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
