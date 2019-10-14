Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2920D5FC2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 12:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D0F9897D7;
	Mon, 14 Oct 2019 10:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F75D897D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 10:06:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18829582-1500050 for multiple; Mon, 14 Oct 2019 11:06:55 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
 <20191014090757.32111-6-chris@chris-wilson.co.uk>
 <73a01df1-6278-2a9f-d03d-4031936c8c7e@linux.intel.com>
In-Reply-To: <73a01df1-6278-2a9f-d03d-4031936c8c7e@linux.intel.com>
Message-ID: <157104761361.18859.2555020038515542881@skylake-alporthouse-com>
Date: Mon, 14 Oct 2019 11:06:53 +0100
Subject: Re: [Intel-gfx] [PATCH 06/15] drm/i915/selftests: Check known
 register values within the context
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNCAxMDo1OTo0NCkKPiAKPiBPbiAxNC8x
MC8yMDE5IDEwOjA3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArc3RhdGljIGludCBfX2xpdmVf
bHJjX3N0YXRlKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpmaXhtZSwKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnNjcmF0Y2gpCj4gPiArewo+ID4g
KyAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNlOwo+ID4gKyAgICAgc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnE7Cj4gPiArICAgICBlbnVtIHsKPiA+ICsgICAgICAgICAgICAgUklOR19TVEFSVF9J
RFggPSAwLAo+ID4gKyAgICAgICAgICAgICBSSU5HX1RBSUxfSURYLAo+ID4gKyAgICAgICAgICAg
ICBNQVhfSURYCj4gPiArICAgICB9Owo+ID4gKyAgICAgdTMyIGV4cGVjdGVkW01BWF9JRFhdOwo+
ID4gKyAgICAgdTMyICpjczsKPiA+ICsgICAgIGludCBlcnI7Cj4gPiArICAgICBpbnQgbjsKPiA+
ICsKPiA+ICsgICAgIGNlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoZml4bWUsIGVuZ2luZSk7Cj4g
Cj4gQ2FsbGluZyB0aGUgY29udGV4dCBmaXhtZSBpbW8ganVzdCBtYWtlcyB0aGUgY29kZSBsZXNz
IHJlYWRhYmxlLgoKSWYgeW91IHJldmlldyBzb21lIG90aGVyIHBhdGNoZXMsIEkgd291bGRuJ3Qg
bmVlZCBhIEdFTSBjb250ZXh0IGhlcmUgOi1wClZhY2F0aW9ucyEKCj4gPiAgIGludCBpbnRlbF9s
cmNfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiAgIHsK
PiA+ICAgICAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7Cj4g
PiAgICAgICAgICAgICAgIFNVQlRFU1QobGl2ZV9scmNfbGF5b3V0KSwKPiA+ICsgICAgICAgICAg
ICAgU1VCVEVTVChsaXZlX2xyY19zdGF0ZSksCj4gPiAgICAgICB9Owo+ID4gICAKPiA+ICAgICAg
IGlmICghSEFTX0xPR0lDQUxfUklOR19DT05URVhUUyhpOTE1KSkKPiA+IAo+IAo+IEkgZG9uJ3Qg
a25vdy4uIGd1ZXNzIGl0IGhhcyBzb21lIGV4dHJhIHZhbHVlIGNvbXBhcmVkIHRvIGJhc2ljIE1J
X05PT1AgCj4gdGVzdHMuCgpZZWFoLCBpdCdzIHZlcnkgbXVjaCBjaGlja2VuIGFuZCBlZ2cuIEkg
bGlrZSB0aGUgaWRlYSBvZiBjb25maXJtaW5nIHRoYXQKdGhlIGxyYyB3ZSBleGVjdXRlIGlzIHRo
ZSBzYW1lIGFzIHdlIHNldHVwIC0gYnV0IHRoYXQncyBraW5kIG9mIGltcGxpZWQKYnkgc3VjY2Vz
c2Z1bCBleGVjdXRpb24gKG9yIHNvIG9uZSB3b3VsZCBhc3N1bWUpLiBJIHJlZ2FyZCBpdCBhcyBt
b3N0bHkKYSBwbGFjZWhvbGRlciwgYSBzZWVkIG9mIGEgdGVzdCBpZGVhLCBhbmQgcGxhbiB0byBh
ZGQgbW9yZSBzdGF0ZSBjaGVja3MKYXMgc29vbiBhcyBJIHRoaW5rIG9mIHNvbWUgbW9yZSByZWxp
YWJsZSBjaGVja3MuIE9yIGFueW9uZSBlbHNlIGZvciB0aGF0Cm1hdHRlci4gOikgSSBkaWQgdGhp
bmsgdGhhdCB2ZXJpZnlpbmcgdGhlIHZtIG1hdGNoZXMgdGhlIGNlLT52bSB3b3VsZCBiZQphIGdv
b2QgYWRkaXRpb24uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
