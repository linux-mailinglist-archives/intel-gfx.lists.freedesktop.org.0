Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C8E4622C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5A389A1F;
	Fri, 14 Jun 2019 15:10:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F35B89A1F
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:10:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16904036-1500050 for multiple; Fri, 14 Jun 2019 16:10:07 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-14-tvrtko.ursulin@linux.intel.com>
 <156043435196.17012.16772763488516296630@skylake-alporthouse-com>
 <62e74c65-c538-a22f-5ff7-65c54552e54a@linux.intel.com>
 <156044344691.17012.1072853064881943621@skylake-alporthouse-com>
 <183c59a5-bebd-bc25-4f91-6b6d710e27c1@linux.intel.com>
 <156050530367.12188.15371004279540290930@skylake-alporthouse-com>
 <bd86a02a-078d-b6fd-c5ce-e7eb177c9b56@linux.intel.com>
In-Reply-To: <bd86a02a-078d-b6fd-c5ce-e7eb177c9b56@linux.intel.com>
Message-ID: <156052500558.7796.8732103474614602434@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 16:10:05 +0100
Subject: Re: [Intel-gfx] [RFC 13/28] drm/i915: Convert i915_gem_init_hw to
 intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxNjowMDoyOCkKPiAKPiBPbiAxNC8w
