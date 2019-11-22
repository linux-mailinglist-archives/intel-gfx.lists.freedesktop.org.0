Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8B41073B9
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 14:55:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15DE6E33A;
	Fri, 22 Nov 2019 13:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E526E339
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 13:55:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 05:55:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="201522170"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 22 Nov 2019 05:55:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Nov 2019 15:55:33 +0200
Date: Fri, 22 Nov 2019 15:55:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191122135532.GL1208@intel.com>
References: <20191120234608.17775-1-lucas.demarchi@intel.com>
 <20191120234608.17775-3-lucas.demarchi@intel.com>
 <878so9wf4g.fsf@intel.com>
 <20191121185429.aqc2ga7ciiqkoovg@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121185429.aqc2ga7ciiqkoovg@ldmartin-desk1>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/i915: assume vbt is 4-byte
 aligned into oprom
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

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMTA6NTQ6MjlBTSAtMDgwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE9uIFRodSwgTm92IDIxLCAyMDE5IGF0IDAzOjA5OjAzUE0gKzAyMDAsIEphbmkg
TmlrdWxhIHdyb3RlOgo+ID5PbiBXZWQsIDIwIE5vdiAyMDE5LCBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4gd3JvdGU6Cj4gPj4gVGhlIHVuYWxpZ25lZCBpb3JlYWQz
MigpIHdpbGwgbWFrZSB1cyByZWFkIGJ5dGUgYnkgYnl0ZSBsb29raW5nIGZvciB0aGUKPiA+PiB2
YnQuIFdlIGNvdWxkIGp1c3QgYXMgd2VsbCBoYXZlIGRvbmUgYSBpb3JlYWQ4KCkgKyBhIHNoaWZ0
IGFuZCBhdm9pZCB0aGUKPiA+PiBleHRyYSBjb25mdXNpb24gb24gaG93IHdlIGFyZSBsb29raW5n
IGZvciAiJFZCVCIuCj4gPj4KPiA+PiBIb3dldmVyIHdoZW4gdXNpbmcgQUNQSSBpdCdzIGd1YXJh
bnRlZWQgdGhlIFZCVCBpcyA0LWJ5dGUgYWxpZ25lZAo+ID4+IHBlciBzcGVjLCBzbyB3ZSBjYW4g
cHJvYmFibHkgYXNzdW1lIGl0IGhlcmUgYXMgd2VsbC4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4+IC0tLQo+ID4+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDE5ICsrKysrKy0t
LS0tLS0tLS0tLS0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTMgZGVs
ZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYwo+ID4+IGluZGV4IGFhOWIxODJlZmVlNS4uNmJmNTdiMWFkMDU2IDEwMDY0NAo+ID4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiA+PiBAQCAtMTkwMiwy
NyArMTkwMiwyMCBAQCBzdGF0aWMgc3RydWN0IHZidF9oZWFkZXIgKm9wcm9tX2dldF92YnQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4+ICAJdm9pZCBfX2lvbWVtICpwID0g
TlVMTCwgKm9wcm9tOwo+ID4+ICAJc3RydWN0IHZidF9oZWFkZXIgKnZidDsKPiA+PiAgCXUxNiB2
YnRfc2l6ZTsKPiA+PiAtCXNpemVfdCBpLCBzaXplOwo+ID4+ICsJc2l6ZV90IHNpemU7Cj4gPj4K
PiA+PiAgCW9wcm9tID0gcGNpX21hcF9yb20ocGRldiwgJnNpemUpOwo+ID4+ICAJaWYgKCFvcHJv
bSkKPiA+PiAgCQlyZXR1cm4gTlVMTDsKPiA+Pgo+ID4+ICAJLyogU2NvdXIgbWVtb3J5IGxvb2tp
bmcgZm9yIHRoZSBWQlQgc2lnbmF0dXJlLiAqLwo+ID4+IC0JZm9yIChpID0gMDsgaSArIDQgPCBz
aXplOyBpKyspIHsKPiA+PiAtCQlpZiAoaW9yZWFkMzIob3Byb20gKyBpKSAhPSAqKChjb25zdCB1
MzIgKikiJFZCVCIpKQo+ID4+IC0JCQljb250aW51ZTsKPiA+PiAtCj4gPj4gLQkJcCA9IG9wcm9t
ICsgaTsKPiA+PiAtCQlzaXplIC09IGk7Cj4gPj4gLQkJYnJlYWs7Cj4gPj4gLQl9Cj4gPj4gLQo+
ID4+IC0JaWYgKCFwKQo+ID4+IC0JCWdvdG8gZXJyX3VubWFwX29wcm9tOwo+ID4+ICsJZm9yIChw
ID0gb3Byb207IHNpemUgPj0gNDsgcCArPSA0LCBzaXplIC09IDQpCj4gPj4gKwkJaWYgKGlvcmVh
ZDMyKHApID09ICooKGNvbnN0IHUzMiAqKSIkVkJUIikpCj4gPj4gKwkJCWJyZWFrOwo+ID4KPiA+
SSB0aGluayB0aGUgb3JpZ2luYWwgaXMgZWFzaWVyIHRvIHJlYWQuIFlvdSBvbmx5IHJlYWxseSBu
ZWVkIHRvIGNoYW5nZQo+ID4iaSsrIiB0byAiaSArPSA0IiBhbmQgYmUgZG9uZSB3aXRoIGl0Lgo+
IAo+IEkgcmVhbGx5IGxpa2VkIHRoaXMgdmVyc2lvbiBtdWNoIG1vcmUuLi4gc2hvcnRlciBhbmQg
d2l0aCBvbmx5IG9uZSBjb250cm9sCj4gdmFyaWFibGUgcmF0aGVyIHRoYW4ga2VlcGluZyB0aGUg
Y29udHJvbCBpbiAzIGRpZmZlcmVudCBwbGFjZXMgKGksIHNpemUKPiBhbmQgcCkuCgpJIHRoaW5r
IEknbSB3aXRoIEphbmkgaGVyZS4gR2VuZXJhbGx5IG5vdCBhIGh1Z2UgZmFuIG9mIHBvaW50ZXIK
YXJpdGhtZXRpYywgYW5kIGhhdmluZyBqdXN0IG9uZSB2YXJpYWJsZSBtb2RpZmllZCBieSB0aGUg
bG9vcCBpcwptb3JlIGN1c3RvbWFyeSBzbyB1c3VhbGx5IGRvZXNuJ3QgcmVxdWlyZSBtZSB0byBy
ZWFkIG1vcmUgdGhhbgpvbmNlLiBUaGlzIHRoaW5nIEkgaGFkIHRvIHJlYWQgYSBmZXcgdGltZXMg
dG8gbWFrZSBzdXJlIEkKdW5kZXJzdG9vZCB3aGF0IGl0J3MgZG9pbmcuCgotLSAKVmlsbGUgU3ly
asOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
