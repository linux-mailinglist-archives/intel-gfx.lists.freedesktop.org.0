Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDB010B6A9
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 20:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2770389B9A;
	Wed, 27 Nov 2019 19:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17F7889B9A
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 19:24:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 11:24:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="199287601"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 27 Nov 2019 11:24:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 21:24:49 +0200
Date: Wed, 27 Nov 2019 21:24:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191127192449.GN1208@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191123005459.155383-4-jose.souza@intel.com>
 <20191126201506.GH1208@intel.com>
 <625713c7e7111958caf8283a15aeaa7ecf356a5c.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <625713c7e7111958caf8283a15aeaa7ecf356a5c.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/dp: Power down sink before
 disable pipe/transcoder clock
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMTA6MTI6NTJQTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTExLTI2IGF0IDIyOjE1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6Cj4gPiBPbiBGcmksIE5vdiAyMiwgMjAxOSBhdCAwNDo1NDo1NlBNIC0wODAwLCBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphCj4gPiB3cm90ZToKPiA+ID4gRGlzYWJsaW5nIHBpcGUvdHJhbnNj
b2RlciBjbG9jayBiZWZvcmUgcG93ZXIgZG93biBzaW5rIGNvdWxkIGNhdXNlCj4gPiA+IHNpbmsg
bG9zdCBzaWduYWwsIGNhdXNpbmcgaXQgdG8gdHJpZ2dlciBhIGhvdHBsdWcgdG8gbm90aWZ5IHNv
dXJjZQo+ID4gPiB0aGF0IGxpbmsgc2lnbmFsIHdhcyBsb3N0Lgo+ID4gPiAKPiA+ID4gQ2M6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+ID4g
LS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMiAr
LQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4g
PiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMK
PiA+ID4gaW5kZXggZDJmMGQzOTNkM2VlLi43ZDNhNmUzYzdmNTcgMTAwNjQ0Cj4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ID4gPiBAQCAtMzgwOCwxMiAr
MzgwOCwxMiBAQCBzdGF0aWMgdm9pZAo+ID4gPiBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ID4gPiAgCWVudW0gcGh5IHBoeSA9IGludGVs
X3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKPiA+ID4gIAo+ID4gPiAgCWlm
ICghaXNfbXN0KSB7Cj4gPiA+IC0JCWludGVsX2RkaV9kaXNhYmxlX3BpcGVfY2xvY2sob2xkX2Ny
dGNfc3RhdGUpOwo+ID4gPiAgCQkvKgo+ID4gPiAgCQkgKiBQb3dlciBkb3duIHNpbmsgYmVmb3Jl
IGRpc2FibGluZyB0aGUgcG9ydCwgb3RoZXJ3aXNlCj4gPiA+IHdlIGVuZAo+ID4gPiAgCQkgKiB1
cCBnZXR0aW5nIGludGVycnVwdHMgZnJvbSB0aGUgc2luayBvbiBkZXRlY3RpbmcKPiA+ID4gbGlu
ayBsb3NzLgo+ID4gPiAgCQkgKi8KPiA+ID4gIAkJaW50ZWxfZHBfc2lua19kcG1zKGludGVsX2Rw
LCBEUk1fTU9ERV9EUE1TX09GRik7Cj4gPiA+ICsJCWludGVsX2RkaV9kaXNhYmxlX3BpcGVfY2xv
Y2sob2xkX2NydGNfc3RhdGUpOwo+ID4gPiAgCX0KPiA+IAo+ID4gVGhlIHNwZWMgc2VlbXMgdG8g
c2F5IHRoYXQgd2Ugc2hvdWxkIGRvIHRoaXMgYWZ0ZXIgdHVybmluZyBvZmYKPiA+IERESV9CVUZf
Q1RMIG9uIHRnbCsuCj4gCj4gV2hhdCBzdGVwPyBJIGNhbid0IGZpbmQgYW55IHN0ZXAgdGFsa2lu
ZyBhYm91dCBBVVggRFBfU0VUX1BPV0VSLgoKSSB3YXMgdGFsa2luZyBhYm91dCBERElfQlVGIGRp
c2FibGUgdnMuIHRyYW5zY29kZXIgY2xvY2sgZGlzYWJsZS4KCj4gCj4gTXkgdW5kZXJzdGF0aW5n
IGlzIHRoYXQgd2Ugc2hvdWxkIHBvd2VyIG9mZiBzaW5rIGJlZm9yZSBpbnRlcmZlcmluZyBpbgo+
IHRoZSBtYWlubGluayBzaWduYWwgb3RoZXJ3aXNlIHNpbmsgY291bGQgdHJpZ2dlciBob3RwbHVn
cyB0byBub3RpZnkKPiBzb3VyY2UgYWJvdXQgbGluayBsb3NzLgoKUHJldHR5IG11Y2guIE5vdGhp
bmcgd3Jvbmcgd2l0aCB5b3VyIHBhdGNoIGZvciBwcmUtdGdsIEkgdGhpbmssIGJ1dCBmb3IKdGds
KyB5b3UgZGlkbid0IG1vdmUgdGhlIGNsb2NrIGRpc2FibGUgcXVpdGUgZmFyIGVub3VnaCB0byBt
YXRjaCB0aGUKYnNwZWMgc2VxdWVuY2UuCgo+IAo+ID4gCj4gPiA+ICAKPiA+ID4gIAlpbnRlbF9k
aXNhYmxlX2RkaV9idWYoZW5jb2Rlciwgb2xkX2NydGNfc3RhdGUpOwo+ID4gPiAtLSAKPiA+ID4g
Mi4yNC4wCj4gPiA+IAo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gPiA+IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
