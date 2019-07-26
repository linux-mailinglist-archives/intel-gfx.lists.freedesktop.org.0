Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C3F75C0C
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 02:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE206E83B;
	Fri, 26 Jul 2019 00:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8E826E83B
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 00:23:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17612404-1500050 for multiple; Fri, 26 Jul 2019 01:23:31 +0100
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190726001208.6971-5-lucas.demarchi@intel.com>
References: <20190726001208.6971-1-lucas.demarchi@intel.com>
 <20190726001208.6971-5-lucas.demarchi@intel.com>
Message-ID: <156410060955.30723.556320365355343101@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 26 Jul 2019 01:23:29 +0100
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Move MOCS setup to
 intel_mocs.c
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

UXVvdGluZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTktMDctMjYgMDE6MTI6MDgpCj4gRnJvbTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAKPiBIaWRlIHRoZSBkZXRh
aWxzIG9mIE1PQ1Mgc2V0dXAgZnJvbSBpOTE1X2dlbSBieSBtb3ZpbmcgYm90aCBjdXJyZW50IGNh
bGxzCj4gaW50byBvbmUgaW4gaW50ZWxfbW9jc19pbml0Lgo+IAo+IENjOiBTdHVhcnQgU3VtbWVy
cyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFN0dWFydCBT
dW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gTGluazogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzEzMDEwOTQwLjE3NzExLTIxLWx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbQo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9tb2NzLmMgfCAxNSArKysrKysrKysrKy0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbW9jcy5oIHwgIDMgKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMgICAgICB8ICAzICstLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDgg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+IGluZGV4
IDkzOTljMGVjMDhmMS4uZDQzN2QzNWYzMzQ3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX21vY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX21vY3MuYwo+IEBAIC00MTEsMTQgKzQxMSwxMyBAQCB2b2lkIGludGVsX21vY3NfaW5pdF9l
bmdpbmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgKgo+ICAgKiBUaGlzIGZ1
bmN0aW9uIGluaXRpYWxpemVzIHRoZSBNT0NTIGdsb2JhbCByZWdpc3RlcnMuCj4gICAqLwo+IC12
b2lkIGludGVsX21vY3NfaW5pdF9nbG9iYWwoc3RydWN0IGludGVsX2d0ICpndCkKPiArc3RhdGlj
IHZvaWQgaW50ZWxfbW9jc19pbml0X2dsb2JhbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICB7Cj4g
ICAgICAgICBzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwo+ICAgICAg
ICAgc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgdGFibGU7Cj4gICAgICAgICB1bnNpZ25lZCBp
bnQgaW5kZXg7Cj4gIAo+IC0gICAgICAgaWYgKCFIQVNfR0xPQkFMX01PQ1NfUkVHSVNURVJTKGd0
LT5pOTE1KSkKPiAtICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsgICAgICAgR0VNX0JVR19PTigh
SEFTX0dMT0JBTF9NT0NTX1JFR0lTVEVSUyhndC0+aTkxNSkpOwo+ICAKPiAgICAgICAgIGlmICgh
Z2V0X21vY3Nfc2V0dGluZ3MoZ3QsICZ0YWJsZSkpCj4gICAgICAgICAgICAgICAgIHJldHVybjsK
PiBAQCAtNTg3LDcgKzU4Niw3IEBAIHN0YXRpYyBpbnQgZW1pdF9tb2NzX2wzY2NfdGFibGUoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4gICAqCj4gICAqIFJldHVybjogTm90aGluZy4KPiAgICov
Cj4gLXZvaWQgaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoc3RydWN0IGludGVsX2d0ICpndCkK
PiArc3RhdGljIHZvaWQgaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoc3RydWN0IGludGVsX2d0
ICpndCkKPiAgewo+ICAgICAgICAgc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVu
Y29yZTsKPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxlIHRhYmxlOwo+IEBAIC02
NjUsMyArNjY0LDExIEBAIGludCBpbnRlbF9yY3NfY29udGV4dF9pbml0X21vY3Moc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEpCj4gIAo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPiArCj4gK3ZvaWQg
aW50ZWxfbW9jc19pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCgoqIHF1aWV0bHkgbXV0dGVycyBp
bnRlbF9ndF9pbml0X21vY3MoKSAodG8gYmUgY2FsbGVkIGZyb20KaW50ZWxfZ3RfaW5pdCgpIFtv
ciBiZXR0ZXIgbmFtZV0sIGZvcm1lcmx5IGtub3duIGFzIGk5MTVfZ2VtX2luaXRfaHcpLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
