Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E96582F9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 14:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15ABF6E21A;
	Thu, 27 Jun 2019 12:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63C66E21A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 12:53:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17044595-1500050 for multiple; Thu, 27 Jun 2019 13:53:13 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-8-lionel.g.landwerlin@intel.com>
 <156162875829.20851.6935372567348885846@skylake-alporthouse-com>
 <d123ff70-0576-d157-8627-f3e077040cde@intel.com>
In-Reply-To: <d123ff70-0576-d157-8627-f3e077040cde@intel.com>
Message-ID: <156163999012.9225.9591199209869231394@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 13:53:10 +0100
Subject: Re: [Intel-gfx] [PATCH v5 07/10] drm/i915: add a new perf
 configuration execbuf parameter
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yNyAxMzozMjoxMykKPiBPbiAyNy8w
Ni8yMDE5IDEyOjQ1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA2LTI3IDA5OjAwOjQyKQo+ID4+ICsgICAgICAgLyoKPiA+PiArICAgICAg
ICAqIElmIHRoZSBjb25maWcgaGFzbid0IGNoYW5nZWQsIHNraXAgcmVjb25maWd1cmluZyB0aGUg
SFcgKHRoaXMgaXMKPiA+PiArICAgICAgICAqIHN1YmplY3QgdG8gYSBkZWxheSB3ZSB3YW50IHRv
IGF2b2lkIGhhcyBtdWNoIGFzIHBvc3NpYmxlKS4KPiA+PiArICAgICAgICAqLwo+ID4+ICsgICAg
ICAgaWYgKGViLT5vYV9jb25maWcgPT0gZWItPmk5MTUtPnBlcmYub2EuZXhjbHVzaXZlX3N0cmVh
bS0+b2FfY29uZmlnKQo+ID4+ICsgICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+PiArCj4gPj4g
KyAgICAgICBvYV92bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShlYi0+b2FfYm8sCj4gPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmZWItPmVuZ2luZS0+aTkxNS0+Z2d0dC52bSwg
TlVMTCk7Cj4gPj4gKyAgICAgICBpZiAodW5saWtlbHkoSVNfRVJSKG9hX3ZtYSkpKQo+ID4+ICsg
ICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihvYV92bWEpOwo+ID4+ICsKPiA+PiArICAgICAg
IGVyciA9IGk5MTVfdm1hX3BpbihvYV92bWEsIDAsIDAsIFBJTl9HTE9CQUwpOwo+ID4+ICsgICAg
ICAgaWYgKGVycikKPiA+PiArICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiA+IFVnaC4gV2Ug
c2hvdWxkIG5vdCBiZSBwaW5uZWQgYWZ0ZXIgY3JlYXRpbmcgdGhlIHJlcXVlc3QuIE1pZ2h0IG5v
dAo+ID4gbWF0dGVyIC0tIGl0J3MganVzdCByZXNlcnZhdGlvbiB1bmRlciBpdHMgb3duIGxvY2sg
dGhhdCBtdXN0IG5vdCBiZQo+ID4gY3Jvc3NlZCB3aXRoIHRoZSB0aW1lbGluZSBsb2NrIGN1cnJl
bnRseSBoZWxkIGhlcmUuCj4gCj4gCj4gU2hvdWxkIEkgbW92ZSB0aGlzIGludG8gZ2V0X2V4ZWNi
dWZfb2FfY29uZmlnKCkgPwoKVGhhdCB3b3VsZCBiZSBzYXZlIG1lIGZyZXR0aW5nIGFib3V0IHRo
ZSBsb2NrIG5lc3RpbmcuCgo+ID4+IEBAIC0yNjUxLDkgKzI3NjAsMjMgQEAgaTkxNV9nZW1fZG9f
ZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ID4+ICAgICAgICAgIGlmICh1bmxp
a2VseShlcnIpKQo+ID4+ICAgICAgICAgICAgICAgICAgZ290byBlcnJfdW5sb2NrOwo+ID4+ICAg
Cj4gPj4gKyAgICAgICBpZiAoZWIuZXh0ZW5zaW9ucy5mbGFncyAmIEJJVChEUk1fSTkxNV9HRU1f
RVhFQ0JVRkZFUl9FWFRfUEVSRikpIHsKPiA+PiArICAgICAgICAgICAgICAgaWYgKCFpbnRlbF9l
bmdpbmVfaGFzX29hKGViLmVuZ2luZSkpIHsKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICBl
cnIgPSAtRU5PREVWOwo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX2VuZ2lu
ZTsKPiA+PiArICAgICAgICAgICAgICAgfQo+ID4+ICsKPiA+PiArICAgICAgICAgICAgICAgZXJy
ID0gZ2V0X2V4ZWNidWZfb2FfY29uZmlnKGViLmk5MTUsCj4gPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBlYi5leHRlbnNpb25zLnBlcmZfY29uZmlnLnBlcmZf
ZmQsCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlYi5l
eHRlbnNpb25zLnBlcmZfY29uZmlnLm9hX2NvbmZpZywKPiA+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICZlYi5vYV9jb25maWcsICZlYi5vYV9ibyk7Cj4gPj4g
KyAgICAgICAgICAgICAgIGlmIChlcnIpCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290
byBlcnJfZW5naW5lOwo+ID4gV2h5IGlzIHRoaXMgdW5kZXIgdGhlIHN0cnVjdF9tdXRleD8KPiAK
PiAKPiBBY2Nlc3MgdG8gZGV2X3ByaXYtPnBlcmYub2EuZXhjbHVzaXZlX3N0cmVhbSBtdXN0IGJl
IHVuZGVyIHN0cnVjdF9tdXRleC4KPiAKPiBBbHNvIGJlY2F1c2Ugd2UgdmVyaWZ5IHRoYXQgdGhl
IGVuZ2luZSBhY3R1YWxseSBoYXMgT0Egc3VwcG9ydC4KPiAKPiBJIGNvdWxkIHNwbGl0IHRoZSBn
ZXR0aW5nIHRoZSBjb25maWd1cmF0aW9uIHBhcnQgYXdheS4KCkknbSBhYm91dCAxMF5XIDUwXlcg
Y2VydGFpbmx5IGxlc3MgdGhhbiBhIDEwMCBwYXRjaGVzIGF3YXkgZnJvbSBraWxsaW5nCnN0cnVj
dF9tdXRleCBmb3IgZXhlY2J1Zi4uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
