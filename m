Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6484659F0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 17:05:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F1C86E186;
	Thu, 11 Jul 2019 15:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17716E186
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 15:05:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17226268-1500050 for multiple; Thu, 11 Jul 2019 16:05:14 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190708111944.20095-1-chris@chris-wilson.co.uk>
 <90ade255-1338-0c87-4df9-f445b66cefaf@linux.intel.com>
 <156258817632.9375.11792986185475548766@skylake-alporthouse-com>
 <30a45908-0857-83fa-5f03-07dd481d8ec2@linux.intel.com>
 <156259317575.9375.9765045306016542839@skylake-alporthouse-com>
In-Reply-To: <156259317575.9375.9765045306016542839@skylake-alporthouse-com>
Message-ID: <156285751207.12757.12563510033791554154@skylake-alporthouse-com>
Date: Thu, 11 Jul 2019 16:05:12 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/oa: Reconfigure contexts on
 the fly
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDggMTQ6Mzk6MzUpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wNy0wOCAxMzoyNDozOSkKPiA+IAo+ID4gT24gMDgvMDcvMjAxOSAx
MzoxNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgy
MDE5LTA3LTA4IDEzOjEwOjM0KQo+ID4gPj4KPiA+ID4+IE9uIDA4LzA3LzIwMTkgMTI6MTksIENo
cmlzIFdpbHNvbiB3cm90ZToKPiA+ID4+PiBBdm9pZCBhIGdsb2JhbCBpZGxlIGJhcnJpZXIgYnkg
cmVjb25maWd1cmluZyBlYWNoIGNvbnRleHQgYnkgcmV3cml0aW5nCj4gPiA+Pj4gdGhlbSB3aXRo
IE1JX1NUT1JFX0RXT1JEIGZyb20gdGhlIGtlcm5lbCBjb250ZXh0Lgo+ID4gPj4+Cj4gPiA+Pj4g
djI6IFdlIG9ubHkgbmVlZCB0byBkZXRlcm1pbmUgdGhlIGRlc2lyZWQgcmVnaXN0ZXIgdmFsdWVz
IG9uY2UsIHRoZXkgYXJlCj4gPiA+Pj4gdGhlIHNhbWUgZm9yIGFsbCBjb250ZXh0cy4KPiA+ID4+
Pgo+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+ID4gPj4+IENjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxp
bkBpbnRlbC5jb20+Cj4gPiA+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4gPiA+Pj4gUmV2aWV3ZWQtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwu
Zy5sYW5kd2VybGluQGludGVsLmNvbT4KPiA+ID4+PiAtLS0KPiA+ID4+PiAgICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgICAyICsKPiA+ID4+PiAgICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgIHwgICA3ICstCj4gPiA+Pj4g
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgICAgICAgICAgICB8IDI0OCArKysr
KysrKysrKysrKystLS0tLQo+ID4gPj4+ICAgIDMgZmlsZXMgY2hhbmdlZCwgMTk1IGluc2VydGlv
bnMoKyksIDYyIGRlbGV0aW9ucygtKQo+ID4gPj4+Cj4gPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gPiA+Pj4gaW5kZXggZTM2N2RjZTJhNjk2Li4x
ZjBkMTBiYjg4YzEgMTAwNjQ0Cj4gPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2NvbnRleHQuYwo+ID4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMKPiA+ID4+PiBAQCAtNjI0LDcgKzYyNCw5IEBAIGk5MTVfZ2Vt
X2NvbnRleHRfY3JlYXRlX2tlcm5lbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaW50
IHByaW8pCj4gPiA+Pj4gICAgICAgIGN0eC0+c2NoZWQucHJpb3JpdHkgPSBJOTE1X1VTRVJfUFJJ
T1JJVFkocHJpbyk7Cj4gPiA+Pj4gICAgICAgIGN0eC0+cmluZ19zaXplID0gUEFHRV9TSVpFOwo+
ID4gPj4+ICAgIAo+ID4gPj4+ICsgICAgIC8qIElzb2xhdGUgdGhlIGtlcm5lbCBjb250ZXh0IGZy
b20gcHJ5aW5nIGV5ZXMgYW5kIHN0aWNreSBmaW5nZXJzICovCj4gPiA+Pj4gICAgICAgIEdFTV9C
VUdfT04oIWk5MTVfZ2VtX2NvbnRleHRfaXNfa2VybmVsKGN0eCkpOwo+ID4gPj4+ICsgICAgIGxp
c3RfZGVsX2luaXQoJmN0eC0+bGluayk7Cj4gPiA+Pgo+ID4gPj4gV2h5IGV4YWN0bHk/Cj4gPiA+
IAo+ID4gPiBPdGhlcndpc2Ugd2UgcmVjdXJzaXZlbHkgdHJ5IHRvIG1vZGlmeSB0aGUgY29udGV4
dC4KPiA+IAo+ID4gIEZyb20gZ2VuOF9jb25maWd1cmVfYWxsX2NvbnRleHRzLCB0d2ljZSwgb3Ig
cmVhbGx5IHJlY3Vyc2l2ZWx5PyBJZiAKPiA+IGZvcm1lciBpc24ndCB0aGF0IHNvbHZhYmxlIGJ5
IHNpbXBseSBza2lwcGluZyBrZXJuZWwgY29udGV4dHMgaW4gdGhlIAo+ID4gZmlyc3QgbG9vcD8K
PiA+IAo+ID4gPj4gQW55IHJlcGVyY3Vzc2lvbnMgZm9yIGk5MTVfc3lzZnMvaTkxNV9sM193cml0
ZT8gZGVidWdmcyBJIGdhdGhlciB5b3UKPiA+ID4+IHdvbid0IGNhcmUgYWJvdXQ/Cj4gPiA+IAo+
ID4gPiBObywgYmVjYXVzZSB3aGF0IG1hdHRlcnMgZm9yIHRob3NlIGlzIHVzZXIgY29udGV4dHMu
Cj4gPiAKPiA+IFRoZXJlIGlzbid0IHNvbWUgdGltZSBjb3N0IGFzc29jaWF0ZWQgd2l0aCBsM19y
ZW1hcCBjYWxscyB3aGVuIHN3aXRjaGluZyAKPiA+IGNvbnRleHRzPwo+IAo+IE5vLCBpdCdzIGV2
ZW4gd2VpcmRlciB0aGFuIHRoYXQgYXMgaXQgaXMgbm90IGEgY29udGV4dCByZWdpc3RlciAoYXQK
PiBsZWFzdCBvbiBoc3cgd2hlcmUgd2Ugc3VwcG9ydCBpdCkuIEkgZ3Vlc3MsIHdlIHNob3VsZCBq
dXN0IHVubGF6eSBhbmQgZW1pdAo+IGEgcmVxdWVzdCBmcm9tIHRoZSBzeXNmcy4KCkFjdHVhbGx5
LCBJIGFtIHdyb25nIGhlcmUuIFRoZSBMMyByZW1hcHBpbmcgcmVnaXN0ZXJzIGRvIGFwcGVhciB0
byBiZQpzYXZlZCBpbiB0aGUgY29udGV4dCBpbWFnZS4gQXQgbGVhc3QgdGhhdCBpcyB3aGF0IG15
IHRlc3RpbmcgaW5kaWNhdGVzLgoKSSBjYW4gc3RpbGwgYXJndWUgdGhhdCB0aGV5IGRvbid0IGFw
cGx5IHRvIHRoZSBrZXJuZWwgY29udGV4dC4gQnV0IG15CnBsYW4gdG8gcmVtb3ZlIHRoZSB3YWxr
IG92ZXIgR0VNIGNvbnRleHRzIGFuZCB0aGUgbGF6eSB1cGRhdGUgZmFpbHMuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