Ni8yMDE5IDEwOjQxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA2LTE0IDEwOjM0OjA2KQo+ID4+Cj4gPj4gT24gMTMvMDYvMjAxOSAxNzozMCwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA2
LTEzIDE3OjExOjQzKQo+ID4+Pj4KPiA+Pj4+IE9uIDEzLzA2LzIwMTkgMTQ6NTksIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA2LTEzIDE0
OjM1OjI0KQo+ID4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiA+Pj4+Pj4gaW5kZXggZTU0
Y2QzMDUzNGRjLi5iNmY0NTBlNzgyZTcgMTAwNjQ0Cj4gPj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiA+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwo+ID4+Pj4+PiBAQCAtMTIzNCwyOCArMTIzNCwzMiBAQCBzdGF0aWMgdm9pZCBp
bml0X3VudXNlZF9yaW5ncyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ID4+Pj4+PiAgICAgICAgICAg
IH0KPiA+Pj4+Pj4gICAgIH0KPiA+Pj4+Pj4gICAgIAo+ID4+Pj4+PiAtaW50IGk5MTVfZ2VtX2lu
aXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4+Pj4+PiArc3RhdGlj
IGludCBpbml0X2h3KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gPj4+Pj4+ICAgICB7Cj4gPj4+Pj4+
ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKPiA+Pj4+
Pj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwo+ID4+
Pj4+PiAgICAgICAgICAgIGludCByZXQ7Cj4gPj4+Pj4+ICAgICAKPiA+Pj4+Pj4gLSAgICAgICBk
ZXZfcHJpdi0+Z3QubGFzdF9pbml0X3RpbWUgPSBrdGltZV9nZXQoKTsKPiA+Pj4+Pj4gKyAgICAg
ICBndC0+bGFzdF9pbml0X3RpbWUgPSBrdGltZV9nZXQoKTsKPiA+Pj4+Pj4gICAgIAo+ID4+Pj4+
PiAgICAgICAgICAgIC8qIERvdWJsZSBsYXllciBzZWN1cml0eSBibGFua2V0LCBzZWUgaTkxNV9n
ZW1faW5pdCgpICovCj4gPj4+Pj4+IC0gICAgICAgaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9nZXQo
JmRldl9wcml2LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwo+ID4+Pj4+PiArICAgICAgIGludGVs
X3VuY29yZV9mb3JjZXdha2VfZ2V0KHVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7Cj4gPj4+Pj4+ICAg
ICAKPiA+Pj4+Pj4gLSAgICAgICBpZiAoSEFTX0VEUkFNKGRldl9wcml2KSAmJiBJTlRFTF9HRU4o
ZGV2X3ByaXYpIDwgOSkKPiA+Pj4+Pj4gLSAgICAgICAgICAgICAgIEk5MTVfV1JJVEUoSFNXX0lE
SUNSLCBJOTE1X1JFQUQoSFNXX0lESUNSKSB8IElESUhBU0hNU0soMHhmKSk7Cj4gPj4+Pj4+ICsg
ICAgICAgaWYgKEhBU19FRFJBTShpOTE1KSAmJiBJTlRFTF9HRU4oaTkxNSkgPCA5KQo+ID4+Pj4+
PiArICAgICAgICAgICAgICAgaW50ZWxfdW5jb3JlX3Jtdyh1bmNvcmUsIEhTV19JRElDUiwgMCwg
SURJSEFTSE1TSygweGYpKTsKPiA+Pj4+Pj4gICAgIAo+ID4+Pj4+PiAtICAgICAgIGlmIChJU19I
QVNXRUxMKGRldl9wcml2KSkKPiA+Pj4+Pj4gLSAgICAgICAgICAgICAgIEk5MTVfV1JJVEUoTUlf
UFJFRElDQVRFX1JFU1VMVF8yLCBJU19IU1dfR1QzKGRldl9wcml2KSA/Cj4gPj4+Pj4+IC0gICAg
ICAgICAgICAgICAgICAgICAgICAgIExPV0VSX1NMSUNFX0VOQUJMRUQgOiBMT1dFUl9TTElDRV9E
SVNBQkxFRCk7Cj4gPj4+Pj4+ICsgICAgICAgaWYgKElTX0hBU1dFTEwoaTkxNSkpCj4gPj4+Pj4+
ICsgICAgICAgICAgICAgICBpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAo+ID4+Pj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1JX1BSRURJQ0FURV9SRVNVTFRfMiwKPiA+
Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJU19IU1dfR1QzKGk5MTUp
ID8KPiA+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBMT1dFUl9TTElD
RV9FTkFCTEVEIDogTE9XRVJfU0xJQ0VfRElTQUJMRUQpOwo+ID4+Pj4+PiAgICAgCj4gPj4+Pj4+
ICAgICAgICAgICAgLyogQXBwbHkgdGhlIEdUIHdvcmthcm91bmRzLi4uICovCj4gPj4+Pj4+IC0g
ICAgICAgaW50ZWxfZ3RfYXBwbHlfd29ya2Fyb3VuZHMoJmRldl9wcml2LT5ndCk7Cj4gPj4+Pj4+
ICsgICAgICAgaW50ZWxfZ3RfYXBwbHlfd29ya2Fyb3VuZHMoZ3QpOwo+ID4+Pj4+Cj4gPj4+Pj4g
V291bGQgaXQgYmUgd29ydGggbW92aW5nIHRoZSBhYm92ZSBtbWlvIGludG8gd29ya2Fyb3VuZHM/
IFdoaWxzdCB5b3UgYXJlCj4gPj4+Pj4gZG9pbmcgc29tZSBzcHJpbmcgY2xlYW5pbmcgOikKPiA+
Pj4+Cj4gPj4+PiBUbyBHVCB3b3JrYXJvdW5kcz8gQXJlIHRoZSBhYm92ZSB0d28gd29ya2Fyb3Vu
ZHM/IERvIHRoZXkgaGF2ZSBhbgo+ID4+Pj4gb2ZmaWNpYWwgZGVzaWduYXRpb24/Cj4gPj4+Cj4g
Pj4+IFRvIGludGVsX2d0X3dvcmthcm91bmRzX2FwcGx5LCBJJ20gc3VyZSB5b3UgY2FuIGZpbmQg
c29tZXRoaW5nIDspCj4gPj4KPiA+PiBIYXZpbmcgbG9va2VkIHVwIHRoZSBkb2NzIGZvciBIU1df
SURDUiBhbmQgTUlfUFJFRElDQVRFX1JFU1VMVF8yLAo+ID4+IG5laXRoZXIgb2YgdGhlIHByb2dy
YW1taW5nIGxvb2tzIGxpa2Ugd29ya2Fyb3VuZHMgYnV0IG5vcm1hbCBkZXZpY2UgaW5pdAo+ID4+
IHRvIG1lLiBBcyBzdWNoIEkgZG9uJ3Qgc2VlIGhvdyBpdCB3b3VsZCBiZSBhcHByb3ByaWF0ZSB0
byBtb3ZlIHRoZW0gaW50bwo+ID4+IHdvcmthcm91bmRzLgo+ID4gCj4gPiBXaGVyZSB0aGV5IGFy
ZSBpcyBkZWZpbml0ZWx5IG5vdCB3aGVyZSB0aGV5IHNob3VsZCBiZS4gSSdtIHN1cmUgSSd2ZQo+
ID4gY29tcGxhaW5lZCBhYm91dCB0aGlzIHNpbmNlIHRoZXkgd2VyZSBwdXQgdGhlcmUuIEFuZCBu
b3JtYWwgZGV2aWNlIGluaXQgPT0KPiA+IHdvcmthcm91bmRzLCBkb2VzIGl0IG5vdD8gSXQgaXMg
anVzdCBhIGxpc3Qgb2YgcmVnaXN0ZXJzIHRoYXQgbmVlZCB0byBiZQo+ID4gcHJvZ3JhbW1lZCB0
byBkZWZhdWx0IHZhbHVlcywgd2hlcmUgdGhvc2UgZGVmYXVsdCB2YWx1ZXMgd2VyZSBkZWNpZGVk
Cj4gPiB1cG9uIGFmdGVyIHRoZSBmYWN0Lgo+IAo+IFdlbGwgd2UgY291bGQgYXJndWUuLiA6KSBJ
IHNlZSBzdHVmZiBpbiBpbnRlbF93b3JrYXJvdW5kcyBhcyBoYXZpbmcgCj4gV2FYWFhYIG5hbWVz
LCBnaXZlIG9yIHRha2UuIFNvIEkgcHJlZmVyIHRvIGxlYXZlIHRoaXMgaGVyZSBmb3Igbm93LgoK
R2l2ZSBvciB0YWtlIHRoZSBmYWtlIFdhIG5hbWVzIG1hZGUgdXAgdG8gY292ZXIgbm9ybWFsIGRl
dmljZSBpbml0IDotcAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
